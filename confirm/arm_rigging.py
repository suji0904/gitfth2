# Arm Rigging Script
# 1. Excute '1. Create Guides locator' section
# 2. move Guides and Excute '2. Create joints'



# 1. Create Guides locator
import maya.cmds as cmds
import maya.mel as mel

armParts = ['shoulder', 'elbow', 'wrist']

cmds.spaceLocator(name="world")
cmds.spaceLocator(name="arm_L0_"+armParts[0])
cmds.move(2,0,0)
cmds.spaceLocator(name="arm_L0_"+armParts[1])
cmds.move(10,0,-3)
cmds.spaceLocator(name="arm_L0_"+armParts[2])
cmds.move(18,0,0)

cmds.parent("arm_L0_shoulder", "world")
cmds.parent("arm_L0_elbow", "arm_L0_shoulder")
cmds.parent("arm_L0_wrist", "arm_L0_elbow")

guideLoc = ["world", "arm_L0_shoulder", "arm_L0_elbow", "arm_L0_wrist"]


# 2. Create joints
cmds.select(cl=True)
jointNames=[]
for createJoint in guideLoc:
    locPos = cmds.xform(createJoint, query=True, translation=True, worldSpace=True)
    jointName = createJoint+"_jnt"
    
    joint = cmds.joint(p=locPos)
    cmds.rename(joint, jointName)
    jointNames.append(jointName)

for i in range(1, len(jointNames)):
    cmds.select(jointNames[i-1])
    cmds.joint(jointNames[i], edit=True, orientJoint="xyz", secondaryAxisOrient="yup",ch=True, zso=True)


    # add Shoulder Twist joints.
twistJnt1 = []
for insertJnt in range(2):
    insertJnt1 = cmds.insertJoint("arm_L0_shoulder_jnt")
    cmds.parent(insertJnt1, w=True) #unparent twist joint
    twistJnt1Name=cmds.rename(insertJnt1, "arm_L0_twist{}_jnt".format(insertJnt))
    twistJnt1.append(twistJnt1Name)

cmds.parent("arm_L0_elbow_jnt", "arm_L0_shoulder_jnt")

twistJnt1Total = len(twistJnt1)
for points, twistJnt in enumerate(twistJnt1):
    Point=cmds.pointConstraint("arm_L0_shoulder_jnt", "arm_L0_elbow_jnt", twistJnt)
    cmds.setAttr("{}.arm_L0_elbow_jntW1".format(Point[0]), 1*(points+1))
    shoulderWeight = twistJnt1Total - points
    cmds.setAttr("{}.arm_L0_shoulder_jntW0".format(Point[0]), shoulderWeight)

    # add Elbow Twist joints.
twistJnt2 = []
for insertJnt in range(2):
    insertJnt2 = cmds.insertJoint("arm_L0_elbow_jnt")
    cmds.parent(insertJnt2, w=True)
    twistJnt2Name = cmds.rename(insertJnt2, "arm_L0_twist{}_jnt".format(insertJnt+2))
    twistJnt2.append(twistJnt2Name)

cmds.parent("arm_L0_wrist_jnt", "arm_L0_elbow_jnt")

twistJnt2Total = len(twistJnt2)
for p in range(len(twistJnt2)):
    Point2=cmds.pointConstraint("arm_L0_elbow_jnt", "arm_L0_wrist_jnt", twistJnt2[p])
    cmds.setAttr("{}.arm_L0_wrist_jntW1".format(Point2[0]), 1*(p+1))
    elbowWeight = twistJnt1Total - p
    cmds.setAttr("{}.arm_L0_elbow_jntW0".format(Point2[0]), elbowWeight)

twistPoint=cmds.ls(type="pointConstraint")
cmds.delete(twistPoint)

    #parent twist joints
twistList = ["arm_L0_shoulder_jnt", "arm_L0_twist0_jnt", "arm_L0_twist1_jnt", "arm_L0_elbow_jnt", "arm_L0_twist2_jnt", "arm_L0_twist3_jnt", "arm_L0_wrist_jnt"]
for twist in range(len(twistList)):
    if twistList[twist] != twistList[-1]:
        cmds.parent(twistList[twist+1], twistList[twist])

    # create main controller
main = cmds.circle(c=(0,0,0), nr=(0,1,0), sw=360, r=5, d=3, ut=0, tol=0, s=8, ch=0, name="main_cnt")
cmds.parentConstraint(main, jointNames[0])

    #create driver joints

driverGrp=[]
for i in range(len(armParts)):
    driverDup = cmds.duplicate("arm_L0_"+armParts[i]+"_jnt", n="driver_"+armParts[i]+"_jnt", parentOnly=True)[0]
    driverGrp.append(driverDup)
    cmds.setAttr(driverGrp[i]+".radius", 2)
    if driverGrp[i] != driverGrp[0]:
        cmds.parent("driver_"+armParts[i]+"_jnt", "driver_"+armParts[i-1]+"_jnt")
    else:
        cmds.parent("driver_"+armParts[i]+"_jnt", w=True)

    #create ik joint
ikGrp=[]
ikShoulderJnt=cmds.duplicate("arm_L0_shoulder_jnt", n="ik"+"_shoulder"+"_jnt", parentOnly=True)[0]
cmds.parent(ikShoulderJnt, w=True)
ikElbowJnt=cmds.duplicate("arm_L0_elbow_jnt", n="ik"+"_elbow"+"_jnt", parentOnly=True)[0]
cmds.parent(ikElbowJnt, ikShoulderJnt)
ikWristJnt=cmds.duplicate("arm_L0_wrist_jnt", n="ik"+"_wrist"+"_jnt", parentOnly=True)[0]
cmds.parent(ikWristJnt, ikElbowJnt)
ikJnts = [ikShoulderJnt, ikElbowJnt, ikWristJnt]

    #create ik Handle
ikHandle0=cmds.ikHandle(solver='ikRPsolver', startJoint='ik_shoulder_jnt', endEffector='ik_wrist_jnt', name='ikHandle_ik')[0]
ikGrp.append(ikHandle0)
ikGrp.append(ikJnts[0])


ikCnt=[]
ikCntGrp=[]

for part in armParts:
    ikCntName = f"ik_{part}_cnt"
    ikCntGrpName = f"ik_{part}_cnt_offset"
    
    made_ik_cnt = cmds.circle(c=(0,0,0), nr=(1,0,0), sw=360, r=1.5, d=3, ut=0, tol=0, s=8, ch=0, name=ikCntName)
    ikCnt.append(made_ik_cnt[0])
    made_ik_cnt_grp = cmds.group(made_ik_cnt, n=ikCntGrpName)
    ikCntGrp.append(made_ik_cnt_grp)
    
    ikJnt = f"ik_{part}_jnt"
    
    cmds.parent(made_ik_cnt_grp, ikJnt)
    
    cmds.setAttr(f"{made_ik_cnt_grp}.translateX", 0)
    cmds.setAttr(f"{made_ik_cnt_grp}.translateY", 0)
    cmds.setAttr(f"{made_ik_cnt_grp}.translateZ", 0)
    cmds.setAttr(f"{made_ik_cnt_grp}.rotateX", 0)
    cmds.setAttr(f"{made_ik_cnt_grp}.rotateY", 0)
    cmds.setAttr(f"{made_ik_cnt_grp}.rotateZ", 0)
    
    cmds.parent(made_ik_cnt_grp, w=True)
    ikGrp.append(made_ik_cnt_grp)

cmds.pointConstraint(ikCnt[2], ikHandle0)
cmds.orientConstraint(ikCnt[2], ikWristJnt)
cmds.pointConstraint(ikCnt[0], ikJnts[0])

for ik in range(len(ikJnts)):
    cmds.setAttr(f"{ikCnt[ik]}Shape.overrideEnabled",1)
    cmds.setAttr(f"{ikCnt[ik]}Shape.overrideRGBColors",1)
    cmds.setAttr(f"{ikCnt[ik]}Shape.overrideColorRGB", 0,0,1)

cmds.group(em=True, name="ik_grp", w=True)
cmds.parent(ikGrp, "ik_grp")


    #create fk joint
fkGrp=[]
fkShoulderJnt=cmds.duplicate("arm_L0_shoulder_jnt", n="fk_"+"shoulder"+"_jnt", parentOnly=True)[0]
cmds.parent(fkShoulderJnt, w=True)
fkElbowJnt=cmds.duplicate("arm_L0_elbow_jnt", n="fk_"+"elbow"+"_jnt", parentOnly=True)[0]
cmds.parent(fkElbowJnt, fkShoulderJnt)
fkWristJnt=cmds.duplicate("arm_L0_wrist_jnt", n="fk_"+"wrist"+"_jnt", parentOnly=True)[0]
cmds.parent(fkWristJnt, fkElbowJnt)
fkJnts = [fkShoulderJnt, fkElbowJnt, fkWristJnt]
fkGrp.append(fkJnts[0])

    #create fk controller
fkCnt=[]
fkCntGrp=[]

for part in armParts:
    fkCntName = f"fk_{part}_cnt"
    fkCntGrpName = f"fk_{part}_cnt_offset"
    
    made_fk_cnt = cmds.circle(c=(0,0,0), nr=(1,0,0), sw=360, r=1.5, d=3, ut=0, tol=0, s=8, ch=0, name=fkCntName)
    fkCnt.append(made_fk_cnt[0])
    made_fk_cnt_grp = cmds.group(made_fk_cnt, n=fkCntGrpName)
    fkCntGrp.append(made_fk_cnt_grp)
    
    fkJnt = f"fk_{part}_jnt"
    
    cmds.parent(made_fk_cnt_grp, fkJnt)
    
    cmds.setAttr(f"{made_fk_cnt_grp}.translateX", 0)
    cmds.setAttr(f"{made_fk_cnt_grp}.translateY", 0)
    cmds.setAttr(f"{made_fk_cnt_grp}.translateZ", 0)
    cmds.setAttr(f"{made_fk_cnt_grp}.rotateX", 0)
    cmds.setAttr(f"{made_fk_cnt_grp}.rotateY", 0)
    cmds.setAttr(f"{made_fk_cnt_grp}.rotateZ", 0)
    
    cmds.parent(made_fk_cnt_grp, w=True)

fkGrp.append("fk_"+armParts[0]+"_cnt_offset")
cmds.parent("fk_wrist_cnt_offset", "fk_elbow_cnt")
cmds.parent("fk_elbow_cnt_offset", "fk_shoulder_cnt")

cmds.group(em=True, name="fk_grp", w=True)
cmds.parent(fkGrp, "fk_grp")

for fk in range(len(fkJnts)):
    cmds.parentConstraint(fkCnt[fk], fkJnts[fk])

for fk in range(len(fkJnts)):
    cmds.setAttr(f"{fkCnt[fk]}Shape.overrideEnabled",1)
    cmds.setAttr(f"{fkCnt[fk]}Shape.overrideRGBColors",1)
    cmds.setAttr(f"{fkCnt[fk]}Shape.overrideColorRGB", 1,0,0)


    # create arm option controller
armOption = cmds.circle(n="arm_L_option", r=2)[0]
armOptionGrp = cmds.group(armOption, n=armOption+"_offset")
cmds.move(0,5,0)
cmds.select(f"{armOption}Shape.cv[0]",f"{armOption}Shape.cv[2]",f"{armOption}Shape.cv[4]",f"{armOption}Shape.cv[6]")
cmds.scale(0.2,0.2,0.2)
    # add Attribute
armOptionAttr = cmds.addAttr("arm_L_option", keyable=1, at="double", longName="Ik_Fk_Switch", minValue=0, maxValue=1)

    # parent constraint driver joint
driverParent = []
for driver in range(len(driverGrp)):
    driverParent.append(cmds.parentConstraint(ikJnts[driver], fkJnts[driver], driverGrp[driver])[0])

    # Connect Switch
cmds.shadingNode('reverse', asUtility=True, n="ikfk_reverse")
cmds.connectAttr(armOption+'.Ik_Fk_Switch', "ikfk_reverse.inputX")
for i in range(len(driverParent)):
    cmds.connectAttr(armOption+'.Ik_Fk_Switch', driverParent[i]+'.ik_'+armParts[i]+'_jntW0')
    cmds.connectAttr("ikfk_reverse.outputX", driverParent[i]+'.fk_'+armParts[i]+'_jntW1')
cmds.connectAttr(armOption+'.Ik_Fk_Switch', 'ik_grp.visibility')
cmds.connectAttr("ikfk_reverse.outputX", 'fk_grp.visibility')
    
    # ik Stretch ------------------------------------------------------
    # create locators
locDup = cmds.duplicate(guideLoc[1], renameChildren=True)
for l in range(len(locDup)):
    cmds.parent(locDup[l], w=True)
cmds.pointConstraint(ikCnt[1], locDup[1])
ikStretchPC = (cmds.pointConstraint(ikCnt[2], locDup[2])[0], cmds.pointConstraint(ikJnts[0], locDup[0])[0])


def disbtw(): #add distanceBetween node
    cmds.shadingNode('distanceBetween', asUtility=1)

disbtw()
upperDis = cmds.rename("armUpper_dis")
disbtw()
lowerDis = cmds.rename("armLower_dis")

dis = "point1", "point2"
for d in range(2):
    cmds.connectAttr("arm_L0_"+armParts[d]+"1"+".translate", upperDis+"."+dis[d])
for d in range(2):
    cmds.connectAttr("arm_L0_"+armParts[d+1]+"1"+".translate", lowerDis+"."+dis[d])

disSumNode = cmds.shadingNode('plusMinusAverage', asUtility=1, n="armDisSum")
cmds.connectAttr(upperDis+".distance", disSumNode+".input1D[0]")
cmds.connectAttr(lowerDis+".distance", disSumNode+".input1D[1]")


disbtw()
armDis = cmds.rename("arm_dis")
cmds.connectAttr("arm_L0_"+armParts[0]+"1"+".translate", armDis+"."+dis[0])
cmds.connectAttr("arm_L0_"+armParts[2]+"1"+".translate", armDis+"."+dis[1])

# add Stretch option Attribute at Wrist cnt
strOnOff = cmds.addAttr(ikCnt[2], keyable=1, at="double", longName="Stretch_OnOff", minValue=0, maxValue=1)
strType = cmds.addAttr(ikCnt[2], keyable=1, at="enum", longName="Stretch_Type", en="Both:Stretch:Squash")

ikmd = [] #ik Stretch multiplyDivide node
for i in range(3):
    ikmd.append(cmds.shadingNode('multiplyDivide', asUtility=1, n="ikStretch_multiplyDivide0"))
cmds.setAttr(ikmd[0]+".operation",2)
cmds.setAttr(ikmd[1]+".operation",3)
cmds.setAttr(ikmd[2]+".operation",2)

sumDis = cmds.getAttr(disSumNode+".output1D") #arm length(sumDis)

cmds.connectAttr(armDis+".distance", ikmd[0]+".input1X")
cmds.setAttr(ikmd[0]+".input2X", sumDis)

armCondition = cmds.shadingNode('condition', asUtility=1, n='Stretch_condition') #armCondition
cmds.setAttr(armCondition+".operation", 3)
cmds.setAttr(armCondition+".secondTerm", 1)

strblend = cmds.shadingNode('blendColors', asUtility=1, n='ikStretch_blendColors') #strblend
cmds.connectAttr(ikmd[0]+".outputX", strblend+".color1R")
cmds.connectAttr(strblend+".outputR", armCondition+".colorIfTrueR")
cmds.connectAttr(ikmd[0]+".outputX", armCondition+".firstTerm")
cmds.connectAttr(ikCnt[2]+".Stretch_OnOff", strblend+".blender")
cmds.setAttr(strblend+".color2R", 1)

armPma = cmds.shadingNode('plusMinusAverage', asUtility=1, n="ikstretch_plusMinusAverage") #armPma
input1D = "input1D[0]", "input1D[1]", "input1D[2]"
for i in range(3):
    if i != 0:
        cmds.connectAttr(ikCnt[2]+".Stretch_Type", armPma+"."+input1D[i])
cmds.setAttr(armPma+"."+input1D[0], 1)
cmds.connectAttr(armPma+".output1D", armCondition+".operation")
cmds.connectAttr(armCondition+".outColorR", ikmd[1]+".input1X")
cmds.setAttr(ikmd[1]+".input2X", 0.5)
cmds.connectAttr(ikmd[1]+".outputX", ikmd[2]+".input2X")
cmds.setAttr(ikmd[2]+".input1X", 1)

#connect ik joints
for cj in range(2):
    cmds.connectAttr(armCondition+".outColorR", ikJnts[cj]+".scaleX")
    cmds.connectAttr(ikmd[2]+".outputX", ikJnts[cj]+".scaleY")
    cmds.connectAttr(ikmd[2]+".outputX", ikJnts[cj]+".scaleZ")

ikLocGrp = cmds.createNode("transform", n="ik_loc_grp")
cmds.parent(ikLocGrp, "ik_grp")
for i in range(3):
    cmds.parent("arm_L0_"+armParts[i]+"1", "ik_loc_grp")


#-------------------------------------------------------------------------------

# Bend
allJnt=[jointNames[1]] #joints list
for j in range(len(twistJnt1)):
    allJnt.append(twistJnt1[j])
allJnt.append(jointNames[2])
for j in range(len(twistJnt2)):
    allJnt.append(twistJnt2[j])
allJnt.append(jointNames[3])

jntPos = [] # all joints position(translate)
for i in range(len(allJnt)):
    xformJnt = cmds.xform(allJnt[i], query=True, translation=True, worldSpace=True)
    jntPos.append(xformJnt)

bendCrv = [] #create bend curve - upper
for i in range(2):
    createCrv = cmds.curve(n="bend_upper_cuv", d=3, p=[jntPos[0], jntPos[1], jntPos[2], jntPos[3]], k=[0,0,0,1,1,1])
    bendCrv.append(createCrv)
cmds.move(0,-0.5,0, bendCrv[0])
cmds.move(0,0.5,0, bendCrv[1])
bendNrbs = cmds.loft(bendCrv[0], bendCrv[1], ch=0, u=1, ar=0, d=1, rn=0, po=0, rsn=True, n="bend_upper_Nrbs")
cmds.delete(bendCrv)

bendCrv2 = [] #create bend curve - lower
for i in range(2):
    createCrv2 = cmds.curve(n="bend_lower_cuv", d=3, p=[jntPos[3], jntPos[4], jntPos[5], jntPos[6]], k=[0,0,0,1,1,1])
    bendCrv2.append(createCrv2)
cmds.move(0,-0.5,0, bendCrv2[0])
cmds.move(0,0.5,0, bendCrv2[1])
bendNrbs2 = cmds.loft(bendCrv2[0], bendCrv2[1], ch=0, u=1, ar=0, d=1, rn=0, po=0, rsn=True, n="bend_lower_Nrbs")
cmds.delete(bendCrv2)

cmds.select(bendNrbs, bendNrbs2)
mel.eval("createHair 4 1 10 0 0 1 0 5 0 1 2 1;")
cmds.delete("hairSystem1", "pfxHair1", "nucleus1")

follicle_list = cmds.ls(type="follicle") #follicle naming
follicle_grplist = cmds.pickWalk(follicle_list, d="up")

upper_follicles = [f for f in follicle_grplist if "upper" in f]
lower_follicles = [f for f in follicle_grplist if "lower" in f]

follicleJnt = [] # follicle joint
for f in range(4):
    upperF = cmds.duplicate(allJnt[f], n="follicle_upper_jnt", parentOnly=True)[0]
    follicleJnt.append(upperF)
    cmds.parent(follicleJnt[f], w=True)
for f in range(4):
    lowerF = cmds.duplicate(allJnt[f+3], n="follicle_lower_jnt", parentOnly=True)[0]
    follicleJnt.append(lowerF)
    cmds.parent(follicleJnt[f+4], w=True)

fBindskinJnt = [] # follicle bind skin joint
for i in range(4):
    upperJ = cmds.duplicate(follicleJnt[i], n="Bindskin_upper_jnt", parentOnly=True)[0]
    fBindskinJnt.append(upperJ)
for i in range(4):
    lowerJ = cmds.duplicate(follicleJnt[i+4], n="Bindskin_lower_jnt", parentOnly=True)[0]
    fBindskinJnt.append(lowerJ)

for f in range(8): #parent follicle bind skin joint
    if f < 4:
        cmds.parent(fBindskinJnt[f], follicle_grplist[f+4])
    else :
        cmds.parent(fBindskinJnt[f], follicle_grplist[f-4])

upper_follicles = [f for f in follicleJnt if "upper" in f]
lower_follicles = [f for f in follicleJnt if "lower" in f]

cmds.skinCluster(upper_follicles, bendNrbs)
cmds.skinCluster(lower_follicles, bendNrbs2)

##--------------------------------------------------------------------------
# add twist joint
list = "start", "end"
twistlist = "Twist", "noTwist"
armlist = "upperArm", "lowerArm"

twistUpper = []
twistLower = []
notwistUpper = []
notwistLower = []
twistAll = twistUpper, twistLower, notwistUpper, notwistLower


for t in range(2):
    for i in range(2):
        if t == 1:
            twistDup0 = cmds.duplicate(driverGrp[i], parentOnly=1, name=armlist[0]+"_"+twistlist[0]+"_"+list[i]+"_jnt")[0]
            twistUpper.append(twistDup0)
        else:
            twistDup1 = cmds.duplicate(driverGrp[i], parentOnly=1, name=armlist[0]+"_"+twistlist[1]+"_"+list[i]+"_jnt")[0]
            notwistUpper.append(twistDup1)
    for i in range(2):
        if t == 1:
            twistDup2 = cmds.duplicate(driverGrp[i+1], parentOnly=1, name=armlist[1]+"_"+twistlist[0]+"_"+list[i]+"_jnt")[0]
            twistLower.append(twistDup2)
        else:
            twistDup3 = cmds.duplicate(driverGrp[i+1], parentOnly=1, name=armlist[1]+"_"+twistlist[1]+"_"+list[i]+"_jnt")[0]
            notwistLower.append(twistDup3)

twistgrp = cmds.group(w=1, em=1, n="twist_grp")
cmds.parent(twistUpper[0], notwistUpper[0], twistLower[0], notwistLower[0], twistgrp)
cmds.parent(twistUpper[1], twistUpper[0])
cmds.parent(notwistUpper[1], notwistUpper[0])
cmds.parent(twistLower[1], twistLower[0])
cmds.parent(notwistLower[1], notwistLower[0])

#twist ik handle
iktw_list = []
for i in range(4):
    iktw = cmds.ikHandle(sj=twistAll[i][0], ee=twistAll[i][1], sol="ikSCsolver", n=twistAll[i][0]+"_ikHandle")[0]
    cmds.parent(iktw, twistgrp)
    iktw_list.append(iktw)
#point/orient constraint
for i in range(4):
    if i%2 ==1: 
        cmds.pointConstraint(driverGrp[2], iktw_list[i], mo=1)
        cmds.pointConstraint(driverGrp[1], twistAll[i][0], mo=1)
    else:
        cmds.pointConstraint(driverGrp[1], iktw_list[i], mo=1)
        cmds.pointConstraint(driverGrp[0], twistAll[i][0], mo=1)
for i in range(2):
    cmds.orientConstraint(driverGrp[i+1], iktw_list[i], mo=1)


# create bend controller
cntUpper = cmds.circle(c=(0,0,0), nr=(1,0,0), sw=360, r=1, d=3, ut=0, tol=0, s=8, ch=0, name="upper_bend_cnt")
cntUppergrp = cmds.group(cntUpper, name="upper_bend_cnt_offset")
cntUpperpc = cmds.parentConstraint(twistJnt1[0], twistJnt1[1], cntUppergrp)
cmds.delete(cntUpperpc)

cntLower = cmds.circle(c=(0,0,0), nr=(1,0,0), sw=360, r=1, d=3, ut=0, tol=0, s=8, ch=0, name="lower_bend_cnt")
cntLowergrp = cmds.group(cntLower, name="lower_bend_cnt_offset")
cntLowerpc = cmds.parentConstraint(twistJnt2[0], twistJnt2[1], cntLowergrp)
cmds.delete(cntLowerpc)

# follicle jnt - pointConstraint/orient constraint
for i in range(2):
    upperPc = cmds.pointConstraint(cntUpper, driverGrp[i], upper_follicles[i+1], mo=0)[0]
    cmds.setAttr(upperPc+".upper_bend_cntW0", 2)
    cmds.orientConstraint(twistUpper[0], notwistUpper[0], upper_follicles[i+1], mo=1)[0]
cmds.setAttr(upper_follicles[1]+"_orientConstraint1."+notwistUpper[0]+"W1", 2)
cmds.setAttr(upper_follicles[2]+"_orientConstraint1."+twistUpper[0]+"W0", 2)

for i in range(2):
    lowerPc = cmds.pointConstraint(cntLower, driverGrp[i+1], lower_follicles[i+1], mo=0)[0]
    cmds.setAttr(lowerPc+".lower_bend_cntW0", 2)

cmds.pointConstraint(driverGrp[0], driverGrp[1], cntUppergrp, mo=1) #bend cnt point constraint
cmds.pointConstraint(driverGrp[1], driverGrp[2], cntLowergrp, mo=1)

cmds.pointConstraint(driverGrp[0], upper_follicles[0]) #star-end joint constraint
cmds.pointConstraint(driverGrp[1], upper_follicles[3])
cmds.pointConstraint(driverGrp[1], lower_follicles[0])
cmds.pointConstraint(driverGrp[2], lower_follicles[3])
cmds.orientConstraint(notwistUpper[0], upper_follicles[0])
cmds.orientConstraint(twistUpper[1], upper_follicles[3])

#iktw_list twistUpper
cmds.orientConstraint(twistUpper[0], notwistUpper[0], cntUppergrp)
