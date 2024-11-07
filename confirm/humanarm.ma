//Maya ASCII 2024 scene
//Name: humanarm10.ma
//Last modified: Thu, Nov 07, 2024 01:15:25 PM
//Codeset: 949
requires maya "2024";
requires -nodeType "ngst2SkinLayerData" -dataType "ngst2SkinLayerDataStorage" "ngSkinTools2" "2.1.6";
requires "stereoCamera" "10.0";
requires -nodeType "VRaySettingsNode" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "6";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "6.20.02 3072d20";
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "6467E539-4962-ACAE-E31E-088498BEC776";
createNode transform -s -n "persp";
	rename -uid "FF489E81-44BF-CA6C-E795-1B8827C515C8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 34.711913882552089 10.141639973567258 32.418107958635531 ;
	setAttr ".r" -type "double3" -8.7383527298068167 44.200000000013851 0 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 -3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr ".rpt" -type "double3" 8.9803473062070611e-15 -4.0730862891757147e-16 1.0942850574794119e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B8663A5E-48B6-E088-0831-AB9D9F5F86F9";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 54.976745853483692;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 -9.8607613152626476e-32 1.7763568394002505e-15 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0BB0A148-44C2-C018-9DB5-2AA21BC0B542";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A54DF39F-4EDB-E5A4-4293-E9A1A670EE44";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "3B0999D3-446E-53BD-30D9-4D8DA723F98F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.9203683668876765 4.6091458426776546 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0A32BFC3-41D7-C8BB-C4FC-DBAB3F44449D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 35.85922682536151;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8B277A8A-4CE8-C894-2AE9-4BAFF0C28092";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1005868825855 2.3553684339231977 -1.1649514605001146 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "112AAF45-4332-425A-BC8D-44B1C1DACE7E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1005870017948;
	setAttr ".ow" 25.566163004995079;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -1.1920928955078125e-07 7.4727709588247597 -0.50886096853711149 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "world_jnt";
	rename -uid "10E7E9E6-4539-B794-21EC-38BC781EB7AB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10 0 1;
createNode joint -n "arm_L0_shoulder_jnt" -p "world_jnt";
	rename -uid "5E0B0093-4F9F-A287-3454-C0B7C9EC1B40";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".it" no;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 11.309932474020203 -90 ;
	setAttr ".bps" -type "matrix" 0 -0.98058045490430057 -0.19611723906805048 0 1 0 0 0
		 0 -0.19611723906805048 0.98058045490430057 0 3.0000000000039999 9.9999998061341007 9.7009362032426071e-07 1;
createNode joint -n "arm_L0_twist0_jnt" -p "arm_L0_shoulder_jnt";
	rename -uid "23EC7AA4-4148-4E81-7B20-76BEC216C41F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 0 -0.98058068277426125 -0.19611609972147487 0 1 0 0 0
		 0 -0.19611609972147487 0.98058068277426125 0 3.0000000764719443 8.3346477804726025 -0.33307109639106358 1;
createNode joint -n "arm_L0_twist1_jnt" -p "arm_L0_twist0_jnt";
	rename -uid "6AA4C75F-41B2-E370-4409-A3A364795BF9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 0 -0.98058068277426125 -0.19611609972147487 0 1 0 0 0
		 0 -0.19611609972147487 0.98058068277426125 0 2.9999990681951676 6.669294222661625 -0.66614027156819045 1;
createNode joint -n "arm_L0_elbow_jnt" -p "arm_L0_twist1_jnt";
	rename -uid "E6582FA2-4511-E778-3BFE-119B3FDD4139";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 -22.619864948040423 0 ;
	setAttr ".bps" -type "matrix" 0 -0.9805806770318789 0.19611612843338957 0 1 0 0 0
		 0 0.19611612843338957 0.9805806770318789 0 2.9999980616573634 5.0039202221138028 -0.99921278521693369 1;
createNode joint -n "arm_L0_twist2_jnt" -p "arm_L0_elbow_jnt";
	rename -uid "909F9DAE-4AA4-5A16-AAFD-319C6AB5C2DD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 0 -0.98058053757703667 0.19611682570633621 0 1.0000097751617432 0 0 0
		 0 0.19611874278002803 0.98059012291039371 0 2.9999980520091722 3.3360495130638634 -0.66563736254296446 1;
createNode joint -n "arm_L0_twist3_jnt4" -p "arm_L0_twist2_jnt";
	rename -uid "43206784-4F53-C15B-8166-AABDDEF66FEF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 0 -0.98058053757703667 0.19611682570633621 0 1.0000195503234863 0 0 0
		 0 0.19612065985371985 0.98059970824375065 0 2.9999980713668837 1.6682003307900535 -0.33206626753263901 1;
createNode joint -n "arm_L0_wrist_jnt" -p "arm_L0_twist3_jnt4";
	rename -uid "F32E4CF2-4BB5-B2FE-AC10-CAAC24BCCC7A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0 -0.98058053757703645 0.19611682570633615 0 1.0000293263452362 1.3157277950852039e-08 6.5786148840773068e-08 0
		 -6.7088980782065315e-08 0.1961225770960735 0.98060929442041367 0 2.99999815987504 0.0024488254269510179 -0.0019130165592609605 1;
createNode joint -n "arm_L0_finger_jnt5" -p "arm_L0_wrist_jnt";
	rename -uid "91867479-4713-78E0-F3E2-F7B93FA9C0AD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 3.1762170175472715 2.0006513919854227 -0.085534340554762833 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" -179.99983404209232 0.017066612406776961 0.017063286667502193 ;
	setAttr ".bps" -type "matrix" 0.0002978105159456507 -0.98063886230185304 0.19582475086725729 0
		 -0.99999995565050559 -0.00029259441593482551 5.5565231317863783e-05 0 2.8078033824986227e-06 -0.19582475873043884 -0.98063890594870939 0
		 5.0007081346920037 -3.1308641750156756 0.54051949879119965 1;
createNode joint -n "arm_L0_finger_jnt2" -p "arm_L0_wrist_jnt";
	rename -uid "E563124F-4906-B147-30B5-32AB88367C3F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 4.1112207907420792 1.5603194053366196 1.6775861797121028 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" -179.99983404209232 0.017066612406776961 0.017063286667502193 ;
	setAttr ".bps" -type "matrix" 0.0002978105159456507 -0.98063886230185304 0.19582475086725729 0
		 -0.99999995565050559 -0.00029259441593482551 5.5565231317863783e-05 0 2.8078033824986227e-06 -0.19582475873043884 -0.98063890594870939 0
		 4.5603632347153402 -3.7019228853689867 2.4528218557101109 1;
createNode joint -n "arm_L0_finger_jnt1" -p "arm_L0_wrist_jnt";
	rename -uid "2A35BE9D-4066-7A70-FCC4-1BB39CA56A3F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 5.0926854998796163 -9.1446353049917661e-06 2.9241482822775291 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" -179.99983404209232 0.017066612406776961 0.017063286667502193 ;
	setAttr ".bps" -type "matrix" 0.0002978105159456507 -0.98063886230185304 0.19582475086725729 0
		 -0.99999995565050559 -0.00029259441593482551 5.5565231317863783e-05 0 2.8078033824986227e-06 -0.19582475873043884 -0.98063890594870939 0
		 2.9999889260096735 -4.4198490669015262 3.8676940023928266 1;
createNode joint -n "arm_L0_finger_jnt3" -p "arm_L0_wrist_jnt";
	rename -uid "4DEA944B-4725-AC21-7DAE-EAA35F16754C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 4.1579009482548726 -1.4492891138755752 2.2396105575971754 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" -179.99983404209232 0.017066612406776961 0.017063286667502193 ;
	setAttr ".bps" -type "matrix" 0.0002978105159456507 -0.98063886230185304 0.19582475086725729 0
		 -0.99999995565050559 -0.00029259441593482551 5.5565231317863783e-05 0 2.8078033824986227e-06 -0.19582475873043884 -0.98063890594870939 0
		 1.5506664546846778 -3.6374708546892518 3.0131029469161001 1;
createNode joint -n "arm_L0_finger_jnt4" -p "arm_L0_wrist_jnt";
	rename -uid "03FD9D6D-4192-70D6-2455-B28B0EC63C26";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 2.0136295742867452 -1.8708575625750397 -1.41128442201009 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" -179.99983404209232 0.017066612406776961 0.017063286667502193 ;
	setAttr ".bps" -type "matrix" 0.0002978105159456507 -0.98063886230185304 0.19582475086725729 0
		 -0.99999995565050559 -0.00029259441593482551 5.5565231317863783e-05 0 2.8078033824986227e-06 -0.19582475873043884 -0.98063890594870939 0
		 1.1290856429233451 -2.2508631190639528 -0.98752633608709872 1;
createNode orientConstraint -n "arm_L0_wrist_jnt_orientConstraint1" -p "arm_L0_wrist_jnt";
	rename -uid "549D9F78-485F-4846-E13C-33BCEA81B090";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_wrist_jntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 4.2030740578516713e-05 0 ;
	setAttr ".o" -type "double3" 3.843802725960864e-06 -4.0350217330044909e-05 1.8079360196817934e-28 ;
	setAttr ".rsrr" -type "double3" 3.843802725960864e-06 0 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "arm_L0_wrist_jnt_pointConstraint1" -p "arm_L0_wrist_jnt";
	rename -uid "FBB2B33B-42FE-7ED7-8F21-EEB5174A0BD0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lower_Follicle_jnt1W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.6981521141762359 8.8506426187962006e-08 -0.002939987847367884 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "arm_L0_twist3_jnt4_parentConstraint1" -p "arm_L0_twist3_jnt4";
	rename -uid "A5A1E6C4-4FB6-BC4A-1F82-649301E8885E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lower_Follicle_jnt2W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.00019161130108225066 -0.00047175136475408053 
		0.0037304826912180527 ;
	setAttr ".tg[0].tor" -type "double3" 1.394057627675491e-06 -0.00085245525768623976 
		1.9664782206097227e-05 ;
	setAttr ".lr" -type "double3" -1.955486264858002e-23 -1.2887590282979606e-06 -6.6644570753092065e-22 ;
	setAttr ".rst" -type "double3" 1.7008903330340348 1.9918339866364931e-08 6.1465799464088811e-11 ;
	setAttr ".rsrr" -type "double3" -2.0915495102595677e-22 -7.8863546102572863e-20 
		-3.6996575040716135e-21 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "arm_L0_twist2_jnt_parentConstraint1" -p "arm_L0_twist2_jnt";
	rename -uid "6830A2E9-40C5-228F-736F-69BB720209D4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lower_Follicle_jnt3W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.0033106717065192193 -0.00069156906484346692 
		0.0054754671713067903 ;
	setAttr ".tg[0].tor" -type "double3" 5.3671641926378062e-06 0.039687658373045907 
		3.0760368748225866e-05 ;
	setAttr ".lr" -type "double3" -6.3389656527804257e-22 -4.0741981548656388e-05 6.6858806902492165e-21 ;
	setAttr ".rst" -type "double3" 1.7008903271976474 -6.1525895489467075e-11 -9.3069809643363949e-09 ;
	setAttr ".rsrr" -type "double3" -6.3092968882748828e-22 -1.2581768816672007e-17 
		6.6855104238975382e-21 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "arm_L0_elbow_jnt_parentConstraint1" -p "arm_L0_elbow_jnt";
	rename -uid "B43061F2-4C22-9F2A-C68A-0490BF519706";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lower_Follicle_jnt4W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.0088008146066478332 -2.0910373224047873e-06 
		0.0075803427426437264 ;
	setAttr ".tg[0].tor" -type "double3" -3.7162263066750514e-06 0.021549132310644675 
		-1.6100975163080319e-06 ;
	setAttr ".lr" -type "double3" -1.1379708793233578e-12 -1.1063207690123075e-07 -2.9523890133750746e-22 ;
	setAttr ".rst" -type "double3" 1.6983543499323073 -1.0077475494085775e-06 1.2951244252601413e-06 ;
	setAttr ".rsrr" -type "double3" -1.1379708793233578e-12 -4.2031913826298464e-05 
		-2.9523893240082006e-22 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "arm_L0_twist1_jnt_parentConstraint1" -p "arm_L0_twist1_jnt";
	rename -uid "B44090DD-45E9-83C0-39AD-969CFFC2A91F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_Follicle_jnt2W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.012610484639502317 -0.00022070869636037216 
		0.0026415134273278795 ;
	setAttr ".tg[0].tor" -type "double3" -0.76577229504508082 0.091627592403290964 -0.37507979657102619 ;
	setAttr ".lr" -type "double3" -9.2313003771942602e-17 7.9720583017109563e-11 6.6479262737195938e-11 ;
	setAttr ".rst" -type "double3" 1.6983337561200598 -1.0077480574466335e-06 1.4178640002082687e-06 ;
	setAttr ".rsrr" -type "double3" -1.3712702259909453e-16 -7.6557918981215906e-18 
		-6.6755004731859804e-17 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "arm_L0_twist0_jnt_parentConstraint1" -p "arm_L0_twist0_jnt";
	rename -uid "649FFEAA-4787-9B4D-EA08-619C5E3420AF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_Follicle_jnt3W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.0050570985281250813 -0.0002230159609513116 
		-0.0044237308438970224 ;
	setAttr ".tg[0].tor" -type "double3" -0.21167741458478861 -0.70289554184727199 -0.10454098575941086 ;
	setAttr ".lr" -type "double3" 2.5976324190736336e-17 1.2325158241177228e-16 -1.741054227191512e-18 ;
	setAttr ".rst" -type "double3" 1.6983328209779813 7.7161786737889315e-08 3.0024657005078836e-07 ;
	setAttr ".rsrr" -type "double3" 2.597632419796808e-17 1.2326371526501883e-16 -1.7349878005682357e-18 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "arm_L0_shoulder_jnt_parentConstraint1" -p "arm_L0_shoulder_jnt";
	rename -uid "5ED06EFA-4824-CD28-EAA6-FE9DE5CF1919";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upper_Follicle_jnt4W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 -4.4408920985006262e-16 
		2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" -3.4812111691986157e-05 2.8053267941703122 
		-1.4230959913835958e-05 ;
	setAttr ".lr" -type "double3" 3.1805546814635168e-15 -1.5902773407317578e-15 -1.8884543421189631e-14 ;
	setAttr ".rst" -type "double3" 2.9999979029582504 -0.0023848539863902118 -0.0017351007026223874 ;
	setAttr ".rsrr" -type "double3" 0 6.4503136685882992e-05 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "world_jnt_parentConstraint1" -p "world_jnt";
	rename -uid "67DA3A01-47D4-113F-05CC-AE90053699A5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "main_cntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 10 0 ;
	setAttr ".rst" -type "double3" 0 10 0 ;
	setAttr -k on ".w0";
createNode transform -n "null1" -p "world_jnt";
	rename -uid "6E520A73-45FD-C6C7-52BB-E4AA0939F123";
	setAttr ".t" -type "double3" 0 -10 0 ;
	setAttr ".s" -type "double3" 0.53482902098273188 0.53482902098273188 0.53482902098273188 ;
createNode transform -n "main_cnt";
	rename -uid "B213EAB0-4834-F97B-7B29-34AA00ED2FF2";
createNode nurbsCurve -n "main_cntShape" -p "main_cnt";
	rename -uid "75C78386-4398-0D05-16CA-D79620646D13";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "driver_jnt_grp" -p "main_cnt";
	rename -uid "7AEB7A85-4CAD-8A33-D2E5-579CFB6CA2E6";
createNode joint -n "driver_arm_L0_shoulder_jnt1" -p "driver_jnt_grp";
	rename -uid "2D196CEF-4DB7-0B7B-2664-D0A20BBA5729";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 11.309932474020208 -90 ;
	setAttr ".ds" 2;
	setAttr ".radi" 2;
createNode parentConstraint -n "driver_arm_L0_shoulder_jnt1_parentConstraint1" -p
		 "driver_arm_L0_shoulder_jnt1";
	rename -uid "D57A541B-4827-3189-E45F-979FB97E754A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_arm_L0_shoulder_jntW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "ik_arm_L0_shoulder_jntW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 8.8817841970012523e-16 
		-1.1102230246251565e-15 ;
	setAttr ".tg[1].tot" -type "double3" -1.7763568394002505e-15 8.8817841970012523e-16 
		-1.1102230246251565e-15 ;
	setAttr ".rst" -type "double3" 3 10 -8.644626606324616e-16 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "driver_arm_L0_elbow_jnt" -p "driver_jnt_grp";
	rename -uid "CEA04899-43AA-63CE-C626-9194567864C8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".opm" -type "matrix" 0.99999999999999989 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".jo" -type "double3" 0 -11.309932474020211 -90 ;
	setAttr ".ssc" no;
	setAttr ".ds" 2;
	setAttr ".radi" 2;
createNode parentConstraint -n "driver_arm_L0_elbow_jnt_parentConstraint1" -p "driver_arm_L0_elbow_jnt";
	rename -uid "33CEC0DA-41A8-5E08-11B6-FCB1B45F8E85";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_arm_L0_elbow_jntW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "ik_arm_L0_elbow_jntW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 -4.4408920985006262e-16 3.3306690738754716e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 6.3611093629270335e-15 0 ;
	setAttr ".tg[1].tot" -type "double3" 0 0 1.9428902930940259e-16 ;
	setAttr ".tg[1].tor" -type "double3" 0 6.3611093629270335e-15 0 ;
	setAttr ".lr" -type "double3" 0 -3.8798770767571983e-05 0 ;
	setAttr ".rst" -type "double3" 2.9999999999999991 4.9999999999999991 -0.99999999999999911 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "driver_arm_L0_wrist_jnt" -p "driver_jnt_grp";
	rename -uid "9F10A1A9-4CA5-EE79-0D8F-64B8D10D4F0E";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000293263452387 1.0000293263452387 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 0 -11.309932474020215 -90 ;
	setAttr ".ds" 2;
	setAttr ".radi" 2;
createNode parentConstraint -n "driver_arm_L0_wrist_jnt_parentConstraint1" -p "driver_arm_L0_wrist_jnt";
	rename -uid "D4E95C2A-4170-FE46-57F5-5FBB97380820";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_arm_L0_wrist_jntW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "ik_arm_L0_wrist_jntW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -0.00032707962355342572 -1.929088360164144e-06 
		0.0015244934194058833 ;
	setAttr ".tg[0].tor" -type "double3" 0 4.7708320221952752e-15 0 ;
	setAttr ".tg[1].tot" -type "double3" -0.00032707962355344746 -1.929088360164144e-06 
		0.0015244934194057745 ;
	setAttr ".tg[1].tor" -type "double3" 0 4.7708320221952752e-15 0 ;
	setAttr ".lr" -type "double3" 0 1.1378243539654843e-09 0 ;
	setAttr ".rst" -type "double3" 2.9999980709116367 0.00061970571572533828 0.0014307431956346317 ;
	setAttr ".rsrr" -type "double3" 0 -4.7708320221952752e-15 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "L_arm_option_offset" -p "main_cnt";
	rename -uid "3B154422-4BAE-0967-F0C8-7B8FA69A7D24";
	setAttr ".t" -type "double3" 6.5010196416488233 10 0 ;
createNode transform -n "L_arm_option" -p "L_arm_option_offset";
	rename -uid "62769FF0-4945-9B48-3F5C-B5A4FB82B727";
	addAttr -ci true -sn "FkIkSwitch" -ln "FkIkSwitch" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ArmpitRotate" -ln "ArmpitRotate" -at "double";
	setAttr -l on -k off ".v";
	setAttr ".wfcc" -type "float3" 1 1 0 ;
	setAttr ".uoc" 2;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".FkIkSwitch";
	setAttr -k on ".ArmpitRotate";
createNode nurbsCurve -n "curveShape2" -p "L_arm_option";
	rename -uid "309B0D70-4845-F2EB-BE49-DBA50F78A95D";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 1 0 ;
	setAttr ".uoc" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		0.22747404044513142 0.68242212133539437 3.0305630064803884e-16
		-0.22747404044513142 0.68242212133539437 3.0305630064803884e-16
		-0.17349864525849557 0.17349864525849557 7.7048876282901608e-17
		-0.68242212133539437 0.22747404044513142 1.0101876688267959e-16
		-0.68242212133539437 -0.22747404044513142 -1.0101876688267959e-16
		-0.17349864525849557 -0.17349864525849557 -7.7048876282901608e-17
		-0.22747404044513142 -0.68242212133539437 -3.0305630064803884e-16
		0.22747404044513142 -0.68242212133539437 -3.0305630064803884e-16
		0.17349864525849557 -0.17349864525849557 -7.7048876282901608e-17
		0.68242212133539437 -0.22747404044513142 -1.0101876688267959e-16
		0.68242212133539437 0.22747404044513142 1.0101876688267959e-16
		0.17349864525849557 0.17349864525849557 7.7048876282901608e-17
		0.22747404044513142 0.68242212133539437 3.0305630064803884e-16
		;
createNode transform -n "fk_grp" -p "main_cnt";
	rename -uid "D178BC5B-41E6-BD62-DB0C-759264480D52";
createNode transform -n "fk_arm_L0_shoulder_cnt" -p "fk_grp";
	rename -uid "94104E40-4A1A-4B23-5DB5-DFA1365F8782";
	setAttr ".t" -type "double3" 3.0000000000000004 10 -2.1126471443972973e-16 ;
	setAttr ".r" -type "double3" 0 11.309932474020204 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754681e-16 ;
	setAttr ".rpt" -type "double3" -2.4651903288156619e-32 -6.5319794619273079e-17 -6.4679342911810113e-18 ;
	setAttr ".sp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
	setAttr ".spt" -type "double3" 0 0 -1.4791141972893969e-31 ;
createNode transform -n "fk_arm_L0_shoulder_cnt" -p "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt";
	rename -uid "342F5DED-4940-5616-6746-E48045979867";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "fk_arm_L0_shoulder_cntShape" -p "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt";
	rename -uid "15FC1318-4256-12D9-0BD6-CCA2EFB77674";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".tw" yes;
createNode transform -n "fk_arm_L0_elbow_cnt" -p "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt";
	rename -uid "1B563C4A-4A58-03D5-ADE4-2C9B2EB261CF";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".t" -type "double3" 5.0990195135927845 4.4408920985006262e-16 0 ;
	setAttr ".r" -type "double3" 0 -22.619864948040419 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754681e-16 ;
	setAttr ".rpt" -type "double3" -1.2810265668751798e-16 0 -2.5620531337503654e-17 ;
	setAttr ".sp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
	setAttr ".spt" -type "double3" 0 0 -1.4791141972893969e-31 ;
createNode transform -n "fk_arm_L0_elbow_cnt" -p "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt";
	rename -uid "8C46EA9C-44DE-D8EF-1F9D-369225DCAF87";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "fk_arm_L0_elbow_cntShape" -p "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt";
	rename -uid "505D4021-409B-EE30-44B6-569A4EDF3A10";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.596474681976945e-17 1.5672232497824492 -1.567223249782449
		8.3101253693685115e-33 2.2163883751087754 -1.3571464646221824e-16
		-9.596474681976945e-17 1.5672232497824488 1.567223249782449
		-1.3571464646221829e-16 1.1489796475049661e-16 2.2163883751087763
		-9.596474681976945e-17 -1.567223249782449 1.567223249782449
		-1.3594628955617178e-32 -2.2163883751087767 2.2201713939206452e-16
		9.596474681976945e-17 -1.5672232497824488 -1.567223249782449
		1.3571464646221829e-16 -3.022481001559918e-16 -2.2163883751087763
		9.596474681976945e-17 1.5672232497824492 -1.567223249782449
		8.3101253693685115e-33 2.2163883751087754 -1.3571464646221824e-16
		-9.596474681976945e-17 1.5672232497824488 1.567223249782449
		;
createNode transform -n "fk_arm_L0_wrist_cnt" -p "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt";
	rename -uid "C6A06105-46C8-2E80-9152-2C99B0725ABB";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".t" -type "double3" 5.0990195135927872 -2.2204460492503131e-15 9.2115854286349274e-16 ;
	setAttr ".rp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
	setAttr ".sp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
createNode transform -n "fk_arm_L0_wrist_cnt" -p "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt";
	rename -uid "A5CDE1E2-4626-E80C-FAF5-A3A78F627C5A";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".t" -type "double3" 0 0 -4.4408920985006262e-16 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "fk_arm_L0_wrist_cntShape" -p "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt|fk_arm_L0_wrist_cnt";
	rename -uid "880B00DE-4D78-060D-749D-5182167A48F9";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.596474681976945e-17 1.5672232497824492 -1.567223249782449
		8.3101253693685115e-33 2.2163883751087754 -1.3571464646221824e-16
		-9.596474681976945e-17 1.5672232497824488 1.567223249782449
		-1.3571464646221829e-16 1.1489796475049661e-16 2.2163883751087763
		-9.596474681976945e-17 -1.567223249782449 1.567223249782449
		-1.3594628955617178e-32 -2.2163883751087767 2.2201713939206452e-16
		9.596474681976945e-17 -1.5672232497824488 -1.567223249782449
		1.3571464646221829e-16 -3.022481001559918e-16 -2.2163883751087763
		9.596474681976945e-17 1.5672232497824492 -1.567223249782449
		8.3101253693685115e-33 2.2163883751087754 -1.3571464646221824e-16
		-9.596474681976945e-17 1.5672232497824488 1.567223249782449
		;
createNode joint -n "fk_arm_L0_shoulder_jnt" -p "fk_grp";
	rename -uid "83DF3B10-43FB-4A38-B897-43B3666675DC";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 11.309932474020208 -90 ;
	setAttr ".ds" 2;
createNode joint -n "fk_arm_L0_elbow_jnt" -p "fk_arm_L0_shoulder_jnt";
	rename -uid "D26F7C9A-4BE8-E92C-149D-53B2AF436F1D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -22.619864948040419 0 ;
	setAttr ".ds" 2;
createNode joint -n "fk_arm_L0_wrist_jnt" -p "fk_arm_L0_elbow_jnt";
	rename -uid "0D62012B-4BDA-1009-6BD4-7DB7B6F7D416";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ds" 2;
createNode parentConstraint -n "fk_arm_L0_wrist_jnt_parentConstraint1" -p "fk_arm_L0_wrist_jnt";
	rename -uid "4082F887-4E00-C227-862D-52B2D4C84909";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_wrist_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 6.7497121106582305e-16 -1.7763568394002505e-15 
		-1.1539830382738265e-15 ;
	setAttr ".lr" -type "double3" 0 3.8799908591928195e-05 0 ;
	setAttr ".rst" -type "double3" 5.0990195135927854 -2.6645352591003757e-15 2.4834330989473046e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "fk_arm_L0_elbow_jnt_parentConstraint1" -p "fk_arm_L0_elbow_jnt";
	rename -uid "E9586232-4E0D-B31D-BBCE-6287B5D05369";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_arm_L0_elbow_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 -1.3322676295501878e-15 
		-6.9388939039072363e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 -3.1805546814635168e-15 0 ;
	setAttr ".lr" -type "double3" 0 -3.8798770769162278e-05 0 ;
	setAttr ".rst" -type "double3" 5.0990195135927845 4.4408920985006262e-16 0 ;
	setAttr ".rsrr" -type "double3" 0 -3.1805546814635168e-15 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "fk_arm_L0_shoulder_jnt_parentConstraint1" -p "fk_arm_L0_shoulder_jnt";
	rename -uid "BFDDBEF0-4DC6-2B39-8F16-AE91D83B4672";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_arm_L0_shoulder_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 -1.3322676295501878e-15 
		4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.5902773407317584e-15 0 ;
	setAttr ".lr" -type "double3" 0 -1.5902773407317584e-15 0 ;
	setAttr ".rst" -type "double3" 2.9999999999999991 9.9999999999999982 -1.2417165494736525e-16 ;
	setAttr ".rsrr" -type "double3" 0 -1.5902773407317584e-15 0 ;
	setAttr -k on ".w0";
createNode transform -n "fk_wrist_loc" -p "fk_grp";
	rename -uid "42D1B33D-44EB-CAAB-8625-7B9BFC730E19";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".it" no;
createNode locator -n "fk_wrist_locShape" -p "fk_wrist_loc";
	rename -uid "8EE6E1BB-444F-5E52-C4E5-F18F4C9E8EA8";
	setAttr -k off ".v";
createNode pointConstraint -n "fk_wrist_loc_pointConstraint1" -p "fk_wrist_loc";
	rename -uid "0FB2662E-4B50-42FF-BEC4-A685A3CCF620";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_wrist_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 8.8817841970012523e-16 0.00032283741165883845 -6.4467480117236242e-05 ;
	setAttr ".rst" -type "double3" 2.9999999999999996 0.00032283741165892556 -6.4467480114691349e-05 ;
	setAttr -k on ".w0";
createNode transform -n "fk_elbow_loc" -p "fk_grp";
	rename -uid "30CA7A70-4429-E26A-0F72-3692D54D4215";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".it" no;
createNode locator -n "fk_elbow_locShape" -p "fk_elbow_loc";
	rename -uid "8C92923F-49E8-9CAA-0ACC-CEAC8BCF297B";
	setAttr -k off ".v";
createNode pointConstraint -n "fk_elbow_loc_pointConstraint1" -p "fk_elbow_loc";
	rename -uid "710B081F-49C8-5A59-C211-8F92CBB9F155";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_arm_L0_elbow_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 2.8610229483305716e-06 0.0038800239562979399 0.0007740259170524455 ;
	setAttr ".rst" -type "double3" 3.0000028610229492 5.0038800239562988 -0.99922597408294678 ;
	setAttr -k on ".w0";
createNode transform -n "fk_shoulder_loc" -p "fk_grp";
	rename -uid "E7203E9B-4BDE-6861-D701-A8B3B9363C2C";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".it" no;
createNode locator -n "fk_shoulder_locShape" -p "fk_shoulder_loc";
	rename -uid "30E5A2D4-418B-617C-0A58-6B94297E20EF";
	setAttr -k off ".v";
createNode pointConstraint -n "fk_shoulder_loc_pointConstraint1" -p "fk_shoulder_loc";
	rename -uid "2E877754-47AA-CCC7-D000-0E8103EB0B00";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_arm_L0_shoulder_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -4.4408920985006262e-16 0 -6.5319794740757747e-16 ;
	setAttr ".rst" -type "double3" 3 10 -8.644626618473072e-16 ;
	setAttr -k on ".w0";
createNode transform -n "ik_grp" -p "main_cnt";
	rename -uid "F5C5F4D3-492B-CAF1-AEC5-9397AFE75C22";
createNode transform -n "scale_ik_grp" -p "ik_grp";
	rename -uid "C0840BF3-4CCC-F37D-596C-69B96ECC081A";
createNode joint -n "ik_arm_L0_shoulder_jnt" -p "scale_ik_grp";
	rename -uid "AF824CFD-483B-77F6-ED22-5CA7DBE61AA9";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 11.309932474020208 -90 ;
	setAttr ".ds" 2;
createNode joint -n "ik_arm_L0_elbow_jnt" -p "ik_arm_L0_shoulder_jnt";
	rename -uid "157B81C9-4AF5-E6ED-E9D5-D793EBDD89A9";
	setAttr ".t" -type "double3" 5.0990195135927845 1.9721522630525295e-31 6.1007838425152773e-17 ;
	setAttr ".r" -type "double3" -1.1571143610897515e-28 -2.4461779250814039e-13 -2.7770744666154035e-28 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -22.619864948040419 0 ;
	setAttr ".ds" 2;
createNode joint -n "ik_arm_L0_wrist_jnt" -p "ik_arm_L0_elbow_jnt";
	rename -uid "C051E431-4AE3-6B8E-87CA-51940BA0DDEC";
	setAttr ".t" -type "double3" 5.0990195135927854 -2.4119867349627679e-15 1.9154068571245576e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ds" 2;
createNode orientConstraint -n "ik_arm_L0_wrist_jnt_orientConstraint1" -p "ik_arm_L0_wrist_jnt";
	rename -uid "BB003D97-4592-2EB8-B3FC-1CAAB9C50B44";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_wrist_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "ik_arm_L0_elbow_jnt";
	rename -uid "C725962A-4FA4-DE89-714E-959D758927A1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "ik_arm_L0_shoulder_jnt_parentConstraint1" -p "ik_arm_L0_shoulder_jnt";
	rename -uid "78958E3C-4BF2-BB7C-CDB3-058BA8A5215E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_shoulder_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 -1.3322676295501878e-15 
		4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.5902773407317584e-15 0 ;
	setAttr ".lr" -type "double3" 0 -1.5902773407317584e-15 0 ;
	setAttr ".rst" -type "double3" 2.9999999999999991 9.9999999999999982 -1.2417165494736525e-16 ;
	setAttr ".rsrr" -type "double3" 0 -1.5902773407317584e-15 0 ;
	setAttr -k on ".w0";
createNode transform -n "ik_arm_L0_shoulder_cnt" -p "ik_grp";
	rename -uid "3907EF45-4D60-2254-EC68-B0AAA57E2996";
	setAttr ".t" -type "double3" 3.0000000000000004 10 -2.1126471443972973e-16 ;
	setAttr ".r" -type "double3" 0 11.309932474020204 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754681e-16 ;
	setAttr ".rpt" -type "double3" -2.4651903288156619e-32 -6.5319794619273079e-17 -6.4679342911810113e-18 ;
	setAttr ".sp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
	setAttr ".spt" -type "double3" 0 0 -1.4791141972893969e-31 ;
createNode transform -n "ik_arm_L0_shoulder_cnt" -p "|main_cnt|ik_grp|ik_arm_L0_shoulder_cnt";
	rename -uid "049CA0C0-429D-E6C0-66CC-86A13A1594D6";
	setAttr ".wfcc" -type "float3" 0 0 1 ;
	setAttr ".uoc" 2;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "ik_arm_L0_shoulder_cntShape" -p "|main_cnt|ik_grp|ik_arm_L0_shoulder_cnt|ik_arm_L0_shoulder_cnt";
	rename -uid "EDC9B62B-4263-BBB8-A149-458F0FE1106C";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 0 1 ;
	setAttr ".uoc" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.596474681976945e-17 1.5672232497824492 -1.567223249782449
		8.3101253693685115e-33 2.2163883751087754 -1.3571464646221824e-16
		-9.596474681976945e-17 1.5672232497824488 1.567223249782449
		-1.3571464646221829e-16 1.1489796475049661e-16 2.2163883751087763
		-9.596474681976945e-17 -1.567223249782449 1.567223249782449
		-1.3594628955617178e-32 -2.2163883751087767 2.2201713939206452e-16
		9.596474681976945e-17 -1.5672232497824488 -1.567223249782449
		1.3571464646221829e-16 -3.022481001559918e-16 -2.2163883751087763
		9.596474681976945e-17 1.5672232497824492 -1.567223249782449
		8.3101253693685115e-33 2.2163883751087754 -1.3571464646221824e-16
		-9.596474681976945e-17 1.5672232497824488 1.567223249782449
		;
createNode transform -n "ik_arm_L0_wrist_cnt" -p "ik_grp";
	rename -uid "DE58D175-4EDE-C119-3C5A-1B96B94E5A63";
	setAttr ".t" -type "double3" 2.9999999999999987 8.8817841970012523e-16 2.1094237467877974e-15 ;
	setAttr ".r" -type "double3" 0 -11.309932474020217 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754681e-16 ;
	setAttr ".rpt" -type "double3" -2.4651903288156619e-32 6.531979461927319e-17 -6.4679342911811014e-18 ;
	setAttr ".sp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
	setAttr ".spt" -type "double3" 0 0 -1.4791141972893958e-31 ;
createNode transform -n "ik_arm_L0_wrist_cnt" -p "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt";
	rename -uid "7DB69D38-4B8A-154E-FCCA-D88FFE7C750C";
	setAttr ".wfcc" -type "float3" 0 0 1 ;
	setAttr ".uoc" 2;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000009 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "curveShape3" -p "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt";
	rename -uid "17091728-49E7-9FBD-AB84-80B27034CB51";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 0 1 ;
	setAttr ".uoc" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-0.48259027608993266 0.96844347232384942 -0.96844347232384942
		1.4542966685577681 0.96844347232384942 -0.96844347232384942
		1.4542966685577681 0.96844347232384942 0.96844347232384942
		-0.48259027608993266 0.96844347232384942 0.96844347232384942
		-0.48259027608993266 0.96844347232384942 -0.96844347232384942
		-0.48259027608993266 -0.96844347232384942 -0.96844347232384942
		-0.48259027608993266 -0.96844347232384942 0.96844347232384942
		1.4542966685577681 -0.96844347232384942 0.96844347232384942
		1.4542966685577681 -0.96844347232384942 -0.96844347232384942
		-0.48259027608993266 -0.96844347232384942 -0.96844347232384942
		-0.48259027608993266 -0.96844347232384942 0.96844347232384942
		-0.48259027608993266 0.96844347232384942 0.96844347232384942
		1.4542966685577681 0.96844347232384942 0.96844347232384942
		1.4542966685577681 -0.96844347232384942 0.96844347232384942
		1.4542966685577681 -0.96844347232384942 -0.96844347232384942
		1.4542966685577681 0.96844347232384942 -0.96844347232384942
		;
createNode ikHandle -n "ikHandle1" -p "ik_grp";
	rename -uid "9B0B81D7-4896-B83D-2916-69A0855B5D24";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "48C87C14-4467-1E6C-4CF7-7A8BFA405599";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "TriangleW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 8.8817841970012523e-16 -4.9999999999999982 -3.8807034363183552 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "ikHandle1_pointConstraint1" -p "ikHandle1";
	rename -uid "C512D3BB-47B3-55E3-E561-D79D64EF2FE7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_wrist_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 4.82520006856318e-16 -1.0290913420563948e-15 ;
	setAttr ".rst" -type "double3" 2.9999999999999978 8.8817841970012523e-16 9.9920072216264089e-16 ;
	setAttr -k on ".w0";
createNode transform -n "L_arm_pv_offset" -p "ik_grp";
	rename -uid "BDF4D676-4980-D8A5-DF29-76B2CB9454E1";
createNode transform -n "L_arm_pv" -p "L_arm_pv_offset";
	rename -uid "1CA1A013-450A-C586-2266-98904767D70E";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 1 -en "hand:world" -at "enum";
	setAttr ".wfcc" -type "float3" 0 0 1 ;
	setAttr ".uoc" 2;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Follow" 1;
createNode nurbsCurve -n "curveShape1" -p "L_arm_pv";
	rename -uid "394FA60F-475F-AE97-4080-ECA2D5126CEC";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 0 1 ;
	setAttr ".uoc" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 11 0 no 3
		12 0 1 2 3 4 5 6 7 8 9 10 11
		12
		-5.5511138965906754e-16 -1.1102217980900495e-16 0.0071372617665004245
		-0.50000015472447634 0.50000015472447634 -1.3291099524948911
		-0.50000015472447645 -0.50000015472447612 -1.3291099524948917
		-5.5511138965906754e-16 -1.1102217980900495e-16 0.0071372617665004245
		0.5000001547244759 -0.5000001547244759 -1.3291099524948911
		0.5000001547244759 0.50000015472447623 -1.3291099524948904
		-5.5511138965906754e-16 -1.1102217980900495e-16 0.0071372617665004245
		-0.50000015472447634 0.50000015472447634 -1.3291099524948911
		0.5000001547244759 0.50000015472447623 -1.3291099524948904
		0.5000001547244759 -0.5000001547244759 -1.3291099524948911
		-0.50000015472447645 -0.50000015472447612 -1.3291099524948917
		-0.50000015472447634 0.50000015472447634 -1.3291099524948911
		;
createNode parentConstraint -n "L_arm_pv_offset_parentConstraint1" -p "L_arm_pv_offset";
	rename -uid "E6C1D18F-422D-F769-E939-21A138FE160E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_wrist_cntW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "main_cntW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -5.0990195135927845 8.8817841970012523e-16 
		-5.9934832092280033 ;
	setAttr ".tg[0].tor" -type "double3" 11.309932474020219 0 90 ;
	setAttr ".tg[1].tot" -type "double3" 2.9999999999999996 3.8245812369906025 -6.8770938150469805 ;
	setAttr ".rst" -type "double3" 2.9999999999999996 3.8245812369906025 -6.8770938150469805 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "ik_L0_elbowSnap_cnt_offset" -p "ik_grp";
	rename -uid "E274B2EE-44E2-3CFC-2404-04B5E372C26E";
	setAttr ".s" -type "double3" 0.99999999999999944 1 0.99999999999999911 ;
	setAttr ".rp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754667e-16 ;
	setAttr ".rpt" -type "double3" -6.7426253617207878e-17 6.5319794619273251e-17 -1.3503784435682067e-17 ;
	setAttr ".sp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
	setAttr ".spt" -type "double3" 0 0 -2.9582283945787895e-31 ;
createNode transform -n "ik_arm_L0_elbowSnap_cnt" -p "ik_L0_elbowSnap_cnt_offset";
	rename -uid "5528C30F-4E01-FBBD-6CCE-35A146B59ED7";
	setAttr ".wfcc" -type "float3" 0 1 1 ;
	setAttr ".uoc" 2;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ik_arm_L0_elbowSnap_cntShape" -p "ik_arm_L0_elbowSnap_cnt";
	rename -uid "F464F8D3-48BA-8544-C376-70B35AE609AD";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 1 ;
	setAttr ".uoc" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 1.5672232497824496 -1.567223249782449
		-8.8817841970012523e-16 2.2163883751087758 -5.551115123125901e-17
		0 1.5672232497824488 1.5672232497824492
		-8.8817841970012523e-16 4.4408920985006262e-16 2.2163883751087767
		0 -1.5672232497824485 1.5672232497824492
		-8.8817841970012523e-16 -2.2163883751087763 2.7755575615628795e-16
		0 -1.5672232497824483 -1.567223249782449
		-8.8817841970012523e-16 0 -2.2163883751087758
		0 1.5672232497824496 -1.567223249782449
		-8.8817841970012523e-16 2.2163883751087758 -5.551115123125901e-17
		0 1.5672232497824488 1.5672232497824492
		;
createNode pointConstraint -n "ik_L0_elbowSnap_cnt_offset_pointConstraint1" -p "ik_L0_elbowSnap_cnt_offset";
	rename -uid "A4EA6921-4D52-B0B4-C54F-3489B329AB9C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_elbow_jntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 0 -2.2204460492503131e-16 ;
	setAttr ".rst" -type "double3" 2.9999999999999991 4.9999999999999991 -0.99999999999999967 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "ik_L0_elbowSnap_cnt_offset_orientConstraint1" -p "ik_L0_elbowSnap_cnt_offset";
	rename -uid "7979D2A5-4E36-D3FA-820B-5A909689DF1C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_shoulder_jnt1W0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "driver_arm_L0_elbow_jntW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 -1.9399385385353775e-05 -90 ;
	setAttr ".o" -type "double3" 0 -11.309932474020215 0 ;
	setAttr ".rsrr" -type "double3" 0 -11.309932474020215 -90 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "ik_arm_loc" -p "ik_grp";
	rename -uid "CA051EF4-440B-1E81-66D1-7DAB84DA4A76";
	setAttr ".it" no;
createNode locator -n "ik_arm_locShape" -p "ik_arm_loc";
	rename -uid "19C5111C-4964-F1DB-03F6-AC83FD6E7B6A";
	setAttr -k off ".v";
createNode pointConstraint -n "ik_arm_loc_pointConstraint1" -p "ik_arm_loc";
	rename -uid "EE7E2179-43A4-1D6E-36FF-14ACF28F1E1C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_shoulder_jntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 8.8817841970012523e-16 1.7763568394002505e-15 -2.2321595848182106e-25 ;
	setAttr ".rst" -type "double3" 3 10 -1.2417165517058121e-16 ;
	setAttr -k on ".w0";
createNode transform -n "ik_elbow_loc" -p "ik_grp";
	rename -uid "4C858967-49FB-902E-065B-359AFED7D328";
	setAttr ".it" no;
createNode locator -n "ik_elbow_locShape" -p "ik_elbow_loc";
	rename -uid "A3755C5D-4F4D-CAEA-1F57-0091CD115EC1";
	setAttr -k off ".v";
createNode pointConstraint -n "ik_elbow_loc_pointConstraint1" -p "ik_elbow_loc";
	rename -uid "03D0BEA3-4FE6-5B55-8107-E587C900F078";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_elbowSnap_cntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 8.8817841970012523e-16 8.8817841970012523e-16 -3.3306690738754696e-16 ;
	setAttr ".rst" -type "double3" 3 5 -1 ;
	setAttr -k on ".w0";
createNode transform -n "ik_wrist_loc" -p "ik_grp";
	rename -uid "F5145C10-4A1B-0101-C090-CEA4327C7889";
	setAttr ".it" no;
createNode locator -n "ik_wrist_locShape" -p "ik_wrist_loc";
	rename -uid "D71D5913-4EEF-B878-47AF-99932D8A5F13";
	setAttr -k off ".v";
createNode pointConstraint -n "ik_wrist_loc_pointConstraint1" -p "ik_wrist_loc";
	rename -uid "38484675-4A8D-819F-0665-A987E3727A6C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_wrist_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 2.2204460492503131e-15 -1.2463477977198459e-15 -1.3272471354237533e-15 ;
	setAttr ".rst" -type "double3" 3 -8.8817841970012523e-16 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "twist_grp" -p "main_cnt";
	rename -uid "AFDF29F1-42D8-44D3-3C32-589A7E0260A6";
createNode transform -n "twist_cnt_grp" -p "twist_grp";
	rename -uid "2A99B3C5-4972-78C2-3007-3B978656D97B";
createNode transform -n "arm_L0_twist01_cntOffset" -p "twist_cnt_grp";
	rename -uid "A017C4FE-4BF3-619A-0232-4FB77ACE3DE8";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -2.4651903288156613e-32 3.3306690738754681e-16 ;
	setAttr ".rpt" -type "double3" 8.1046816538519393e-24 -6.5319794619273128e-17 -6.4679342911811322e-18 ;
	setAttr ".sp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
	setAttr ".spt" -type "double3" 0 5.4738221262688143e-48 -1.4791141972893969e-31 ;
createNode transform -n "arm_L0_twist01_cnt" -p "arm_L0_twist01_cntOffset";
	rename -uid "0580D600-4401-2C95-87D2-7C92C2B2B71F";
	setAttr ".t" -type "double3" 0 4.4408920985006262e-16 -4.4408920985006262e-16 ;
createNode nurbsCurve -n "arm_L0_twist01_cntShape" -p "arm_L0_twist01_cnt";
	rename -uid "E2FA4E28-43E3-F096-FA5B-439DDD508D74";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.4417196182945474e-16 1.07619900791017 -1.07619900791017
		2.7827377831531747e-16 1.5219752327990319 -9.3194104861444118e-17
		2.123755948011802e-16 1.0761990079101698 1.07619900791017
		1.850796734538734e-16 -6.0237424328671063e-17 1.5219752327990326
		2.123755948011802e-16 -1.07619900791017 1.07619900791017
		2.7827377831531747e-16 -1.5219752327990328 1.524572999960032e-16
		3.4417196182945474e-16 -1.0761990079101698 -1.07619900791017
		3.7146788317676159e-16 -3.4668811427875445e-16 -1.5219752327990326
		3.4417196182945474e-16 1.07619900791017 -1.07619900791017
		2.7827377831531747e-16 1.5219752327990319 -9.3194104861444118e-17
		2.123755948011802e-16 1.0761990079101698 1.07619900791017
		;
createNode pointConstraint -n "arm_L0_twist01_cntOffset_pointConstraint1" -p "arm_L0_twist01_cntOffset";
	rename -uid "5F214523-4D02-B8EF-0A9A-CB9D910AD40C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_shoulder_jnt1W0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "ik_arm_L0_elbowSnap_cntW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 2.9999999999999996 7.5 -0.50000000000000056 ;
	setAttr -k on ".w0" 2;
	setAttr -k on ".w1";
createNode orientConstraint -n "arm_L0_twist01_cntOffset_orientConstraint1" -p "arm_L0_twist01_cntOffset";
	rename -uid "A897A4BB-4224-3C6F-BC8D-489BBEF38EE6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upperarm_L0_Twist_Start_jntW0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "upperarm_L0_NoTwist_Start_jntW1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 2.7884028001455633e-06 7.7667094648841628 -90 ;
	setAttr ".rsrr" -type "double3" 0.23483958705158686 12.012192180639692 -89.890422674547878 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 2;
createNode transform -n "arm_L0_twist02_cntOffset" -p "twist_cnt_grp";
	rename -uid "1D18FB6C-42A5-432D-F3BE-DAB417EAE996";
	addAttr -ci true -k true -sn "blendOrient1" -ln "blendOrient1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".rp" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".rpt" -type "double3" 3.2418726933788692e-23 -8.7093059492363957e-17 -8.6239123882425163e-18 ;
	setAttr ".sp" -type "double3" 0 0 4.4408920985006262e-16 ;
createNode transform -n "arm_L0_twist02_cnt" -p "arm_L0_twist02_cntOffset";
	rename -uid "CCA2ACE2-4545-40F3-8303-BB84F0FED8EA";
createNode nurbsCurve -n "arm_L0_twist02_cntShape" -p "arm_L0_twist02_cnt";
	rename -uid "26BA4F8C-4841-CE5E-5D0F-E98438FD2605";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.4417196182945474e-16 1.07619900791017 -1.07619900791017
		2.7827377831531747e-16 1.5219752327990319 -9.3194104861444118e-17
		2.123755948011802e-16 1.0761990079101698 1.07619900791017
		1.850796734538734e-16 -6.0237424328671063e-17 1.5219752327990326
		2.123755948011802e-16 -1.07619900791017 1.07619900791017
		2.7827377831531747e-16 -1.5219752327990328 1.524572999960032e-16
		3.4417196182945474e-16 -1.0761990079101698 -1.07619900791017
		3.7146788317676159e-16 -3.4668811427875445e-16 -1.5219752327990326
		3.4417196182945474e-16 1.07619900791017 -1.07619900791017
		2.7827377831531747e-16 1.5219752327990319 -9.3194104861444118e-17
		2.123755948011802e-16 1.0761990079101698 1.07619900791017
		;
createNode pointConstraint -n "arm_L0_twist02_cntOffset_pointConstraint1" -p "arm_L0_twist02_cntOffset";
	rename -uid "9C22C353-4545-4483-A36D-1CBBA54DADB7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_shoulder_jnt1W0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "ik_arm_L0_elbowSnap_cntW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 2.9999999999999996 7.5 -0.50000000000000067 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 2;
createNode orientConstraint -n "arm_L0_twist02_cntOffset_orientConstraint1" -p "arm_L0_twist02_cntOffset";
	rename -uid "BC394E0C-4928-2C33-1FFD-328990A4B365";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upperarm_L0_Twist_Start_jntW0" -dv 
		1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "upperarm_L0_NoTwist_Start_jntW1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 1.3942014000727808e-06 7.7667094648841628 -90 ;
	setAttr ".rsrr" -type "double3" 1.3363204755228397 11.337329899220217 -89.599212199289084 ;
	setAttr -k on ".w0" 2;
	setAttr -k on ".w1";
createNode transform -n "arm_L0_twist03_cntOffste" -p "twist_cnt_grp";
	rename -uid "9B32E58F-47AC-974A-91D7-4C8DC1F22337";
	setAttr ".s" -type "double3" 0.99999051764899438 1 1.0000094824409211 ;
	setAttr ".sh" -type "double3" 0 4.5553283442202932e-05 0 ;
	setAttr ".rp" -type "double3" 1.5172435107798164e-20 -2.4651903288156619e-32 3.3307006567481903e-16 ;
	setAttr ".rpt" -type "double3" -1.5172435107822816e-20 6.5305536213696791e-17 -6.4650200636518561e-18 ;
	setAttr ".sp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
	setAttr ".spt" -type "double3" 1.5172435107798167e-20 0 3.1582872720821259e-21 ;
createNode transform -n "arm_L0_twist03_cnt" -p "arm_L0_twist03_cntOffste";
	rename -uid "A9F8F5DF-4A39-BBD9-DC68-AE8F0A67BDA3";
	setAttr ".t" -type "double3" 1.125520998129792e-05 4.1260684289182163e-12 0 ;
createNode nurbsCurve -n "arm_L0_twist03_cntShape" -p "arm_L0_twist03_cnt";
	rename -uid "D84518C9-47C8-0356-91E4-16BA0A40326F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.4417196182945474e-16 1.07619900791017 -1.07619900791017
		2.7827377831531747e-16 1.5219752327990319 -9.3194104861444118e-17
		2.123755948011802e-16 1.0761990079101698 1.07619900791017
		1.850796734538734e-16 -6.0237424328671063e-17 1.5219752327990326
		2.123755948011802e-16 -1.07619900791017 1.07619900791017
		2.7827377831531747e-16 -1.5219752327990328 1.524572999960032e-16
		3.4417196182945474e-16 -1.0761990079101698 -1.07619900791017
		3.7146788317676159e-16 -3.4668811427875445e-16 -1.5219752327990326
		3.4417196182945474e-16 1.07619900791017 -1.07619900791017
		2.7827377831531747e-16 1.5219752327990319 -9.3194104861444118e-17
		2.123755948011802e-16 1.0761990079101698 1.07619900791017
		;
createNode orientConstraint -n "arm_L0_twist03_cntOffste_orientConstraint1" -p "arm_L0_twist03_cntOffste";
	rename -uid "7C8EDC23-484E-E45D-33A0-C09CEC2734FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "elbow_L0_Twist_Start_jntW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "elbow_L0_NoTwist_Start_jntW1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 4.0380307351791681e-06 -11.32706434369482 -90.000022214995283 ;
	setAttr ".rsrr" -type "double3" -0.70913322237932053 -11.310114353726727 -89.999999344914485 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 2;
createNode pointConstraint -n "arm_L0_twist03_cntOffste_pointConstraint1" -p "arm_L0_twist03_cntOffste";
	rename -uid "561DD9FE-4F0B-98CD-06D5-D89E602E7863";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_elbowSnap_cntW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "driver_arm_L0_wrist_jntW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 2.9999990354558177 2.5003098528578622 -0.49928462840218285 ;
	setAttr -k on ".w0" 2;
	setAttr -k on ".w1";
createNode transform -n "arm_L0_twist04_cntOffset" -p "twist_cnt_grp";
	rename -uid "E617B0AC-44A6-4598-505A-A9BD4D85D901";
	setAttr ".s" -type "double3" 0.99999051764899438 1 1.0000094824409211 ;
	setAttr ".sh" -type "double3" 0 4.5553283442202932e-05 0 ;
	setAttr ".rp" -type "double3" 1.5172435107798164e-20 -2.4651903288156619e-32 3.3307006567481903e-16 ;
	setAttr ".rpt" -type "double3" -1.5172435107822816e-20 6.5305536213696767e-17 -6.4650200636518469e-18 ;
	setAttr ".sp" -type "double3" 0 -2.4651903288156619e-32 3.3306690738754696e-16 ;
	setAttr ".spt" -type "double3" 1.5172435107798167e-20 0 3.1582872720821259e-21 ;
createNode transform -n "arm_L0_twist04_cnt" -p "arm_L0_twist04_cntOffset";
	rename -uid "C06502DD-4B6F-00FC-675C-928CD617BC1F";
	setAttr ".t" -type "double3" 9.0774035267458896e-12 0 -3.6303445279107604e-12 ;
createNode nurbsCurve -n "arm_L0_twist04_cntShape" -p "arm_L0_twist04_cnt";
	rename -uid "71C349BA-4C17-6E8B-8B0C-C1AA592C20C0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.4417196182945474e-16 1.07619900791017 -1.07619900791017
		2.7827377831531747e-16 1.5219752327990319 -9.3194104861444118e-17
		2.123755948011802e-16 1.0761990079101698 1.07619900791017
		1.850796734538734e-16 -6.0237424328671063e-17 1.5219752327990326
		2.123755948011802e-16 -1.07619900791017 1.07619900791017
		2.7827377831531747e-16 -1.5219752327990328 1.524572999960032e-16
		3.4417196182945474e-16 -1.0761990079101698 -1.07619900791017
		3.7146788317676159e-16 -3.4668811427875445e-16 -1.5219752327990326
		3.4417196182945474e-16 1.07619900791017 -1.07619900791017
		2.7827377831531747e-16 1.5219752327990319 -9.3194104861444118e-17
		2.123755948011802e-16 1.0761990079101698 1.07619900791017
		;
createNode orientConstraint -n "arm_L0_twist04_cntOffset_orientConstraint1" -p "arm_L0_twist04_cntOffset";
	rename -uid "AA3BEF07-4047-D661-6E7B-2784CD8D352E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "elbow_L0_Twist_Start_jntW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "elbow_L0_NoTwist_Start_jntW1" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 4.0380284978121221e-06 -11.327064343694818 -90.000022214995298 ;
	setAttr ".rsrr" -type "double3" -1.4182936033025082 -11.310114331844963 -89.999997049283053 ;
	setAttr -k on ".w0" 2;
	setAttr -k on ".w1";
createNode pointConstraint -n "arm_L0_twist04_cntOffset_pointConstraint1" -p "arm_L0_twist04_cntOffset";
	rename -uid "739C1A46-4B66-E429-7A7C-87AF8B189A84";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_elbowSnap_cntW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "driver_arm_L0_wrist_jntW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 2.9999990354558177 2.5003098528578622 -0.49928462840218285 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 2;
createNode transform -n "Twist_ikhandle_grp" -p "twist_grp";
	rename -uid "7A030D5A-44A8-6242-9213-68AA9834BFE8";
	setAttr ".v" no;
createNode joint -n "upperarm_L0_Twist_Start_jnt" -p "Twist_ikhandle_grp";
	rename -uid "DCFE31E0-4AE4-C2A2-8D5C-C6AABD882CBA";
	setAttr ".r" -type "double3" -7.7284778402458723e-16 -3.5432230091360437 -4.9536442628327457e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 11.309932474020206 -90 ;
	setAttr ".ds" 2;
createNode joint -n "upperarm_L0_Twist_End_jnt" -p "upperarm_L0_Twist_Start_jnt";
	rename -uid "C4C2BC8F-458F-0326-9A28-10B1E7A69A30";
	setAttr ".t" -type "double3" 5.0950632095336914 -8.8817841970012523e-16 -0.31548560625149191 ;
	setAttr ".r" -type "double3" 0 3.5472597134969894 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000250347033779 1.0000250347033779 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -22.619864948040419 0 ;
	setAttr ".ds" 2;
createNode ikEffector -n "effector2" -p "upperarm_L0_Twist_Start_jnt";
	rename -uid "B4C1026E-46AD-B6DF-86AF-76B83DA41063";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "upperarm_L0_Twist_Start_jnt_pointConstraint1" -p "upperarm_L0_Twist_Start_jnt";
	rename -uid "FFEAC904-4D07-B199-CEE6-DEA3EA2AF616";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_shoulder_jnt1W0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 0 2.1773264873091056e-16 ;
	setAttr ".rst" -type "double3" 3 10 -6.4673001190155104e-16 ;
	setAttr -k on ".w0";
createNode joint -n "upperarm_L0_NoTwist_Start_jnt" -p "Twist_ikhandle_grp";
	rename -uid "8A80BD22-4798-1A66-81EC-8CAF6D24AD9A";
	setAttr ".r" -type "double3" 4.1826042004020946e-06 -3.5432230091360437 4.9713439810570323e-10 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 11.309932474020206 -90 ;
	setAttr ".ds" 2;
createNode joint -n "upperarm_L0_NoTwist_End_jnt" -p "upperarm_L0_NoTwist_Start_jnt";
	rename -uid "3A50AEDB-472C-5DD5-5BCD-B48A58F38719";
	setAttr ".t" -type "double3" 5.0950632095336914 -2.3074810950873825e-08 -0.31548560625149036 ;
	setAttr ".r" -type "double3" -3.8757163217211404e-06 3.5472597134970183 1.3719902523413621e-06 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000250347033779 1.0000250347033779 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -22.619864948040423 0 ;
	setAttr ".ds" 2;
createNode ikEffector -n "effector3" -p "upperarm_L0_NoTwist_Start_jnt";
	rename -uid "BB9584CC-4736-9BBC-6AA5-EDB8CD59BCF3";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "upperarm_L0_NoTwist_Start_jnt_pointConstraint1" -p
		 "upperarm_L0_NoTwist_Start_jnt";
	rename -uid "59596A63-4B06-E6D7-CDAD-2CA5D5BB34D2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_shoulder_jnt1W0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 0 2.1773264873091056e-16 ;
	setAttr ".rst" -type "double3" 3 10 -6.4673001190155104e-16 ;
	setAttr -k on ".w0";
createNode ikHandle -n "upperarm_L0_Twist_ikHandle" -p "Twist_ikhandle_grp";
	rename -uid "013BA3E3-4A8F-A262-95D3-6F86C995DEB2";
	setAttr ".pv" -type "double3" 0 2.7755575615628914e-17 1 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "upperarm_L0_Twist_ikHandle_pointConstraint1" -p "upperarm_L0_Twist_ikHandle";
	rename -uid "0029491A-40B3-E0B3-9C3D-2DBD18713DAC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_elbowSnap_cntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.9999999999999991 4.9999999999999991 -0.99999999999999967 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "upperarm_L0_Twist_ikHandle_orientConstraint1" -p "upperarm_L0_Twist_ikHandle";
	rename -uid "172EA305-4224-2428-DA02-A893C796853E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_elbow_jntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -11.309971272790976 -90 ;
	setAttr ".o" -type "double3" 0 22.619864948040419 0 ;
	setAttr ".rsrr" -type "double3" 0 11.309932474020206 -90 ;
	setAttr -k on ".w0";
createNode ikHandle -n "upperarm_L0_NoTwist_ikHandle" -p "Twist_ikhandle_grp";
	rename -uid "EDFC97F3-4032-1E56-F8F3-61B4B5566FB8";
	setAttr ".r" -type "double3" 4.1826195773203027e-06 11.309932474020208 -90 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "upperarm_L0_NoTwist_ikHandle_pointConstraint1" -p "upperarm_L0_NoTwist_ikHandle";
	rename -uid "9D543792-4EC5-A98E-FCD3-79A36B54A5D4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_elbowSnap_cntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.9999999999999991 4.9999999999999991 -0.99999999999999967 ;
	setAttr -k on ".w0";
createNode joint -n "elbow_L0_Twist_Start_jnt" -p "Twist_ikhandle_grp";
	rename -uid "045F529C-4D87-E3E0-96AF-75B1A153A638";
	setAttr ".r" -type "double3" -4.1795727418653906e-06 -0.017131869676849574 -2.0172438115641977e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.1826195821856159e-06 -11.309932474020155 -90.000001640558366 ;
	setAttr ".ds" 2;
createNode joint -n "elbow_L0_Twist_End_jnt" -p "elbow_L0_Twist_Start_jnt";
	rename -uid "A6D6ACB7-4574-E162-CA2C-11AE02D421C1";
	setAttr ".t" -type "double3" 5.1023435592651367 9.2454531284686267e-09 -9.3685307556417435e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ds" 2;
createNode ikEffector -n "effector5" -p "elbow_L0_Twist_Start_jnt";
	rename -uid "E99B16C1-45C9-F44C-AF0B-63A663356BB1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "elbow_L0_Twist_Start_jnt_pointConstraint1" -p "elbow_L0_Twist_Start_jnt";
	rename -uid "79C8D947-4F9A-E018-6BEE-B29B91D438A3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_elbowSnap_cntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 0 5.5511151231257827e-16 ;
	setAttr ".rst" -type "double3" 2.9999999999999991 4.9999999999999991 -0.99999999999999911 ;
	setAttr -k on ".w0";
createNode joint -n "elbow_L0_NoTwist_Start_jnt" -p "Twist_ikhandle_grp";
	rename -uid "A274C17C-4101-DD4B-1771-DAB35C1B8CE2";
	setAttr ".r" -type "double3" -4.1795660245330812e-06 -0.017131869676849577 -2.0172438117473628e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.1826195797529593e-06 -11.309932474020155 -90.000001640558366 ;
	setAttr ".ds" 2;
createNode joint -n "elbow_L0_NoTwist_End_jnt" -p "elbow_L0_NoTwist_Start_jnt";
	rename -uid "CEDF65FB-482D-1CD9-46A9-09B4C6F2EFAA";
	setAttr ".t" -type "double3" 5.1023435592651367 9.2454532918395671e-09 -9.3685309499307728e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".ds" 2;
createNode ikEffector -n "effector4" -p "elbow_L0_NoTwist_Start_jnt";
	rename -uid "6FDDE6D1-48AD-B759-C51F-B7805B4B0E20";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "elbow_L0_NoTwist_Start_jnt_pointConstraint1" -p "elbow_L0_NoTwist_Start_jnt";
	rename -uid "88B4B65B-4587-ED29-4F93-F59E645839BA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_elbowSnap_cntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 0 5.5511151231257827e-16 ;
	setAttr ".rst" -type "double3" 2.9999999999999991 4.9999999999999991 -0.99999999999999911 ;
	setAttr -k on ".w0";
createNode ikHandle -n "elbow_L0_Twist_ikHandle" -p "Twist_ikhandle_grp";
	rename -uid "9B060EE3-459E-CC65-745D-F59B2399747B";
	setAttr ".roc" yes;
createNode pointConstraint -n "elbow_L0_Twist_ikHandle_pointConstraint1" -p "elbow_L0_Twist_ikHandle";
	rename -uid "E9534FC7-4E9E-3B15-2A1B-249477DC5515";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_wrist_jntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.9999980709116367 0.00061970571572533828 0.0014307431956346317 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "elbow_L0_Twist_ikHandle_orientConstraint1" -p "elbow_L0_Twist_ikHandle";
	rename -uid "BC8E3F17-4095-E0ED-0FB3-96B63D5EC3E6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_wrist_jntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -11.309932474020215 -90 ;
	setAttr ".o" -type "double3" 0 0 -1.6086998258910442e-06 ;
	setAttr ".rsrr" -type "double3" 3.2173996549015107e-07 -11.30993247402021 -90.000001640558366 ;
	setAttr -k on ".w0";
createNode ikHandle -n "elbow_L0_NoTwist_ikHandle" -p "Twist_ikhandle_grp";
	rename -uid "C28BA686-4FB0-8B6F-6979-7081A74CDF79";
	setAttr ".roc" yes;
createNode pointConstraint -n "elbow_L0_NoTwist_ikHandle_pointConstraint1" -p "elbow_L0_NoTwist_ikHandle";
	rename -uid "9F53D74F-4DC8-DBEC-1027-03B2E4A31070";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_wrist_jntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.9999980709116367 0.00061970571572533828 0.0014307431956346317 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "elbow_L0_NoTwist_ikHandle_orientConstraint1" -p "elbow_L0_NoTwist_ikHandle";
	rename -uid "D78A0C9D-4E03-046B-9AF8-FB91508CACB4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_elbow_jntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -11.309971272790976 -90 ;
	setAttr ".o" -type "double3" 0 0 -1.6086998258910442e-06 ;
	setAttr ".rsrr" -type "double3" 3.2173996630103657e-07 -11.309932474020206 -90.000001640558366 ;
	setAttr -k on ".w0";
createNode transform -n "ribbon_grp" -p "main_cnt";
	rename -uid "4477D9BF-4CBE-D725-81E9-28B4F3BD6673";
createNode transform -n "follicle_ribbon_bs" -p "ribbon_grp";
	rename -uid "CA81D992-40AB-995A-272C-F885E150E1DB";
createNode joint -n "upper_Follicle_jnt_start" -p "follicle_ribbon_bs";
	rename -uid "A6F721BA-4FFD-90CF-34C7-D8B53366B105";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "blendOrient1" -ln "blendOrient1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".s" -type "double3" 1 0.99999570848399344 0.99999570848399344 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 11.309932474020215 -90 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -0.99082005902802273 -0.13518731681524448 0
		 0.99999570848399055 -9.8686606142349329e-09 7.2329767285454446e-08 0 -7.2999902077127863e-08 -0.1351867366567101 0.99081580690787718 0
		 3 10 -8.644626606324616e-16 1;
	setAttr ".ds" 2;
createNode pointConstraint -n "upper_Follicle_jnt_start_pointConstraint1" -p "upper_Follicle_jnt_start";
	rename -uid "989B2159-407F-460B-C0CE-7AB1F4F8E954";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_shoulder_jnt1W0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 3 10 -8.644626606324616e-16 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "upper_Follicle_jnt_start_orientConstraint1" -p "upper_Follicle_jnt_start";
	rename -uid "BF2FEB6D-477D-0847-0F69-C098AF80672D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upperarm_L0_NoTwist_Start_jntW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 4.182604200507429e-06 -3.5432230091360508 -5.491491572263556e-15 ;
	setAttr -k on ".w0";
createNode joint -n "upper_Follicle_jnt_0" -p "follicle_ribbon_bs";
	rename -uid "43E639CA-4E78-296E-4400-63A069F732F4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1 1.000002225347312 1.000002225347312 ;
	setAttr ".jo" -type "double3" 0 11.309932474020215 -90 ;
	setAttr ".bps" -type "matrix" 0 -0.99082005902802284 -0.1351873168152444 0 1.0000022253473106 -6.5791498774671621e-09 4.8220157758933915e-08 0
		 -4.8666917202805858e-08 -0.13518761765397636 0.99082226394677675 0 3.0000000000000004 8.3333333333333321 -0.33333333333333454 1;
	setAttr ".ds" 2;
createNode parentConstraint -n "upper_Follicle_jnt_0_parentConstraint1" -p "upper_Follicle_jnt_0";
	rename -uid "171BACCF-46AD-DC40-0BFB-C0BFBDB9B5AA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "arm_L0_twist01_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 2.7884027538336761e-06 -3.5432230091360504 -4.4924797998677408e-16 ;
	setAttr ".rst" -type "double3" 3.0000000000000004 8.3333333333333321 -0.33333333333333437 ;
	setAttr ".rsrr" -type "double3" 0 -7.9513867036587919e-15 0 ;
	setAttr -k on ".w0";
createNode joint -n "upper_Follicle_jnt_1" -p "follicle_ribbon_bs";
	rename -uid "3F8BEEC5-4792-0E3E-69A9-F8B088D907E9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000185176914143 1.0000185176914143 ;
	setAttr ".jo" -type "double3" -1.3942065265843196e-06 11.309932474020215 -90.000000000000028 ;
	setAttr ".bps" -type "matrix" 0.0095197512293034876 -0.99078985945551301 -0.1350734198007047 0
		 0.99971214840019917 0.0063437873519187693 0.023925142190279396 0 -0.022847911216047963 -0.13526230010250162 0.99056505028684394 0
		 2.9999999999999996 6.6666666666666661 -0.6666666666666673 1;
	setAttr ".ds" 2;
createNode parentConstraint -n "upper_Follicle_jnt_1_parentConstraint1" -p "upper_Follicle_jnt_1";
	rename -uid "36D4BD59-47F8-1FA7-0D48-ADBC3B26D436";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "arm_L0_twist02_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 4.4408920985006262e-16 -2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" 1.3091771726526875 -0.0062319826436796648 0.54544980966848355 ;
	setAttr ".lr" -type "double3" 1.2754060735730359 -3.5492942551874966 0.54649798613262035 ;
	setAttr ".rst" -type "double3" 2.9999999999999996 6.6666666666666661 -0.66666666666666696 ;
	setAttr ".rsrr" -type "double3" -1.3942065331062614e-06 -7.2556884100190016e-24 
		-5.9635400277440949e-16 ;
	setAttr -k on ".w0";
createNode joint -n "upper_Follicle_jnt_end" -p "follicle_ribbon_bs";
	rename -uid "36CA35FD-4948-3D82-2AE8-C1956934C7C1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1 1.0000250347033777 1.0000250347033777 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.7884130531686393e-06 -11.309932474020195 -89.999998906294437 ;
	setAttr ".bps" -type "matrix" 1.8712756899574856e-08 -0.9806038720940129 0.1960001174342213 0
		 1.0000250347033774 1.834982728498855e-08 -3.6699654736514711e-09 0 2.2140483045746578e-12 0.1960050242390233 0.98062842122108185 0
		 2.9999999999999991 4.9999999999999991 -0.99999999999999967 1;
	setAttr ".ds" 2;
createNode orientConstraint -n "upper_Follicle_jnt_end_orientConstraint1" -p "upper_Follicle_jnt_end";
	rename -uid "A8B0B8CA-4B3C-D289-F1AC-EA928DAEE427";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "upperarm_L0_Twist_End_jntW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 2.573919752549763e-06 0.0040367043609803865 -1.0722851941058384e-06 ;
	setAttr ".rsrr" -type "double3" 2.5739197425388238e-06 -1.2424032772557097e-17 -3.9854129075255213e-16 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "upper_Follicle_jnt_end_pointConstraint1" -p "upper_Follicle_jnt_end";
	rename -uid "554711FC-4D57-7CAA-4A30-8AB73ED8B121";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_elbowSnap_cntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.9999999999999991 4.9999999999999991 -0.99999999999999967 ;
	setAttr -k on ".w0";
createNode joint -n "lower_Follicle_jnt_start" -p "follicle_ribbon_bs";
	rename -uid "E0AB4C83-4F12-395B-D0D0-748ED9448F14";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1 1.0000250347033777 1.0000250347033777 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -11.30993247402022 -90 ;
	setAttr ".bps" -type "matrix" 2.8057756229493691e-08 -0.98058067569091967 0.19611613513818404 0
		 0.9993107413797595 0.0072802487580936326 0.036401100822031747 0 -0.037121990289243061 0.1959809593801386 0.97990480221162601 0
		 2.9999999999999991 4.9999999999999991 -0.99999999999999967 1;
	setAttr ".ds" 2;
createNode pointConstraint -n "lower_Follicle_jnt_start_pointConstraint1" -p "lower_Follicle_jnt_start";
	rename -uid "43006870-4523-6C8C-FBE5-2396120FBB6A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_arm_L0_elbowSnap_cntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.9999999999999991 4.9999999999999991 -0.99999999999999967 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "lower_Follicle_jnt_start_orientConstraint1" -p "lower_Follicle_jnt_start";
	rename -uid "00D03E4D-44C9-C3DC-9848-2AB06B460B8A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "elbow_L0_NoTwist_Start_jntW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.1868623793188094e-07 -0.017131869675428266 -2.1782292395176297e-05 ;
	setAttr ".o" -type "double3" 0 0 2.3389244275242428e-05 ;
	setAttr ".rsrr" -type "double3" 2.1274221745202855 -7.0246732114727936e-19 1.6075910177532717e-06 ;
	setAttr -k on ".w0";
createNode joint -n "lower_Follicle_jnt_0" -p "follicle_ribbon_bs";
	rename -uid "F2AC7BB5-4257-6B17-1387-7EBCAC4D6512";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1 1.0000259883999776 1.0000259883999776 ;
	setAttr ".jo" -type "double3" -4.1826195716441037e-06 -11.309932474020217 -89.999998359441634 ;
	setAttr ".bps" -type "matrix" -1.152125287773309e-05 -0.9805213726563351 0.19641241720267369 0
		 0.99998085072026677 0.0012042100010841716 0.0060702612007125763 0 -0.0061885426420377589 0.19640872598336789 0.98050258250427769 0
		 2.999999356970545 3.3335399019052412 -0.66618975226812183 1;
	setAttr ".ds" 2;
createNode parentConstraint -n "lower_Follicle_jnt_0_parentConstraint1" -p "lower_Follicle_jnt_0";
	rename -uid "34A56F2B-4F87-24F1-C28C-4CB8900B528F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "arm_L0_twist03_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 3.5421913033207926e-06 -0.01713186967384395 -2.33921466714952e-05 ;
	setAttr ".rst" -type "double3" 2.999999356970545 3.3335399019052412 -0.66618975226812183 ;
	setAttr ".rsrr" -type "double3" 3.5391396376050321e-06 -0.0001818737261914593 -3.2174109115255613e-06 ;
	setAttr -k on ".w0";
createNode joint -n "lower_Follicle_jnt_1" -p "follicle_ribbon_bs";
	rename -uid "9B43374F-4072-A98F-11E6-9EABC2A8A74F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1 1.000028372645456 1.000028372645456 ;
	setAttr ".jo" -type "double3" 0 -11.309932474020332 -90 ;
	setAttr ".bps" -type "matrix" -1.1481964317994198e-05 -0.98052137258852234 0.19641241754350616 0
		 0.99998085065001618 -0.0012267669612926468 -0.0060657543712747258 0 0.0061885540665371497 0.19640858672660622 0.98050261032728658 0
		 2.99999871394109 1.6670798038104833 -0.33237950453624376 1;
	setAttr ".ds" 2;
createNode parentConstraint -n "lower_Follicle_jnt_1_parentConstraint1" -p "lower_Follicle_jnt_1";
	rename -uid "7927026C-428C-DC00-EF27-5FA0E8D27913";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "arm_L0_twist04_cntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.186907185356385e-07 -0.01713186967530661 -2.1782292413390972e-05 ;
	setAttr ".rst" -type "double3" 2.99999871394109 1.6670798038104833 -0.33237950453624376 ;
	setAttr ".rsrr" -type "double3" -3.2173996894295409e-07 -0.00018187372629693542 
		-1.6086988243454905e-06 ;
	setAttr -k on ".w0";
createNode joint -n "lower_Follicle_jnt_end" -p "follicle_ribbon_bs";
	rename -uid "C12CD791-4637-CC53-C8A6-22B149F68CF1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".s" -type "double3" 1 1.0000293263452389 1.0000293263452387 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 0 -11.309932474020332 -90 ;
	setAttr ".bps" -type "matrix" -1.1783571274293081e-07 -0.98058005358795641 0.19611924562731398 0
		 0.99931074153436839 0.007280220447717145 0.036401102239676179 0 -0.037121986127049179 0.19598407306634189 0.97990417962692145 0
		 2.9999980709116367 0.00061970571572533828 0.0014307431956346317 1;
	setAttr ".ds" 2;
createNode pointConstraint -n "lower_Follicle_jnt_end_pointConstraint1" -p "lower_Follicle_jnt_end";
	rename -uid "337E4DAC-45FB-F390-FB95-58B4FC355978";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "driver_arm_L0_wrist_jntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 3.0000546645675059 0.00061951368624109187 0.0014297830482133994 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "lower_Follicle_jnt_end_orientConstraint1" -p "lower_Follicle_jnt_end";
	rename -uid "E59D1C7B-4C3D-BF04-82D2-F0B2C34FD128";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "elbow_L0_Twist_Start_jntW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.1869295446706506e-07 -0.017131869675312973 -2.1782292403614433e-05 ;
	setAttr ".o" -type "double3" 0 0 1.5030163857097756e-05 ;
	setAttr ".rsrr" -type "double3" 2.1274219359010869 -0.00018174736692350095 -6.7514890100952796e-06 ;
	setAttr -k on ".w0";
createNode transform -n "final_ribbon_jnt_grp" -p "ribbon_grp";
	rename -uid "1609A750-4552-D01A-D7FD-ACBDECF152FE";
	setAttr ".it" no;
createNode transform -n "upper_loftFollicle1" -p "final_ribbon_jnt_grp";
	rename -uid "00439B12-4CBF-9682-EE38-B98079D92B0A";
createNode follicle -n "upper_loftFollicleShape1" -p "upper_loftFollicle1";
	rename -uid "AFAEC838-4E58-8A29-A3A5-BDBE253421A7";
	setAttr -k off ".v";
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "upper_curve9" -p "upper_loftFollicle1";
	rename -uid "AAE71D47-461D-8698-6A73-548ADC0D26E6";
createNode nurbsCurve -n "upper_curveShape9" -p "upper_curve9";
	rename -uid "31E1F282-4DE2-1281-DE88-54940FD1162F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0
		0 0 0.55555555560000003
		0 0 1.111111111
		0 0 1.6666666670000001
		0 0 2.2222222220000001
		0 0 2.7777777779999999
		0 0 3.3333333330000001
		0 0 3.888888889
		0 0 4.4444444440000002
		0 0 5
		;
createNode joint -n "upper_Follicle_jnt4" -p "upper_curve9";
	rename -uid "B0AE62A9-4FAE-5C27-BA71-468B00D78252";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.0026788227097913619 -2.0970417486942949e-06 -0.0012336984534870865 ;
	setAttr ".s" -type "double3" 1 1.0000019073522708 1.0000019073522708 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.4156561468075757e-05 -2.8052498686931635 1.2542193460201803e-05 ;
	setAttr ".bps" -type "matrix" 2.1864025098302987e-07 -0.98900381212105415 -0.14789002539040574 0
		 0.99999999999979194 1.2648782144529708e-07 6.3251942204864153e-07 0 -6.0685783252159039e-07 -0.14789002539051327 0.98900381212087607 0
		 2.9999998088997257 9.9999798896746395 1.6695959273214196e-05 1;
	setAttr ".ds" 2;
createNode transform -n "upper_loftFollicle2" -p "final_ribbon_jnt_grp";
	rename -uid "D579F78B-4F63-B28B-7F1C-89AAC9A31BCB";
createNode follicle -n "upper_loftFollicleShape2" -p "upper_loftFollicle2";
	rename -uid "57A1B310-47EB-4564-26DA-BE8366FAB30F";
	setAttr -k off ".v";
	setAttr ".pu" 0.33333333333333331;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "upper_curve10" -p "upper_loftFollicle2";
	rename -uid "83378F1A-4EE0-CD6C-6EE4-D7A4D2BA68C3";
createNode nurbsCurve -n "upper_curveShape10" -p "upper_curve10";
	rename -uid "F316F5C8-4792-70A7-4845-5C8EDE0D9716";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0
		0 0 0.55555555560000003
		0 0 1.111111111
		0 0 1.6666666670000001
		0 0 2.2222222220000001
		0 0 2.7777777779999999
		0 0 3.3333333330000001
		0 0 3.888888889
		0 0 4.4444444440000002
		0 0 5
		;
createNode joint -n "upper_Follicle_jnt3" -p "upper_curve10";
	rename -uid "8C9B8028-4C2B-58EB-F6A3-2396FCD20157";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.0051101621980720324 0.00021620782123932258 0.0043611867525976677 ;
	setAttr ".s" -type "double3" 1 1.0000012715677764 1.0000012715677764 ;
	setAttr ".jo" -type "double3" 0.21297561433455689 0.70254837989663166 0.10717725456726339 ;
	setAttr ".bps" -type "matrix" 0.0018698927709445018 -0.97810074446190221 -0.20812361034754789 0
		 0.99999142831545462 0.0010600902290093669 0.004002437297870645 0 -0.0036941570949537731 -0.20812931050618302 0.97809434274592288 0
		 2.9996988471273811 8.3295908423297149 -0.32672169406962676 1;
	setAttr ".ds" 2;
createNode transform -n "upper_loftFollicle3" -p "final_ribbon_jnt_grp";
	rename -uid "7A3DE560-4B26-5694-C4C1-969402681925";
createNode follicle -n "upper_loftFollicleShape3" -p "upper_loftFollicle3";
	rename -uid "BB4CD994-4CEF-8567-C511-9386B3592029";
	setAttr -k off ".v";
	setAttr ".pu" 0.66666666666666663;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "upper_curve11" -p "upper_loftFollicle3";
	rename -uid "74402CAA-4577-C357-23CC-3F9EA529B5D6";
createNode nurbsCurve -n "upper_curveShape11" -p "upper_curve11";
	rename -uid "1FF885AD-49AE-7B1F-0FA9-09A62AF26394";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0
		0 0 0.55555555560000003
		0 0 1.111111111
		0 0 1.6666666670000001
		0 0 2.2222222220000001
		0 0 2.7777777779999999
		0 0 3.3333333330000001
		0 0 3.888888889
		0 0 4.4444444440000002
		0 0 5
		;
createNode joint -n "upper_Follicle_jnt2" -p "upper_curve11";
	rename -uid "1ACEB0F4-4B59-289C-91C2-BB93C1E40CCE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.012612806541237198 0.00033829282496977697 -0.0026179729678295072 ;
	setAttr ".s" -type "double3" 1 1.0000027020790234 1.0000027020790236 ;
	setAttr ".jo" -type "double3" 0.76515740129482956 -0.096591720758259961 0.37385441246083795 ;
	setAttr ".bps" -type "matrix" 0.006524373331852627 -0.98088917041590795 -0.19445788210668846 0
		 0.99988940078129562 0.0038002440151495499 0.014378607395958139 0 -0.013364832877682814 -0.19453018661949989 0.98080547905073123 0
		 3.0003373320682019 6.6574394290826593 -0.67118012405434313 1;
	setAttr ".ds" 2;
createNode transform -n "upper_loftFollicle4" -p "final_ribbon_jnt_grp";
	rename -uid "E72B5C73-44E4-0900-F2E1-D1A2D637A42E";
createNode follicle -n "upper_loftFollicleShape4" -p "upper_loftFollicle4";
	rename -uid "E7D5A0A9-4902-075D-2DF4-2CBB83253577";
	setAttr -k off ".v";
	setAttr ".pu" 1;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "upper_curve12" -p "upper_loftFollicle4";
	rename -uid "CB288B40-49D3-EC7F-4F24-26A7588B49AE";
createNode nurbsCurve -n "upper_curveShape12" -p "upper_curve12";
	rename -uid "E8270D90-43B8-9375-386F-E18BB03048A3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0
		0 0 0.55555555560000003
		0 0 1.111111111
		0 0 1.6666666670000001
		0 0 2.2222222220000001
		0 0 2.7777777779999999
		0 0 3.3333333330000001
		0 0 3.888888889
		0 0 4.4444444440000002
		0 0 5
		;
createNode joint -n "upper_Follicle_jnt1" -p "upper_curve12";
	rename -uid "F49171D5-4366-9F68-74E9-C7BEC5E1C994";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.0071006086942686508 0.0015218735298190289 -0.0057473379971291205 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000312337534456 1.0000312337534456 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.0007033897137820079 -22.143883013607564 -3.9764143234360151e-05 ;
	setAttr ".bps" -type "matrix" -1.162935164507856e-06 -0.98217591248017322 0.18796403098036199 0
		 0.99999999992913469 1.0848159175540443e-06 1.1855540746021815e-05 0 -1.1848132922902203e-05 0.18796403098082901 0.98217591240930935 0
		 3.0000015611527195 4.9999452341471962 -0.99997103915598118 1;
	setAttr ".ds" 2;
createNode transform -n "lower_loftFollicle5" -p "final_ribbon_jnt_grp";
	rename -uid "99C9C4EA-4A7D-C73C-9027-84BC920FEE9F";
createNode follicle -n "lower_loftFollicleShape5" -p "lower_loftFollicle5";
	rename -uid "83E6D98E-4582-DE44-6CEA-A5A1B9CFBA16";
	setAttr -k off ".v";
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "lower_curve13" -p "lower_loftFollicle5";
	rename -uid "66E26ABA-4B16-1C5B-DAE6-7E901EF89ACF";
createNode nurbsCurve -n "lower_curveShape13" -p "lower_curve13";
	rename -uid "6374F3FB-4513-3F7C-6BD3-F4B5A9B1A0C7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0
		0 0 0.55555555560000003
		0 0 1.111111111
		0 0 1.6666666670000001
		0 0 2.2222222220000001
		0 0 2.7777777779999999
		0 0 3.3333333330000001
		0 0 3.888888889
		0 0 4.4444444440000002
		0 0 5
		;
createNode joint -n "lower_Follicle_jnt4" -p "lower_curve13";
	rename -uid "7283F501-460C-DC5F-CADF-1EA002DAEC8E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.0088038711261777536 2.0607950510509454e-06 -0.0075770698709186624 ;
	setAttr ".r" -type "double3" 0 0 1.6086998317551878e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000061988948796 1.0000061988948798 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.7162249058672759e-06 -0.02155099252148682 -7.4464256826491938e-07 ;
	setAttr ".bps" -type "matrix" -3.4776098648576003e-06 -0.98056216705130583 0.19620865560813749 0
		 0.99931123915608866 0.0072776184485404509 0.03638795908043841 0 -0.037108587742306048 0.19607364131204369 0.97988676891690274 0
		 3.0000001985784275 5.0000009221908455 -1.0000007417279548 1;
	setAttr ".ds" 2;
createNode transform -n "lower_loftFollicle6" -p "final_ribbon_jnt_grp";
	rename -uid "4F0385E8-480C-EC90-E288-4BB461A71393";
createNode follicle -n "lower_loftFollicleShape6" -p "lower_loftFollicle6";
	rename -uid "FB9455BC-4F61-9E68-5EC1-26833B79C960";
	setAttr -k off ".v";
	setAttr ".pu" 0.33333333333333331;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "lower_curve14" -p "lower_loftFollicle6";
	rename -uid "564896DF-40D7-CC93-147C-72AA7C518763";
createNode nurbsCurve -n "lower_curveShape14" -p "lower_curve14";
	rename -uid "FDE63BA1-456B-B793-D0B7-8DACB79D9C9E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0
		0 0 0.55555555560000003
		0 0 1.111111111
		0 0 1.6666666670000001
		0 0 2.2222222220000001
		0 0 2.7777777779999999
		0 0 3.3333333330000001
		0 0 3.888888889
		0 0 4.4444444440000002
		0 0 5
		;
createNode joint -n "lower_Follicle_jnt3" -p "lower_curve14";
	rename -uid "7DF6BD68-4166-63A1-6E40-6F8B76F4EA17";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.0033143598269438357 0.00069153432202595511 -0.0054719032998216122 ;
	setAttr ".r" -type "double3" 0 0 -1.6086998258910402e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000118416670774 1.0000118416670774 ;
	setAttr ".jo" -type "double3" -5.3469519633256106e-06 -0.039728400357320018 -2.9147958200716554e-05 ;
	setAttr ".bps" -type "matrix" -7.0695474310474038e-06 -0.9804312783965109 0.19686164758988792 0
		 0.99996309122530935 0.0016844318439336588 0.0084248962300545963 0 -0.0085916318092400211 0.19685444122789519 0.98039507997118569 0
		 2.999691086653689 3.3326689472098301 -0.66613592621791384 1;
	setAttr ".ds" 2;
createNode transform -n "lower_loftFollicle7" -p "final_ribbon_jnt_grp";
	rename -uid "9532C3E9-4063-FFD4-07E6-ED9B58C2E8F7";
createNode follicle -n "lower_loftFollicleShape7" -p "lower_loftFollicle7";
	rename -uid "17412553-4F7B-B83D-C849-E0A4C7968C53";
	setAttr -k off ".v";
	setAttr ".pu" 0.66666666666666663;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "lower_curve15" -p "lower_loftFollicle7";
	rename -uid "6B67B928-4636-949C-5DEA-9D89960DAC13";
createNode nurbsCurve -n "lower_curveShape15" -p "lower_curve15";
	rename -uid "38F15DED-494F-E57E-96F9-A4B4173B53AA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0
		0 0 0.55555555560000003
		0 0 1.111111111
		0 0 1.6666666670000001
		0 0 2.2222222220000001
		0 0 2.7777777779999999
		0 0 3.3333333330000001
		0 0 3.888888889
		0 0 4.4444444440000002
		0 0 5
		;
createNode joint -n "lower_Follicle_jnt2" -p "lower_curve15";
	rename -uid "76EC3941-4366-E8B4-9D9C-9381B5C3B387";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.00019161260438171901 0.00047174025318241775 -0.0037280147422146799 ;
	setAttr ".s" -type "double3" 1 1.0000216171356888 1.0000216171356888 ;
	setAttr ".jo" -type "double3" -1.3943359426952523e-06 0.00081090488854246366 -1.966480294906656e-05 ;
	setAttr ".bps" -type "matrix" -8.1939485804359078e-07 -0.98056919340459259 0.19617353783116406 0
		 0.99996302215984278 0.001686224109544744 0.0084327315388378551 0 -0.0085996693123813021 0.19616629066717589 0.98053293269201258 0
		 2.9999692365918933 1.6669944828293022 -0.33266270748869614 1;
	setAttr ".ds" 2;
createNode transform -n "lower_loftFollicle8" -p "final_ribbon_jnt_grp";
	rename -uid "404963CC-450C-02B9-8E46-8E8432AB05CC";
createNode follicle -n "lower_loftFollicleShape8" -p "lower_loftFollicle8";
	rename -uid "6169B02A-4E73-3C02-8A53-65BC0E619D4B";
	setAttr -k off ".v";
	setAttr ".pu" 1;
	setAttr ".pv" 0.5;
	setAttr ".sim" 0;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "lower_curve16" -p "lower_loftFollicle8";
	rename -uid "F405D711-4D14-6FA3-C5DE-6F8175BA4A2E";
createNode nurbsCurve -n "lower_curveShape16" -p "lower_curve16";
	rename -uid "CC969AAA-4208-7822-B600-98B88FD9FF32";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 0 0
		0 0 0.55555555560000003
		0 0 1.111111111
		0 0 1.6666666670000001
		0 0 2.2222222220000001
		0 0 2.7777777779999999
		0 0 3.3333333330000001
		0 0 3.888888889
		0 0 4.4444444440000002
		0 0 5
		;
createNode joint -n "lower_Follicle_jnt1" -p "lower_curve16";
	rename -uid "E90F69E5-4B7E-3062-3D97-328DC6C5AE0F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.0026288675245794719 6.722367285050268e-08 -0.002936302868000844 ;
	setAttr ".r" -type "double3" 0 0 1.6086998258910361e-06 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000293263452384 1.0000293263452387 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 3.8452421624135794e-06 -0.0098597271960958917 -8.3650275278968376e-06 ;
	setAttr ".bps" -type "matrix" 3.7543569439763886e-06 -0.98060049919626857 0.19601699151332122 0
		 0.99931123983386794 0.007277589134239904 0.036387946329661906 0 -0.037108569463157257 0.19588184620434293 0.97992512795620068 0
		 2.9999981759013057 0.00061936397279300842 0.0014305971673591262 1;
	setAttr ".ds" 2;
createNode transform -n "upper_ribbon1" -p "ribbon_grp";
	rename -uid "CDF71BB6-4ADC-B7A0-2D69-5DB62BA5A384";
	setAttr ".v" no;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 2.9999990463256836 7.501960277557373 -0.49960643053054832 ;
	setAttr ".sp" -type "double3" 2.9999990463256836 7.501960277557373 -0.49960643053054832 ;
	setAttr ".it" no;
createNode nurbsSurface -n "upper_ribbonShape1" -p "upper_ribbon1";
	rename -uid "44E8D65E-46CD-E249-7740-6390290D69E2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode nurbsSurface -n "upper_ribbonShape1Orig" -p "upper_ribbon1";
	rename -uid "337493D6-404F-74D2-DEEA-24B6797945E9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 0 no 
		4 0 1 2 3
		2 0 1.2000000000000002
		
		8
		2.3999999999999999 10 -4.649058915617843e-16
		3.6000000000000001 10 -4.649058915617843e-16
		2.3999999999999999 8.3346471786499023 -0.33307018876075745
		3.6000000000000001 8.3346471786499023 -0.33307018876075745
		2.3999990463256835 6.6692938804626465 -0.66613942384719849
		3.5999990463256837 6.6692938804626465 -0.66613942384719849
		2.3999980926513671 5.0039205551147461 -0.99921286106109619
		3.5999980926513673 5.0039205551147461 -0.99921286106109619
		
		;
createNode transform -n "lower_ribbon2" -p "ribbon_grp";
	rename -uid "3ECAEA9F-4514-26F8-9EFC-3386571503B6";
	setAttr ".v" no;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 2.9999980926513672 2.5021837101085111 -0.49886551621602848 ;
	setAttr ".sp" -type "double3" 2.9999980926513672 2.5021837101085111 -0.49886551621602848 ;
	setAttr ".it" no;
createNode nurbsSurface -n "lower_ribbonShape2" -p "lower_ribbon2";
	rename -uid "56BB3ADF-4C3D-172B-3943-D39DAA0DB36E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode nurbsSurface -n "lower_ribbonShape2Orig" -p "lower_ribbon2";
	rename -uid "B141E1DE-452C-0C63-5E31-6E80B1CAD7BC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		1 1 0 0 no 
		4 0 1 2 3
		2 0 1.2000000000000002
		
		8
		2.3999980926513671 5.0039205551147461 -0.99921286106109619
		3.5999980926513673 5.0039205551147461 -0.99921286106109619
		2.3999980926513671 3.3360600471496582 -0.66564083099365234
		3.5999980926513673 3.3360600471496582 -0.66564083099365234
		2.3999980926513671 1.6682000160217285 -0.3320688009262085
		3.5999980926513673 1.6682000160217285 -0.3320688009262085
		2.3999980926513671 0.00044686510227620602 0.001481828629039228
		3.5999980926513673 0.00044686510227620602 0.001481828629039228
		
		;
createNode transform -n "test_mesh1";
	rename -uid "EA686E49-4E5C-DCD9-C95B-7F960743E677";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 2.9999991655349731 5.0000022649765015 -0.50084996223449707 ;
	setAttr ".sp" -type "double3" 2.9999991655349731 5.0000022649765015 -0.50084996223449707 ;
createNode mesh -n "test_mesh1Shape" -p "test_mesh1";
	rename -uid "CC193B59-48D9-AD72-17C4-289B21C9D62B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "test_mesh1ShapeOrig" -p "test_mesh1";
	rename -uid "7F72A88E-4719-0619-E401-C09F7EF8AE38";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[20:39]" "f[640:659]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "e[0:19]" "e[660:679]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "vtx[0:19]" "vtx[40]" "vtx[322:341]" "vtx[642]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[322:341]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "vtx[0:39]" "vtx[322:641]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 4 "vtx[20:39]" "vtx[41]" "vtx[622:641]" "vtx[643]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[622:641]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "f[0:19]" "f[60:639]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 2 "f[40:59]" "f[660:679]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 2 "e[20:39]" "e[960:979]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 756 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661 0.34374997
		 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375 0.62499976
		 0.33750001 0.37499997 0.33750001 0.61249977 0.33750001 0.59999979 0.33750001 0.5874998
		 0.33750001 0.57499981 0.33750001 0.56249982 0.33750001 0.54999983 0.33750001 0.53749985
		 0.33750001 0.52499986 0.33750001 0.51249987 0.33750001 0.49999985 0.33750001 0.48749986
		 0.33750001 0.47499987 0.33750001 0.46249989 0.33750001 0.4499999 0.33750001 0.43749991
		 0.33750001 0.42499992 0.33750001 0.41249993 0.33750001 0.39999995 0.33750001 0.38749996
		 0.33750001 0.62499976 0.36250001 0.37499997 0.36250001 0.61249977 0.36250001 0.59999979
		 0.36250001 0.5874998 0.36250001 0.57499981 0.36250001 0.56249982 0.36250001 0.54999983
		 0.36250001 0.53749985 0.36250001 0.52499986 0.36250001 0.51249987 0.36250001 0.49999985
		 0.36250001 0.48749986 0.36250001 0.47499987 0.36250001 0.46249989 0.36250001 0.44999993
		 0.36250001 0.43749991 0.36250001 0.42499992 0.36250001 0.41249993 0.36250001 0.39999995
		 0.36250001 0.38749996 0.36250001 0.62499976 0.38750002 0.37499997 0.38750002 0.61249977
		 0.38750002 0.59999979 0.38750002 0.5874998 0.38750002 0.57499981 0.38750002 0.56249976
		 0.38750002 0.54999977 0.38750002 0.53749985 0.38750002 0.52499986 0.38750002 0.51249981
		 0.38750002 0.49999982 0.38750002 0.48749983 0.38750002 0.47499985 0.38750002 0.46249989
		 0.38750002 0.44999993 0.38750002 0.43749991 0.38750002 0.42499992 0.38750002 0.4124999
		 0.38750002 0.39999992 0.38750002 0.38749993 0.38750002 0.62499976 0.41250002 0.37499997
		 0.41250002 0.61249971 0.41250002 0.59999979 0.41250002 0.5874998 0.41250002 0.57499981
		 0.41250002 0.56249976 0.41250002 0.54999977 0.41250002 0.53749985 0.41250002 0.52499986
		 0.41250002 0.51249981 0.41250002 0.49999979 0.41250002 0.48749983 0.41250002 0.47499985
		 0.41250002 0.46249989 0.41250002 0.44999993 0.41250002 0.43749991 0.41250002 0.42499989
		 0.41250002 0.4124999 0.41250002 0.39999992 0.41250002 0.38749993 0.41250002 0.62499976
		 0.4375 0.37499997 0.4375 0.61249971 0.4375 0.59999979 0.4375 0.5874998 0.4375 0.57499981
		 0.4375 0.56249976 0.4375 0.54999977 0.4375 0.53749985 0.4375 0.52499986 0.4375 0.51249981
		 0.4375 0.49999979 0.4375 0.48749983 0.4375 0.47499985 0.4375 0.46249986 0.4375 0.4499999
		 0.4375 0.43749991 0.4375 0.42499989 0.4375 0.4124999 0.4375 0.39999992 0.4375 0.38749993
		 0.4375 0.62499976 0.46249998 0.37499997 0.46249998 0.61249971 0.46249998 0.59999979
		 0.46249998 0.5874998 0.46249998 0.57499981 0.46249998 0.56249976 0.46249998 0.54999977
		 0.46249998 0.53749985 0.46249998 0.52499986 0.46249998 0.51249981 0.46249998 0.49999979
		 0.46249998 0.48749983 0.46249998 0.47499985 0.46249998 0.46249986 0.46249998 0.4499999
		 0.46249998 0.43749991 0.46249998 0.42499989 0.46249998 0.4124999 0.46249998 0.39999992
		 0.46249998 0.38749993 0.46249998 0.62499976 0.48749995 0.37499997 0.48749995 0.61249971
		 0.48749995 0.59999979 0.48749995 0.5874998 0.48749995 0.57499981 0.48749995 0.56249976
		 0.48749995 0.54999983 0.48749995 0.53749985 0.48749995 0.52499986 0.48749995 0.51249981
		 0.48749995 0.49999982 0.48749995 0.48749983 0.48749995 0.47499985 0.48749995 0.46249989
		 0.48749995 0.44999993 0.48749995 0.43749991 0.48749995 0.42499989 0.48749995 0.41249993
		 0.48749995 0.39999992 0.48749995 0.38749993 0.48749995 0.62499976 0.51249993 0.37499997
		 0.51249993 0.61249971 0.51249993 0.59999979 0.51249993 0.5874998 0.51249993 0.57499981
		 0.51249993 0.56249976 0.51249993 0.54999983 0.51249993 0.53749985 0.51249993 0.52499986
		 0.51249993 0.51249981 0.51249993 0.49999982 0.51249993 0.48749986 0.51249993 0.47499985
		 0.51249993 0.46249989 0.51249993 0.44999993 0.51249993 0.43749991 0.51249993 0.42499989
		 0.51249993 0.41249993 0.51249993;
	setAttr ".uvst[0].uvsp[250:499]" 0.39999992 0.51249993 0.38749996 0.51249993
		 0.62499976 0.5374999 0.37499997 0.5374999 0.61249971 0.5374999 0.59999979 0.5374999
		 0.5874998 0.5374999 0.57499981 0.5374999 0.56249976 0.5374999 0.54999983 0.5374999
		 0.53749985 0.5374999 0.52499986 0.5374999 0.51249981 0.5374999 0.49999982 0.5374999
		 0.48749986 0.5374999 0.47499985 0.5374999 0.46249989 0.5374999 0.44999993 0.5374999
		 0.43749991 0.5374999 0.42499989 0.5374999 0.41249993 0.5374999 0.39999992 0.5374999
		 0.38749996 0.5374999 0.62499976 0.5625 0.37499997 0.5625 0.61249971 0.5625 0.59999979
		 0.5625 0.5874998 0.5625 0.57499981 0.5625 0.56249976 0.5625 0.54999983 0.5625 0.53749985
		 0.5625 0.52499986 0.5625 0.51249981 0.5625 0.49999982 0.5625 0.48749989 0.5625 0.47499985
		 0.5625 0.46249989 0.5625 0.44999993 0.5625 0.43749994 0.5625 0.42499992 0.5625 0.41249996
		 0.5625 0.39999992 0.5625 0.38749996 0.5625 0.62499976 0.58750004 0.375 0.58750004
		 0.61249971 0.58750004 0.59999979 0.58750004 0.5874998 0.58750004 0.57499981 0.58750004
		 0.56249976 0.58750004 0.54999983 0.58750004 0.53749985 0.58750004 0.52499986 0.58750004
		 0.51249981 0.58750004 0.49999982 0.58750004 0.48749989 0.58750004 0.47499985 0.58750004
		 0.46249992 0.58750004 0.44999993 0.58750004 0.43749994 0.58750004 0.42499995 0.58750004
		 0.41249996 0.58750004 0.39999992 0.58750004 0.38749999 0.58750004 0.62499976 0.61250001
		 0.375 0.61250001 0.61249971 0.61250001 0.59999979 0.61250001 0.5874998 0.61250001
		 0.57499981 0.61250001 0.56249976 0.61250001 0.54999983 0.61250001 0.53749985 0.61250001
		 0.52499986 0.61250001 0.51249981 0.61250001 0.49999985 0.61250001 0.48749989 0.61250001
		 0.47499985 0.61250001 0.46249992 0.61250001 0.44999993 0.61250001 0.43749994 0.61250001
		 0.42499995 0.61250001 0.41249996 0.61250001 0.39999995 0.61250001 0.38749999 0.61250001
		 0.62499976 0.63749999 0.375 0.63749999 0.61249971 0.63749999 0.59999979 0.63749999
		 0.58749974 0.63749999 0.57499981 0.63749999 0.56249976 0.63749999 0.54999983 0.63749999
		 0.53749985 0.63749999 0.52499986 0.63749999 0.51249981 0.63749999 0.49999985 0.63749999
		 0.48749989 0.63749999 0.47499985 0.63749999 0.46249992 0.63749999 0.44999993 0.63749999
		 0.43749994 0.63749999 0.42499995 0.63749999 0.41249993 0.63749999 0.39999998 0.63749999
		 0.38749999 0.63749999 0.62499976 0.66250002 0.375 0.66250002 0.61249971 0.66250002
		 0.59999979 0.66250002 0.58749974 0.66250002 0.57499981 0.66250002 0.56249976 0.66250002
		 0.54999983 0.66250002 0.53749985 0.66250002 0.52499986 0.66250002 0.51249981 0.66250002
		 0.49999988 0.66250002 0.48749989 0.66250002 0.47499987 0.66250002 0.46249992 0.66250002
		 0.44999993 0.66250002 0.43749994 0.66250002 0.42499995 0.66250002 0.41249996 0.66250002
		 0.39999998 0.66250002 0.38749999 0.66250002 0.375 0.3125 0.38749999 0.3125 0.38749999
		 0.33750001 0.375 0.33750001 0.39999998 0.3125 0.39999998 0.33750001 0.41249996 0.3125
		 0.41249996 0.33750001 0.42499995 0.3125 0.42499995 0.33750001 0.43749994 0.3125 0.43749994
		 0.33750001 0.44999993 0.3125 0.44999993 0.33750001 0.46249992 0.3125 0.46249992 0.33750001
		 0.4749999 0.3125 0.4749999 0.33750001 0.48749989 0.3125 0.48749989 0.33750001 0.49999988
		 0.3125 0.49999988 0.33750001 0.51249987 0.3125 0.51249987 0.33750001 0.52499986 0.3125
		 0.52499986 0.33750001 0.53749985 0.3125 0.53749985 0.33750001 0.54999983 0.3125 0.54999983
		 0.33750001 0.56249982 0.3125 0.56249982 0.33750001 0.57499981 0.3125 0.57499981 0.33750001
		 0.5874998 0.3125 0.5874998 0.33750001 0.59999979 0.3125 0.59999979 0.33750001 0.61249977
		 0.3125 0.61249977 0.33750001 0.62499976 0.3125 0.62499976 0.33750001 0.38749999 0.36250001
		 0.375 0.36250001 0.39999998 0.36250001 0.41249996 0.36250001 0.42499995 0.36250001
		 0.43749994 0.36250001 0.44999993 0.36250001 0.46249992 0.36250001 0.4749999 0.36250001
		 0.48749989 0.36250001 0.49999988 0.36250001 0.51249987 0.36250001 0.52499986 0.36250001
		 0.53749985 0.36250001 0.54999983 0.36250001 0.56249982 0.36250001 0.57499981 0.36250001
		 0.5874998 0.36250001 0.59999979 0.36250001 0.61249977 0.36250001 0.62499976 0.36250001
		 0.38749999 0.38750002 0.375 0.38750002 0.39999998 0.38750002 0.41249996 0.38750002
		 0.42499995 0.38750002 0.43749994 0.38750002 0.44999993 0.38750002 0.46249992 0.38750002
		 0.4749999 0.38750002 0.48749989 0.38750002 0.49999988 0.38750002 0.51249987 0.38750002
		 0.52499986 0.38750002 0.53749985 0.38750002 0.54999983 0.38750002 0.56249982 0.38750002
		 0.57499981 0.38750002 0.5874998 0.38750002 0.59999979 0.38750002 0.61249977 0.38750002
		 0.62499976 0.38750002 0.38749999 0.41250002 0.375 0.41250002 0.39999998 0.41250002
		 0.41249996 0.41250002 0.42499995 0.41250002 0.43749994 0.41250002 0.44999993 0.41250002
		 0.46249992 0.41250002 0.4749999 0.41250002 0.48749989 0.41250002 0.49999988 0.41250002
		 0.51249987 0.41250002 0.52499986 0.41250002 0.53749985 0.41250002 0.54999983 0.41250002
		 0.56249982 0.41250002 0.57499981 0.41250002 0.5874998 0.41250002 0.59999979 0.41250002
		 0.61249977 0.41250002 0.62499976 0.41250002 0.38749999 0.43750003 0.375 0.43750003
		 0.39999998 0.43750003 0.41249996 0.43750003 0.42499995 0.43750003 0.43749994 0.43750003
		 0.44999993 0.43750003 0.46249992 0.43750003 0.4749999 0.43750003 0.48749989 0.43750003
		 0.49999988 0.43750003 0.51249987 0.43750003 0.52499986 0.43750003 0.53749985 0.43750003
		 0.54999983 0.43750003 0.56249982 0.43750003 0.57499981 0.43750003;
	setAttr ".uvst[0].uvsp[500:749]" 0.5874998 0.43750003 0.59999979 0.43750003
		 0.61249977 0.43750003 0.62499976 0.43750003 0.38749999 0.46250004 0.375 0.46250004
		 0.39999998 0.46250004 0.41249996 0.46250004 0.42499995 0.46250004 0.43749994 0.46250004
		 0.44999993 0.46250004 0.46249992 0.46250004 0.4749999 0.46250004 0.48749989 0.46250004
		 0.49999988 0.46250004 0.51249987 0.46250004 0.52499986 0.46250004 0.53749985 0.46250004
		 0.54999983 0.46250004 0.56249982 0.46250004 0.57499981 0.46250004 0.5874998 0.46250004
		 0.59999979 0.46250004 0.61249977 0.46250004 0.62499976 0.46250004 0.38749999 0.48750004
		 0.375 0.48750004 0.39999998 0.48750004 0.41249996 0.48750004 0.42499995 0.48750004
		 0.43749994 0.48750004 0.44999993 0.48750004 0.46249992 0.48750004 0.4749999 0.48750004
		 0.48749989 0.48750004 0.49999988 0.48750004 0.51249987 0.48750004 0.52499986 0.48750004
		 0.53749985 0.48750004 0.54999983 0.48750004 0.56249982 0.48750004 0.57499981 0.48750004
		 0.5874998 0.48750004 0.59999979 0.48750004 0.61249977 0.48750004 0.62499976 0.48750004
		 0.38749999 0.51250005 0.375 0.51250005 0.39999998 0.51250005 0.41249996 0.51250005
		 0.42499995 0.51250005 0.43749994 0.51250005 0.44999993 0.51250005 0.46249992 0.51250005
		 0.4749999 0.51250005 0.48749989 0.51250005 0.49999988 0.51250005 0.51249987 0.51250005
		 0.52499986 0.51250005 0.53749985 0.51250005 0.54999983 0.51250005 0.56249982 0.51250005
		 0.57499981 0.51250005 0.5874998 0.51250005 0.59999979 0.51250005 0.61249977 0.51250005
		 0.62499976 0.51250005 0.38749999 0.53750002 0.375 0.53750002 0.39999998 0.53750002
		 0.41249996 0.53750002 0.42499995 0.53750002 0.43749994 0.53750002 0.44999993 0.53750002
		 0.46249992 0.53750002 0.4749999 0.53750002 0.48749989 0.53750002 0.49999988 0.53750002
		 0.51249987 0.53750002 0.52499986 0.53750002 0.53749985 0.53750002 0.54999983 0.53750002
		 0.56249982 0.53750002 0.57499981 0.53750002 0.5874998 0.53750002 0.59999979 0.53750002
		 0.61249977 0.53750002 0.62499976 0.53750002 0.38749999 0.5625 0.375 0.5625 0.39999998
		 0.5625 0.41249996 0.5625 0.42499995 0.5625 0.43749994 0.5625 0.44999993 0.5625 0.46249992
		 0.5625 0.4749999 0.5625 0.48749989 0.5625 0.49999988 0.5625 0.51249987 0.5625 0.52499986
		 0.5625 0.53749985 0.5625 0.54999983 0.5625 0.56249982 0.5625 0.57499981 0.5625 0.5874998
		 0.5625 0.59999979 0.5625 0.61249977 0.5625 0.62499976 0.5625 0.38749999 0.58749998
		 0.375 0.58749998 0.39999998 0.58749998 0.41249996 0.58749998 0.42499995 0.58749998
		 0.43749994 0.58749998 0.44999993 0.58749998 0.46249992 0.58749998 0.4749999 0.58749998
		 0.48749989 0.58749998 0.49999988 0.58749998 0.51249987 0.58749998 0.52499986 0.58749998
		 0.53749985 0.58749998 0.54999983 0.58749998 0.56249982 0.58749998 0.57499981 0.58749998
		 0.5874998 0.58749998 0.59999979 0.58749998 0.61249977 0.58749998 0.62499976 0.58749998
		 0.38749999 0.61249995 0.375 0.61249995 0.39999998 0.61249995 0.41249996 0.61249995
		 0.42499995 0.61249995 0.43749994 0.61249995 0.44999993 0.61249995 0.46249992 0.61249995
		 0.4749999 0.61249995 0.48749989 0.61249995 0.49999988 0.61249995 0.51249987 0.61249995
		 0.52499986 0.61249995 0.53749985 0.61249995 0.54999983 0.61249995 0.56249982 0.61249995
		 0.57499981 0.61249995 0.5874998 0.61249995 0.59999979 0.61249995 0.61249977 0.61249995
		 0.62499976 0.61249995 0.38749999 0.63749993 0.375 0.63749993 0.39999998 0.63749993
		 0.41249996 0.63749993 0.42499995 0.63749993 0.43749994 0.63749993 0.44999993 0.63749993
		 0.46249992 0.63749993 0.4749999 0.63749993 0.48749989 0.63749993 0.49999988 0.63749993
		 0.51249987 0.63749993 0.52499986 0.63749993 0.53749985 0.63749993 0.54999983 0.63749993
		 0.56249982 0.63749993 0.57499981 0.63749993 0.5874998 0.63749993 0.59999979 0.63749993
		 0.61249977 0.63749993 0.62499976 0.63749993 0.38749999 0.6624999 0.375 0.6624999
		 0.39999998 0.6624999 0.41249996 0.6624999 0.42499995 0.6624999 0.43749994 0.6624999
		 0.44999993 0.6624999 0.46249992 0.6624999 0.4749999 0.6624999 0.48749989 0.6624999
		 0.49999988 0.6624999 0.51249987 0.6624999 0.52499986 0.6624999 0.53749985 0.6624999
		 0.54999983 0.6624999 0.56249982 0.6624999 0.57499981 0.6624999 0.5874998 0.6624999
		 0.59999979 0.6624999 0.61249977 0.6624999 0.62499976 0.6624999 0.38749999 0.68749988
		 0.375 0.68749988 0.39999998 0.68749988 0.41249996 0.68749988 0.42499995 0.68749988
		 0.43749994 0.68749988 0.44999993 0.68749988 0.46249992 0.68749988 0.4749999 0.68749988
		 0.48749989 0.68749988 0.49999988 0.68749988 0.51249987 0.68749988 0.52499986 0.68749988
		 0.53749985 0.68749988 0.54999983 0.68749988 0.56249982 0.68749988 0.57499981 0.68749988
		 0.5874998 0.68749988 0.59999979 0.68749988 0.61249977 0.68749988 0.62499976 0.68749988
		 0.62640899 0.064408496 0.64860266 0.10796607 0.5 0.15625 0.59184152 0.029841021 0.54828393
		 0.0076473355 0.5 -7.4505806e-08 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107
		 0.064408526 0.3513974 0.1079661 0.34374997 0.15625 0.3513974 0.2045339 0.37359107
		 0.24809146 0.40815854 0.28265893 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526
		 0.59184146 0.28265893 0.62640893 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.6486026
		 0.89203393 0.62640893 0.93559146 0.5 0.84375 0.59184146 0.97015893 0.54828387 0.9923526
		 0.5 1 0.4517161 0.9923526 0.40815854 0.97015893 0.37359107 0.93559146 0.3513974 0.89203393
		 0.34374997 0.84375 0.3513974 0.79546607 0.37359107 0.75190854 0.40815851 0.71734107
		 0.45171607 0.69514734;
	setAttr ".uvst[0].uvsp[750:755]" 0.5 0.68749994 0.54828393 0.69514734 0.59184152
		 0.71734101 0.62640899 0.75190848 0.64860266 0.79546607 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 644 ".vt";
	setAttr ".vt[0:165]"  3.95105648 5.062805653 -1.30417538 3.8090167 5.11755562 -1.57751453
		 3.58778477 5.16100502 -1.79443765 3.30901647 5.1889019 -1.93371081 2.99999928 5.19851398 -1.98170102
		 2.6909821 5.1889019 -1.93371069 2.4122138 5.16100502 -1.79443753 2.1909821 5.11755562 -1.57751429
		 2.048942566 5.062805653 -1.30417514 1.99999905 5.0021152496 -1.0011765957 2.048942566 4.94142437 -0.69817787
		 2.1909821 4.8866744 -0.42483884 2.4122138 4.84322453 -0.20791578 2.69098234 4.8153286 -0.068642616
		 2.99999928 4.80571556 -0.020652354 3.30901623 4.8153286 -0.068642676 3.58778453 4.84322453 -0.20791584
		 3.80901623 4.8866744 -0.4248389 3.95105577 4.94142437 -0.69817793 3.99999928 5.0021152496 -1.0011765957
		 3.95105648 10.05857563 -0.30352193 3.8090167 10.11332512 -0.57686108 3.58778477 10.15677547 -0.79378426
		 3.30901647 10.1846714 -0.93305743 2.99999928 10.19428444 -0.98104769 2.6909821 10.1846714 -0.93305737
		 2.4122138 10.15677547 -0.79378408 2.1909821 10.11332512 -0.5768609 2.048942566 10.05857563 -0.30352181
		 1.99999905 9.99788475 -0.00052314997 2.048942566 9.93719482 0.30247551 2.1909821 9.88244438 0.5758146
		 2.4122138 9.83899498 0.7927376 2.69098234 9.8110981 0.93201077 2.99999928 9.80148602 0.98000109
		 3.30901623 9.8110981 0.93201077 3.58778453 9.83899498 0.7927376 3.80901623 9.88244438 0.57581449
		 3.95105577 9.93719482 0.30247545 3.99999928 9.99788475 -0.00052314997 2.99999928 5.0021152496 -1.0011765957
		 2.99999928 9.99788475 -0.00052314997 3.95105648 5.39585686 -1.23746502 3.99999928 5.33516645 -0.93446624
		 3.95105577 5.27447605 -0.6314677 3.80901623 5.21972561 -0.35812864 3.58778453 5.17627621 -0.14120558
		 3.30901623 5.1483798 -0.001932472 2.99999928 5.13876724 0.04605794 2.69098234 5.1483798 -0.0019324124
		 2.4122138 5.17627621 -0.14120552 2.1909821 5.21972561 -0.35812858 2.048942566 5.27447605 -0.63146758
		 1.99999905 5.33516645 -0.93446624 2.048942566 5.39585686 -1.2374649 2.1909821 5.4506073 -1.51080406
		 2.4122138 5.4940567 -1.72772717 2.6909821 5.52195311 -1.86700046 2.99999928 5.53156567 -1.91499078
		 3.30901647 5.52195311 -1.86700058 3.58778477 5.4940567 -1.72772741 3.8090167 5.4506073 -1.51080418
		 3.95105648 5.72890854 -1.17075479 3.99999928 5.66821814 -0.86775601 3.95105577 5.60752773 -0.56475741
		 3.80901623 5.55277777 -0.29141837 3.58778453 5.50932789 -0.074495316 3.30901623 5.48143148 0.064777851
		 2.99999928 5.47181892 0.11276817 2.69098234 5.48143148 0.064777851 2.4122138 5.50932789 -0.074495256
		 2.1909821 5.55277777 -0.29141831 2.048942566 5.60752773 -0.56475735 1.99999905 5.66821814 -0.86775601
		 2.048942566 5.72890854 -1.17075467 2.1909821 5.7836585 -1.4440937 2.4122138 5.82710838 -1.66101694
		 2.6909821 5.85500479 -1.80029023 2.99999928 5.86461735 -1.84828055 3.30901647 5.85500479 -1.80029023
		 3.58778477 5.82710838 -1.66101706 3.8090167 5.78365898 -1.44409394 3.95105648 6.06196022 -1.10404456
		 3.99999928 6.0012693405 -0.80104578 3.95105577 5.94057894 -0.49804714 3.80901623 5.88582897 -0.22470811
		 3.58778453 5.84237957 -0.0077851117 3.30901623 5.81448269 0.13148808 2.99999928 5.80487061 0.17947841
		 2.69098234 5.81448269 0.13148808 2.4122138 5.84237957 -0.0077850521 2.1909821 5.88582897 -0.22470805
		 2.048942566 5.94057894 -0.49804711 1.99999905 6.0012693405 -0.80104578 2.048942566 6.06196022 -1.10404444
		 2.1909821 6.11671019 -1.37738347 2.4122138 6.16016006 -1.59430671 2.6909821 6.18805647 -1.73357999
		 2.99999928 6.19766903 -1.78157032 3.30901647 6.18805647 -1.73357999 3.58778477 6.16016006 -1.59430683
		 3.8090167 6.11671019 -1.37738359 3.95105648 6.39501143 -1.037334323 3.99999928 6.33432102 -0.73433554
		 3.95105577 6.27363014 -0.43133694 3.80901623 6.21888018 -0.15799791 3.58778453 6.1754303 0.058925092
		 3.30901623 6.14753437 0.19819826 2.99999928 6.13792181 0.24618864 2.69098234 6.14753437 0.19819826
		 2.4122138 6.1754303 0.058925152 2.1909821 6.21888018 -0.15799785 2.048942566 6.27363014 -0.43133694
		 1.99999905 6.33432102 -0.73433554 2.048942566 6.39501143 -1.037334204 2.1909821 6.44976139 -1.31067324
		 2.4122138 6.49321079 -1.52759647 2.6909821 6.52110767 -1.66686976 2.99999928 6.53071976 -1.71486008
		 3.30901647 6.52110767 -1.66686976 3.58778477 6.49321079 -1.52759671 3.8090167 6.44976139 -1.31067336
		 3.95105648 6.72806263 -0.97062409 3.99999928 6.66737223 -0.66762531 3.95105577 6.60668135 -0.36462671
		 3.80901623 6.55193138 -0.091287673 3.58778453 6.50848198 0.12563533 3.30901623 6.48058558 0.26490849
		 2.99999928 6.47097301 0.31289887 2.69098234 6.48058558 0.26490849 2.4122138 6.50848198 0.12563539
		 2.1909821 6.55193138 -0.091287613 2.048942566 6.60668135 -0.36462671 1.99999905 6.66737223 -0.66762531
		 2.048942566 6.72806263 -0.97062397 2.1909821 6.7828126 -1.243963 2.4122138 6.82626247 -1.46088624
		 2.6909821 6.85415888 -1.60015953 2.99999928 6.86377144 -1.64814985 3.30901647 6.85415888 -1.60015953
		 3.58778477 6.82626247 -1.46088648 3.8090167 6.7828126 -1.24396312 3.95105648 7.061114311 -0.90391386
		 3.99999928 7.0004234314 -0.60091507 3.95105577 6.93973255 -0.2979165 3.80901623 6.88498306 -0.024577469
		 3.58778453 6.84153318 0.1923455 3.30901623 6.81363678 0.33161873 2.99999928 6.80402422 0.37960911
		 2.69098234 6.81363678 0.33161873 2.4122138 6.84153318 0.19234562 2.1909821 6.88498306 -0.024577409
		 2.048942566 6.93973255 -0.29791647 1.99999905 7.0004234314 -0.60091507 2.048942566 7.061114311 -0.90391374
		 2.1909821 7.1158638 -1.17725277 2.4122138 7.15931368 -1.39417601 2.6909821 7.18721008 -1.53344929
		 2.99999928 7.19682264 -1.58143961 3.30901647 7.18721008 -1.53344929 3.58778477 7.15931368 -1.39417624
		 3.8090167 7.1158638 -1.17725289 3.95105648 7.39416504 -0.83720374 3.99999928 7.33347416 -0.53420496
		 3.95105577 7.27278376 -0.23120636 3.80901623 7.21803379 0.042132676;
	setAttr ".vt[166:331]" 3.58778453 7.17458439 0.25905567 3.30901623 7.14668751 0.39832884
		 2.99999928 7.13707542 0.44631922 2.69098234 7.14668751 0.39832884 2.4122138 7.17458439 0.25905579
		 2.1909821 7.21803379 0.042132735 2.048942566 7.27278376 -0.2312063 1.99999905 7.33347416 -0.53420496
		 2.048942566 7.39416504 -0.83720356 2.1909821 7.448915 -1.11054265 2.4122138 7.49236488 -1.32746589
		 2.6909821 7.52026129 -1.46673918 2.99999928 7.52987337 -1.5147295 3.30901647 7.52026129 -1.46673918
		 3.58778477 7.49236488 -1.32746601 3.8090167 7.448915 -1.11054277 3.95105648 7.72721624 -0.77049351
		 3.99999928 7.66652584 -0.46749473 3.95105577 7.60583496 -0.16449612 3.80901623 7.551085 0.10884291
		 3.58778453 7.50763559 0.32576591 3.30901623 7.47973919 0.46503907 2.99999928 7.47012663 0.51302946
		 2.69098234 7.47973919 0.46503907 2.4122138 7.50763559 0.32576603 2.1909821 7.551085 0.10884297
		 2.048942566 7.60583496 -0.16449606 1.99999905 7.66652584 -0.46749473 2.048942566 7.72721624 -0.77049339
		 2.1909821 7.78196621 -1.043832421 2.4122138 7.82541609 -1.26075566 2.6909821 7.85331249 -1.40002894
		 2.99999928 7.86292505 -1.44801927 3.30901647 7.85331249 -1.40002894 3.58778477 7.82541609 -1.26075578
		 3.8090167 7.78196621 -1.043832541 3.95105648 8.060267448 -0.70378327 3.99999928 7.99957657 -0.40078455
		 3.95105577 7.93888617 -0.09778595 3.80901623 7.8841362 0.17555308 3.58778453 7.84068632 0.39247608
		 3.30901623 7.81278992 0.53174925 2.99999928 7.80317736 0.57973957 2.69098234 7.81278992 0.53174925
		 2.4122138 7.84068632 0.3924762 2.1909821 7.8841362 0.17555314 2.048942566 7.93888617 -0.09778589
		 1.99999905 7.99957657 -0.40078455 2.048942566 8.060267448 -0.70378321 2.1909821 8.11501694 -0.97712225
		 2.4122138 8.15846729 -1.19404542 2.6909821 8.18636322 -1.33331871 2.99999928 8.19597626 -1.38130903
		 3.30901647 8.18636322 -1.33331871 3.58778477 8.15846729 -1.19404566 3.8090167 8.11501694 -0.97712243
		 3.95105648 8.39331913 -0.63707298 3.99999928 8.33262825 -0.3340742 3.95105577 8.27193832 -0.031075597
		 3.80901623 8.21718788 0.24226344 3.58778453 8.17373848 0.45918643 3.30901623 8.1458416 0.5984596
		 2.99999928 8.13622952 0.64644992 2.69098234 8.1458416 0.5984596 2.4122138 8.17373848 0.45918655
		 2.1909821 8.21718788 0.2422635 2.048942566 8.27193832 -0.031075537 1.99999905 8.33262825 -0.3340742
		 2.048942566 8.39331913 -0.63707286 2.1909821 8.44806957 -0.91041189 2.4122138 8.49151897 -1.12733507
		 2.6909821 8.51941586 -1.26660848 2.99999928 8.52902794 -1.3145988 3.30901647 8.51941586 -1.26660848
		 3.58778477 8.49151897 -1.12733531 3.8090167 8.44806957 -0.91041213 3.95105648 8.72637081 -0.57036275
		 3.99999928 8.66567993 -0.26736397 3.95105577 8.60498905 0.035634637 3.80901623 8.55023956 0.30897367
		 3.58778453 8.50679016 0.52589667 3.30901623 8.47889328 0.66516984 2.99999928 8.4692812 0.71316016
		 2.69098234 8.47889328 0.66516995 2.4122138 8.50679016 0.52589679 2.1909821 8.55023956 0.30897373
		 2.048942566 8.60498905 0.035634696 1.99999905 8.66567993 -0.26736397 2.048942566 8.72637081 -0.57036263
		 2.19098186 8.7811203 -0.84370166 2.4122138 8.8245697 -1.060624957 2.6909821 8.85246658 -1.19989824
		 2.99999928 8.86207962 -1.24788857 3.30901647 8.85246658 -1.19989824 3.58778477 8.8245697 -1.060625076
		 3.8090167 8.7811203 -0.8437019 3.95105648 9.059421539 -0.50365257 3.99999928 8.99873161 -0.20065379
		 3.95105577 8.93804073 0.10234481 3.80901623 8.88329029 0.37568384 3.58778453 8.83984089 0.5926069
		 3.30901623 8.81194496 0.73188007 2.99999928 8.80233192 0.77987039 2.69098234 8.81194496 0.73188007
		 2.4122138 8.83984089 0.5926069 2.1909821 8.88329029 0.3756839 2.048942566 8.93804073 0.10234487
		 1.99999905 8.99873161 -0.20065379 2.048942566 9.059421539 -0.50365245 2.19098186 9.11417198 -0.77699149
		 2.4122138 9.15762138 -0.99391472 2.6909821 9.18551826 -1.13318801 2.99999928 9.19513035 -1.18117833
		 3.30901647 9.18551826 -1.13318801 3.58778477 9.15762138 -0.9939149 3.8090167 9.11417198 -0.77699172
		 3.95105648 9.39247227 -0.43694246 3.99999928 9.33178139 -0.13394368 3.95105577 9.27109146 0.16905493
		 3.80901623 9.21634102 0.44239396 3.58778453 9.17289162 0.65931702 3.30901623 9.14499474 0.79859018
		 2.99999928 9.13538265 0.84658039 2.69098234 9.14499474 0.7985903 2.4122138 9.17289162 0.65931714
		 2.1909821 9.21634102 0.44239402 2.048942566 9.27109146 0.16905499 1.99999905 9.33178139 -0.13394368
		 2.048942566 9.39247227 -0.43694234 2.19098186 9.44722271 -0.71028137 2.4122138 9.49067211 -0.92720461
		 2.6909821 9.51856804 -1.066477895 2.99999928 9.52818108 -1.11446822 3.30901647 9.51856804 -1.066478014
		 3.58778477 9.49067211 -0.92720479 3.8090167 9.44722271 -0.71028161 3.95105648 9.72552395 -0.37023219
		 3.99999928 9.66483307 -0.067233413 3.95105577 9.60414314 0.23576522 3.80901623 9.5493927 0.50910425
		 3.58778453 9.5059433 0.72602725 3.30901623 9.47804642 0.86530042 2.99999928 9.46843433 0.91329062
		 2.69098234 9.47804642 0.86530054 2.4122138 9.5059433 0.72602737 2.1909821 9.5493927 0.50910425
		 2.048942566 9.60414314 0.23576522 1.99999905 9.66483307 -0.067233413 2.048942566 9.72552395 -0.37023208
		 2.19098186 9.78027439 -0.64357114 2.4122138 9.82372379 -0.86049438 2.6909821 9.85161972 -0.99976766
		 2.99999928 9.86123276 -1.047757983 3.30901647 9.85161972 -0.99976766 3.58778477 9.82372379 -0.86049449
		 3.8090167 9.78027439 -0.64357138 3.95105648 -0.058577061 -0.30354279 3.8090167 -0.11332464 -0.57688236
		 3.58778477 -0.15677261 -0.7938059 3.30901647 -0.18466806 -0.9330793 2.99999928 -0.19427991 -0.98106962
		 2.6909821 -0.18466783 -0.93307924 2.4122138 -0.15677261 -0.79380572 2.1909821 -0.11332464 -0.57688218
		 2.048942566 -0.058577061 -0.30354267 1.99999905 0.0021111965 -0.00054353476;
	setAttr ".vt[332:497]" 2.048942566 0.062799454 0.3024556 2.1909821 0.11754704 0.57579505
		 2.4122138 0.16099501 0.79271853 2.69098234 0.18889022 0.93199193 2.99999928 0.1985023 0.97998226
		 3.30901623 0.18889022 0.93199182 3.58778453 0.16099501 0.79271841 3.80901623 0.11754704 0.57579505
		 3.95105577 0.062799454 0.30245554 3.99999928 0.0021111965 -0.00054353476 3.95105648 0.27447462 -0.37025028
		 3.8090167 0.21972704 -0.64358985 3.58778477 0.17627907 -0.86051339 3.30901647 0.14838362 -0.99978679
		 2.99999928 0.13877177 -1.047777176 2.6909821 0.14838386 -0.99978673 2.4122138 0.17627907 -0.86051321
		 2.1909821 0.21972704 -0.64358968 2.048942566 0.27447462 -0.37025017 1.99999905 0.33516288 -0.067251027
		 2.048942566 0.39585114 0.23574811 2.1909821 0.45059872 0.50908756 2.4122138 0.49404669 0.72601092
		 2.69098234 0.5219419 0.86528432 2.99999928 0.53155398 0.91327465 3.30901623 0.5219419 0.86528432
		 3.58778453 0.49404669 0.72601092 3.80901623 0.45059872 0.50908744 3.95105577 0.39585114 0.23574805
		 3.99999928 0.33516288 -0.067251027 3.95105648 0.60752642 -0.43695778 3.8090167 0.55277884 -0.71029735
		 3.58778477 0.50933087 -0.92722088 3.30901647 0.48143554 -1.066494226 2.99999928 0.47182345 -1.11448455
		 2.6909821 0.48143554 -1.066494226 2.4122138 0.50933087 -0.9272207 2.1909821 0.55277884 -0.71029717
		 2.048942566 0.60752642 -0.43695766 1.99999905 0.66821468 -0.13395852 2.048942566 0.72890294 0.16904062
		 2.1909821 0.78365052 0.44238007 2.4122138 0.82709849 0.65930355 2.69098234 0.8549937 0.79857695
		 2.99999928 0.86460578 0.84656727 3.30901623 0.8549937 0.79857683 3.58778453 0.82709837 0.65930343
		 3.80901623 0.78365052 0.44238001 3.95105577 0.72890282 0.16904056 3.99999928 0.66821468 -0.13395852
		 3.95105648 0.94057822 -0.50366527 3.8090167 0.88583064 -0.77700484 3.58778477 0.84238267 -0.99392837
		 3.30901647 0.81448734 -1.13320184 2.99999928 0.80487525 -1.18119216 2.6909821 0.81448734 -1.13320172
		 2.4122138 0.84238267 -0.99392819 2.1909821 0.88583064 -0.77700466 2.048942566 0.94057822 -0.50366515
		 1.99999905 1.0012664795 -0.20066601 2.048942566 1.061954737 0.10233313 2.1909821 1.11670232 0.37567258
		 2.4122138 1.16015029 0.59259593 2.69098234 1.1880455 0.73186934 2.99999928 1.19765759 0.77985966
		 3.30901623 1.1880455 0.73186934 3.58778453 1.16015029 0.59259593 3.80901623 1.11670232 0.37567252
		 3.95105577 1.061954618 0.10233307 3.99999928 1.0012664795 -0.20066601 3.95105648 1.27363002 -0.57037276
		 3.8090167 1.21888244 -0.84371233 3.58778477 1.17543447 -1.060635805 3.30901647 1.14753914 -1.19990921
		 2.99999928 1.13792706 -1.24789953 2.6909821 1.14753914 -1.19990921 2.4122138 1.17543447 -1.060635686
		 2.1909821 1.21888244 -0.84371215 2.048942566 1.27363002 -0.57037264 1.99999905 1.33431828 -0.2673735
		 2.048942566 1.39500654 0.035625637 2.1909821 1.44975412 0.30896509 2.4122138 1.49320209 0.52588844
		 2.69098234 1.52109742 0.66516185 2.99999928 1.53070939 0.71315217 3.30901623 1.5210973 0.66516185
		 3.58778453 1.49320197 0.52588844 3.80901623 1.44975412 0.30896503 3.95105577 1.39500642 0.035625577
		 3.99999928 1.33431828 -0.2673735 3.95105648 1.60668194 -0.63708031 3.8090167 1.55193436 -0.91041988
		 3.58778477 1.50848639 -1.12734342 3.30901647 1.48059106 -1.26661682 2.99999928 1.47097898 -1.31460714
		 2.6909821 1.48059106 -1.26661682 2.4122138 1.50848639 -1.12734318 2.1909821 1.55193436 -0.9104197
		 2.048942566 1.60668206 -0.63708019 1.99999905 1.6673702 -0.33408105 2.048942566 1.72805834 -0.031081915
		 2.1909821 1.78280604 0.24225754 2.4122138 1.82625389 0.45918095 2.69098234 1.85414934 0.59845436
		 2.99999928 1.86376131 0.64644468 3.30901623 1.85414922 0.59845436 3.58778453 1.82625389 0.45918089
		 3.80901623 1.78280604 0.24225748 3.95105577 1.72805834 -0.031081975 3.99999928 1.6673702 -0.33408105
		 3.95105648 1.93973386 -0.7037878 3.8090167 1.88498616 -0.97712737 3.58778477 1.84153819 -1.19405091
		 3.30901647 1.81364298 -1.33332431 2.99999928 1.8040309 -1.38131464 2.6909821 1.81364298 -1.33332419
		 2.4122138 1.84153819 -1.19405079 2.1909821 1.88498616 -0.97712719 2.048942566 1.93973386 -0.70378768
		 1.99999905 2.00042200089 -0.40078855 2.048942566 2.061110258 -0.097789407 2.1909821 2.11585784 0.17555004
		 2.4122138 2.15930581 0.39247346 2.69098234 2.18720102 0.53174686 2.99999928 2.19681311 0.57973719
		 3.30901623 2.18720102 0.53174675 3.58778453 2.15930581 0.3924734 3.80901623 2.11585784 0.17554998
		 3.95105577 2.061110258 -0.097789466 3.99999928 2.00042200089 -0.40078855 3.95105648 2.27278566 -0.7704953
		 3.8090167 2.21803808 -1.043834925 3.58778477 2.17459011 -1.2607584 3.30901647 2.14669466 -1.40003181
		 2.99999928 2.13708282 -1.44802213 2.6909821 2.14669466 -1.40003181 2.4122138 2.17459011 -1.26075816
		 2.1909821 2.21803808 -1.043834686 2.048942566 2.27278566 -0.77049518 1.99999905 2.33347392 -0.46749607
		 2.048942566 2.39416218 -0.16449693 2.1909821 2.44890976 0.10884255 2.4122138 2.49235773 0.32576597
		 2.69098234 2.52025294 0.46503937 2.99999928 2.52986503 0.51302969 3.30901623 2.52025294 0.46503931
		 3.58778453 2.49235773 0.32576591 3.80901623 2.44890976 0.10884249 3.95105577 2.39416218 -0.16449699
		 3.99999928 2.33347392 -0.46749607 3.95105648 2.60583758 -0.83720279 3.8090167 2.55109 -1.11054242
		 3.58778477 2.50764203 -1.32746601 3.30901647 2.47974658 -1.46673942 2.99999928 2.4701345 -1.51472962
		 2.6909821 2.47974658 -1.4667393 2.4122138 2.50764203 -1.32746577 2.1909821 2.55109 -1.1105423
		 2.048942566 2.60583758 -0.83720267 1.99999905 2.66652584 -0.53420359 2.048942566 2.72721386 -0.23120442
		 2.1909821 2.78196168 0.042135 2.4122138 2.82540941 0.25905842 2.69098234 2.85330486 0.39833182
		 2.99999928 2.86291695 0.44632214 3.30901623 2.85330486 0.39833176;
	setAttr ".vt[498:643]" 3.58778453 2.82540941 0.25905836 3.80901623 2.78196168 0.042134941
		 3.95105577 2.72721386 -0.23120448 3.99999928 2.66652584 -0.53420359 3.95105648 2.9388895 -0.90391034
		 3.8090167 2.88414168 -1.17724991 3.58778477 2.84069371 -1.39417338 3.30901647 2.8127985 -1.53344691
		 2.99999928 2.80318642 -1.58143723 2.6909821 2.8127985 -1.53344679 2.4122138 2.84069395 -1.39417326
		 2.1909821 2.88414192 -1.17724967 2.048942566 2.9388895 -0.90391022 1.99999905 2.99957752 -0.60091108
		 2.048942566 3.060265779 -0.29791194 2.1909821 3.1150136 -0.024572492 2.4122138 3.15846133 0.19235092
		 2.69098234 3.18635678 0.33162433 2.99999928 3.19596863 0.37961465 3.30901623 3.18635654 0.33162427
		 3.58778453 3.15846133 0.19235086 3.80901623 3.1150136 -0.024572551 3.95105577 3.060265779 -0.297912
		 3.99999928 2.99957752 -0.60091108 3.95105648 3.27194118 -0.97061783 3.8090167 3.2171936 -1.2439574
		 3.58778477 3.17374563 -1.46088099 3.30901647 3.14585042 -1.6001544 2.99999928 3.13623834 -1.64814472
		 2.6909821 3.14585042 -1.60015428 2.4122138 3.17374563 -1.46088076 2.1909821 3.2171936 -1.24395728
		 2.048942566 3.27194118 -0.97061771 1.99999905 3.33262944 -0.66761857 2.048942566 3.3933177 -0.36461943
		 2.1909821 3.44806528 -0.091279984 2.4122138 3.49151325 0.12564343 2.69098234 3.5194087 0.26491684
		 2.99999928 3.52902079 0.31290716 3.30901623 3.5194087 0.26491678 3.58778453 3.49151325 0.12564337
		 3.80901623 3.44806528 -0.091280043 3.95105577 3.3933177 -0.36461949 3.99999928 3.33262944 -0.66761857
		 3.95105648 3.60499334 -1.037325382 3.8090167 3.55024576 -1.31066489 3.58778477 3.50679779 -1.52758849
		 3.30901647 3.47890234 -1.66686189 2.99999928 3.46929026 -1.71485221 2.6909821 3.47890234 -1.66686189
		 2.4122138 3.50679779 -1.52758825 2.1909821 3.55024576 -1.31066477 2.048942566 3.60499334 -1.037325263
		 1.99999905 3.66568136 -0.73432612 2.048942566 3.72636986 -0.43132699 2.1909821 3.78111744 -0.15798753
		 2.4122138 3.82456541 0.058935881 2.69098234 3.85246038 0.19820929 2.99999928 3.86207247 0.24619961
		 3.30901623 3.85246038 0.19820923 3.58778453 3.82456517 0.058935821 3.80901623 3.78111744 -0.15798759
		 3.95105577 3.72636962 -0.43132704 3.99999928 3.66568136 -0.73432612 3.95105648 3.93804502 -1.10403287
		 3.8090167 3.88329744 -1.3773725 3.58778477 3.83984947 -1.59429598 3.30901647 3.81195402 -1.73356938
		 2.99999928 3.80234194 -1.78155971 2.6909821 3.81195402 -1.73356926 2.4122138 3.83984947 -1.59429586
		 2.1909821 3.88329744 -1.37737226 2.048942566 3.93804502 -1.10403275 1.99999905 3.99873328 -0.80103362
		 2.048942566 4.059421539 -0.49803448 2.1909821 4.11416912 -0.22469503 2.4122138 4.15761709 -0.0077716112
		 2.69098234 4.18551254 0.13150179 2.99999928 4.19512463 0.17949212 3.30901623 4.18551254 0.13150173
		 3.58778453 4.15761709 -0.0077716708 3.80901623 4.11416912 -0.22469509 3.95105577 4.059421539 -0.49803454
		 3.99999928 3.99873328 -0.80103362 3.95105648 4.27109671 -1.17074037 3.8090167 4.21634912 -1.44407988
		 3.58778477 4.17290115 -1.66100347 3.30901647 4.14500618 -1.80027688 2.99999928 4.1353941 -1.8482672
		 2.6909821 4.14500618 -1.80027688 2.4122138 4.17290115 -1.66100323 2.1909821 4.21634912 -1.44407976
		 2.048942566 4.27109671 -1.17074025 1.99999905 4.3317852 -0.86774111 2.048942566 4.39247322 -0.56474197
		 2.1909821 4.4472208 -0.29140252 2.4122138 4.49066877 -0.074479103 2.69098234 4.51856422 0.064794302
		 2.99999928 4.52817631 0.11278462 3.30901623 4.51856422 0.064794242 3.58778453 4.49066877 -0.074479163
		 3.80901623 4.4472208 -0.29140258 3.95105577 4.39247322 -0.56474203 3.99999928 4.3317852 -0.86774111
		 3.95105648 4.60414886 -1.23744786 3.8090167 4.54940128 -1.51078749 3.58778477 4.50595284 -1.72771096
		 3.30901647 4.47805786 -1.86698437 2.99999928 4.46844578 -1.91497469 2.6909821 4.47805786 -1.86698437
		 2.4122138 4.50595284 -1.72771084 2.1909821 4.54940128 -1.51078725 2.048942566 4.60414886 -1.23744774
		 1.99999905 4.66483688 -0.9344486 2.048942566 4.7255249 -0.63144946 2.1909821 4.78027248 -0.35811004
		 2.4122138 4.82372093 -0.14118662 2.69098234 4.85161591 -0.0019132197 2.99999928 4.86122799 0.046077132
		 3.30901623 4.85161591 -0.0019132793 3.58778453 4.82372093 -0.14118668 3.80901623 4.78027248 -0.3581101
		 3.95105577 4.7255249 -0.63144958 3.99999928 4.66483688 -0.9344486 3.95105648 4.93720055 -1.30415535
		 3.8090167 4.88245296 -1.57749498 3.58778477 4.83900499 -1.79441845 3.30901647 4.81110954 -1.93369186
		 2.99999928 4.80149746 -1.98168218 2.6909821 4.81110954 -1.93369186 2.4122138 4.83900499 -1.79441833
		 2.1909821 4.88245296 -1.57749474 2.048942566 4.93720055 -1.30415535 1.99999905 4.99788857 -1.0011560917
		 2.048942566 5.058577061 -0.69815701 2.1909821 5.11332464 -0.42481756 2.4122138 5.15677261 -0.20789415
		 2.69098234 5.18466759 -0.068620741 2.99999928 5.19427967 -0.020630419 3.30901623 5.18466759 -0.068620801
		 3.58778453 5.15677261 -0.20789421 3.80901623 5.11332464 -0.42481762 3.95105577 5.058577061 -0.69815707
		 3.99999928 4.99788857 -1.0011560917 2.99999928 0.0021111965 -0.00054353476 2.99999928 4.99788857 -1.0011560917;
	setAttr -s 1320 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 42 1 1 61 1
		 2 60 1 3 59 1 4 58 1 5 57 1 6 56 1 7 55 1 8 54 1 9 53 1 10 52 1 11 51 1 12 50 1 13 49 1
		 14 48 1 15 47 1 16 46 1 17 45 1 18 44 1 19 43 1 40 0 1 40 1 1 40 2 1 40 3 1 40 4 1
		 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1 40 14 1 40 15 1
		 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1 25 41 1 26 41 1
		 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1 36 41 1 37 41 1
		 38 41 1 39 41 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1
		 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 42 1 62 82 1 63 83 1
		 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1
		 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1 80 100 1 81 101 1 62 63 1 63 64 1 64 65 1
		 65 66 1 66 67 1 67 68 1;
	setAttr ".ed[166:331]" 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 62 1 82 102 1 83 103 1 84 104 1
		 85 105 1 86 106 1 87 107 1 88 108 1 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1
		 94 114 1 95 115 1 96 116 1 97 117 1 98 118 1 99 119 1 100 120 1 101 121 1 82 83 1
		 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1
		 94 95 1 95 96 1 96 97 1 97 98 1 98 99 1 99 100 1 100 101 1 101 82 1 102 122 1 103 123 1
		 104 124 1 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1
		 113 133 1 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1
		 102 103 1 103 104 1 104 105 1 105 106 1 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1
		 111 112 1 112 113 1 113 114 1 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1
		 120 121 1 121 102 1 122 142 1 123 143 1 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1
		 129 149 1 130 150 1 131 151 1 132 152 1 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1
		 138 158 1 139 159 1 140 160 1 141 161 1 122 123 1 123 124 1 124 125 1 125 126 1 126 127 1
		 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1 133 134 1 134 135 1 135 136 1
		 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 122 1 142 162 1 143 163 1 144 164 1
		 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1 151 171 1 152 172 1 153 173 1
		 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1 160 180 1 161 181 1 142 143 1
		 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1 151 152 1
		 152 153 1 153 154 1;
	setAttr ".ed[332:497]" 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 160 1
		 160 161 1 161 142 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 162 163 1 163 164 1 164 165 1 165 166 1 166 167 1
		 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1 172 173 1 173 174 1 174 175 1 175 176 1
		 176 177 1 177 178 1 178 179 1 179 180 1 180 181 1 181 162 1 182 202 1 183 203 1 184 204 1
		 185 205 1 186 206 1 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1
		 194 214 1 195 215 1 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 182 183 1
		 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1 191 192 1
		 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1
		 201 182 1 202 222 1 203 223 1 204 224 1 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1
		 210 230 1 211 231 1 212 232 1 213 233 1 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1
		 219 239 1 220 240 1 221 241 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 220 1 220 221 1 221 202 1 222 242 1 223 243 1 224 244 1 225 245 1
		 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1 232 252 1 233 253 1 234 254 1
		 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1 241 261 1 222 223 1 223 224 1
		 224 225 1 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1
		 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1 239 240 1;
	setAttr ".ed[498:663]" 240 241 1 241 222 1 242 262 1 243 263 1 244 264 1 245 265 1
		 246 266 1 247 267 1 248 268 1 249 269 1 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1
		 255 275 1 256 276 1 257 277 1 258 278 1 259 279 1 260 280 1 261 281 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 260 1 260 261 1 261 242 1
		 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1 268 288 1 269 289 1 270 290 1
		 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1 277 297 1 278 298 1 279 299 1
		 280 300 1 281 301 1 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1
		 269 270 1 270 271 1 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1
		 278 279 1 279 280 1 280 281 1 281 262 1 282 302 1 283 303 1 284 304 1 285 305 1 286 306 1
		 287 307 1 288 308 1 289 309 1 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1
		 296 316 1 297 317 1 298 318 1 299 319 1 300 320 1 301 321 1 282 283 1 283 284 1 284 285 1
		 285 286 1 286 287 1 287 288 1 288 289 1 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1
		 294 295 1 295 296 1 296 297 1 297 298 1 298 299 1 299 300 1 300 301 1 301 282 1 302 20 1
		 303 39 1 304 38 1 305 37 1 306 36 1 307 35 1 308 34 1 309 33 1 310 32 1 311 31 1
		 312 30 1 313 29 1 314 28 1 315 27 1 316 26 1 317 25 1 318 24 1 319 23 1 320 22 1
		 321 21 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1
		 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1
		 319 320 1 320 321 1 321 302 1 322 323 0 323 324 0 324 325 0 325 326 0;
	setAttr ".ed[664:829]" 326 327 0 327 328 0 328 329 0 329 330 0 330 331 0 331 332 0
		 332 333 0 333 334 0 334 335 0 335 336 0 336 337 0 337 338 0 338 339 0 339 340 0 340 341 0
		 341 322 0 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1 347 348 1 348 349 1 349 350 1
		 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1 356 357 1 357 358 1 358 359 1
		 359 360 1 360 361 1 361 342 1 362 363 1 363 364 1 364 365 1 365 366 1 366 367 1 367 368 1
		 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1 374 375 1 375 376 1 376 377 1
		 377 378 1 378 379 1 379 380 1 380 381 1 381 362 1 382 383 1 383 384 1 384 385 1 385 386 1
		 386 387 1 387 388 1 388 389 1 389 390 1 390 391 1 391 392 1 392 393 1 393 394 1 394 395 1
		 395 396 1 396 397 1 397 398 1 398 399 1 399 400 1 400 401 1 401 382 1 402 403 1 403 404 1
		 404 405 1 405 406 1 406 407 1 407 408 1 408 409 1 409 410 1 410 411 1 411 412 1 412 413 1
		 413 414 1 414 415 1 415 416 1 416 417 1 417 418 1 418 419 1 419 420 1 420 421 1 421 402 1
		 422 423 1 423 424 1 424 425 1 425 426 1 426 427 1 427 428 1 428 429 1 429 430 1 430 431 1
		 431 432 1 432 433 1 433 434 1 434 435 1 435 436 1 436 437 1 437 438 1 438 439 1 439 440 1
		 440 441 1 441 422 1 442 443 1 443 444 1 444 445 1 445 446 1 446 447 1 447 448 1 448 449 1
		 449 450 1 450 451 1 451 452 1 452 453 1 453 454 1 454 455 1 455 456 1 456 457 1 457 458 1
		 458 459 1 459 460 1 460 461 1 461 442 1 462 463 1 463 464 1 464 465 1 465 466 1 466 467 1
		 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1 472 473 1 473 474 1 474 475 1 475 476 1
		 476 477 1 477 478 1 478 479 1 479 480 1 480 481 1 481 462 1 482 483 1 483 484 1 484 485 1
		 485 486 1 486 487 1 487 488 1 488 489 1 489 490 1 490 491 1 491 492 1;
	setAttr ".ed[830:995]" 492 493 1 493 494 1 494 495 1 495 496 1 496 497 1 497 498 1
		 498 499 1 499 500 1 500 501 1 501 482 1 502 503 1 503 504 1 504 505 1 505 506 1 506 507 1
		 507 508 1 508 509 1 509 510 1 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1 515 516 1
		 516 517 1 517 518 1 518 519 1 519 520 1 520 521 1 521 502 1 522 523 1 523 524 1 524 525 1
		 525 526 1 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 533 1 533 534 1
		 534 535 1 535 536 1 536 537 1 537 538 1 538 539 1 539 540 1 540 541 1 541 522 1 542 543 1
		 543 544 1 544 545 1 545 546 1 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1 551 552 1
		 552 553 1 553 554 1 554 555 1 555 556 1 556 557 1 557 558 1 558 559 1 559 560 1 560 561 1
		 561 542 1 562 563 1 563 564 1 564 565 1 565 566 1 566 567 1 567 568 1 568 569 1 569 570 1
		 570 571 1 571 572 1 572 573 1 573 574 1 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1
		 579 580 1 580 581 1 581 562 1 582 583 1 583 584 1 584 585 1 585 586 1 586 587 1 587 588 1
		 588 589 1 589 590 1 590 591 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1 596 597 1
		 597 598 1 598 599 1 599 600 1 600 601 1 601 582 1 602 603 1 603 604 1 604 605 1 605 606 1
		 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1 611 612 1 612 613 1 613 614 1 614 615 1
		 615 616 1 616 617 1 617 618 1 618 619 1 619 620 1 620 621 1 621 602 1 622 623 0 623 624 0
		 624 625 0 625 626 0 626 627 0 627 628 0 628 629 0 629 630 0 630 631 0 631 632 0 632 633 0
		 633 634 0 634 635 0 635 636 0 636 637 0 637 638 0 638 639 0 639 640 0 640 641 0 641 622 0
		 322 342 1 323 343 1 324 344 1 325 345 1 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1
		 331 351 1 332 352 1 333 353 1 334 354 1 335 355 1 336 356 1 337 357 1;
	setAttr ".ed[996:1161]" 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 360 380 1 361 381 1
		 362 382 1 363 383 1 364 384 1 365 385 1 366 386 1 367 387 1 368 388 1 369 389 1 370 390 1
		 371 391 1 372 392 1 373 393 1 374 394 1 375 395 1 376 396 1 377 397 1 378 398 1 379 399 1
		 380 400 1 381 401 1 382 402 1 383 403 1 384 404 1 385 405 1 386 406 1 387 407 1 388 408 1
		 389 409 1 390 410 1 391 411 1 392 412 1 393 413 1 394 414 1 395 415 1 396 416 1 397 417 1
		 398 418 1 399 419 1 400 420 1 401 421 1 402 422 1 403 423 1 404 424 1 405 425 1 406 426 1
		 407 427 1 408 428 1 409 429 1 410 430 1 411 431 1 412 432 1 413 433 1 414 434 1 415 435 1
		 416 436 1 417 437 1 418 438 1 419 439 1 420 440 1 421 441 1 422 442 1 423 443 1 424 444 1
		 425 445 1 426 446 1 427 447 1 428 448 1 429 449 1 430 450 1 431 451 1 432 452 1 433 453 1
		 434 454 1 435 455 1 436 456 1 437 457 1 438 458 1 439 459 1 440 460 1 441 461 1 442 462 1
		 443 463 1 444 464 1 445 465 1 446 466 1 447 467 1 448 468 1 449 469 1 450 470 1 451 471 1
		 452 472 1 453 473 1 454 474 1 455 475 1 456 476 1 457 477 1 458 478 1 459 479 1 460 480 1
		 461 481 1 462 482 1 463 483 1 464 484 1 465 485 1 466 486 1 467 487 1 468 488 1 469 489 1
		 470 490 1 471 491 1 472 492 1 473 493 1 474 494 1 475 495 1 476 496 1 477 497 1 478 498 1
		 479 499 1 480 500 1 481 501 1 482 502 1 483 503 1 484 504 1 485 505 1 486 506 1 487 507 1
		 488 508 1 489 509 1 490 510 1 491 511 1 492 512 1 493 513 1 494 514 1 495 515 1 496 516 1
		 497 517 1 498 518 1 499 519 1 500 520 1 501 521 1 502 522 1 503 523 1;
	setAttr ".ed[1162:1319]" 504 524 1 505 525 1 506 526 1 507 527 1 508 528 1 509 529 1
		 510 530 1 511 531 1 512 532 1 513 533 1 514 534 1 515 535 1 516 536 1 517 537 1 518 538 1
		 519 539 1 520 540 1 521 541 1 522 542 1 523 543 1 524 544 1 525 545 1 526 546 1 527 547 1
		 528 548 1 529 549 1 530 550 1 531 551 1 532 552 1 533 553 1 534 554 1 535 555 1 536 556 1
		 537 557 1 538 558 1 539 559 1 540 560 1 541 561 1 542 562 1 543 563 1 544 564 1 545 565 1
		 546 566 1 547 567 1 548 568 1 549 569 1 550 570 1 551 571 1 552 572 1 553 573 1 554 574 1
		 555 575 1 556 576 1 557 577 1 558 578 1 559 579 1 560 580 1 561 581 1 562 582 1 563 583 1
		 564 584 1 565 585 1 566 586 1 567 587 1 568 588 1 569 589 1 570 590 1 571 591 1 572 592 1
		 573 593 1 574 594 1 575 595 1 576 596 1 577 597 1 578 598 1 579 599 1 580 600 1 581 601 1
		 582 602 1 583 603 1 584 604 1 585 605 1 586 606 1 587 607 1 588 608 1 589 609 1 590 610 1
		 591 611 1 592 612 1 593 613 1 594 614 1 595 615 1 596 616 1 597 617 1 598 618 1 599 619 1
		 600 620 1 601 621 1 602 622 1 603 623 1 604 624 1 605 625 1 606 626 1 607 627 1 608 628 1
		 609 629 1 610 630 1 611 631 1 612 632 1 613 633 1 614 634 1 615 635 1 616 636 1 617 637 1
		 618 638 1 619 639 1 620 640 1 621 641 1 642 322 1 642 323 1 642 324 1 642 325 1 642 326 1
		 642 327 1 642 328 1 642 329 1 642 330 1 642 331 1 642 332 1 642 333 1 642 334 1 642 335 1
		 642 336 1 642 337 1 642 338 1 642 339 1 642 340 1 642 341 1 622 643 1 623 643 1 624 643 1
		 625 643 1 626 643 1 627 643 1 628 643 1 629 643 1 630 643 1 631 643 1 632 643 1 633 643 1
		 634 643 1 635 643 1 636 643 1 637 643 1 638 643 1 639 643 1 640 643 1 641 643 1;
	setAttr -s 680 -ch 2640 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 41 139 -41
		mu 0 4 20 21 104 85
		f 4 1 42 138 -42
		mu 0 4 21 22 103 104
		f 4 2 43 137 -43
		mu 0 4 22 23 102 103
		f 4 3 44 136 -44
		mu 0 4 23 24 101 102
		f 4 4 45 135 -45
		mu 0 4 24 25 100 101
		f 4 5 46 134 -46
		mu 0 4 25 26 99 100
		f 4 6 47 133 -47
		mu 0 4 26 27 98 99
		f 4 7 48 132 -48
		mu 0 4 27 28 97 98
		f 4 8 49 131 -49
		mu 0 4 28 29 96 97
		f 4 9 50 130 -50
		mu 0 4 29 30 95 96
		f 4 10 51 129 -51
		mu 0 4 30 31 94 95
		f 4 11 52 128 -52
		mu 0 4 31 32 93 94
		f 4 12 53 127 -53
		mu 0 4 32 33 92 93
		f 4 13 54 126 -54
		mu 0 4 33 34 91 92
		f 4 14 55 125 -55
		mu 0 4 34 35 90 91
		f 4 15 56 124 -56
		mu 0 4 35 36 89 90
		f 4 16 57 123 -57
		mu 0 4 36 37 88 89
		f 4 17 58 122 -58
		mu 0 4 37 38 87 88
		f 4 18 59 121 -59
		mu 0 4 38 39 86 87
		f 4 19 40 120 -60
		mu 0 4 39 40 84 86
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83
		f 4 -121 100 160 -102
		mu 0 4 86 84 105 107
		f 4 -122 101 161 -103
		mu 0 4 87 86 107 108
		f 4 -123 102 162 -104
		mu 0 4 88 87 108 109
		f 4 -124 103 163 -105
		mu 0 4 89 88 109 110
		f 4 -125 104 164 -106
		mu 0 4 90 89 110 111
		f 4 -126 105 165 -107
		mu 0 4 91 90 111 112
		f 4 -127 106 166 -108
		mu 0 4 92 91 112 113
		f 4 -128 107 167 -109
		mu 0 4 93 92 113 114
		f 4 -129 108 168 -110
		mu 0 4 94 93 114 115
		f 4 -130 109 169 -111
		mu 0 4 95 94 115 116
		f 4 -131 110 170 -112
		mu 0 4 96 95 116 117
		f 4 -132 111 171 -113
		mu 0 4 97 96 117 118
		f 4 -133 112 172 -114
		mu 0 4 98 97 118 119
		f 4 -134 113 173 -115
		mu 0 4 99 98 119 120
		f 4 -135 114 174 -116
		mu 0 4 100 99 120 121
		f 4 -136 115 175 -117
		mu 0 4 101 100 121 122
		f 4 -137 116 176 -118
		mu 0 4 102 101 122 123
		f 4 -138 117 177 -119
		mu 0 4 103 102 123 124
		f 4 -139 118 178 -120
		mu 0 4 104 103 124 125
		f 4 -140 119 179 -101
		mu 0 4 85 104 125 106
		f 4 -161 140 200 -142
		mu 0 4 107 105 126 128
		f 4 -162 141 201 -143
		mu 0 4 108 107 128 129
		f 4 -163 142 202 -144
		mu 0 4 109 108 129 130
		f 4 -164 143 203 -145
		mu 0 4 110 109 130 131
		f 4 -165 144 204 -146
		mu 0 4 111 110 131 132
		f 4 -166 145 205 -147
		mu 0 4 112 111 132 133
		f 4 -167 146 206 -148
		mu 0 4 113 112 133 134
		f 4 -168 147 207 -149
		mu 0 4 114 113 134 135
		f 4 -169 148 208 -150
		mu 0 4 115 114 135 136
		f 4 -170 149 209 -151
		mu 0 4 116 115 136 137
		f 4 -171 150 210 -152
		mu 0 4 117 116 137 138
		f 4 -172 151 211 -153
		mu 0 4 118 117 138 139
		f 4 -173 152 212 -154
		mu 0 4 119 118 139 140
		f 4 -174 153 213 -155
		mu 0 4 120 119 140 141
		f 4 -175 154 214 -156
		mu 0 4 121 120 141 142
		f 4 -176 155 215 -157
		mu 0 4 122 121 142 143
		f 4 -177 156 216 -158
		mu 0 4 123 122 143 144
		f 4 -178 157 217 -159
		mu 0 4 124 123 144 145
		f 4 -179 158 218 -160
		mu 0 4 125 124 145 146
		f 4 -180 159 219 -141
		mu 0 4 106 125 146 127
		f 4 -201 180 240 -182
		mu 0 4 128 126 147 149
		f 4 -202 181 241 -183
		mu 0 4 129 128 149 150
		f 4 -203 182 242 -184
		mu 0 4 130 129 150 151
		f 4 -204 183 243 -185
		mu 0 4 131 130 151 152
		f 4 -205 184 244 -186
		mu 0 4 132 131 152 153
		f 4 -206 185 245 -187
		mu 0 4 133 132 153 154
		f 4 -207 186 246 -188
		mu 0 4 134 133 154 155
		f 4 -208 187 247 -189
		mu 0 4 135 134 155 156
		f 4 -209 188 248 -190
		mu 0 4 136 135 156 157
		f 4 -210 189 249 -191
		mu 0 4 137 136 157 158
		f 4 -211 190 250 -192
		mu 0 4 138 137 158 159
		f 4 -212 191 251 -193
		mu 0 4 139 138 159 160
		f 4 -213 192 252 -194
		mu 0 4 140 139 160 161
		f 4 -214 193 253 -195
		mu 0 4 141 140 161 162
		f 4 -215 194 254 -196
		mu 0 4 142 141 162 163
		f 4 -216 195 255 -197
		mu 0 4 143 142 163 164
		f 4 -217 196 256 -198
		mu 0 4 144 143 164 165
		f 4 -218 197 257 -199
		mu 0 4 145 144 165 166
		f 4 -219 198 258 -200
		mu 0 4 146 145 166 167
		f 4 -220 199 259 -181
		mu 0 4 127 146 167 148
		f 4 -241 220 280 -222
		mu 0 4 149 147 168 170
		f 4 -242 221 281 -223
		mu 0 4 150 149 170 171
		f 4 -243 222 282 -224
		mu 0 4 151 150 171 172
		f 4 -244 223 283 -225
		mu 0 4 152 151 172 173
		f 4 -245 224 284 -226
		mu 0 4 153 152 173 174
		f 4 -246 225 285 -227
		mu 0 4 154 153 174 175
		f 4 -247 226 286 -228
		mu 0 4 155 154 175 176
		f 4 -248 227 287 -229
		mu 0 4 156 155 176 177
		f 4 -249 228 288 -230
		mu 0 4 157 156 177 178
		f 4 -250 229 289 -231
		mu 0 4 158 157 178 179
		f 4 -251 230 290 -232
		mu 0 4 159 158 179 180
		f 4 -252 231 291 -233
		mu 0 4 160 159 180 181
		f 4 -253 232 292 -234
		mu 0 4 161 160 181 182
		f 4 -254 233 293 -235
		mu 0 4 162 161 182 183
		f 4 -255 234 294 -236
		mu 0 4 163 162 183 184
		f 4 -256 235 295 -237
		mu 0 4 164 163 184 185
		f 4 -257 236 296 -238
		mu 0 4 165 164 185 186
		f 4 -258 237 297 -239
		mu 0 4 166 165 186 187
		f 4 -259 238 298 -240
		mu 0 4 167 166 187 188
		f 4 -260 239 299 -221
		mu 0 4 148 167 188 169
		f 4 -281 260 320 -262
		mu 0 4 170 168 189 191
		f 4 -282 261 321 -263
		mu 0 4 171 170 191 192
		f 4 -283 262 322 -264
		mu 0 4 172 171 192 193
		f 4 -284 263 323 -265
		mu 0 4 173 172 193 194
		f 4 -285 264 324 -266
		mu 0 4 174 173 194 195
		f 4 -286 265 325 -267
		mu 0 4 175 174 195 196
		f 4 -287 266 326 -268
		mu 0 4 176 175 196 197
		f 4 -288 267 327 -269
		mu 0 4 177 176 197 198
		f 4 -289 268 328 -270
		mu 0 4 178 177 198 199
		f 4 -290 269 329 -271
		mu 0 4 179 178 199 200
		f 4 -291 270 330 -272
		mu 0 4 180 179 200 201
		f 4 -292 271 331 -273
		mu 0 4 181 180 201 202
		f 4 -293 272 332 -274
		mu 0 4 182 181 202 203
		f 4 -294 273 333 -275
		mu 0 4 183 182 203 204
		f 4 -295 274 334 -276
		mu 0 4 184 183 204 205
		f 4 -296 275 335 -277
		mu 0 4 185 184 205 206
		f 4 -297 276 336 -278
		mu 0 4 186 185 206 207
		f 4 -298 277 337 -279
		mu 0 4 187 186 207 208
		f 4 -299 278 338 -280
		mu 0 4 188 187 208 209
		f 4 -300 279 339 -261
		mu 0 4 169 188 209 190
		f 4 -321 300 360 -302
		mu 0 4 191 189 210 212
		f 4 -322 301 361 -303
		mu 0 4 192 191 212 213
		f 4 -323 302 362 -304
		mu 0 4 193 192 213 214
		f 4 -324 303 363 -305
		mu 0 4 194 193 214 215
		f 4 -325 304 364 -306
		mu 0 4 195 194 215 216
		f 4 -326 305 365 -307
		mu 0 4 196 195 216 217
		f 4 -327 306 366 -308
		mu 0 4 197 196 217 218
		f 4 -328 307 367 -309
		mu 0 4 198 197 218 219
		f 4 -329 308 368 -310
		mu 0 4 199 198 219 220
		f 4 -330 309 369 -311
		mu 0 4 200 199 220 221
		f 4 -331 310 370 -312
		mu 0 4 201 200 221 222
		f 4 -332 311 371 -313
		mu 0 4 202 201 222 223
		f 4 -333 312 372 -314
		mu 0 4 203 202 223 224
		f 4 -334 313 373 -315
		mu 0 4 204 203 224 225
		f 4 -335 314 374 -316
		mu 0 4 205 204 225 226
		f 4 -336 315 375 -317
		mu 0 4 206 205 226 227
		f 4 -337 316 376 -318
		mu 0 4 207 206 227 228
		f 4 -338 317 377 -319
		mu 0 4 208 207 228 229
		f 4 -339 318 378 -320
		mu 0 4 209 208 229 230
		f 4 -340 319 379 -301
		mu 0 4 190 209 230 211
		f 4 -361 340 400 -342
		mu 0 4 212 210 231 233
		f 4 -362 341 401 -343
		mu 0 4 213 212 233 234
		f 4 -363 342 402 -344
		mu 0 4 214 213 234 235
		f 4 -364 343 403 -345
		mu 0 4 215 214 235 236
		f 4 -365 344 404 -346
		mu 0 4 216 215 236 237
		f 4 -366 345 405 -347
		mu 0 4 217 216 237 238
		f 4 -367 346 406 -348
		mu 0 4 218 217 238 239
		f 4 -368 347 407 -349
		mu 0 4 219 218 239 240
		f 4 -369 348 408 -350
		mu 0 4 220 219 240 241
		f 4 -370 349 409 -351
		mu 0 4 221 220 241 242
		f 4 -371 350 410 -352
		mu 0 4 222 221 242 243
		f 4 -372 351 411 -353
		mu 0 4 223 222 243 244
		f 4 -373 352 412 -354
		mu 0 4 224 223 244 245
		f 4 -374 353 413 -355
		mu 0 4 225 224 245 246
		f 4 -375 354 414 -356
		mu 0 4 226 225 246 247
		f 4 -376 355 415 -357
		mu 0 4 227 226 247 248
		f 4 -377 356 416 -358
		mu 0 4 228 227 248 249
		f 4 -378 357 417 -359
		mu 0 4 229 228 249 250
		f 4 -379 358 418 -360
		mu 0 4 230 229 250 251
		f 4 -380 359 419 -341
		mu 0 4 211 230 251 232
		f 4 -401 380 440 -382
		mu 0 4 233 231 252 254
		f 4 -402 381 441 -383
		mu 0 4 234 233 254 255
		f 4 -403 382 442 -384
		mu 0 4 235 234 255 256
		f 4 -404 383 443 -385
		mu 0 4 236 235 256 257
		f 4 -405 384 444 -386
		mu 0 4 237 236 257 258
		f 4 -406 385 445 -387
		mu 0 4 238 237 258 259
		f 4 -407 386 446 -388
		mu 0 4 239 238 259 260
		f 4 -408 387 447 -389
		mu 0 4 240 239 260 261
		f 4 -409 388 448 -390
		mu 0 4 241 240 261 262
		f 4 -410 389 449 -391
		mu 0 4 242 241 262 263
		f 4 -411 390 450 -392
		mu 0 4 243 242 263 264
		f 4 -412 391 451 -393
		mu 0 4 244 243 264 265
		f 4 -413 392 452 -394
		mu 0 4 245 244 265 266
		f 4 -414 393 453 -395
		mu 0 4 246 245 266 267
		f 4 -415 394 454 -396
		mu 0 4 247 246 267 268
		f 4 -416 395 455 -397
		mu 0 4 248 247 268 269
		f 4 -417 396 456 -398
		mu 0 4 249 248 269 270
		f 4 -418 397 457 -399
		mu 0 4 250 249 270 271
		f 4 -419 398 458 -400
		mu 0 4 251 250 271 272
		f 4 -420 399 459 -381
		mu 0 4 232 251 272 253
		f 4 -441 420 480 -422
		mu 0 4 254 252 273 275
		f 4 -442 421 481 -423
		mu 0 4 255 254 275 276
		f 4 -443 422 482 -424
		mu 0 4 256 255 276 277
		f 4 -444 423 483 -425
		mu 0 4 257 256 277 278
		f 4 -445 424 484 -426
		mu 0 4 258 257 278 279
		f 4 -446 425 485 -427
		mu 0 4 259 258 279 280
		f 4 -447 426 486 -428
		mu 0 4 260 259 280 281
		f 4 -448 427 487 -429
		mu 0 4 261 260 281 282
		f 4 -449 428 488 -430
		mu 0 4 262 261 282 283
		f 4 -450 429 489 -431
		mu 0 4 263 262 283 284
		f 4 -451 430 490 -432
		mu 0 4 264 263 284 285
		f 4 -452 431 491 -433
		mu 0 4 265 264 285 286
		f 4 -453 432 492 -434
		mu 0 4 266 265 286 287
		f 4 -454 433 493 -435
		mu 0 4 267 266 287 288
		f 4 -455 434 494 -436
		mu 0 4 268 267 288 289
		f 4 -456 435 495 -437
		mu 0 4 269 268 289 290
		f 4 -457 436 496 -438
		mu 0 4 270 269 290 291
		f 4 -458 437 497 -439
		mu 0 4 271 270 291 292
		f 4 -459 438 498 -440
		mu 0 4 272 271 292 293
		f 4 -460 439 499 -421
		mu 0 4 253 272 293 274
		f 4 -481 460 520 -462
		mu 0 4 275 273 294 296
		f 4 -482 461 521 -463
		mu 0 4 276 275 296 297
		f 4 -483 462 522 -464
		mu 0 4 277 276 297 298
		f 4 -484 463 523 -465
		mu 0 4 278 277 298 299
		f 4 -485 464 524 -466
		mu 0 4 279 278 299 300
		f 4 -486 465 525 -467
		mu 0 4 280 279 300 301
		f 4 -487 466 526 -468
		mu 0 4 281 280 301 302
		f 4 -488 467 527 -469
		mu 0 4 282 281 302 303
		f 4 -489 468 528 -470
		mu 0 4 283 282 303 304
		f 4 -490 469 529 -471
		mu 0 4 284 283 304 305
		f 4 -491 470 530 -472
		mu 0 4 285 284 305 306
		f 4 -492 471 531 -473
		mu 0 4 286 285 306 307
		f 4 -493 472 532 -474
		mu 0 4 287 286 307 308
		f 4 -494 473 533 -475
		mu 0 4 288 287 308 309
		f 4 -495 474 534 -476
		mu 0 4 289 288 309 310
		f 4 -496 475 535 -477
		mu 0 4 290 289 310 311
		f 4 -497 476 536 -478
		mu 0 4 291 290 311 312
		f 4 -498 477 537 -479
		mu 0 4 292 291 312 313
		f 4 -499 478 538 -480
		mu 0 4 293 292 313 314
		f 4 -500 479 539 -461
		mu 0 4 274 293 314 295
		f 4 -521 500 560 -502
		mu 0 4 296 294 315 317
		f 4 -522 501 561 -503
		mu 0 4 297 296 317 318
		f 4 -523 502 562 -504
		mu 0 4 298 297 318 319
		f 4 -524 503 563 -505
		mu 0 4 299 298 319 320
		f 4 -525 504 564 -506
		mu 0 4 300 299 320 321
		f 4 -526 505 565 -507
		mu 0 4 301 300 321 322
		f 4 -527 506 566 -508
		mu 0 4 302 301 322 323
		f 4 -528 507 567 -509
		mu 0 4 303 302 323 324
		f 4 -529 508 568 -510
		mu 0 4 304 303 324 325
		f 4 -530 509 569 -511
		mu 0 4 305 304 325 326
		f 4 -531 510 570 -512
		mu 0 4 306 305 326 327
		f 4 -532 511 571 -513
		mu 0 4 307 306 327 328
		f 4 -533 512 572 -514
		mu 0 4 308 307 328 329
		f 4 -534 513 573 -515
		mu 0 4 309 308 329 330
		f 4 -535 514 574 -516
		mu 0 4 310 309 330 331
		f 4 -536 515 575 -517
		mu 0 4 311 310 331 332
		f 4 -537 516 576 -518
		mu 0 4 312 311 332 333
		f 4 -538 517 577 -519
		mu 0 4 313 312 333 334
		f 4 -539 518 578 -520
		mu 0 4 314 313 334 335
		f 4 -540 519 579 -501
		mu 0 4 295 314 335 316
		f 4 -561 540 600 -542
		mu 0 4 317 315 336 338
		f 4 -562 541 601 -543
		mu 0 4 318 317 338 339
		f 4 -563 542 602 -544
		mu 0 4 319 318 339 340
		f 4 -564 543 603 -545
		mu 0 4 320 319 340 341
		f 4 -565 544 604 -546
		mu 0 4 321 320 341 342
		f 4 -566 545 605 -547
		mu 0 4 322 321 342 343
		f 4 -567 546 606 -548
		mu 0 4 323 322 343 344
		f 4 -568 547 607 -549
		mu 0 4 324 323 344 345
		f 4 -569 548 608 -550
		mu 0 4 325 324 345 346
		f 4 -570 549 609 -551
		mu 0 4 326 325 346 347
		f 4 -571 550 610 -552
		mu 0 4 327 326 347 348
		f 4 -572 551 611 -553
		mu 0 4 328 327 348 349
		f 4 -573 552 612 -554
		mu 0 4 329 328 349 350
		f 4 -574 553 613 -555
		mu 0 4 330 329 350 351
		f 4 -575 554 614 -556
		mu 0 4 331 330 351 352
		f 4 -576 555 615 -557
		mu 0 4 332 331 352 353
		f 4 -577 556 616 -558
		mu 0 4 333 332 353 354
		f 4 -578 557 617 -559
		mu 0 4 334 333 354 355
		f 4 -579 558 618 -560
		mu 0 4 335 334 355 356
		f 4 -580 559 619 -541
		mu 0 4 316 335 356 337
		f 4 -601 580 640 -582
		mu 0 4 338 336 357 359
		f 4 -602 581 641 -583
		mu 0 4 339 338 359 360
		f 4 -603 582 642 -584
		mu 0 4 340 339 360 361
		f 4 -604 583 643 -585
		mu 0 4 341 340 361 362
		f 4 -605 584 644 -586
		mu 0 4 342 341 362 363
		f 4 -606 585 645 -587
		mu 0 4 343 342 363 364
		f 4 -607 586 646 -588
		mu 0 4 344 343 364 365
		f 4 -608 587 647 -589
		mu 0 4 345 344 365 366
		f 4 -609 588 648 -590
		mu 0 4 346 345 366 367
		f 4 -610 589 649 -591
		mu 0 4 347 346 367 368
		f 4 -611 590 650 -592
		mu 0 4 348 347 368 369
		f 4 -612 591 651 -593
		mu 0 4 349 348 369 370
		f 4 -613 592 652 -594
		mu 0 4 350 349 370 371
		f 4 -614 593 653 -595
		mu 0 4 351 350 371 372
		f 4 -615 594 654 -596
		mu 0 4 352 351 372 373
		f 4 -616 595 655 -597
		mu 0 4 353 352 373 374
		f 4 -617 596 656 -598
		mu 0 4 354 353 374 375
		f 4 -618 597 657 -599
		mu 0 4 355 354 375 376
		f 4 -619 598 658 -600
		mu 0 4 356 355 376 377
		f 4 -620 599 659 -581
		mu 0 4 337 356 377 358
		f 4 -641 620 -40 -622
		mu 0 4 359 357 61 60
		f 4 -642 621 -39 -623
		mu 0 4 360 359 60 59
		f 4 -643 622 -38 -624
		mu 0 4 361 360 59 58
		f 4 -644 623 -37 -625
		mu 0 4 362 361 58 57
		f 4 -645 624 -36 -626
		mu 0 4 363 362 57 56
		f 4 -646 625 -35 -627
		mu 0 4 364 363 56 55
		f 4 -647 626 -34 -628
		mu 0 4 365 364 55 54
		f 4 -648 627 -33 -629
		mu 0 4 366 365 54 53
		f 4 -649 628 -32 -630
		mu 0 4 367 366 53 52
		f 4 -650 629 -31 -631
		mu 0 4 368 367 52 51
		f 4 -651 630 -30 -632
		mu 0 4 369 368 51 50
		f 4 -652 631 -29 -633
		mu 0 4 370 369 50 49
		f 4 -653 632 -28 -634
		mu 0 4 371 370 49 48
		f 4 -654 633 -27 -635
		mu 0 4 372 371 48 47
		f 4 -655 634 -26 -636
		mu 0 4 373 372 47 46
		f 4 -656 635 -25 -637
		mu 0 4 374 373 46 45
		f 4 -657 636 -24 -638
		mu 0 4 375 374 45 44
		f 4 -658 637 -23 -639
		mu 0 4 376 375 44 43
		f 4 -659 638 -22 -640
		mu 0 4 377 376 43 42
		f 4 -660 639 -21 -621
		mu 0 4 358 377 42 41
		f 4 660 981 -681 -981
		mu 0 4 378 379 380 381
		f 4 661 982 -682 -982
		mu 0 4 379 382 383 380
		f 4 662 983 -683 -983
		mu 0 4 382 384 385 383
		f 4 663 984 -684 -984
		mu 0 4 384 386 387 385
		f 4 664 985 -685 -985
		mu 0 4 386 388 389 387
		f 4 665 986 -686 -986
		mu 0 4 388 390 391 389
		f 4 666 987 -687 -987
		mu 0 4 390 392 393 391
		f 4 667 988 -688 -988
		mu 0 4 392 394 395 393
		f 4 668 989 -689 -989
		mu 0 4 394 396 397 395
		f 4 669 990 -690 -990
		mu 0 4 396 398 399 397
		f 4 670 991 -691 -991
		mu 0 4 398 400 401 399
		f 4 671 992 -692 -992
		mu 0 4 400 402 403 401
		f 4 672 993 -693 -993
		mu 0 4 402 404 405 403
		f 4 673 994 -694 -994
		mu 0 4 404 406 407 405
		f 4 674 995 -695 -995
		mu 0 4 406 408 409 407
		f 4 675 996 -696 -996
		mu 0 4 408 410 411 409
		f 4 676 997 -697 -997
		mu 0 4 410 412 413 411
		f 4 677 998 -698 -998
		mu 0 4 412 414 415 413
		f 4 678 999 -699 -999
		mu 0 4 414 416 417 415
		f 4 679 980 -700 -1000
		mu 0 4 416 418 419 417
		f 4 680 1001 -701 -1001
		mu 0 4 381 380 420 421
		f 4 681 1002 -702 -1002
		mu 0 4 380 383 422 420
		f 4 682 1003 -703 -1003
		mu 0 4 383 385 423 422
		f 4 683 1004 -704 -1004
		mu 0 4 385 387 424 423
		f 4 684 1005 -705 -1005
		mu 0 4 387 389 425 424
		f 4 685 1006 -706 -1006
		mu 0 4 389 391 426 425
		f 4 686 1007 -707 -1007
		mu 0 4 391 393 427 426
		f 4 687 1008 -708 -1008
		mu 0 4 393 395 428 427
		f 4 688 1009 -709 -1009
		mu 0 4 395 397 429 428
		f 4 689 1010 -710 -1010
		mu 0 4 397 399 430 429
		f 4 690 1011 -711 -1011
		mu 0 4 399 401 431 430
		f 4 691 1012 -712 -1012
		mu 0 4 401 403 432 431
		f 4 692 1013 -713 -1013
		mu 0 4 403 405 433 432
		f 4 693 1014 -714 -1014
		mu 0 4 405 407 434 433
		f 4 694 1015 -715 -1015
		mu 0 4 407 409 435 434
		f 4 695 1016 -716 -1016
		mu 0 4 409 411 436 435
		f 4 696 1017 -717 -1017
		mu 0 4 411 413 437 436
		f 4 697 1018 -718 -1018
		mu 0 4 413 415 438 437
		f 4 698 1019 -719 -1019
		mu 0 4 415 417 439 438
		f 4 699 1000 -720 -1020
		mu 0 4 417 419 440 439
		f 4 700 1021 -721 -1021
		mu 0 4 421 420 441 442
		f 4 701 1022 -722 -1022
		mu 0 4 420 422 443 441
		f 4 702 1023 -723 -1023
		mu 0 4 422 423 444 443
		f 4 703 1024 -724 -1024
		mu 0 4 423 424 445 444
		f 4 704 1025 -725 -1025
		mu 0 4 424 425 446 445
		f 4 705 1026 -726 -1026
		mu 0 4 425 426 447 446
		f 4 706 1027 -727 -1027
		mu 0 4 426 427 448 447
		f 4 707 1028 -728 -1028
		mu 0 4 427 428 449 448
		f 4 708 1029 -729 -1029
		mu 0 4 428 429 450 449
		f 4 709 1030 -730 -1030
		mu 0 4 429 430 451 450
		f 4 710 1031 -731 -1031
		mu 0 4 430 431 452 451
		f 4 711 1032 -732 -1032
		mu 0 4 431 432 453 452
		f 4 712 1033 -733 -1033
		mu 0 4 432 433 454 453
		f 4 713 1034 -734 -1034
		mu 0 4 433 434 455 454
		f 4 714 1035 -735 -1035
		mu 0 4 434 435 456 455
		f 4 715 1036 -736 -1036
		mu 0 4 435 436 457 456
		f 4 716 1037 -737 -1037
		mu 0 4 436 437 458 457
		f 4 717 1038 -738 -1038
		mu 0 4 437 438 459 458
		f 4 718 1039 -739 -1039
		mu 0 4 438 439 460 459
		f 4 719 1020 -740 -1040
		mu 0 4 439 440 461 460
		f 4 720 1041 -741 -1041
		mu 0 4 442 441 462 463
		f 4 721 1042 -742 -1042
		mu 0 4 441 443 464 462
		f 4 722 1043 -743 -1043
		mu 0 4 443 444 465 464
		f 4 723 1044 -744 -1044
		mu 0 4 444 445 466 465
		f 4 724 1045 -745 -1045
		mu 0 4 445 446 467 466
		f 4 725 1046 -746 -1046
		mu 0 4 446 447 468 467
		f 4 726 1047 -747 -1047
		mu 0 4 447 448 469 468
		f 4 727 1048 -748 -1048
		mu 0 4 448 449 470 469
		f 4 728 1049 -749 -1049
		mu 0 4 449 450 471 470
		f 4 729 1050 -750 -1050
		mu 0 4 450 451 472 471
		f 4 730 1051 -751 -1051
		mu 0 4 451 452 473 472
		f 4 731 1052 -752 -1052
		mu 0 4 452 453 474 473
		f 4 732 1053 -753 -1053
		mu 0 4 453 454 475 474
		f 4 733 1054 -754 -1054
		mu 0 4 454 455 476 475
		f 4 734 1055 -755 -1055
		mu 0 4 455 456 477 476
		f 4 735 1056 -756 -1056
		mu 0 4 456 457 478 477
		f 4 736 1057 -757 -1057
		mu 0 4 457 458 479 478
		f 4 737 1058 -758 -1058
		mu 0 4 458 459 480 479
		f 4 738 1059 -759 -1059
		mu 0 4 459 460 481 480
		f 4 739 1040 -760 -1060
		mu 0 4 460 461 482 481
		f 4 740 1061 -761 -1061
		mu 0 4 463 462 483 484
		f 4 741 1062 -762 -1062
		mu 0 4 462 464 485 483
		f 4 742 1063 -763 -1063
		mu 0 4 464 465 486 485
		f 4 743 1064 -764 -1064
		mu 0 4 465 466 487 486
		f 4 744 1065 -765 -1065
		mu 0 4 466 467 488 487
		f 4 745 1066 -766 -1066
		mu 0 4 467 468 489 488
		f 4 746 1067 -767 -1067
		mu 0 4 468 469 490 489
		f 4 747 1068 -768 -1068
		mu 0 4 469 470 491 490
		f 4 748 1069 -769 -1069
		mu 0 4 470 471 492 491
		f 4 749 1070 -770 -1070
		mu 0 4 471 472 493 492
		f 4 750 1071 -771 -1071
		mu 0 4 472 473 494 493
		f 4 751 1072 -772 -1072
		mu 0 4 473 474 495 494
		f 4 752 1073 -773 -1073
		mu 0 4 474 475 496 495
		f 4 753 1074 -774 -1074
		mu 0 4 475 476 497 496
		f 4 754 1075 -775 -1075
		mu 0 4 476 477 498 497
		f 4 755 1076 -776 -1076
		mu 0 4 477 478 499 498
		f 4 756 1077 -777 -1077
		mu 0 4 478 479 500 499
		f 4 757 1078 -778 -1078
		mu 0 4 479 480 501 500
		f 4 758 1079 -779 -1079
		mu 0 4 480 481 502 501
		f 4 759 1060 -780 -1080
		mu 0 4 481 482 503 502
		f 4 760 1081 -781 -1081
		mu 0 4 484 483 504 505
		f 4 761 1082 -782 -1082
		mu 0 4 483 485 506 504
		f 4 762 1083 -783 -1083
		mu 0 4 485 486 507 506
		f 4 763 1084 -784 -1084
		mu 0 4 486 487 508 507
		f 4 764 1085 -785 -1085
		mu 0 4 487 488 509 508
		f 4 765 1086 -786 -1086
		mu 0 4 488 489 510 509
		f 4 766 1087 -787 -1087
		mu 0 4 489 490 511 510
		f 4 767 1088 -788 -1088
		mu 0 4 490 491 512 511
		f 4 768 1089 -789 -1089
		mu 0 4 491 492 513 512
		f 4 769 1090 -790 -1090
		mu 0 4 492 493 514 513
		f 4 770 1091 -791 -1091
		mu 0 4 493 494 515 514
		f 4 771 1092 -792 -1092
		mu 0 4 494 495 516 515
		f 4 772 1093 -793 -1093
		mu 0 4 495 496 517 516
		f 4 773 1094 -794 -1094
		mu 0 4 496 497 518 517
		f 4 774 1095 -795 -1095
		mu 0 4 497 498 519 518
		f 4 775 1096 -796 -1096
		mu 0 4 498 499 520 519
		f 4 776 1097 -797 -1097
		mu 0 4 499 500 521 520
		f 4 777 1098 -798 -1098
		mu 0 4 500 501 522 521
		f 4 778 1099 -799 -1099
		mu 0 4 501 502 523 522
		f 4 779 1080 -800 -1100
		mu 0 4 502 503 524 523
		f 4 780 1101 -801 -1101
		mu 0 4 505 504 525 526
		f 4 781 1102 -802 -1102
		mu 0 4 504 506 527 525
		f 4 782 1103 -803 -1103
		mu 0 4 506 507 528 527
		f 4 783 1104 -804 -1104
		mu 0 4 507 508 529 528
		f 4 784 1105 -805 -1105
		mu 0 4 508 509 530 529
		f 4 785 1106 -806 -1106
		mu 0 4 509 510 531 530
		f 4 786 1107 -807 -1107
		mu 0 4 510 511 532 531
		f 4 787 1108 -808 -1108
		mu 0 4 511 512 533 532
		f 4 788 1109 -809 -1109
		mu 0 4 512 513 534 533
		f 4 789 1110 -810 -1110
		mu 0 4 513 514 535 534
		f 4 790 1111 -811 -1111
		mu 0 4 514 515 536 535
		f 4 791 1112 -812 -1112
		mu 0 4 515 516 537 536
		f 4 792 1113 -813 -1113
		mu 0 4 516 517 538 537
		f 4 793 1114 -814 -1114
		mu 0 4 517 518 539 538
		f 4 794 1115 -815 -1115
		mu 0 4 518 519 540 539
		f 4 795 1116 -816 -1116
		mu 0 4 519 520 541 540
		f 4 796 1117 -817 -1117
		mu 0 4 520 521 542 541
		f 4 797 1118 -818 -1118
		mu 0 4 521 522 543 542
		f 4 798 1119 -819 -1119
		mu 0 4 522 523 544 543
		f 4 799 1100 -820 -1120
		mu 0 4 523 524 545 544
		f 4 800 1121 -821 -1121
		mu 0 4 526 525 546 547
		f 4 801 1122 -822 -1122
		mu 0 4 525 527 548 546
		f 4 802 1123 -823 -1123
		mu 0 4 527 528 549 548
		f 4 803 1124 -824 -1124
		mu 0 4 528 529 550 549
		f 4 804 1125 -825 -1125
		mu 0 4 529 530 551 550
		f 4 805 1126 -826 -1126
		mu 0 4 530 531 552 551
		f 4 806 1127 -827 -1127
		mu 0 4 531 532 553 552
		f 4 807 1128 -828 -1128
		mu 0 4 532 533 554 553
		f 4 808 1129 -829 -1129
		mu 0 4 533 534 555 554
		f 4 809 1130 -830 -1130
		mu 0 4 534 535 556 555
		f 4 810 1131 -831 -1131
		mu 0 4 535 536 557 556
		f 4 811 1132 -832 -1132
		mu 0 4 536 537 558 557
		f 4 812 1133 -833 -1133
		mu 0 4 537 538 559 558
		f 4 813 1134 -834 -1134
		mu 0 4 538 539 560 559
		f 4 814 1135 -835 -1135
		mu 0 4 539 540 561 560
		f 4 815 1136 -836 -1136
		mu 0 4 540 541 562 561
		f 4 816 1137 -837 -1137
		mu 0 4 541 542 563 562
		f 4 817 1138 -838 -1138
		mu 0 4 542 543 564 563
		f 4 818 1139 -839 -1139
		mu 0 4 543 544 565 564
		f 4 819 1120 -840 -1140
		mu 0 4 544 545 566 565;
	setAttr ".fc[500:679]"
		f 4 820 1141 -841 -1141
		mu 0 4 547 546 567 568
		f 4 821 1142 -842 -1142
		mu 0 4 546 548 569 567
		f 4 822 1143 -843 -1143
		mu 0 4 548 549 570 569
		f 4 823 1144 -844 -1144
		mu 0 4 549 550 571 570
		f 4 824 1145 -845 -1145
		mu 0 4 550 551 572 571
		f 4 825 1146 -846 -1146
		mu 0 4 551 552 573 572
		f 4 826 1147 -847 -1147
		mu 0 4 552 553 574 573
		f 4 827 1148 -848 -1148
		mu 0 4 553 554 575 574
		f 4 828 1149 -849 -1149
		mu 0 4 554 555 576 575
		f 4 829 1150 -850 -1150
		mu 0 4 555 556 577 576
		f 4 830 1151 -851 -1151
		mu 0 4 556 557 578 577
		f 4 831 1152 -852 -1152
		mu 0 4 557 558 579 578
		f 4 832 1153 -853 -1153
		mu 0 4 558 559 580 579
		f 4 833 1154 -854 -1154
		mu 0 4 559 560 581 580
		f 4 834 1155 -855 -1155
		mu 0 4 560 561 582 581
		f 4 835 1156 -856 -1156
		mu 0 4 561 562 583 582
		f 4 836 1157 -857 -1157
		mu 0 4 562 563 584 583
		f 4 837 1158 -858 -1158
		mu 0 4 563 564 585 584
		f 4 838 1159 -859 -1159
		mu 0 4 564 565 586 585
		f 4 839 1140 -860 -1160
		mu 0 4 565 566 587 586
		f 4 840 1161 -861 -1161
		mu 0 4 568 567 588 589
		f 4 841 1162 -862 -1162
		mu 0 4 567 569 590 588
		f 4 842 1163 -863 -1163
		mu 0 4 569 570 591 590
		f 4 843 1164 -864 -1164
		mu 0 4 570 571 592 591
		f 4 844 1165 -865 -1165
		mu 0 4 571 572 593 592
		f 4 845 1166 -866 -1166
		mu 0 4 572 573 594 593
		f 4 846 1167 -867 -1167
		mu 0 4 573 574 595 594
		f 4 847 1168 -868 -1168
		mu 0 4 574 575 596 595
		f 4 848 1169 -869 -1169
		mu 0 4 575 576 597 596
		f 4 849 1170 -870 -1170
		mu 0 4 576 577 598 597
		f 4 850 1171 -871 -1171
		mu 0 4 577 578 599 598
		f 4 851 1172 -872 -1172
		mu 0 4 578 579 600 599
		f 4 852 1173 -873 -1173
		mu 0 4 579 580 601 600
		f 4 853 1174 -874 -1174
		mu 0 4 580 581 602 601
		f 4 854 1175 -875 -1175
		mu 0 4 581 582 603 602
		f 4 855 1176 -876 -1176
		mu 0 4 582 583 604 603
		f 4 856 1177 -877 -1177
		mu 0 4 583 584 605 604
		f 4 857 1178 -878 -1178
		mu 0 4 584 585 606 605
		f 4 858 1179 -879 -1179
		mu 0 4 585 586 607 606
		f 4 859 1160 -880 -1180
		mu 0 4 586 587 608 607
		f 4 860 1181 -881 -1181
		mu 0 4 589 588 609 610
		f 4 861 1182 -882 -1182
		mu 0 4 588 590 611 609
		f 4 862 1183 -883 -1183
		mu 0 4 590 591 612 611
		f 4 863 1184 -884 -1184
		mu 0 4 591 592 613 612
		f 4 864 1185 -885 -1185
		mu 0 4 592 593 614 613
		f 4 865 1186 -886 -1186
		mu 0 4 593 594 615 614
		f 4 866 1187 -887 -1187
		mu 0 4 594 595 616 615
		f 4 867 1188 -888 -1188
		mu 0 4 595 596 617 616
		f 4 868 1189 -889 -1189
		mu 0 4 596 597 618 617
		f 4 869 1190 -890 -1190
		mu 0 4 597 598 619 618
		f 4 870 1191 -891 -1191
		mu 0 4 598 599 620 619
		f 4 871 1192 -892 -1192
		mu 0 4 599 600 621 620
		f 4 872 1193 -893 -1193
		mu 0 4 600 601 622 621
		f 4 873 1194 -894 -1194
		mu 0 4 601 602 623 622
		f 4 874 1195 -895 -1195
		mu 0 4 602 603 624 623
		f 4 875 1196 -896 -1196
		mu 0 4 603 604 625 624
		f 4 876 1197 -897 -1197
		mu 0 4 604 605 626 625
		f 4 877 1198 -898 -1198
		mu 0 4 605 606 627 626
		f 4 878 1199 -899 -1199
		mu 0 4 606 607 628 627
		f 4 879 1180 -900 -1200
		mu 0 4 607 608 629 628
		f 4 880 1201 -901 -1201
		mu 0 4 610 609 630 631
		f 4 881 1202 -902 -1202
		mu 0 4 609 611 632 630
		f 4 882 1203 -903 -1203
		mu 0 4 611 612 633 632
		f 4 883 1204 -904 -1204
		mu 0 4 612 613 634 633
		f 4 884 1205 -905 -1205
		mu 0 4 613 614 635 634
		f 4 885 1206 -906 -1206
		mu 0 4 614 615 636 635
		f 4 886 1207 -907 -1207
		mu 0 4 615 616 637 636
		f 4 887 1208 -908 -1208
		mu 0 4 616 617 638 637
		f 4 888 1209 -909 -1209
		mu 0 4 617 618 639 638
		f 4 889 1210 -910 -1210
		mu 0 4 618 619 640 639
		f 4 890 1211 -911 -1211
		mu 0 4 619 620 641 640
		f 4 891 1212 -912 -1212
		mu 0 4 620 621 642 641
		f 4 892 1213 -913 -1213
		mu 0 4 621 622 643 642
		f 4 893 1214 -914 -1214
		mu 0 4 622 623 644 643
		f 4 894 1215 -915 -1215
		mu 0 4 623 624 645 644
		f 4 895 1216 -916 -1216
		mu 0 4 624 625 646 645
		f 4 896 1217 -917 -1217
		mu 0 4 625 626 647 646
		f 4 897 1218 -918 -1218
		mu 0 4 626 627 648 647
		f 4 898 1219 -919 -1219
		mu 0 4 627 628 649 648
		f 4 899 1200 -920 -1220
		mu 0 4 628 629 650 649
		f 4 900 1221 -921 -1221
		mu 0 4 631 630 651 652
		f 4 901 1222 -922 -1222
		mu 0 4 630 632 653 651
		f 4 902 1223 -923 -1223
		mu 0 4 632 633 654 653
		f 4 903 1224 -924 -1224
		mu 0 4 633 634 655 654
		f 4 904 1225 -925 -1225
		mu 0 4 634 635 656 655
		f 4 905 1226 -926 -1226
		mu 0 4 635 636 657 656
		f 4 906 1227 -927 -1227
		mu 0 4 636 637 658 657
		f 4 907 1228 -928 -1228
		mu 0 4 637 638 659 658
		f 4 908 1229 -929 -1229
		mu 0 4 638 639 660 659
		f 4 909 1230 -930 -1230
		mu 0 4 639 640 661 660
		f 4 910 1231 -931 -1231
		mu 0 4 640 641 662 661
		f 4 911 1232 -932 -1232
		mu 0 4 641 642 663 662
		f 4 912 1233 -933 -1233
		mu 0 4 642 643 664 663
		f 4 913 1234 -934 -1234
		mu 0 4 643 644 665 664
		f 4 914 1235 -935 -1235
		mu 0 4 644 645 666 665
		f 4 915 1236 -936 -1236
		mu 0 4 645 646 667 666
		f 4 916 1237 -937 -1237
		mu 0 4 646 647 668 667
		f 4 917 1238 -938 -1238
		mu 0 4 647 648 669 668
		f 4 918 1239 -939 -1239
		mu 0 4 648 649 670 669
		f 4 919 1220 -940 -1240
		mu 0 4 649 650 671 670
		f 4 920 1241 -941 -1241
		mu 0 4 652 651 672 673
		f 4 921 1242 -942 -1242
		mu 0 4 651 653 674 672
		f 4 922 1243 -943 -1243
		mu 0 4 653 654 675 674
		f 4 923 1244 -944 -1244
		mu 0 4 654 655 676 675
		f 4 924 1245 -945 -1245
		mu 0 4 655 656 677 676
		f 4 925 1246 -946 -1246
		mu 0 4 656 657 678 677
		f 4 926 1247 -947 -1247
		mu 0 4 657 658 679 678
		f 4 927 1248 -948 -1248
		mu 0 4 658 659 680 679
		f 4 928 1249 -949 -1249
		mu 0 4 659 660 681 680
		f 4 929 1250 -950 -1250
		mu 0 4 660 661 682 681
		f 4 930 1251 -951 -1251
		mu 0 4 661 662 683 682
		f 4 931 1252 -952 -1252
		mu 0 4 662 663 684 683
		f 4 932 1253 -953 -1253
		mu 0 4 663 664 685 684
		f 4 933 1254 -954 -1254
		mu 0 4 664 665 686 685
		f 4 934 1255 -955 -1255
		mu 0 4 665 666 687 686
		f 4 935 1256 -956 -1256
		mu 0 4 666 667 688 687
		f 4 936 1257 -957 -1257
		mu 0 4 667 668 689 688
		f 4 937 1258 -958 -1258
		mu 0 4 668 669 690 689
		f 4 938 1259 -959 -1259
		mu 0 4 669 670 691 690
		f 4 939 1240 -960 -1260
		mu 0 4 670 671 692 691
		f 4 940 1261 -961 -1261
		mu 0 4 673 672 693 694
		f 4 941 1262 -962 -1262
		mu 0 4 672 674 695 693
		f 4 942 1263 -963 -1263
		mu 0 4 674 675 696 695
		f 4 943 1264 -964 -1264
		mu 0 4 675 676 697 696
		f 4 944 1265 -965 -1265
		mu 0 4 676 677 698 697
		f 4 945 1266 -966 -1266
		mu 0 4 677 678 699 698
		f 4 946 1267 -967 -1267
		mu 0 4 678 679 700 699
		f 4 947 1268 -968 -1268
		mu 0 4 679 680 701 700
		f 4 948 1269 -969 -1269
		mu 0 4 680 681 702 701
		f 4 949 1270 -970 -1270
		mu 0 4 681 682 703 702
		f 4 950 1271 -971 -1271
		mu 0 4 682 683 704 703
		f 4 951 1272 -972 -1272
		mu 0 4 683 684 705 704
		f 4 952 1273 -973 -1273
		mu 0 4 684 685 706 705
		f 4 953 1274 -974 -1274
		mu 0 4 685 686 707 706
		f 4 954 1275 -975 -1275
		mu 0 4 686 687 708 707
		f 4 955 1276 -976 -1276
		mu 0 4 687 688 709 708
		f 4 956 1277 -977 -1277
		mu 0 4 688 689 710 709
		f 4 957 1278 -978 -1278
		mu 0 4 689 690 711 710
		f 4 958 1279 -979 -1279
		mu 0 4 690 691 712 711
		f 4 959 1260 -980 -1280
		mu 0 4 691 692 713 712
		f 3 -661 -1281 1281
		mu 0 3 714 715 716
		f 3 -662 -1282 1282
		mu 0 3 717 714 716
		f 3 -663 -1283 1283
		mu 0 3 718 717 716
		f 3 -664 -1284 1284
		mu 0 3 719 718 716
		f 3 -665 -1285 1285
		mu 0 3 720 719 716
		f 3 -666 -1286 1286
		mu 0 3 721 720 716
		f 3 -667 -1287 1287
		mu 0 3 722 721 716
		f 3 -668 -1288 1288
		mu 0 3 723 722 716
		f 3 -669 -1289 1289
		mu 0 3 724 723 716
		f 3 -670 -1290 1290
		mu 0 3 725 724 716
		f 3 -671 -1291 1291
		mu 0 3 726 725 716
		f 3 -672 -1292 1292
		mu 0 3 727 726 716
		f 3 -673 -1293 1293
		mu 0 3 728 727 716
		f 3 -674 -1294 1294
		mu 0 3 729 728 716
		f 3 -675 -1295 1295
		mu 0 3 730 729 716
		f 3 -676 -1296 1296
		mu 0 3 731 730 716
		f 3 -677 -1297 1297
		mu 0 3 732 731 716
		f 3 -678 -1298 1298
		mu 0 3 733 732 716
		f 3 -679 -1299 1299
		mu 0 3 734 733 716
		f 3 -680 -1300 1280
		mu 0 3 715 734 716
		f 3 960 1301 -1301
		mu 0 3 735 736 737
		f 3 961 1302 -1302
		mu 0 3 736 738 737
		f 3 962 1303 -1303
		mu 0 3 738 739 737
		f 3 963 1304 -1304
		mu 0 3 739 740 737
		f 3 964 1305 -1305
		mu 0 3 740 741 737
		f 3 965 1306 -1306
		mu 0 3 741 742 737
		f 3 966 1307 -1307
		mu 0 3 742 743 737
		f 3 967 1308 -1308
		mu 0 3 743 744 737
		f 3 968 1309 -1309
		mu 0 3 744 745 737
		f 3 969 1310 -1310
		mu 0 3 745 746 737
		f 3 970 1311 -1311
		mu 0 3 746 747 737
		f 3 971 1312 -1312
		mu 0 3 747 748 737
		f 3 972 1313 -1313
		mu 0 3 748 749 737
		f 3 973 1314 -1314
		mu 0 3 749 750 737
		f 3 974 1315 -1315
		mu 0 3 750 751 737
		f 3 975 1316 -1316
		mu 0 3 751 752 737
		f 3 976 1317 -1317
		mu 0 3 752 753 737
		f 3 977 1318 -1318
		mu 0 3 753 754 737
		f 3 978 1319 -1319
		mu 0 3 754 755 737
		f 3 979 1300 -1320
		mu 0 3 755 735 737;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AECE7769-4542-4311-26F5-26874BE878F1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "74B533E3-4858-5EDC-0E84-A59B7940C103";
	setAttr ".sver" 1;
	setAttr ".gi" yes;
	setAttr ".rfc" yes;
	setAttr ".pe" 2;
	setAttr ".se" 3;
	setAttr ".cmph" 60;
	setAttr ".csdu" 0;
	setAttr ".csdp" 1;
	setAttr ".cfile" -type "string" "";
	setAttr ".cfile2" -type "string" "";
	setAttr ".casf" -type "string" "";
	setAttr ".casf2" -type "string" "";
	setAttr ".st" 3;
	setAttr ".msr" 6;
	setAttr ".aaft" 3;
	setAttr ".aafs" 2;
	setAttr ".dma" 24;
	setAttr ".dam" 1;
	setAttr ".dac" 1.5;
	setAttr ".pt" 0.0099999997764825821;
	setAttr ".pmt" 0;
	setAttr ".sd" 1000;
	setAttr ".ss" 0.01;
	setAttr ".pfts" 20;
	setAttr ".ufg" yes;
	setAttr ".fnm" -type "string" "";
	setAttr ".lcfnm" -type "string" "";
	setAttr ".asf" -type "string" "";
	setAttr ".lcasf" -type "string" "";
	setAttr ".urtrshd" yes;
	setAttr ".rtrshd" 2;
	setAttr ".lightCacheType" 1;
	setAttr ".ifile" -type "string" "";
	setAttr ".ifile2" -type "string" "";
	setAttr ".iasf" -type "string" "";
	setAttr ".iasf2" -type "string" "";
	setAttr ".pmfile" -type "string" "";
	setAttr ".pmfile2" -type "string" "";
	setAttr ".pmasf" -type "string" "";
	setAttr ".pmasf2" -type "string" "";
	setAttr ".dmcstd" yes;
	setAttr ".dmculs" no;
	setAttr ".dmcsat" 0.004999999888241291;
	setAttr ".cmtp" 6;
	setAttr ".cmao" 2;
	setAttr ".cg" 2.2000000476837158;
	setAttr ".mtah" yes;
	setAttr ".rgbcs" -1;
	setAttr ".suv" 0;
	setAttr ".srflc" 1;
	setAttr ".seu" yes;
	setAttr ".gomsb" yes;
	setAttr ".gormio" yes;
	setAttr ".gocle" yes;
	setAttr ".gopl" 2;
	setAttr ".gopv" yes;
	setAttr ".gopvgs" 1;
	setAttr ".wi" 960;
	setAttr ".he" 540;
	setAttr ".aspr" 1.7777780294418335;
	setAttr ".productionGPUResizeTextures" 0;
	setAttr ".autolt" 0;
	setAttr ".jpegq" 100;
	setAttr ".vfbOn" yes;
	setAttr ".vfbSA" -type "Int32Array" 1092 0 4357 1 4345 0 1
		 4337 1700143739 1869181810 825893486 1632379436 1936876921 578501154 1936876886 577662825 573321530 1935764579 574235251
		 1953460082 1881287714 1701867378 1701409906 2067407475 1919252002 1852795251 741423650 1835101730 574235237 1696738338 1818386798
		 1949966949 744846706 1886938402 577007201 1818322490 573334899 1634760805 1650549870 975332716 1702195828 1931619453 1814913653
		 1919252833 1530536563 1818436219 577991521 1751327290 779317089 1886611812 1132028268 1701999215 1869182051 573317742 1886351984
		 1769239141 975336293 1702240891 1869181810 825893486 1634607660 975332717 1936278562 2036427888 1919894304 1952671090 577662825
		 1852121644 1701601889 1920219682 573334901 1634760805 975332462 1702195828 2019893804 1684955504 1701601889 1920219682 573334901
		 1718579824 577072233 573321786 1869641829 1701999987 774912546 1931619376 1600484961 1600284530 1835627120 1986622569 975336293
		 1936482662 1864510565 1601136995 1701603686 1126316578 1917857594 1634887535 1766203501 796091756 1869903169 1802724708 2036419887
		 842019425 1701982004 1920298867 796091747 1330201423 1852793645 1936157030 2036419887 842019425 1701063986 1819631974 1868771188
		 1734960750 1768124206 573317743 1869177711 1819239263 1886614127 577069921 573322554 1869177711 1936286815 2036427888 1769366884
		 975332707 1864510512 1601136995 2003134838 1851880052 1919903347 809116269 1668227628 1935634281 1768257121 1634560366 975332711
		 1936482662 1763847269 1717527395 577072233 740434490 1667459362 1869770847 1701603686 1952539743 1849303649 745303157 1667459362
		 1852142175 1953392996 578055781 573321274 1886088290 1852793716 1715085942 1702063201 1931619453 1814913653 1919252833 1530536563
		 1818436219 577991521 1751327290 779317089 778462578 1920298867 1868981603 1919247468 1881287714 1701867378 1701409906 2067407475
		 1919252002 1852795251 741423650 1835101730 574235237 1920298835 540697955 574768978 1852121644 1701601889 1920219682 573334901
		 1634760805 975332462 1936482662 1696738405 1851879544 1818386788 1715085925 1702063201 1818370604 1600417381 1701080941 741358114
		 1634758434 2037672291 774978082 1931619376 1601662824 1986359920 578250089 1970435130 1931619429 1952408434 577073273 746401850
		 1651864354 2036427821 577991269 578509626 1935764579 574235251 1868654691 1701981811 1768697446 1836345447 740456553 1869770786
		 1953654128 577987945 1981971258 1769173605 975335023 1847733297 577072481 1766597178 1299474535 740456553 1634624802 577072226
		 1818322490 573334899 1634760805 975332462 1936482662 1696738405 1851879544 1818386788 1949966949 2103801202 1970479660 1634479458
		 1936876921 1566259746 578497661 1935764579 574235251 1868654691 1701981811 1868770918 1936683117 577074281 1919951404 1919250543
		 1936025972 578501154 1936876918 577662825 573321530 1701667182 1126316578 1869639023 1702127987 1696738338 1818386798 1715085925
		 1702063201 2019893804 1684955504 1634089506 744846188 1886938402 1633971809 577072226 1970435130 1646406757 1684956524 1685024095
		 809116261 1886331436 1953063777 825893497 573321262 2003789939 1701998687 2003134838 1920219682 746415477 1651864354 2036427821
		 577991269 2103270202 2066513245 1634493218 975336307 1634231074 1882092399 1701064293 1936289646 740455013 1869770786 1953654128
		 577987945 1981971258 1769173605 975335023 1847733297 577072481 1698964026 1936289646 540701285 1986096757 1634494817 577072226
		 1852121644 1701601889 1634089506 744846188 1886938402 577007201 1818322490 573334899 1634760805 1650549870 975332716 1702195828
		 1818370604 1600417381 1701080941 741358114 1634758434 2037672291 774978082 1931619376 1601662824 1986359920 578250089 1970435130
		 1629629541 1986622563 1715085925 1702063201 1919951404 1952805733 741489186 1920234274 1952935525 825893480 573321262 1768186226
		 975336309 808333361 2003313196 1701012289 1634887020 975332724 1702195828 1701061164 1936289646 1834971749 577070191 746402106
		 1651864354 2036427821 577991269 2103270202 1663204140 1936941420 1663187490 1936679272 778399790 1918986355 778986864 1920298082
		 1881287714 1701867378 1701409906 2067407475 1919252002 1852795251 741423650 1835101730 574235237 1918986323 795764080 1920298050
		 1696738338 1818386798 1715085925 1702063201 2019893804 1684955504 1634089506 744846188 1886938402 1633971809 577072226 1970435130
		 1646406757 1684956524 1685024095 809116261 1886331436 1953063777 825893497 573321262 2003789939 1701998687 2003134838 1920219682
		 573334901 1918986355 1601070448 1920298082 1836016479 1702131056 1634089506 744846188 1634235170 1852141682 1869439327 578055797
		 808333626 1752375852 1701868129 1634885486 1937074532 774912546 1646406709 1601336684 1768186226 975336309 858992177 808464432
		 959591472 746403121 1651864354 2036427821 577991269 2103270202 1663204140 1936941420 1663187490 1936679272 778399790 1936614764
		 740456550 1869770786 1953654128 577987945 1981971258 1769173605 975335023 1847733297 577072481 1699488314 1159754606 1667589734
		 740455284 1634624802 577072226 1818322490 573334899 1634760805 975332462 1936482662 1696738405 1851879544 1818386788 1949966949
		 744846706 1701601826 1834968174 577070191 573321786 1667330159 578385001 808333626 1752375852 1885304687 1769366898 975337317
		 1702195828 1818698284 1600483937 975335023 1936482662 1730292837 1701994860 2053731167 859447909 741355056 1634494242 2002740594
		 1751607653 825893492 573321262 1869573218 1702322029 1952999273 774912546 808464436 808464432 741751093 1634494242 1952408946
		 1936028264 1684828008 774978082 1713515568 1702128745 1869766514 1769234804 975335023 741355056 1952543522 1952543349 577662825
		 808333626 1634214444 1635214450 1633641842 1818583907 1952543333 975332453 1702195828 1868767788 2002740332 577598049 1818322490
		 573334899 1702129257 1952670066 577074793 1970435130 1931619429 1600484961 1918987367 1949966949 744846706 1801544226 1818713957
		 1600483937 1734960503 975336552 1936482662 1663183973 1952540018 1717919589 1952671078 1701994355 1953265011 1634231135 1818586734
		 1634089506 744846188 1634624802 1600482402 1684106338 975336293 1702195828 1769153068 577987940 573322810 1684106338 1918858085
		 1952543855 577662825 775237946 1931619376 1634038388 1818386283 975336053 808594992 808464432 959590448 1965173816 1734305139
		 1769234802 975333230 1936482662 1730292837 1769234802 1683973998 1769172581 975337844 808333365 1919361580 1852404833 1701601127
		 1752459118 808532514 573321262 1952543335 1600613993 1836019578 775240226 1730292784 1769234802 1935632238 1701867372 774912546
		 1730292784 1769234802 1935632238 1852142196 577270887 808333626 1937056300 1668243301 1937075299 577662825 1818322490 573334899
		 1818452847 1869181813 2037604206 1952804205 576940402 1970435130 1864510565 1970037603 1852795251 1919250527 1953391971 808598050
		 573321262 1818452847 1869181813 1869766510 1769234804 975335023 741355056 1667460898 1769174380 1633644143 975332210 774910001
		 1965173808 1935631731 1952543331 975333475 1936482662 1931619429 1935635043 1701670265 1667854964 1920219682 573334901 1601332083
		 1953784176 577663589 573321274 1601332083 1953265005 1634494313 1667196274 1953396079 741423650 1919120162 1852138591 2037672307
		 808794658 573321262 1601332083 1735288172 975333492 808333365 1668489772 1819500402 1600483439 1769103734 1701015137 774912546
		 1931619376 2002743907 1752458345 1918989919 1668178281 809116261 573321262 1601332083 1684366707 741358114 1919120162 1869576799
		 842670701 573321262 1601332083 1635020658 1852795252 774912546 1931619376 1935635043 1852142196 577270887 808333626 1937056300
		 1969512293 975336563 1936482662 1679961189 1601467253 1953784176 577663589 573321274 1953723748 1852138591 2037672307 808794658
		 573321262 1953723748 1684107871 1601402217 1769103734 1701015137 774912546 1679961136 1601467253 1953786218 975336037 741355056
		 1937073186 1870290804 975334767 741355058 1937073186 1869766516 1769234804 975335023 741355056 1937073186 1953718132 1735288178
		 975333492 741355057 1634494242 1969186162 1868522867 1635021666 1600482403 1734438249 1715085925 1702063201 1818698284 1600483937
		 1953718895 1701602145 1634560351 1885300071 577270881 740434490 1935830818 1835622260 1600481121 1836019578 774978082 1864510512
		 1601467234 1734438249 1869766501 1769234804 975335023 741355056 1935830818 1835622260 1600481121 1701999731 1752459118 774978082
		 1965173808 1717527923 1702128745 1835622258 577070945 1818322490 573334899 1918987367 1835622245 1600481121 1752457584 572668450
		 1937056300 1751342949 1634561906 1600350580 1919246945 1769234802 975335023 1936482662 1663183973 1836020328 1667855457 1700946271
		 1952543346 577662825 825110586 808464432 825241648 573323572 1701667171 1952407922 577073273 573321274 1919251571 1834970981
		 577070191 746401850 1651864354 2036427821 577991269 2103270202 2066513245 1634493218 975336307 1634231074 1865315183 1819436406
		 1932425569 1886216564 1881287714 1701867378 1701409906 2067407475 1919252002 1852795251 741423650 1835101730 574235237 1835103315
		 573317744 1650552421 975332716 1936482662 1696738405 1851879544 1715085924 1702063201 2019893804 1684955504 1701601889 1920219682
		 573334901 1835103347 1869111152 1601857906 1734962273 825893486 1953702444 1601203553 1953654134 1768710495 975335015 573321779
		 1835103347 1868783472 577924972 774986554 774974512 774974512 573332784 1835103347 1868980080 975336558 1702240891 1869181810
		 825893486 1869619756 1601465961 1702521203 808532514 1634083372 2037148013 741358114 2037674786 975332716 1998728240 1751607653
		 809116276 1634083372 975332707 1769095458 2099407969 1953702444 1601203553 1769108595 975333230 1702240891 1869181810 825893486
		 1634869804 1953718135 1735289202 572668450 1768301100 1600938350 1769108595 975333230 2105352738 1970479660 1634479458 1936876921
		 1566259746 746413437 1734693410 1198419817 975335013 1702240891 1869181810 825893486 1869423148 1600484213 1819045734 1700755311
		 1818386798 975332453 1936482662 1830956133 1702065519 1819240031 1601662828 1852403568 1869373300 1684368227 1634089506 744846188
		 1970236706 1717527923 1869376623 1869635447 1601465961 809116280 1869423148 1600484213 1819045734 1885304687 1953393007 975337823
		 573340976 1684956498 1767273061 975337317 1702240891 1869181810 825893486 1852121644 1701601889 1852142175 1601332580 1768383858
		 975335023 1936482662 1914842213 1701080677 1701994354 1852795239 573601887 774974778 1914842160 1701080677 1701994354 1852795239
		 573602143 774974778 1914842160 1701080677 1701994354 1852795239 573667423 774974778 1914842160 1701080677 1701994354 1852795239
		 573667679 774974778 1981951024 1601660265 577004914 1970435130 1981951077 1601660265 1701147239 1949966958 744846706 1701410338
		 1818386295 975332725 1702195828 1769349676 1834973029 577728111 1818322490 573334899 1869377379 1818451826 1601203553 1701080941
		 959855138 1868767788 1601335148 1835101283 1852792688 1920219682 573334901 1600484213 1702390128 1935761260 1952671088 577662815
		 1818322490 573334899 1600484213 1869504880 1634558322 1701410399 1852792695 1634089506 744846188 2020175906 1767861349 1601136238
		 1801678700 975332453 1936482662 1881287781 1818589289 1718511967 1868783471 1667592818 1600415092 1869377379 975336306 1936482662
		 1931619429 1701995892 1869438831 975332708 573340976 1769235265 577990255 1981971258 1769173605 975335023 1881287729 1702065505
		 1599230025 1667590243 577004907 1818322490 573334899 1953719668 1601398098 1768186226 893002351 1948396593 1383363429 1667199845
		 1801676136 975332453 1936482662 1679961189 1735746149 1684105299 1600613993 1768186226 893002351 1679961142 1735746149 1684105299
		 1600613993 1667590243 577004907 1818322490 573334899 1919251571 1867345765 1918854500 1869177953 943143458 1953702444 1868919397
		 1701080909 1701339999 1684368227 1634089506 2103800684 125 ;
	setAttr ".vfbSyncM" yes;
	setAttr ".mSceneName" -type "string" "D:/Westworld/git_01_3/git_home2/confirm/humanarm10.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6B3B78D4-4844-75F0-3B07-95B80CAA041D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "090A4762-4BAF-E8C1-F1C1-D7A970F75099";
createNode displayLayerManager -n "layerManager";
	rename -uid "D28133E6-4C54-5F4A-CE81-E5B659AC188A";
createNode displayLayer -n "defaultLayer";
	rename -uid "2CFFE4B2-473F-DD1C-F592-6FA60C317ED7";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "04C3BBB6-48A7-1B5E-4546-C7AB56848832";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2B249D4A-456F-82E5-2382-8B98FD6D74D1";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "D0C0A573-4872-E401-3BA2-5689B7A313A9";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "C08989A4-4353-8CCB-549B-71886F932BEE";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "6141D405-4E4B-B259-A3F2-24989E60C4A4";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "577835D5-4757-B6A2-2ECD-C5A14119BA3B";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "41C3437A-46A7-3D0E-52FA-A8AFB24A5FD3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1773\n            -height 709\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 0\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 0\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1773\\n    -height 709\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1773\\n    -height 709\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "47BB325C-4631-1451-32E9-FAA00BF975CC";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 200 -ast -1 -aet 1800 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "5DBEEAD5-43B3-8032-C757-90B688E0181A";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "AF829162-4BE6-07D7-61E0-AEBD4B6CDC22";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 2;
	setAttr ".tol" 0.00032808400000000003;
createNode distanceBetween -n "distanceBetween1";
	rename -uid "933BE124-4C54-3352-7807-BBB5EF5B9CD6";
createNode condition -n "condition1";
	rename -uid "714146AB-44C7-A386-2AA6-0D9C3599388A";
	setAttr ".op" 3;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "A5686555-4F60-46E8-B524-E2A32D44445E";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 5;
	setAttr ".tol" 0.00032808400000000003;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "93D2437F-4CB9-79C5-47CC-26AF2A6DF56F";
	setAttr ".i2" -type "float3" 10.201 1 1 ;
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "97A7C277-43B1-3A5D-F9D9-1D969EBC7D26";
	setAttr ".op" 2;
createNode multiplyDivide -n "multiplyDivide3";
	rename -uid "3B55E03A-47FD-0EB1-9D54-BE8F3526FD64";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "multiplyDivide4";
	rename -uid "34D4B95B-4C9F-68E6-C798-95AE9F95D804";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "B07CC501-4DBD-B7F4-B2C6-D49D6DBF399B";
createNode multiplyDivide -n "multiplyDivide9";
	rename -uid "474D9670-4A98-2825-09F7-2EA009169238";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode plusMinusAverage -n "armpit_plusMinusAverage1";
	rename -uid "7F5A1F9A-4079-C5D2-EFCD-DC945217DE47";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
	setAttr ".i2[0]" -type "float2" -2.3854123e-15 0;
createNode multiplyDivide -n "armpit_multiplyDivide1";
	rename -uid "4BD21292-4E8C-160B-C630-AB884D93B1E8";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode blendColors -n "blendColors2";
	rename -uid "A7AE195C-436B-5CE0-A640-36AAE7C034F1";
createNode reverse -n "reverse1";
	rename -uid "A419A775-4C92-EFF4-BA33-548F75E6F5F7";
createNode unitConversion -n "unitConversion1";
	rename -uid "449EF5F5-4677-AF93-C21B-AFBE7D66278D";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "armpit_plusMinusAverage2";
	rename -uid "D9123481-40A8-A1DF-BC9F-55BA0FCB62D3";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
	setAttr ".i2[0]" -type "float2" -16.96670914 0;
createNode multiplyDivide -n "armpit_multiplyDivide2";
	rename -uid "E4D87FD1-4B83-5EFC-0F62-679DBF0C2301";
	setAttr ".i2" -type "float3" -0.66666001 1 1 ;
createNode multiplyDivide -n "armpit_multiplyDivide3";
	rename -uid "2D8314EA-4001-3BA2-1855-E7AA98FBBDEB";
	setAttr ".i2" -type "float3" -0.33333334 1 1 ;
createNode plusMinusAverage -n "armpit_plusMinusAverage3";
	rename -uid "DB0034B8-44C6-E564-8867-F0B085E7DDB6";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
	setAttr ".i2[0]" -type "float2" -0.43641421 0;
	setAttr -av ".i2[0].i2x";
createNode unitConversion -n "unitConversion9";
	rename -uid "2DA3ACEB-4F41-C417-25F3-12BAB4C7F13D";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion11";
	rename -uid "E76D2636-4856-757A-6321-16B0AA856938";
	setAttr ".cf" 57.295779513082323;
createNode condition -n "condition2";
	rename -uid "9C13A0EF-44B4-5227-E8A4-468E194789AE";
	setAttr ".op" 3;
createNode multiplyDivide -n "multiplyDivide10";
	rename -uid "A7E96C4E-46EC-687B-EFAD-0093767C6AA2";
	setAttr ".i2" -type "float3" 5.0949998 1 1 ;
createNode multiplyDivide -n "multiplyDivide11";
	rename -uid "B0D36646-4FE5-08AA-CEB8-71B684C1BD7D";
	setAttr ".op" 2;
createNode multiplyDivide -n "multiplyDivide12";
	rename -uid "52DC777E-40B4-109C-3C6C-0D8046D3C141";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "multiplyDivide13";
	rename -uid "A265352A-44B4-3913-A732-C192A2EDB1E1";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1.0000043 0 0 ;
createNode multiplyDivide -n "multiplyDivide14";
	rename -uid "DFC5DE6F-47B6-8E1C-AA26-0988622C1C29";
	setAttr ".op" 2;
createNode condition -n "condition3";
	rename -uid "A4AA538C-4FBA-BACA-783A-40A2F176E6ED";
	setAttr ".op" 3;
createNode multiplyDivide -n "multiplyDivide15";
	rename -uid "48377C64-4C71-D09F-4D7B-449B1433DB92";
	setAttr ".i2" -type "float3" 5.1020002 1 1 ;
createNode multiplyDivide -n "multiplyDivide16";
	rename -uid "99D0D067-45D3-2936-B662-3682D860A8C0";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "multiplyDivide17";
	rename -uid "8CB9DDCB-44D1-368B-1BA5-69B74EA87178";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1.0000043 0 0 ;
createNode distanceBetween -n "distanceBetween4";
	rename -uid "ACA86E70-4A0C-7736-ED9A-3F97B6225674";
createNode condition -n "condition4";
	rename -uid "8994840B-43AB-1A89-73A7-A98F8F16B75F";
	setAttr ".op" 1;
	setAttr ".cf" -type "float3" 5.099 1 1 ;
createNode multiplyDivide -n "multiplyDivide18";
	rename -uid "F2988CEF-4E8F-7213-459E-509A68984886";
	setAttr ".i2" -type "float3" 5.099 1 1 ;
createNode distanceBetween -n "distanceBetween5";
	rename -uid "B9C80147-478E-1C97-A444-8DA621F634B8";
createNode condition -n "condition5";
	rename -uid "4EFF9582-4334-0F27-3DE5-BEBAEE85C74F";
	setAttr ".op" 1;
createNode multiplyDivide -n "multiplyDivide19";
	rename -uid "844CD33F-4717-0D1F-B301-18A0EB18C053";
	setAttr ".i2" -type "float3" 5.099 1 1 ;
createNode unitConversion -n "unitConversion12";
	rename -uid "C5B0F559-4232-F58E-3BA2-7DB25C3F7DC2";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion13";
	rename -uid "C6C49A6C-4D26-752D-2527-8A866589FB09";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion14";
	rename -uid "6A7769DC-4D90-1A9A-5C5C-8A8C243BA005";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion15";
	rename -uid "5F4DAEA6-445C-B6BB-6385-49BE33FA75A0";
	setAttr ".cf" 0.017453292519943295;
createNode distanceBetween -n "distanceBetween3";
	rename -uid "682E24FD-4310-2C48-C6EA-E2837CEAE6B0";
createNode distanceBetween -n "distanceBetween2";
	rename -uid "CA56EC27-4DED-29B2-A905-5892020E105E";
createNode condition -n "condition6";
	rename -uid "9868482E-48CB-CC6C-0380-E7BF4F364EC5";
	setAttr ".st" 1;
createNode condition -n "condition7";
	rename -uid "E8BE332E-4C35-5510-9D3D-31BDBDE3E17E";
	setAttr ".st" 1;
createNode dagPose -n "bindPose2";
	rename -uid "902B0707-46F8-9A79-C840-B3873564C074";
	setAttr -s 9 ".wm";
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 9 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 -6.738506119763342e-08 2.250500899297022e-15
		 2.8077108740406857e-08 0 2.9999999999999991 4.9999999999999991 -0.99999999999999967 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.069676617866182108 -0.069676617866182108 -0.70366552347172029 0.70366552347172029 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0.006188653010970613 -0.00030215875275661238
		 -1.1549350873674081e-05 0 2.999999356970545 3.3335399019052412 -0.66618975226812183 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.069676642552613549 -0.069676593179751237 -0.70366551594085458 0.70366553100258489 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -0.0061885900999941023 -0.00030215910104587781
		 -1.1481964842299608e-05 0 2.99999871394109 1.6670798038104833 -0.33237950453624376 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.069676617866182788 -0.069676617866182788 -0.70366552347172018 0.70366552347172018 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0.037130517360625725 -3.1720899596453288e-06
		 -1.1783571263837529e-07 0 2.9999980709116367 0.00061970571572533828 0.0014307431956346317 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.069676617866182788 -0.069676617866182788 -0.70366552347172018 0.70366552347172018 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0.0057127099808433317 5.4385300510920796e-05
		 -0.0047599340410615547 0 3.0000000000000004 8.3333333333333321 -0.33333333333333454 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.069676617866182067 0.069676617866182067 -0.70366552347172029 0.70366552347172029 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -4.1633387008661805e-17 4.1633355628885471e-17
		 -3.4695389975535452e-18 0 3 10 -8.644626606324616e-16 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 1 0.069676617866182067 0.069676617866182067 -0.70366552347172029 0.70366552347172029 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0.017137450071994843 -7.5619855057871595e-13
		 -2.2547379565348995e-12 0 2.9999999999999996 6.6666666666666661 -0.6666666666666673 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.069676609304861553 0.069676626427502553 -0.70366552262398252 0.70366552431945772 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0.031637565196847843 0.00020851930897357928
		 -0.013180482756520468 0 2.9999999999999991 4.9999999999999991 -0.99999999999999967 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.069676634323802888 -0.069676601408561273 -0.70366551845114333 0.70366552849229658 1
		 1 1 yes;
	setAttr -s 9 ".m";
	setAttr -s 9 ".p";
	setAttr ".g[4]" yes;
	setAttr ".bp" yes;
createNode dagPose -n "bindPose1";
	rename -uid "EF219273-4E26-6532-6D5C-4C824E5E7CF8";
	setAttr -s 7 ".wm";
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 -2.7755575615628907e-17 0 0 3
		 10 -8.644626606324616e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.069676617866182067 0.069676617866182067 -0.70366552347172029 0.70366552347172029 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1.000002225347312 1.000002225347312 4.8666808907874556e-08
		 -0.061793047516130815 -3.6053223170023713e-17 0 3.0000000000000004 8.3333333333333321
		 -0.33333333333333454 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.069676617866182067 0.069676617866182067 -0.70366552347172029 0.70366552347172029 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1.0000000000000002 1.0000185176914143 1.0000185176914143 0.022260492651715532
		 -0.061899012926490755 0.0095381609112254392 0 2.9999999999999996 6.6666666666666661
		 -0.6666666666666673 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.069676609304861553 0.069676626427502553 -0.70366552262398252 0.70366552431945772 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1.0000250347033777 1.0000250347033777 4.4923374557100026e-08
		 0.00011831390774323383 -1.8712757068077182e-08 0 2.9999999999999991 4.9999999999999991
		 -0.99999999999999967 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.069676634323802888 -0.069676601408561273 -0.70366551845114333 0.70366552849229658 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 3 ".g[4:6]" yes yes yes;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster3";
	rename -uid "DB2EBFE2-4985-1119-C06C-29BB3CDD0D9C";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		2 1 0.012129290359793137 2 0.98787070964020685
		2 1 0.012129290359792998 2 0.98787070964020696
		2 1 0.98783693565319608 2 0.012163064346803948
		2 1 0.98783693565319608 2 0.012163064346803889
		2 1 0.012197253224299962 3 0.98780274677570012
		2 1 0.012197117047581202 3 0.9878028829524188
		2 0 0.98776873059126802 3 0.01223126940873201
		2 0 0.98776900363859765 3 0.012230996361402343;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 1.8712756883413411e-08 0.99997496592334267 2.2139403064716546e-12 0
		 -0.98060387209401267 1.8348908570929613e-08 0.19599521075225668 0 0.1960001174342213 -3.6697817279265644e-09 0.98057932358150879 0
		 5.0990194217660143 -2.9999249931843521 0.00060326981358341226 1;
	setAttr ".pm[1]" -type "matrix" 7.3891678026574327e-17 0.99999777465763917 -4.866670057504399e-08 0
		 -0.99082005902802284 -6.5791206726273951e-09 -0.13518701597718161 0 -0.13518731681524446 4.8219943163115407e-08 0.99081785411417334 0
		 8.2117713862951067 -2.9999932530735971 1.4568312305146738 1;
	setAttr ".pm[2]" -type "matrix" 2.7286902636924871e-16 1.0000042915344214 -7.3000528604785404e-08 0
		 -0.99082005902802317 -9.8687453731529239e-09 -0.13518789697626796 0 -0.13518731681524451 7.2330388127821948e-08 0.99082431116641156 0
		 9.908200590280229 -3.0000127759158106 1.351879188764266 1;
	setAttr ".pm[3]" -type "matrix" 0.0095197512293034772 0.99967512470645836 -0.022847065058412646 0
		 -0.99078985945551268 0.0063435524138514034 -0.13525729075057796 0 -0.13507341980070464 0.023924256138090703 0.99052836534997402 0
		 6.486657529481703 -3.0253662194529904 1.6306087104124078 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 4 ".ma";
	setAttr -s 4 ".dpf[0:3]"  4 4 4 4;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
	setAttr ".ucm" yes;
	setAttr -s 4 ".ifcl";
	setAttr -s 4 ".ifcl";
createNode skinCluster -n "skinCluster4";
	rename -uid "491024A6-4E35-07C4-6CF0-B9803A6B393A";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		2 0 0.98795891107970402 1 0.01204108892029594
		2 0 0.98795919145836841 1 0.012040808541631554
		2 0 0.012191992173705956 1 0.98780800782629408
		2 0 0.01219182318254964 1 0.98780817681745037
		2 1 0.012158201180041914 2 0.98784179881995804
		2 1 0.012158124149926433 2 0.98784187585007355
		2 2 0.012127516282700361 3 0.98787248371729963
		2 2 0.01212753075156045 3 0.98787246924843963;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.8056532941421237e-08 0.99997496592334245 -8.3886398957447855e-12 0
		 -0.9805219933774727 2.7511006461808781e-08 0.19640440185263869 0 0.19640931877858109 -5.5022013024398923e-09 0.98049744691472718 0
		 5.0990192014963442 -2.9999250408272595 -0.0015245623233006056 1;
	setAttr ".pm[1]" -type "matrix" -3.8016278938993028e-07 0.99997401227532978 5.6757644963311298e-09 0
		 -0.98052199337740242 -3.738630618239212e-07 0.19640421454729409 0 0.1964093187785669 6.910036212796265e-08 0.9804965118419473 0
		 3.399456205527605 -2.9999201014918571 -0.001524574799308012 1;
	setAttr ".pm[2]" -type "matrix" -3.8016278912809001e-07 0.99997162815945606 1.1366495843026472e-10 0
		 -0.98052199337740253 -3.7276972473469438e-07 0.1964037462847216 0 0.19640931877856704 7.4553944955115214e-08 0.98049417416389817 0
		 1.6998919849012639 -2.9999129522388648 -0.0015245513557023938 1;
	setAttr ".pm[3]" -type "matrix" -1.1783694285432646e-07 0.9999706745147634 3.5232098164532719e-11 0
		 -0.98052199337746637 -1.1554524570743469e-07 0.19640355898000439 0 0.19640931877857976 2.3109049134717617e-08 0.98049323909423947 0
		 0.00032697729788997711 -2.9999100944739574 -0.0015245465439847772 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 4 ".ma";
	setAttr -s 4 ".dpf[0:3]"  4 4 4 4;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
	setAttr ".ucm" yes;
	setAttr -s 4 ".ifcl";
	setAttr -s 4 ".ifcl";
createNode dagPose -n "bindPose3";
	rename -uid "18E2166C-456F-1F27-39EB-A7A2A04CC4A0";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 2.8056532874742857e-08 -0.98052199337747292 0.19640931877858109 0
		 1.0000250347033774 2.7512384002407991e-08 -5.5024768199109876e-09 0 -8.3890690644535306e-12 0.19641423582761744 0.98054654045473277 0
		 2.9999999999999991 4.9999999999999991 -0.99999999999999967 1;
	setAttr ".wm[4]" -type "matrix" -3.8016278924857261e-07 -0.98052199337740242 0.19640931877856693 0
		 1.0000259883999052 -3.7388249442529186e-07 6.9103953794723881e-08 0 5.6760594844032943e-09 0.19641442314251473 0.98054747557522437 0
		 2.999999356970545 3.3335399019052412 -0.66618975226812183 1;
	setAttr ".wm[5]" -type "matrix" -3.80162789026528e-07 -0.98052199337740231 0.19640931877856699 0
		 1.0000283726453836 -3.7279087805760586e-07 7.4558175636501887e-08 0 1.1367142492012414e-10 0.19641489143054711 0.98054981338035319 0
		 2.9999987139410909 1.6670798038104833 -0.33237950453624376 1;
	setAttr ".wm[6]" -type "matrix" -1.1783694287004209e-07 -0.98052199337746659 0.19640931877857981 0
		 1.000029326345232 -1.1555202283550588e-07 2.3110404536569147e-08 0 3.5234141356012749e-11 0.19641507874607173 0.98055074850396517 0
		 2.9999980709116367 0.00061970571572533828 0.0014307431956346317 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1.0000250347033777 1.0000250347033777 -1.2205707688108806e-10
		 -0.00029899876517129088 2.805653441342824e-08 0 2.9999999999999991 4.9999999999999991
		 -0.99999999999999967 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.069676617866182095 -0.069676617866182095 -0.70366552347172029 0.70366552347172029 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1.0000259883999776 1.0000259883999776 6.1822820393108156e-08
		 -0.00029899876514370634 -4.0826006303603198e-07 0 2.999999356970545 3.3335399019052412
		 -0.66618975226812183 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.069676642552613549 -0.069676593179751237 -0.70366551594085458 0.70366553100258489 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1.000028372645456 1.000028372645456 -5.5622439382538132e-09
		 -0.00029899876516934528 -3.8016280618274937e-07 0 2.9999987139410909 1.6670798038104833
		 -0.33237950453624376 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.069676617866182788 -0.069676617866182788 -0.70366552347172018 0.70366552347172018 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1.0000293263452389 1.0000293263452387 -7.8435106489133088e-11
		 -0.000298998765169321 -1.1783694791470196e-07 0 2.9999980709116367 0.00061970571572533828
		 0.0014307431956346317 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.069676617866182788 -0.069676617866182788 -0.70366552347172018 0.70366552347172018 1
		 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes no no no no;
	setAttr ".bp" yes;
createNode groupId -n "groupId1";
	rename -uid "C4170B3D-4A3B-9E4B-0022-4984C060282C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "E41597A6-40E9-8646-66E5-89BEEEDE7F2B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:679]";
createNode ngst2SkinLayerData -n "ngSkinToolsData_skinCluster5";
	rename -uid "25486159-4B43-F0BC-DFFB-4F9393502EE6";
	setAttr ".ld" -type "ngst2SkinLayerDataStorage" 16 11592 {
"qJsCXIQCAAABAAAADAAAAEJhc2Ugd2VpZ2h0cwEUCQEE8D8JCAQAAAEsAAcRDf4BAP4BAHoBAPCL7FY3LgMB7j8iUtVyCgHuP24JGk4QAe4/quIa5BMB7j/7EjQxFQHuP7OpRsITAe4/E8bSERAB7j/Sy4QoCgHuP+YmEuMCAe4/mI1Pt/oA7j8Hb0HN8gDuP44xyF/rAO4/z0UFt+UA7j9acNL84QDuPyV7EtzgAO4/YyqAJOIA7j9ILY4P5gDuPzrSv94BMDg0voVd8wDuP4wS5E37AO41VAkBOWT+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQBeAQD0bASUpN/H1lvUP4VHajAnWtQ/TpqdMXdY1D/Ozgxo8VbUP/l7F3K8VdQ/hhDzp/VU1D/ouwYPsVTUPxhm4E/1VNQ/TycnGrxV1D+kBrfJ8FbUP3TC4292WNQ/J0+uWSZa1D83pTEy1VvUP97rAllaXdQ/8M2SVo9e1D+vgWRzVV/UP9QLNQaaX9Q/4wyQy1Vf1D+QkgsQkF7UP37/2YJbXdQ/cCH+yxp73D89nr/tTHrcP03C0Kx/edw/GU395cV43D+aFCc3MnjcPxqIfXDTd9w/NIQrlbJ33D+kNM4h03fcP0ffOsMxeNw/RIsgNcV43D9PcMbZfnncPx4myAlMetw/XS+ZqRl73D+mFU9f0nvcP2kgxB5mfNw/DNtrycN83D/gPrwm5XzcP2Qq+xfEfNw/Wvj+uWZ83D+joXNC03vcP/x7yt72/98/XIvlEPb/3z9780g89f/fPz421XH0/98/d8vRzfP/3z8v2Elg8//fP8bHKzvz/98/XS1TX/P/3z+HfRTM8//fP2k4c2/0/98/qoSTOfX/3z99vyEO9v/fPzm9Udz2/98/OT7Jj/f/3z+SDIwX+P/fP5R9xW34/98/nkZDivj/3z8jaoRu+P/fP6dv5hj4/98/EYG/kff/3z9sSvL5NbjhP5KichseuOE/qZdKDga44T95/juv8LfhP2kkMLvft+E/GebzadS34T+jsDXS0LfhP9+YIFLUt+E/PUM3id+34T+9tFxs8LfhP+l2kcAFuOE/0X/JyB244T/QffjVNbjhPyJ3iCxLuOE/zPtIHFy44T9PLZFeZ7jhP8C5U4VruOE/ANcadGe44T986Vw8XLjhP7AD81VLuOE/CegYjYvE5T9yyjWThsTlP5DkuWGAxOU/HeaYXHrE5T9TtIg5dsTlPyFxZtVzxOU/evlkLnLE5T9CjFCWc8TlPwPF9ax1xOU/VNKjmHnE5T/x0j9+f8TlPxe4NKSFxOU/eS4ZGIvE5T9Bdg==",
"3vKQxOU/kRucHJXE5T8Rh8dDmMTlP0RrHQ6ZxOU/SqDEgpjE5T+W7gB4lcTlP4dvgHmRxOU/twJdQj7F6T9uuLbCQMXpP56N6WNDxek/xwmS1ETF6T8e42B2RsXpP9vrTPxGxek/t/VSfUfF6T+JPPWiRsXpP7gN68RFxek/oa5M7UPF6T/mPo9XQsXpPzyJyKk/xek/ZArBtT3F6T/98UMSPMXpP//jWXk6xek/oId1TTnF6T/Fpo5kOcXpP76gqYA5xek/wzo/6DrF6T+vABK1PMXpP4OlnxlpeOw/SsdBrmZ47D9SnXE9ZHjsPwePynNheOw/x0AvjF947D9rrv/6XXjsP4JQ/aFdeOw/b4NNs1147D+Er4T+XnjsP9hEW79geOw/TydbaWN47D/04kjPZXjsP4U4wKloeOw/Qw62RGt47D8JSoU1bXjsPyCOcGBueOw/tbNeE2947D9W6UGbbnjsP982JJZteOw/KoRAx2t47D8AAAAAAAAAAAAAAAAA/sUI/sUI/sUI/sUI/sUI/sUI/sUI/sUI/sUI/sUI/sUI/sUI/sUI/sUI/sUI/sUI/sUIXsUI/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAqgEAJkAU/gEA/gEAZgEA8J9EkYocze+vP9rdqtJY768/H2lfHvvurz9a1VG+we6vP0rQvuys7q8/1mSV28Purz/SntPi/u6vP+hCs3dd768/ppHdztHvrz96JgeLVPCvP5YP6SvT8K8/Jed8A0rxrz8Xo6uPpPGvP1/62DLg8a8/rU3YPvLxrz/MWf233fGvP3srHQef8a8/YNwCFELxrz/FHKQnyvCvP0XXviFL8K8//joB/joBZjoB/gEA/gEA1gEA8Fu2MglyiVzUP8+2CBIqWtQ/R+NyastX1D8MGgLqplXUP31LX6jzU9Q/CUPc39pS1D/vzZ+VelLUPyTDG8/ZUtQ/ddVZ3vFT1D9TSOpopFXUP0BnmWzIV9Q/cH3k5w4EEfRTAbzB0qaFXNQ/84kckqhe1D9SWymuWmDUP79UIy9xYdQ/NhXwr9Fh1D+w95w+cmHUP8+he8RcYNQ/Nnp9nKte1D9evVOSXnvcP2sJRZ1Petw/Ox5f1T953D8EYxlcSnjcP1IcqSKHd9w/lODKRgp33D+7+BLM3nbcP75bkrIJd9w/MzmPIYZ33D+EZaH1SHjcPyrrZSc+edw/GTGf2U163D/W/WudXHvcP01IBhxRfNw/l31cghJ93D84+t6Kj33cP1qlZRq6fdw/28MjHpB93D+MfWSgE33cP2QzbLNSfA==",
"3D8OCe7g9v/fP1+JiBP2/98/8Pj4O/X/3z9gM+Vx9P/fP8gHMs3z/98/LThqYPP/3z/EEOw58//fP4hpcl/z/98/Vsdqy/P/3z/bkoBv9P/fP2JiOTn1/98/y33CEPb/3z8sZHPe9v/fP5dQWZH3/98/dqNgGg7kEAwc5dlvAQgM6lBYjQEIDMw9mXABCAyO3bsbAQj0rQVx1l2T9//fP959rX4WuOE/qrhkrR644T8G45CtJrjhP0JfLTkuuOE/+2cr5jO44T/DqvGWN7jhP26K+bE4uOE/CqduXDe44T+wGOZtM7jhP8khlZUtuOE/RnW87SW44T8pSUjjHbjhP+h0IekVuOE/n2nKcA644T9JIq3GCLjhP1D4uR8FuOE/PzuOAgS44T/qcyFaBbjhP3SaAyQJuOE//yLP9w644T8++aJFNcTlP2kXslyGxOU/S1cOd9fE5T9yLVBQIMXlP/C743paxeU/V8l2Ln/F5T+2CUEjjMXlP67/7M1+xeU/qe/YpVnF5T8cvMk0H8XlP6+IryzWxOU/K4CNAYXE5T/H2P5uNMTlP66l1sPrw+U/2ULYJrLD5T+oECMvjcPlPx8i+1GAw+U/1ayBj43D5T/OzzrLssPlP9/hxZTsw+U/ti0QnBTS5T8+3Mpn7NLlP9kyMWfE0+U/mZj5S4fU5T8DQvTGIdXlP753BiyF1eU/DaJ8eKfV5T/0zA9YhdXlP1hs7PIh1eU/rnwkm4fU5T/GHg7IxNPlP23YKNPs0uU/ZC3nZhXS5T8Rin7TUtHlPwmZtlS40OU/KL9NRlXQ5T8WeuX8MtDlP4/5NxpV0OU/uDb697fQ5T9BAJM+UtHlP0jvAJpywuE/4TAgidnC4T/anpcpQMPhP3NZAQ2dw+E/s3Vs5ObD4T/zO8FHFsThP+Y9arUmxOE/ruUYbxbE4T9ckGIe58PhP166b2Wdw+E/2Mcck0DD4T/x7Bv72cLhP1JoMytzwuE/LXVY0BbC4T/M753wzMHhP3oSShueweE/kOChbI3B4T/PagL0ncHhP9ODAKPMweE/Li/GXhbC4T8DwpqQBADgP1M6jfcEAOA/QobbYQUA4D/hZBXHBQDgP0UaFxkGAOA/6RPbTwYA4D8dHGpiBgDgP1FpVlAGAOA/PcH1GQYA4D/MY0bIBQDgP6s9NmMFAOA/QiDv+AQA4D9jIdeRBADgP+RgGzgEAOA/t/k59AMA4D82QR3JAwDgP7Fc3roDAOA/78q9yAMA4D8syIzzAwDgP3c/IDcEAOA/KGsbDJSP3D/buhrJw4/cP6/QauPzj9w/DwOIoR6Q3D8ut5+JQJDcP84zGCxXkNw/up6UW16Q3D9Czr5bV5DcPw==",
"hnmR7UCQ3D+FlkYnH5DcPy0S3X70j9w/XgBtbsSP3D9fBA9UlI/cP70R76Zpj9w/aAhux0eP3D9kpd1CMY/cP4CMWPUoj9w/AFLKFzGP3D8KLUaHR4/cP6D4GVRpj9w/7S/O5eh21D8ca5TZ8nbUP+E2jDz/dtQ/xjPORgt31D9Zl+6ME3fUP70dM1UYd9Q/Dg02oxt31D98517TGHfUP/l1FKYUd9Q/WFu4zgx31D8fWoADAXfUP9OPlrf0dtQ/DqPNz+l21D9/E0Ma3nbUP9/Ix8bVdtQ/3vFweM921D94KcXjzXbUP2y/dvrOdtQ/1CL+D9V21D/zIP8M3XbUPyL1i/YG68g/Rh4l9fzqyD+JyVlw8urIP+XYt63s6sg/inN8JubqyD+WUMwO5OrIPyMptAri6sg/3Q0rdOXqyD8gyVPs6OrIP3xFzUrw6sg/bATDofbqyD8Q291YAevIP2/W+ygJ68g/Dzjwtg/ryD8IcJgaFuvIP4HhKcoa68g/6mTFbRrryD8MfVn9GevIP/UUA18U68g/Q/23Kw3ryD/u0wIztzy8P7PF8Y3KPLw/dBVzFN48vD/Gh6th9Dy8P8r5hZ4DPbw/qowCKBA9vD/1exXwEj28P5Dkk2USPbw/44PaCwg9vD9B2SUF+jy8P4jFJrXkPLw/ZOi4hdE8vD/VO/6xujy8P+eNT9qlPLw/v6/VU5Y8vD8Ej3v8jDy8P1ViCmWHPLw/TrXwJYs8vD8NSd5Okzy8P7He+8WhPLw/AAAAAAAA/jwI/jwI1jwI/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEATgEAAAIiVQkA4BoQJ+YIAPBSa65I+vv/3z+HB5UJbojfPxsvDrfJS94/7Zw0/m+13D8QiDuFa2DbP0Cd8npS29o/eron/mtg2z/Yf1uTcLXcP5mH9CDKS94/MzkELG6I3z9s30kFUBWj/gEA/gEAWgEAGOENMy/7Q9YVqPBb8vcMvwK44T/irOphK7jhP1ACLO5TuOE/tzbPCXi44T9PZ684lbjhPzCi+i0KruE/s9X6KlOl4T+mCQQTCq7hP+6/gQGVuOE/yojRvne44T8UT8qXU7jhP23OLAUBUAyF7W2RAWD0BgTyQw2i3rfhP5IHyrXBt+E/nOBVRq+34T8L/EAGqbfhP7eWQFWvt+E/r0/80sG34T82e7vQ3rfhPwlyUl3vw+U/mtTZ35fE5T/3Kxw7QMXlPzYOtfvXxeU/v9bydg==",
"UMblP2W+cwaexuU/IhAUnbjG5T9l86IBnsblP44Or1RQxuU/ui0I0NfF5T+isnsKQMXlP636sKyXxOU/9eK0mu/D5T8cQdx5WMPlP/havZvgwuU/JOJdopPC5T9zG0s2ecLlP7Vuh6eTwuU/8g+TkuDC5T/Gm96pWMPlP6Zm+0a70eU/maT79urS5T9djsZKGtTlP/ry/oos1eU/QVrQKwbW5T973hGQktblPwgZMLXC1uU/bh5yGJPW5T9FFdMQB9blP9bbisst1eU/YUyzyRvU5T9IwQ2M7NLlPyOfliy90eU/B7vxtqvQ5T9XUuuo0s/lP6BVbmhHz+U/ZfUHKBfP5T8ohLHgRs/lPxgvwp3Rz+U/5ULBMarQ5T9RIda2UMLhP0p7XTHYwuE/43BQFWDD4T9+TvPR2sPhP9dxq248xOE/to+a3HrE4T+ig/aZkMThPyHStiZ7xOE/Z2M47zzE4T8+TS+F28PhP2sKTexgw+E/c2cwE9nC4T8WAUqxUcLhP9nb/HHXweE/NcHRvnbB4T/kgpA6OMHhP1MtzfIiweE/Eh7u8DfB4T86wc0vdsHhP07mSabWweE/evuIjwQA4D9Quzv2BADgP4iDA2IFAOA/UGYNxwUA4D8c/GYZBgDgP+rjyk8GAOA/nvcJYwYA4D88y0ZQBgDgP1acShoGAOA/krY/yAUA4D/PTmNjBQDgPxrBnvcEAOA/603GkAQA4D+0V1M3BADgP0Wuz/IDAOA/cg0TyAMA4D+L11O5AwDgPxphs8cDAOA/OREi8gMA4D/HFFE2BADgP0QEpQLTj9w/q442pcKP3D/zOd6kso/cP3xBpY2jj9w/CzCpM5iP3D95qhzSkI/cPyTrDJyOj9w/67EiR5GP3D+fzjMkmY/cP2+81dSkj9w/dBWHJLSP3D+ubW85xI/cPy8WvS3Uj9w/wixrHuOP3D9vu6Vy7o/cP2APjMD1j9w/gonj+veP3D8tGL1L9Y/cPxfL+Lftj9w/A7phEOKP3D+EDbp0lXfUPy/Rm0bzdtQ/alHjEVF21D8cpV9fv3XUPyGIOApLddQ/Um0SowF11D+T7H2553TUP6QAJmQCddQ/ryBOtEx11D/Hh2yWwXXUP6PuoKZTdtQ/qv/k/PV21D9zTgIil3fUP6O0UngoeNQ/TnpPspt41D+w3rmh5XjUP8O7CVz/eNQ/Vqb84OR41D9jYIppmnjUP0M8dNYmeNQ/AAAAAAAAAAAAAAAAAAAA/hYF/hYFWhYF/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/g==",
"AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQBmAQD04gFpoWagdUfUPzBXepuWStQ/5sTt3hBN1D9hrnuwp07UPzLaDDEzT9Q/iDTg0aZO1D8HRNnqDk3UP6HohPuTStQ/8zOdVHJH1D/cjqkj+EPUP2ZU9cV6QNQ/js32G1M91D8CDR350DrUPxMMLVE0OdQ/2L5pTaY41D+Th7YnNTnUP/nFtHPSOtQ/x9JdK1U91D9VFFI2fUDUP0yNy7L6Q9Q/HRRFuchq3D9bFVKg02vcP+6x3yWmbNw/E6zsuC1t3D+gfx4XXG3cP2pJX2Qtbdw/wTeTcqVs3D8XG8aN0mvcP/zToXTHatw/vZAORJ5p3D87lmoDdGjcP1GWAUBmZ9w/3UEFS5Bm3D++hiTuknXcPzdvrSyvhNw/RMo8UJN13D8P0ivdkGbcP/QLxgpnZ9w/xFbL9HRo3D8APU89n2ncP+AtZuW9/98/HCfMKrz/3z+PhqPHuv/fP30iF+G5/98/EOODkbn/3z9UMRDhuf/fP1zLcMe6/98/iqJuKrz/3z9+CE7lvf/fP6aiUcm//98/c04Ju0U04D/B3F/5h8vgP/lnT57UkOE/d4dyL3I34j9g6XMJo3jiP5PHvUVyN+I/CR/C1NSQ4T/7+zg/iMvgP1KzOPFFNOA/k1Nkyb//3z8AAAASvQ0gvNiQjpFXqz8DBQ4BAeYcFAE+8E8AAOA/y6jbAgIA4D89fDX7yDvgP3PoeCQb2uA/irHlAEil4T/5O2I9yk/iP2CxhsJWkuI/xCLsAMpP4j8UQFK2R6XhPzS8he8a2uA/ZuP96QFABEoQCVAJYP4BAP4BAGYBABgPeWZoAt7kFahwHRDmgfqP3D88pio8qY/cP2H7pyNYj9w/kZJh7A8BEGgxoY7Vjtw/oLsKpOuj3D+bVAqqWbXcP7Ps99kBEAwlgPz8ASAsbO5cghCP3D/ZYWvQAUAMJWOm9QFQDPUkJN0BYPDXG3jlu0KQ3D/d8GuUfJDcP8c+VHOhkNw/7Ad+862Q3D+S0n5VoZDcP6RgB1p8kNw/kwmJXkKQ3D/uG1tFIXjUP81WTEDQdtQ/EqjHiX911D+U45UIUHTUP4JSGhJfc9Q/N4MY88Ny1D+939fFjnLUPzYZuvzDctQ/5eKhVl9z1D+MpO9fUHTUP7uaCOt/ddQ/pgqeptB21D8VOpbKIHjUP8l9RwxPedQ/D0qFyD561D+3O0S72HrUPxzJaZMNe9Q/liLxsNh61D8c4NnaPnrUP3PIQqxOedQ//uoB/uoBZuoB/gEA/gEA/gEA/gEA/g==",
"AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQCWAQD0AgWO8VVPsFfUPyaGAEA2WtQ/Y+i32jVc1D/20cxxfV3UPyWxOcLtXdQ/YzJfbXxd1D9qunbwM1zUP9QDw60zWtQ/rBQlFK1X1D8sDrQ/31TUPyjFWloPUtQ/vE8GRYVP1D8VYwrff03UP2ENvcgzTNQ/NPpykcFL1D/nF66ZNEzUP+OaME+BTdQ/LKovRodP1D8fTTS6EVLUP7eywb3hVNQ/8VyDWD133D83EIaYCnjcPztcVzateNw/22H2jxV53D+LljdEOXncP82dEysVedw/mSal0ax43D/VB9HYCXjcP/8l7B88d9w/ssZASFd23D8WJaMLcnXcPyKlsOWidNw/8bV1qP1z3D/WyMnDk3PcP9aE4wNvc9w/6SpVwpNz3D8aHYYz/nPcP3cOwaajdNw/SgTp73J13D+x0sY1WHbcP1RbSVzs/98/jevmYOv/3z95aTaV6v/fP3wIzRDq/98/9v+n4un/3z/2PLwQ6v/fP23xFJXq/98/gxHdYOv/3z/JMEFc7P/fPx0Wh2zt/98/hW+ide7/3z8W3l5e7//fP72TBRPw/98/s15vhfD/3z+Vtmms8P/fP4whdIXw/98/OJ8GE/D/3z8uEl1e7//fP9nOnnXu/98/Jk15bO3/3z+wE1/LQLXhP7yBXphxtOE/e33Bjs2z4T+JOrxdZLPhPySxJD1As+E/6sMhhmSz4T+ZhmjezbPhP7sn5AxytOE/9RlDX0G14T/k5ZLBJ7bhP/CaISUPt+E/z+SBTOC34T8Al2KzhrjhPzctKYjxuOE/59SGZBa54T8EjsZj8bjhP/XEbU2GuOE/6uET79+34T8sl0+RDrfhP+LvR0ontuE/PeQxZ6S/5T+lNTqSpL3lP5wOzyoPvOU/uQV6MAu75T+KVOPgsbrlP93an6kLu+U/Ps0GBRC85T+KYj3Zpb3lP3oTKv6lv+U/Ky/O/t7B5T+oLc1VGcTlP93C/+IcxuU/AtxhxrbH5T+aog1lvsjlP2FqzxkZyeU/G1sAAL7I5T8QmjQQtsflP3kHQuMbxuU/m3ooJhjE5T/Sk/W63cHlP0yvzC9F3OU/aNRCsrTa5T+NHYmQd9nlP88owies2OU/55J5Z2bY5T+85Q+XrNjlP/xdk4p42eU/sIs9Arba5T8HZrHVRtzlP5I4K+4D3uU/zVUFncLf5T85mQ==",
"BHJW4eU/f3lxg5fi5T/3eWnXZePlP5QgS9ms4+U/NrwkbGXj5T8DnSXGluLlP5wWUWpV4eU/1vXWZMHf5T9aOZqmAt7lP/J1XaObyuE/U/XWLxbK4T8JJxDtrMnhP/epiSNpyeE/MMBw9FHJ4T9LW9BNacnhPx9ktkatyeE/dfIcuRbK4T8DFq9FnMrhP6K3+N0wy+E/4rRK/sXL4T/YNP/fTMzhPxFffdq3zOE/obztiDbF4T9kSKlpqL3hP96a4Vc2xeE/+RZqkbfM4T8G+px6TMzhP55UmoXFy+E/gWFYYTDL4T8Q6UwNIQDgP3LsmeohAOA/uDwunCIA4D/BbnQPIwDgP3gOPjcjAOA/Vud3DyMA4D9TmkecIgDgP7uuyOohAOA/wftYDSEA4D+tLlcbIADgPxpj7Yl0l98/f0ZADfBo3j8NMGHDVt7cPxPxGqEbkds/Py0Y7bkO2z/ccIR0G5HbP+/Be1ZW3tw/CwiOge9o3j9dmY4ddJffPzbWTRsgAOA/AAAAEukQIHTyFueGSu4/BAUO/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAtgEA9JsB1IpVoe1n1D/1Hboy2WnUP+XPwptea9Q/b0U2NFhs1D/Cyd3BrWzUPx/T6ixXbNQ/G/4av1xr1D+YFBaK1mnUP88QH17qZ9Q/MkrvKshl1D/DCQv8pGPUPzNETXe2YdQ/wRocoC1g1D8xdif5MF/UP81WfFDaXtQ/OLTh1zFf1D9G6/YdL2DUP3uiN3+4YdQ/+0M2L6dj1D9zCdKxymXUP/v/ppGhg9w/sV9CKzOE3D9CIllhpoTcP4aOPyfwhNw/Ch3aZwmF3D/GJo3U74TcP01F/rGlhNw/N2x6JjKE3D/z0sxUoIPcP0jUjn7+gtw/YAAMQ1yC3D9gi81/yYHcP9Onp+ZUgdw/zrfZ9QmB3D/gSk8b8IDcPzEOKCEKgdw/cXoyTlWB3D/csRVFyoHcP3CnuwVdgtw/zM6Ecf+C3D8pEgN3///fP/S5vUn//98/nVg9If//3z+qKBgF///fP3OxAPv+/98/L1cXBf//3z8smjMh///fPwJLtkn//98/SDQOd///3z9U5ryh///fP9lqg8T//98//RUd3QFIDJvI+OsBCAz5PWTzAQgMdA+I9QEICD95XwUQCNbO+QUgDCKlHt0BGAzoooXEAQgMEHG+oQEI8A==",
"QzfBF0ylu+E/cs27ru+64T85s+/kX7rhP4E3mc4DuuE/3WNUIuS54T/kQIb6A7rhPzYRozVguuE/1kKdJvC64T9AaQPkAUD0JwTXfQ+3b7zhP15VEiA6veE/GXFeGPG94T8nW2OZgr7hP5PyTxjgvuE/AMUhTQC/4T8UT9L3377hPwhYD1WCvuE/JCQguPC94T83ha6tOb3hP/ATITxvvOE/edjgoG3I5T+CwwHgt8blP5xPhwZdxeU/TuCGiH7E5T8CqmBYMsTlP5K0h/d+xOU/TlmF613F5T/4TrwpucblPxcz9DpvyOU/r0Lru1XK5T+nhE4qPczlP2a4L471zeU/qUIzkFPP5T8D3sVzNNDlPxaEItqB0OU/TDYFDjTQ5T9JLK3YUs/lP2Jmf4z0zeU/if89+DvM5T/7SF91VMrlPzkHVdgn1OU/7bz/3+TS5T/PC6QS5dHlPwWXGUdB0eU/bifjHgnR5T/PZlDJQdHlP8uixAfm0eU/Fn4eKebS5T+rde11KdTlP+r4JWCQ1eU/bZ3SUvjW5T8i2HxdPdjlP3bOehBA2eU/T3mhG+bZ5T/mgkY3H9rlPw30KLPl2eU/jrJnWD/Z5T/rKuhcPNjlP3DZ5SL31uU/pSYfIY/V5T+IUb5TYcThP+T3vLP6w+E/4lHUZKnD4T8SzwQ4dcPhP7o05F1jw+E/GTF2anXD4T+0bC2XqcPhPxZ8lxP7w+E/AO0J8GHE4T+onN9b1MThP3VtLvpGxeE/b60nja7F4T8IJcUrAcbhP5YbGx42xuE/lT0OfkjG4T+MatUeNsbhP3PxPOYAxuE/xHifLK7F4T/cfQuIRsXhP6iWHOXTxOE/VlLb0QkA4D85ioxPCgDgP0PLZLUKAOA/wnuZ9woA4D8FAKwOCwDgP4XhofcKAOA/Sod1tQoA4D8+d5FPCgDgP5tn39EJAOA/8nS8SQkA4D89yC7FCADgP/aQ0FAIAOA/ITZ99gcA4D+mUEi9BwDgP7Yky6kHAOA/Ou9FvQcA4D9ksHz2BwDgP+l20VAIAOA/k5gwxQgA4D9tWcNJCQDgP6DYQWl+ldw/ivxCzxyX3D8KBX3iZJjcP++Kh0Q3mdw/t522hX+Z3D8seLzzNpncP87yLkNkmNw/ibA35huX3D8WzHlBfZXcPzo02nywk9w/IMq8teGR3D9jNvxmP5DcP//ROpnyjtw/kaWt7xyO3D8yVvI2043cP/fjcjgdjtw/FnYkZfOO3D8tPNghQJDcP6nRYN3ikdw/PCBwa7GT3D+GN5wxt4DUP7eUi9u2hNQ/yOJhquGH1D+N9Auf6YnUP+tWOT6citQ/RkrArOiJ1D+EZfL134fUP+w6hU20hA==",
"1D8N2asDtIDUP6uhYwJCfNQ/sKRlVM131D9GegA6xnPUP/1HPHOScNQ/zLrkNYNu1D8/K2HMzW3UP8lJ//+DbtQ/4MuW35Nw1D8O8Xs5yHPUP8oKr7PPd9Q/XNgUikR81D8AAAAAAAAAAAAAAAAAAAAA/j4S/j4S/j4S/j4S/j4S/j4S/j4Sfj4SAAX+4QH+4QH+4QH+4QH+4QH+4QH+4QF+4QH+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQD+AQDKAQD0OwNoGmJ3a5DWP3eBeSG6Itk/fzFjG4hV3D9m1RsnGf/dP+0Gi3iTr9g/DZnYqbCU0T/6NLcGAaDHP1fF7jvct8M/9fw2UbuMyD/kYqk5/1nSP+AxH1YXaNk/HxH1DQz51j/aK3u4zoDVP3TpzmsrPNY/E9+d+/8y1z9r8trPtB7YP2ptCBTVwdc/yO4ZDnr31z8CSTVNNRzXP1imQDIGxNU/fAJ5n6wF4T+t7gJ1eGjhP6mi1G8XuuE/jobFNwy+4T/mFi1lnvLgPyBo20oWl94/r6ho0zlU2z8LW5BWYRLaP39W5Zh6ods/dXwB6hsD3z/RAsSG3RrhP4byK0Y9F+E/3N7glS/Y4D9jyR3KBPngPz7EY1VZL+E/itqWG+lR4T8ZbV2BGEfhPxM5isEhTuE/m6JUCVMe4T/ESqLQAeTgP9vplVja0OU/aH0yWG/P5T9bPuGaT87lP/HfkByXzeU/RKgxleLM5T+n0Hnv5n7lP+y7MDujA+U/DrADeMbP5D9DZA6UnhLlP6MGk+CAkeU/s6NXKQPU5T/nA4zvb9XlP6WFnLGR1uU/zvZK1EvX5T8lcKjci9flP5zCrHtL1+U/F2uG8ZDW5T9sM+vzbtXlP+gY/OUB1OU/ejna/23S5T+WOlUvCczlPwbxomYTy+U/DpgeslDK5T9I3eTl08nlPyAbER+pyeU/cJaKadTJ5T/ygHKgUcrlP7T19LoUy+U/mXfw0ArM5T/oWojqG83lPx57+oEtzuU/5l1ZxCTP5T+g8vEv6c/lP+hEbINn0OU/mdTB15LQ5T/kJQ8UZ9DlP12KBHHoz+U/wi5kwCPP5T8C3mRoLM7lP0b7FqcazeU/A4AsNy++4T8o0F5q5r3hP99uU8+sveE/vThg7Ie94T978RJMe73hP51suRWIveE/Wd0AJ6294T/lycLs5r3hP4aWmdUvvuE/3JW4wIC+4T/Q/3ne0b7hP1A6GUAbv+E/FyysjFW/4T8ZJBMFe7/hP5BaWPKHvw==",
"4T/n+Gvver/hP8fC5lhVv+E/Eid13Rq/4T9ILCJ90b7hP5qYPUeAvuE/7HZ+RAAA4D8GIyFbAADgP7JTYW8AAOA/q+tzfQ5QNQxHp3+CAQgMaVR0fQEIDOoyZm8BCAx/2iRbAQgM3OV4RAEIDNaMIS8BCAyTSr4dAQgMAXVxEQEIDLKbAwoBCAwD4U0GAQgMRvg7BQEICGFDUAUQBJUYCSAIb61wBTAIjC69BUAIeMcgBVD0PgGSfdBntYjcPxtliKIgitw/jpkgNkCL3D/9kM1i+IvcP0c4V7s3jNw/OH7zCviL3D+W3bmUP4vcP1V6xbIfitw/gS35N7SI3D9TBOGRIIfcP0RV27+Lhdw/zh1Dzx2E3D+ySTnN+oLcP9saYM8/gtw/Ana8Zf+B3D/YYVsQQILcP/BP4VX7gtw/uLe/jx6E3D+R9aKkjIXcPyLYvYchh9w/DU8+viRv1D/7ePw/kHLUP8hg8fJFddQ/ZT/y7gJ31D/8qz5Pm3fUP92W8BACd9Q/ZE31KER11D8SYoesjXLUP9GZF4ohb9Q/onopiFRr1D+y9mKrhWfUPzSPoOMUZNQ/r3qZ31hh1D/8Q3QYl1/UP9P3ukv8XtQ/aZP145df1D9up6VOWmHUPzszAecWZNQ/7wCED4hn1D8JbkEVV2vUIhA2/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAEQEABv4JBf4JBf4JBf4JBf4JBf4JBf4JBf4JBf4JBf4JBf4JBf4JBf4JBf4JBf4JBf4JBf4JBf4JBf4JBf4JBbEJ/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAHQH04gHM8k5EyrfkP0U/Q++ibuM/QGdO8jvV4T9NFXJscwDhP4p8ukM2qOM/ebMTq6c15z/BMlK+/xfqP6pOBPEIEus/w0CyK9Hc6T+OTitjANPmPxBn8FT0S+M/cHcF+XmD5D8TasKjmD/lP0aLGErq4eQ/dhAxAoBm5D/LhhKYpfDjP0vJ+3UVH+Q/nAjz+EIE5D9/W2VZ5XHkP9Ss3+b8HeU/CPsNwab03T+mIvoVDy/dP626ViDRi9w/5PJ0kOeD3D810qU1wxreP/FLktp0tOA/qKtLFuNV4j970rdUz/biP8FUjbNCL+I/xUH/CnJ+4D9e+nfyRMrdP/QaqHOF0d0/SUI+1KBP3j86bcRr9g3eP4N3OFVNod0/60rSyC1c3T/OJUX9znHdP9qN63y8Y90/ybpW7VnD3T95arte/DfeP0os1E5LXtQ/Lw==",
"BZtPIWHUP0qDPcpgY9Q/H0DextFk1D94r5zVOmbUP7NeDCEyAtU/KYieibn41T/ln/gPc2DWP3s349fC2tU/uvLZPv7c1D+auFCt+VfUPzL45yAgVdQ/tvTGnNxS1D9kEmpXaFHUP7Ufr0boUNQ/yXqmCGlR1D/TKfMc3lLUPyeZKRgiVdQ/MM4HNPxX1D8NjUsAJFvUPwAAAP7uBv7uBv7uBv7uBv7uBv7uBv7uBv7uBv7uBv7uBv7uBv7uBv7uBv7uBv7uBv7uBv7uBv7uBv7uBv7uBt3u/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEA/gEAXgEAMqCLbtt4BJqZAQEEuT8BJAB4DlSNLGNsb3Nlc3RQb2ludC48jQEhAQQOBGUBBA7oUAEECAQAAAUEDrAoLAUAAAAGAAAABgAAAA=="};
	setAttr ".imo" -type "string" "{}";
createNode animCurveUU -n "L_arm_pv_offset_parentConstraint1_ik_arm_L0_wrist_cntW0";
	rename -uid "F5E62C34-4165-74DC-0421-C3A8CDCD4877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode animCurveUU -n "L_arm_pv_offset_parentConstraint1_main_cntW1";
	rename -uid "2BB45664-47A6-1671-AED0-7FB7004EDDE2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode skinCluster -n "skinCluster5";
	rename -uid "C7678BC8-49B7-49B1-2778-31A18226A652";
	setAttr -s 644 ".wl";
	setAttr ".wl[0:180].w"
		3 1 0.033269867696703238 2 0.46365290880203247 3 0.50307722350126427
		3 1 0.03356865033173545 2 0.45956632494926453 3 0.50686502471900008
		3 1 0.033858718554214955 2 0.45547893643379211 3 0.51066234501199292
		3 1 0.033376467063857052 2 0.46360310912132263 3 0.50302042381482037
		3 1 0.033384549493701128 2 0.46359890699386597 3 0.50301654351243286
		3 1 0.033882655683919634 2 0.45546647906303406 3 0.51065086525304626
		3 1 0.033526115093012995 2 0.46082502603530884 3 0.50564885887167821
		3 1 0.033315691678635316 2 0.46363455057144165 3 0.503049757749923
		3 1 0.032007654413249299 2 0.48399617279337537 3 0.48399617279337537
		3 2 0.48399314481710703 3 0.48399500106590609 4 0.032011854116986982
		3 2 0.47350584480027597 3 0.48753310915662307 4 0.038961046043100814
		3 2 0.45145930156660569 3 0.50224247873701844 4 0.046298219696375854
		3 2 0.42484205245237416 3 0.52225242630025659 4 0.052905521247369143
		3 2 0.40316600521144846 3 0.53933904441246305 4 0.057494950376088469
		3 2 0.39482319294832841 3 0.54604654480778825 4 0.059130262243883451
		3 2 0.40316606691153023 3 0.5393388756096984 4 0.057495057478771379
		3 2 0.42484210715121001 3 0.52225219544181167 4 0.052905697406978223
		3 2 0.44325754046440125 3 0.50975176973609138 4 0.046990689799507407
		3 2 0.45059236884117126 3 0.50875073990651887 4 0.04065689125230984
		3 2 0.46157166361808777 3 0.50502530129527323 4 0.033403035086638957
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 2 0.34792823638167425 3 0.65207176361832575
		1 0 1
		3 1 0.06382149429110727 2 0.51837358501878472 3 0.41780492069010799
		3 1 0.063742749231988763 2 0.51843527786012589 3 0.41782197290788542
		3 1 0.063664064917917193 2 0.51849690063238552 3 0.41783903444969728
		3 1 0.063592964442981209 2 0.51855234921703763 3 0.41785468633998113
		3 1 0.063536620036485011 2 0.51859654582012749 3 0.4178668341433876
		3 1 0.063361197516601797 2 0.51748821635633147 3 0.41915058612706674
		3 1 0.063234116107788715 2 0.51656186287047945 3 0.42020402102173188
		3 1 0.063361062641043367 2 0.5174882438149413 3 0.41915069354401541
		3 1 0.063536373701346363 2 0.51859658625159066 3 0.41786704004706299
		3 1 0.063592620273988765 2 0.51855240936991864 3 0.41785497035609254
		3 1 0.063663661030389104 2 0.51849697405562467 3 0.41783936491398616
		3 1 0.063742315432271185 2 0.51843535678177544 3 0.41782232778595346
		3 1 0.063820981806668314 2 0.51837378965941738 3 0.41780522853391433
		3 1 0.063892113040575044 2 0.51831840894185843 3 0.41778947801756644
		3 1 0.063100283388284772 2 0.52466374635696411 3 0.41223597025475112
		3 1 0.063984713259500017 2 0.51824605903268839 3 0.41776922770781155
		3 1 0.06399727003138693 2 0.51823632502024108 3 0.41776640494837197
		3 1 0.063984870622415743 2 0.51824599777433245 3 0.41776913160325185
		3 1 0.063948765898882445 2 0.51827421796483952 3 0.41777701613627805
		3 1 0.06389252621142584 2 0.51831826120402447 3 0.41778921258454976
		3 1 0.14027506104019682 2 0.58475737976734865 3 0.27496755919245447
		3 1 0.14016311362679551 2 0.58490253193327402 3 0.27493435443993058
		3 1 0.14005118970730726 2 0.58504762313257164 3 0.27490118716012113
		3 1 0.13995004327342267 2 0.58517859759145108 3 0.27487135913512623
		3 1 0.139869693887826 2 0.58528262428354161 3 0.27484768182863245
		3 1 0.13981807246930469 2 0.58534952630747084 3 0.27483240122322444
		3 1 0.13980019640159957 2 0.58537258412089355 3 0.27482721947750688
		3 1 0.13981785746623482 2 0.58534966512530096 3 0.27483247740846428
		3 1 0.13986932572059976 2 0.5852828203374516 3 0.27484785394194861
		3 1 0.13994952915352421 2 0.58517887802102952 3 0.27487159282544621
		3 1 0.14005058037547105 2 0.58504796048025043 3 0.27490145914427855
		3 1 0.14016246548704694 2 0.58490289162006615 3 0.27493464289288705
		3 1 0.1402743105611291 2 0.58475798920888522 3 0.27496770022998568
		3 1 0.14037531232924702 2 0.58462741566345111 3 0.27499727200730184
		3 1 0.14045551604926562 2 0.5845237974017593 3 0.2750206865489751
		3 1 0.140506991734454 2 0.58445728168612221 3 0.27503572657942371
		3 1 0.14052483746019723 2 0.5844343305253723 3 0.27504083201443036
		3 1 0.14050720642307993 2 0.58445714373767688 3 0.27503564983924328
		3 1 0.14045593582679172 2 0.58452349683644511 3 0.27502056733676322
		3 1 0.14037608226041856 2 0.58462696832014549 3 0.27499694941943598
		3 1 0.27310741137897343 2 0.58532131555714173 3 0.14157127306388484
		3 1 0.27299896019498882 2 0.58547971205135596 3 0.14152132775365528
		3 1 0.27289066134657886 2 0.58563801694258921 3 0.14147132171083188
		3 1 0.27279267503068355 2 0.5857810381274503 3 0.14142628684186623
		3 1 0.2727149644056947 2 0.585894654003008 3 0.14139038159129735
		3 1 0.27266472764370331 2 0.58596773238280597 3 0.14136753997349072
		3 1 0.27264756203369322 2 0.58599292944301062 3 0.14135950852329612
		3 1 0.27266449713098284 2 0.58596792369753126 3 0.1413675791714859
		3 1 0.27271456389815896 2 0.58589494639734596 3 0.14139048970449514
		3 1 0.27279211671038661 2 0.58578145225578537 3 0.14142643103382804
		3 1 0.2728899963947406 2 0.58563851596595984 3 0.14147148763929943
		3 1 0.27299825706161329 2 0.5854802404885554 3 0.14152150244983133
		3 1 0.27310662959697696 2 0.58532208017439735 3 0.14157129022862572
		3 1 0.27320430252321448 2 0.58517952399205331 3 0.14161617348473232
		3 1 0.2732818281952798 2 0.5850663962232886 3 0.14165177558143163
		3 1 0.27333155344841753 2 0.58499380646228116 3 0.14167464008930122
		3 1 0.27334881199589794 2 0.58496871696977371 3 0.14168247103432838
		3 1 0.27333178302152389 2 0.58499361647788972 3 0.14167460050058647
		3 1 0.27328227090012358 2 0.58506600268713427 3 0.14165172641274221
		3 1 0.2732049387775643 2 0.58517893207329552 3 0.14161612914914024
		3 1 0.41636158177001503 2 0.5192195535418126 3 0.064418864688172331
		3 1 0.4163187411039091 2 0.51930201085672356 3 0.064379248039367329
		3 1 0.41627564303278847 2 0.51938457148490436 3 0.064339785482307135
		3 1 0.41623670006169922 2 0.51945912973029607 3 0.064304170208004774
		3 1 0.41620569704338578 2 0.51951839250969323 3 0.064275910446921061
		3 1 0.41618594685671245 2 0.51955639589118841 3 0.064257657252099143
		3 1 0.4161790090278607 2 0.51956955492510182 3 0.064251436047037508
		3 1 0.41618581038863744 2 0.51955651580488083 3 0.064257673806481702
		3 1 0.41620544778341856 2 0.51951858481826818 3 0.06427596739831333
		3 1 0.41623635465424552 2 0.51945940050914552 3 0.064304244836608987
		3 1 0.41627523119092064 2 0.51938489934116894 3 0.064339869467910482
		3 1 0.4163183084391846 2 0.51930235513691325 3 0.064379336423902145
		3 1 0.4163611558036297 2 0.51922000261556578 3 0.064418841580804478
		3 1 0.41639988607274925 2 0.51914570005389404 3 0.06445441387335675
		3 1 0.41643044956315434 2 0.51908684098987168 3 0.064482709446973985
		3 1 0.41645030448692966 2 0.51904891100976169 3 0.064500784503308692
		3 1 0.41645700450939616 2 0.51903592743279481 3 0.064507068057809078
		3 1 0.41645044017256405 2 0.51904879204489263 3 0.064500767782543322
		3 1 0.41643069750864709 2 0.51908659048535566 3 0.064482712005997311
		3 1 0.41640024190303421 2 0.51914534655804434 3 0.064454411538921397
		3 1 0.48388825775947791 2 0.48389246633876687 3 0.032219275901755197
		3 1 0.48390108480999416 2 0.48390566445988498 3 0.032193250730120901
		3 1 0.48391385936154724 2 0.48391882848500167 3 0.032167312153451123
		3 1 0.48392537653965895 2 0.48393071081354933 3 0.032143912646791707
		3 1 0.48393452671382109 2 0.48394015862691503 3 0.032125314659263826
		3 1 0.48394039404648798 2 0.48394622255236786 3 0.032113383401144134
		3 1 0.48394240393241478 2 0.4839483020031225 3 0.032109294064462834
		3 1 0.48394038940997064 2 0.48394621965923196 3 0.032113390930797382
		3 1 0.48393450960035189 2 0.48394014471594998 3 0.032125345683698112
		3 1 0.4839253543221903 2 0.48393069290541335 3 0.032143952772396331
		3 1 0.48391383477308336 2 0.4839188088453743 3 0.032167356381542375
		3 1 0.48390105904033603 2 0.48390564368397704 3 0.032193297275686948
		3 1 0.48388826714413291 2 0.48389248018658088 3 0.032219252669286255
		3 1 0.4838767313297439 2 0.48388062121746145 3 0.032242647452794572
		3 1 0.48386756637703099 2 0.48387120876900203 3 0.032261224853967062
		3 1 0.4838616797441605 2 0.48386516776941468 3 0.032273152486424865
		3 1 0.48385965499380729 2 0.48386308975754366 3 0.032277255248648905
		3 1 0.4838616842216944 2 0.48386517090166037 3 0.032273144876645253
		3 1 0.48386756479293846 2 0.48387120474367706 3 0.032261230463384451
		3 1 0.48387673034613515 2 0.48388061660184339 3 0.032242653052021432
		3 0 0.063798711177442652 1 0.51839496538649665 2 0.41780632343606072
		3 0 0.06374182281472407 1 0.51843008879843333 2 0.4178280883868426
		3 0 0.063685023887744108 1 0.51846508191982299 2 0.4178498941924329
		3 0 0.063633862344763675 1 0.51849675347043755 2 0.4178693841847988
		3 0 0.063593189304161482 1 0.5185217882805494 2 0.41788502241528913
		3 0 0.063567091567379094 1 0.51853787363582371 2 0.41789503479679729
		3 0 0.06355808711357365 1 0.51854334866195106 2 0.41789856422447519
		3 0 0.063567036573368513 1 0.51853780204065114 2 0.41789516138598037
		3 0 0.063593121900587912 1 0.51852161585031165 2 0.41788526224910044
		3 0 0.063633752733611493 1 0.51849652886667841 2 0.41786971839971004
		3 0 0.063684889287093427 1 0.51846482193090959 2 0.41785028878199698
		3 0 0.063741678933461637 1 0.51842981604000549 2 0.4178285050265329
		3 0 0.063798474417659123 1 0.51839483573759781 2 0.41780668984474312
		3 0 0.06384964389739739 1 0.51836319447467027 2 0.41778716162793239
		3 0 0.063890352114904639 1 0.51833814649392962 2 0.41777150139116581
		3 0 0.063916476080130763 1 0.51832206479094933 2 0.41776145912891993
		3 0 0.063925515348097664 1 0.51831656712647256 2 0.41775791752542984
		3 0 0.063916531245321664 1 0.51832213606753552 2 0.41776133268714288
		3 0 0.063890477462596226 1 0.51833823981378202 2 0.41777128272362168
		3 0 0.063849822527737743 1 0.51836333096903775 2 0.41778684650322456
		3 0 0.14024300263915196 1 0.58480779708845221 2 0.27494920027239589
		3 0 0.14016096801360456 1 0.58489677432162057 2 0.27494225766477487
		3 0 0.14007916572483781 1 0.58498560504278352 2 0.27493522923237868
		3 0 0.14000524405655143 1 0.58506570264924074 2 0.27492905329420775
		3 0 0.13994666178953633 1 0.58512936097221269 2 0.27492397723825102
		3 0 0.13990884455169755 1 0.58517010942142023 2 0.27492104602688228
		3 0 0.13989595723579912 1 0.58518418003505279 2 0.27491986272914803
		3 0 0.13990875262391966 1 0.58517001738670171 2 0.27492122998937868
		3 0 0.13994654062796574 1 0.58512910226744086 2 0.2749243571045934
		3 0 0.14000505187854442 1 0.58506537943043724 2 0.27492956869101837
		3 0 0.14007893464286097 1 0.5849852333249107 2 0.27493583203222843
		3 0 0.14016071733035207 1 0.58489638912826469 2 0.27494289354138324
		3 0 0.14024262996891027 1 0.58480770709253072 2 0.27494966293855916
		3 0 0.14031650999605186 1 0.58472772792009142 2 0.27495576208385669
		3 0 0.14037519002113436 1 0.5846642499767668 2 0.2749605600020989
		3 0 0.14041282966432694 1 0.58462352943132945 2 0.27496364090434372
		3 0 0.14042570270069285 1 0.58460951260034377 2 0.27496478469896329
		3 0 0.14041292178665016 1 0.58462362099572651 2 0.27496345721762344
		3 0 0.14037537659514301 1 0.58466438613907845 2 0.27496023726577856;
	setAttr ".wl[181:360].w"
		3 0 0.14031679543797776 1 0.58472786812809852 2 0.27495533643392372
		3 0 0.27307869457217215 1 0.58537497794701498 2 0.14154632748081292
		3 0 0.27299679950917921 1 0.58547693252396082 2 0.14152626796685994
		3 0 0.27291472464461808 1 0.58557877396190516 2 0.14150650139347679
		3 0 0.27284066574127713 1 0.58567066912886978 2 0.14148866512985314
		3 0 0.27278200526891583 1 0.58574360516866375 2 0.14147438956242042
		3 0 0.27274422928709041 1 0.58579046602330609 2 0.1414653046896035
		3 0 0.2727311556705691 1 0.58580655565273265 2 0.14146228867669838
		3 0 0.2727441068848121 1 0.58579042542674309 2 0.14146546768844487
		3 0 0.27278182363146319 1 0.58574343762649439 2 0.14147473874204242
		3 0 0.27284038988731607 1 0.58567047697521502 2 0.14148913313746894
		3 0 0.27291439547306773 1 0.58557855683213655 2 0.14150704769479577
		3 0 0.27299644451542954 1 0.58547671309686788 2 0.14152684238770255
		3 0 0.27307824332408848 1 0.58537503216573228 2 0.14154672451017922
		3 0 0.27315217749101034 1 0.58528331142781798 2 0.14156451108117157
		3 0 0.27321088721803288 1 0.5852105023976083 2 0.14157861038435879
		3 0 0.27324852778555175 1 0.58516381955672581 2 0.1415876526577225
		3 0 0.27326158892676156 1 0.5851477308098415 2 0.14159068026339697
		3 0 0.27324865030483086 1 0.58516385987000907 2 0.14158748982516015
		3 0 0.27321112615755339 1 0.58521054712666931 2 0.14157832671577733
		3 0 0.27315253298684972 1 0.58528332318402321 2 0.1415641438291271
		3 0 0.41635515556888736 1 0.51924562755885229 2 0.064399216872260356
		3 0 0.41631707023208692 1 0.51930127291905404 2 0.064381656848859131
		3 0 0.41627910361788201 1 0.51935676206768133 2 0.064364134314436716
		3 0 0.41624468322220642 1 0.51940691858993993 2 0.064348398187853595
		3 0 0.41621729817904518 1 0.51944676452819638 2 0.064335937292758466
		3 0 0.41619972670170635 1 0.51947234053107894 2 0.064327932767214782
		3 0 0.41619359815594553 1 0.51948116140057832 2 0.06432524044347615
		3 0 0.41619961043301085 1 0.51947234979044721 2 0.064328039776542029
		3 0 0.41621709283389324 1 0.51944673577691591 2 0.064336171389190844
		3 0 0.41624439033146221 1 0.51940690014143254 2 0.064348709527105252
		3 0 0.41627875788239016 1 0.51935674475799642 2 0.064364497359613498
		3 0 0.41631670182945979 1 0.51930126054946024 2 0.064382037621079941
		3 0 0.41635478686455119 1 0.5192457370443746 2 0.064399476091074173
		3 0 0.41638894322136405 1 0.51919579572255725 2 0.064415261056078782
		3 0 0.41641636154179862 1 0.51915597073736786 2 0.064427667720833526
		3 0 0.41643365992694048 1 0.51913061994306731 2 0.064435720129992199
		3 0 0.41643991978515155 1 0.51912171197695667 2 0.064438368237891841
		3 0 0.41643377609349197 1 0.51913061074757616 2 0.064435613158931856
		3 0 0.41641657227779255 1 0.51915592915048137 2 0.06442749857172618
		3 0 0.41638924466186533 1 0.51919572628924759 2 0.064415029048887171
		3 0 0.48389475702332557 1 0.4838989701444471 2 0.032206272832227371
		3 0 0.4839005529104724 1 0.48390513730752638 2 0.032194309782001176
		3 0 0.4839063338028724 1 0.48391130159970736 2 0.03218236459742034
		3 0 0.48391149563448238 1 0.48391682851668888 2 0.032171675848828796
		3 0 0.48391560880555001 1 0.48392123746300503 2 0.032163153731444995
		3 0 0.48391821764874132 1 0.48392404383168341 2 0.032157738519575346
		3 0 0.48391912131108566 1 0.48392501443215413 2 0.032155864256760223
		3 0 0.48391818416554433 1 0.48392401208607483 2 0.032157803748380842
		3 0 0.48391553498623369 1 0.48392116678043046 2 0.032163298233335878
		3 0 0.4839113979080833 1 0.48391673508708394 2 0.03217186700483271
		3 0 0.48390621997544037 1 0.48391119265679949 2 0.032182587367760127
		3 0 0.48390043383764747 1 0.48390502322034235 2 0.032194542942010282
		3 0 0.48389467768384992 1 0.48389889526223556 2 0.032206427053914521
		3 0 0.48388949168436995 1 0.48389338565046497 2 0.03221712266516509
		3 0 0.48388535321739634 1 0.48388900238510824 2 0.032225644397495465
		3 0 0.48388270961684088 1 0.48388620331161014 2 0.03223108707154896
		3 0 0.48388180116519575 1 0.48388524348641759 2 0.032232955348386681
		3 0 0.48388274291137956 1 0.48388623526132202 2 0.032231021827298464
		3 0 0.48388540645800121 1 0.48388905318568926 2 0.032225540356309548
		3 0 0.48388956229893992 1 0.48389345272697215 2 0.032216984974087974
		3 0 0.54238487582580475 1 0.43711492245798794 2 0.020500201716207381
		3 0 0.54237791467473095 1 0.43712929028466813 2 0.020492795040600819
		3 0 0.54237084133135738 1 0.43714372172973659 2 0.020485436938906091
		3 0 0.5423646152224505 1 0.43715659080802194 2 0.020478793969527571
		3 0 0.5423596753943507 1 0.43716679898559557 2 0.020473525620053751
		3 0 0.54235628678242509 1 0.43717354313657286 2 0.020470170081002066
		3 0 0.54235526181424532 1 0.43717572312719377 2 0.020469015058560976
		3 0 0.54235621810558354 1 0.43717356636099691 2 0.020470215533419558
		3 0 0.54235953524053637 1 0.43716685081991402 2 0.020473613939549561
		3 0 0.54236442879579017 1 0.43715666108502449 2 0.020478910119185255
		3 0 0.54237062452454265 1 0.43714380330844543 2 0.020485572167011891
		3 0 0.54237768549446441 1 0.43712937817178921 2 0.020492936333746416
		3 0 0.54238476013087467 1 0.43711494797527983 2 0.020500291893845498
		3 0 0.54239096595513403 1 0.43710209130311067 2 0.020506942741755328
		3 0 0.54239590107289926 1 0.43709189442170249 2 0.020512204505398219
		3 0 0.54239925569944369 1 0.43708517292721105 2 0.020515571373345226
		3 0 0.54240054806737914 1 0.43708273751491744 2 0.020516714417703509
		3 0 0.54239931672561148 1 0.43708515107302598 2 0.020515532201362548
		3 0 0.54239599746405831 1 0.43709186627503988 2 0.020512136260901852
		3 0 0.54239109321863921 1 0.43710205721680229 2 0.020506849564558532
		3 0 0.66991261761991905 1 0.31490223313870724 2 0.015185149241373787
		3 0 0.66991336580028293 1 0.31490583565828928 2 0.015180798541427894
		3 0 0.66991351211001127 1 0.31490999554805921 2 0.015176492341929632
		3 0 0.66991343108709656 1 0.31491394704108383 2 0.015172621871819718
		3 0 0.66991367231776311 1 0.31491678439476717 2 0.01516954328746963
		3 0 0.6699139536148172 1 0.31491848262086797 2 0.015167563764314823
		3 0 0.66991364235501094 1 0.31491944783968184 2 0.015166909805307199
		3 0 0.66991381965967678 1 0.3149185898207984 2 0.015167590519524763
		3 0 0.66991337550191543 1 0.31491702404185462 2 0.015169600456229915
		3 0 0.66991301707025108 1 0.31491428097838098 2 0.015172701951368019
		3 0 0.66991303135799607 1 0.31491038313206132 2 0.015176585509942605
		3 0 0.66991286110893766 1 0.3149062430793183 2 0.015180895811744087
		3 0 0.66991236199895021 1 0.31490242862603857 2 0.015185209375011268
		3 0 0.66991235597067733 1 0.31489855049078935 2 0.015189093538533288
		3 0 0.66991212894997565 1 0.31489570186852828 2 0.015192169181496105
		3 0 0.66991221205451401 1 0.31489364904280998 2 0.015194138902676032
		3 0 0.66991210666390411 1 0.31489308306328379 2 0.015194810272812059
		3 0 0.66991234583352344 1 0.31489354202546799 2 0.015194112141008674
		3 0 0.66991232666198819 1 0.31489554826391075 2 0.015192125074101056
		3 0 0.66991264608758061 1 0.31489832368975523 2 0.015189030222664201
		3 0 0.79617773859323204 1 0.19246083370860861 2 0.011361427698159263
		3 0 0.79618090625364235 1 0.19245997407088283 2 0.011359119675474842
		3 0 0.79618412151967088 1 0.19245905081831113 2 0.011356827662017904
		3 0 0.7961865667364707 1 0.19245865355799191 2 0.011354779705537435
		3 0 0.79618874272963736 1 0.19245810882794495 2 0.011353148442417684
		3 0 0.79618988194513995 1 0.1924580039191735 2 0.011352114135686434
		3 0 0.7961904297058171 1 0.19245781578912016 2 0.011351754505062829
		3 0 0.79618969874269718 1 0.19245816395920251 2 0.011352137298100409
		3 0 0.79618837957738375 1 0.1924584268902855 2 0.011353193532330779
		3 0 0.79618609334721036 1 0.19245906803968074 2 0.011354838613108919
		3 0 0.79618357211862589 1 0.19245953173134089 2 0.011356896150033224
		3 0 0.79618033128457266 1 0.1924604775671544 2 0.011359191148273037
		3 0 0.79617744529296619 1 0.19246108442442689 2 0.011361470282606959
		3 0 0.79617489776302608 1 0.19246157314432102 2 0.011363529092652922
		3 0 0.79617273991629423 1 0.19246210187491389 2 0.011365158208791913
		3 0 0.79617128612593013 1 0.19246251021514085 2 0.011366203658929031
		3 0 0.79617102564776421 1 0.19246241993024032 2 0.011366554421995531
		3 0 0.79617139280846838 1 0.19246241889017809 2 0.01136618830135354
		3 0 0.79617296974613572 1 0.19246190379702399 2 0.011365126456840249
		3 0 0.79617523447187377 1 0.19246128218357517 2 0.011363483344551169
		3 0 0.88234372079876333 1 0.10938974877017812 2 0.0082665304310585077
		3 0 0.88234354867402376 1 0.10939088738945535 2 0.0082655639365209355
		3 0 0.88234335538677033 1 0.10939203469412288 2 0.0082646099191068505
		3 0 0.88234289033170277 1 0.10939334509625319 2 0.0082637645720441098
		3 0 0.8823426721013925 1 0.10939424023232734 2 0.0082630876662802069
		3 0 0.8823423598589003 1 0.10939497657745205 2 0.0082626635636476944
		3 0 0.88234234573744685 1 0.10939513968802801 2 0.0082625145745251899
		3 0 0.88234221220826814 1 0.10939510716124788 2 0.0082626806304839338
		3 0 0.88234238076291982 1 0.10939449830542139 2 0.0082631209316588634
		3 0 0.88234251915022055 1 0.10939367378501035 2 0.0082638070647691863
		3 0 0.88234291908546658 1 0.10939242104276665 2 0.008264659871766767
		3 0 0.88234308997584943 1 0.10939129356484191 2 0.0082656164593086744
		3 0 0.88234348716894373 1 0.10938995217208448 2 0.0082665606589717704
		3 0 0.88234385774802704 1 0.10938872699272416 2 0.0082674152592488032
		3 0 0.88234409512981427 1 0.10938781511110741 2 0.0082680897590783724
		3 0 0.88234421065133983 1 0.10938726670036165 2 0.0082685226482984153
		3 0 0.88234439701952483 1 0.10938693824097416 2 0.0082686647395010821
		3 0 0.88234433198019069 1 0.10938715959219039 2 0.0082685084276189896
		3 0 0.88234429526625957 1 0.10938763925815598 2 0.0082680654755845039
		3 0 0.88234412841395504 1 0.10938848943603434 2 0.0082673821500106794
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		3 4 0.061331698513383874 5 0.49798443291351385 6 0.44068386857310232
		3 4 0.06256118939830177 5 0.50873144945626314 6 0.42870736114543506
		3 4 0.063588697855789245 5 0.51770455903536317 6 0.41870674310884759
		3 4 0.063599258611126239 5 0.51818805400169543 6 0.41821268738717832
		3 4 0.060874299830543606 5 0.49611720040549806 6 0.44300849976395829
		3 4 0.05521786306412426 5 0.44989963255590287 6 0.49488250437997289
		3 4 0.049605964056466841 5 0.4038662920037423 6 0.54652774393979098
		3 4 0.04748751246588323 5 0.38615831388091415 6 0.56635417365320273
		3 4 0.050316955628159396 5 0.40855268766489256 6 0.54113035670694798
		3 4 0.056288159908298691 5 0.45627642762299908 6 0.48743541246870226
		3 4 0.061873585062799379 5 0.5007189929154644 6 0.43740742202173627
		3 4 0.061854253215019944 5 0.49981271039987896 6 0.43833303638510113
		3 4 0.061080733945968448 5 0.49297566134505083 6 0.44594360470898081
		3 4 0.061574857992850819 5 0.49658462611078125 6 0.44184051589636797
		3 4 0.062322397406132712 5 0.50248080591410071 6 0.43519679667976646
		3 4 0.062773154027929948 5 0.5062476662242722 6 0.43097917974779781
		3 4 0.062583849307354583 5 0.50510562004434567 6 0.43231053064829972
		3 4 0.062600685609860693 5 0.5058422292776954 6 0.43155708511244395
		3 4 0.061881533868297603 5 0.50078089914108459 6 0.43733756699061788;
	setAttr ".wl[361:527].w"
		3 4 0.060988696599687878 5 0.49437683511007224 6 0.44463446829023984
		3 4 0.14050876583302077 5 0.58498512441149919 6 0.27450610975548001
		3 4 0.14033802633524123 5 0.58490109717452288 6 0.27476087649023584
		3 4 0.14020258730055771 5 0.58483435611780166 6 0.27496305658164066
		3 4 0.14011561509359619 5 0.5847915457060715 6 0.27509283920033228
		3 4 0.14007505261741668 5 0.58473287186040002 6 0.27519207552218328
		3 4 0.13838830121692144 5 0.57758317503048628 6 0.28402852375259219
		3 4 0.13574735904619545 5 0.56625174083381924 6 0.29800090011998531
		3 4 0.13471437766531183 5 0.56146527748270392 6 0.30382034485198428
		3 4 0.13633212370703379 5 0.56759939755035771 6 0.29606847874260855
		3 4 0.13927504630346974 5 0.57916376254568258 6 0.28156119115084777
		3 4 0.14088708862749696 5 0.58517244265530155 6 0.27394046871720151
		3 4 0.14105813287771474 5 0.58525628002200947 6 0.2736855871002758
		3 4 0.14119399696684368 5 0.58532268333689474 6 0.27348331969626166
		3 4 0.14128122631983903 5 0.58536528333788151 6 0.27335349034227946
		3 4 0.14131136232457156 5 0.58537985076304011 6 0.27330878691238836
		3 4 0.14128134344855761 5 0.58536505733183808 6 0.27335359921960434
		3 4 0.1411941680855042 5 0.5853222508821998 6 0.27348358103229597
		3 4 0.14105843661706988 5 0.5852556586267712 6 0.27368590475615895
		3 4 0.14088741125682008 5 0.58517169114125189 6 0.27394089760192808
		3 4 0.14069798262199337 5 0.58507856429960514 6 0.27422345307840151
		3 4 0.27353093245841781 5 0.58520835820799133 6 0.141260709333591
		3 4 0.27331752227519107 5 0.58520307188766374 6 0.14147940583714522
		3 4 0.27314815735290798 5 0.58519879194147995 6 0.14165305070561204
		3 4 0.27303940559280293 5 0.58519603283875399 6 0.14176456156844316
		3 4 0.27300187674559934 5 0.5851951924575961 6 0.14180293079680462
		3 4 0.27303926464156597 5 0.58519634262016584 6 0.14176439273826827
		3 4 0.27300401175533451 5 0.58489107246357819 6 0.14210491578108733
		3 4 0.27297743008463626 5 0.58447647132329172 6 0.14254609859207204
		3 4 0.27342397658912837 5 0.5849814677397539 6 0.14159455567111781
		3 4 0.27376707408819145 5 0.58521519745575112 6 0.1410177284560574
		3 4 0.27400368955126908 5 0.58522084754197812 6 0.14077546290675283
		3 4 0.27421715054848722 5 0.58522576759611133 6 0.14055708185540147
		3 4 0.27438661145076088 5 0.58522952859588317 6 0.14038385995335598
		3 4 0.27449537271139357 5 0.585231903854734 6 0.1402727234338724
		3 4 0.27453292161893306 5 0.58523259547976914 6 0.14023448290129778
		3 4 0.27449548402061952 5 0.58523163832578018 6 0.14027287765360025
		3 4 0.27438679898339086 5 0.58522907547503045 6 0.14038412554157878
		3 4 0.27421740793889232 5 0.58522515510388506 6 0.14055743695722261
		3 4 0.27400394158842473 5 0.58522013777707405 6 0.14077592063450131
		3 4 0.27376739322048466 5 0.58521442659069822 6 0.14101818018881698
		3 4 0.41671698498115117 5 0.51898267609196236 6 0.064300338926886483
		3 4 0.41653479605871307 5 0.51902349649386537 6 0.064441707447421656
		3 4 0.41639012914234047 5 0.51905587158431821 6 0.064553999273341281
		3 4 0.41629720811442883 5 0.51907666337742209 6 0.064626128508149153
		3 4 0.41626517449405487 5 0.51908387833985237 6 0.064650947166092737
		3 4 0.4162971958349721 5 0.51907678745230745 6 0.064626016712720377
		3 4 0.41639009477577793 5 0.51905612883436825 6 0.064553776389853837
		3 4 0.41653474267075491 5 0.51902388011265921 6 0.064441377216586007
		3 4 0.41671692416279366 5 0.51898314802496714 6 0.064299927812239241
		3 4 0.41691880916340723 5 0.51893787798430158 6 0.064143312852291204
		3 4 0.41712058480898684 5 0.51889252724958146 6 0.063986887941431675
		3 4 0.41730248928144542 5 0.51885155016284867 6 0.063845960555705863
		3 4 0.41744680651119404 5 0.51881896013460249 6 0.063734233354203515
		3 4 0.41753943634186003 5 0.51879800764248785 6 0.063662556015652086
		3 4 0.41757131731371344 5 0.5187907587592695 6 0.063637923927017045
		3 4 0.41753940691721164 5 0.51879791173670275 6 0.063662681346085687
		3 4 0.41744678352842413 5 0.51881877697581469 6 0.0637344394957612
		3 4 0.41730251735552643 5 0.51885126474504539 6 0.063846217899428223
		3 4 0.41712057716482426 5 0.51889221253812834 6 0.063987210297047403
		3 4 0.41691884063828194 5 0.51893751983640823 6 0.064143639525309826
		3 4 0.48389761726921621 5 0.48389867091797573 6 0.03220371181280797
		3 4 0.48385408227460674 5 0.48385656779755504 6 0.032289349927838197
		3 4 0.48381927767434924 5 0.48382332837051373 6 0.032357393955137051
		3 4 0.48379681910198941 5 0.48380207423011029 6 0.03240110666790038
		3 4 0.48378907323733727 5 0.48379477945416732 6 0.032416147308495367
		3 4 0.48379685476329087 5 0.48380210975466914 6 0.032401035482039889
		3 4 0.48381935287185496 5 0.48382340352272946 6 0.032357243605415635
		3 4 0.48385418816632397 5 0.48385667354746759 6 0.03228913828620851
		3 4 0.48389775229004689 5 0.48389880555571707 6 0.032203442154236192
		3 4 0.4839456099337634 5 0.48394578272928807 6 0.032108607336948571
		3 4 0.48399304035034385 5 0.48399304035034385 6 0.032013919299312334
		3 4 0.48403567905396433 5 0.48403567905396433 6 0.031928641892071334
		3 4 0.48406945873230384 5 0.48406945873230384 6 0.03186108253539234
		3 4 0.48409112693728301 5 0.48409112693728301 6 0.031817746125434039
		3 4 0.48409857231504066 5 0.48409857231504066 6 0.031802855369918726
		3 4 0.48409108944255713 5 0.48409108944255713 6 0.031817821114885736
		3 4 0.48406940036381774 5 0.48406940036381774 6 0.031861199272364554
		3 4 0.48403559712493893 5 0.48403559712493893 6 0.031928805750122115
		3 4 0.48399294286190503 5 0.48399294286190503 6 0.032014114276189991
		3 4 0.48394550607762105 5 0.48394567895762253 6 0.032108814964756469
		3 3 0.063796033558084608 4 0.51880305090408663 5 0.41740091553782876
		3 3 0.063874175116920354 4 0.51867867723605865 5 0.4174471476470209
		3 3 0.063936160680197543 4 0.51858015157236459 5 0.41748368774743794
		3 3 0.063975931360171198 4 0.51851701636088154 5 0.41750705227894724
		3 3 0.063989581802370923 4 0.51849531810082294 5 0.41751510009680615
		3 3 0.063975804751264936 4 0.51851716361114408 5 0.41750703163759106
		3 3 0.063935939742188502 4 0.51858041568859792 5 0.41748364456921355
		3 3 0.063873846637641465 4 0.51867906966278021 5 0.41744708369957839
		3 3 0.063795629484590818 4 0.51880354138893714 5 0.41740082912647197
		3 3 0.063708879511894176 4 0.51894172300761154 5 0.41734939748049427
		3 3 0.063622099559880296 4 0.51908019942779882 5 0.41729770101232094
		3 3 0.063543773552873356 4 0.51920532423604238 5 0.41725090221108424
		3 3 0.063481611336754284 4 0.51930476796823233 5 0.41721362069501339
		3 3 0.063441672491078266 4 0.51936866902825329 5 0.41718965848066847
		3 3 0.063427960313696019 4 0.51939065632445347 5 0.41718138336185046
		3 3 0.063441767383147926 4 0.51936855918520131 5 0.41718967343165081
		3 3 0.063481790424822881 4 0.51930454844316154 5 0.41721366113201563
		3 3 0.063544023742963904 4 0.51920501623416204 5 0.41725096002287415
		3 3 0.063622396463495087 4 0.51907983367323995 5 0.417297769863265
		3 3 0.063709192464403097 4 0.51894133342964155 5 0.41734947410595541
		3 3 0.14021262949649219 4 0.58527135017790077 5 0.27451602032560707
		3 3 0.14031627168929339 4 0.58502134719465004 5 0.27466238111605662
		3 3 0.14039836970551672 4 0.58482330566101604 5 0.27477832463346724
		3 3 0.14045096118668873 4 0.58469633205435789 5 0.2748527067589534
		3 3 0.14046908410442463 4 0.5846527779276004 5 0.27487813796797494
		3 3 0.14045081485815253 4 0.58469661067933021 5 0.27485257446251715
		3 3 0.14039803922632438 4 0.58482389975021387 5 0.27477806102346186
		3 3 0.14031580812097838 4 0.58502219423545776 5 0.2746619976435638
		3 3 0.1402120737947132 4 0.58527238940925619 5 0.27451553679603058
		3 3 0.14009695823847065 4 0.58555023859995126 5 0.27435280316157801
		3 3 0.13998164690831907 4 0.5858286546899335 5 0.27418969840174739
		3 3 0.13987744875869687 4 0.58608025768425198 5 0.27404229355705106
		3 3 0.13979468320124977 4 0.58628022203461982 5 0.27392509476413041
		3 3 0.13974145922175396 4 0.58640874916727614 5 0.27384979161096989
		3 3 0.13972318736869965 4 0.58645295491527372 5 0.27382385771602669
		3 3 0.13974159949576492 4 0.58640848911593102 5 0.27384991138830406
		3 3 0.13979493032076395 4 0.58627975691972822 5 0.27392531275950777
		3 3 0.13987779324875818 4 0.58607960648564472 5 0.27404260026559707
		3 3 0.13998205513203041 4 0.585827882079341 5 0.27419006278862856
		3 3 0.14009738674306382 4 0.58554941932565074 5 0.27435319393128543
		3 3 0.27293300817860017 4 0.58573414076188179 5 0.14133285105951809
		3 3 0.27301503081717493 4 0.58549421142621816 5 0.14149075775660694
		3 3 0.27307991378562024 4 0.5853041147521536 5 0.14161597146222626
		3 3 0.2731213855501855 4 0.58518228497035751 5 0.14169632947945709
		3 3 0.2731355877291386 4 0.58514049124173739 5 0.14172392102912409
		3 3 0.27312122872882899 4 0.58518260786932952 5 0.14169616340184138
		3 3 0.27307961795264363 4 0.58530472157737712 5 0.14161566046997925
		3 3 0.27301464101094991 4 0.5854950427593224 5 0.14149031622972758
		3 3 0.27293251910215038 4 0.58573518682851944 5 0.14133229406933018
		3 3 0.27284126850924734 4 0.58600178781887036 5 0.1411569436718822
		3 3 0.27274957032760971 4 0.58626894771905491 5 0.14098148195333546
		3 3 0.27266674512633549 4 0.58651031987364022 5 0.1408229350000243
		3 3 0.27260066584300879 4 0.58670219440511762 5 0.14069713975187353
		3 3 0.27255828593275061 4 0.586825467554283 5 0.14061624651296642
		3 3 0.27254370501261166 4 0.58686786219529374 5 0.14058843279209454
		3 3 0.27255841089146515 4 0.58682520453975839 5 0.14061638456877654
		3 3 0.27260088420430645 4 0.58670172656727748 5 0.14069738922841593
		3 3 0.27266704846423984 4 0.5865096660343766 5 0.14082328550138351
		3 3 0.27274992899012257 4 0.58626817246927332 5 0.14098189854060422
		3 3 0.27284164235853264 4 0.58600096896109699 5 0.14115738868037039
		3 3 0.41616768167206714 4 0.51950069801084164 5 0.064331620317091276
		3 3 0.41616320563616793 4 0.51939218498707929 5 0.064444609376752754
		3 3 0.41615960477757996 4 0.51930616158991216 5 0.064534233632507876
		3 3 0.41615728929723245 4 0.51925096337501853 5 0.064591747327749124
		3 3 0.41615645270939067 4 0.51923202357646792 5 0.064611523714141389
		3 3 0.41615725568405593 4 0.51925112040230081 5 0.064591623913643245
		3 3 0.41615963197956102 4 0.5193063954406687 5 0.064533972579770338
		3 3 0.41616320133916096 4 0.51939255885505442 5 0.064444239805784634
		3 3 0.41616758902296391 4 0.51950119916838178 5 0.064331211808654323
		3 3 0.41617225216933446 4 0.51962180638690014 5 0.06420594144376543
		3 3 0.41617683508164516 4 0.51974254178852519 5 0.064080623129829567
		3 3 0.41618088725305163 4 0.51985155842337427 5 0.063967554323574052
		3 3 0.41618387987545297 4 0.51993823769981096 5 0.063877882424736118
		3 3 0.41618585774216676 4 0.51999386902627254 5 0.063820273231560767
		3 3 0.41618644710796282 4 0.52001305532512454 5 0.063800497566912626
		3 3 0.41618579969103436 4 0.51999379790260913 5 0.063820402406356391
		3 3 0.41618392131819526 4 0.5199380140245663 5 0.063878064657238484
		3 3 0.41618094347440454 4 0.51985124634983526 5 0.063967810175760212
		3 3 0.41617690074241126 4 0.5197421719100227 5 0.064080927347565916
		3 3 0.41617231700816926 4 0.5196214172351743 5 0.064206265756656458
		3 3 0.48390620478838303 4 0.48391520261659804 5 0.032178592595018901
		3 3 0.48387023792226264 4 0.4838796866630431 5 0.032250075414694324
		3 3 0.48384167918339016 4 0.48385149327770199 5 0.032306827538907769
		3 3 0.48382334847929631 4 0.48383340007304426 5 0.032343251447659434
		3 3 0.48381704368418371 4 0.4838271780453865 5 0.03235577827042984
		2 3 0.48382338830137961 4 0.48383344001512391;
	setAttr ".wl[527:643].w"
		1 5 0.032343171683496603
		3 3 0.48384175382150779 4 0.48385156815466257 5 0.032306678023829687
		3 3 0.48387034191310219 4 0.48387979072840032 5 0.032249867358497518
		3 3 0.48390633552687795 4 0.48391533341866216 5 0.032178331054459879
		3 3 0.48394620590437343 4 0.48395471540481688 5 0.032099078690809794
		3 3 0.48398604981651727 4 0.48399408377208203 5 0.032019866411400678
		3 3 0.48402196493731608 4 0.48402958141065056 5 0.031948453652033415
		3 3 0.48405044741557607 4 0.4840577398351375 5 0.031891812749286402
		3 3 0.48406872919227756 4 0.48407581637555003 5 0.031855454432172421
		3 3 0.48407501255611102 4 0.48408202981994158 5 0.031842957623947482
		3 3 0.48406869677917502 4 0.48407578392745881 5 0.031855519293366059
		3 3 0.48405038921069898 4 0.48405768161990026 5 0.03189192916940084
		3 3 0.48402188326120255 4 0.484029499742825 5 0.031948616995972318
		3 3 0.48398595268204497 4 0.48399398665778515 5 0.032020060660169936
		3 3 0.48394610249836795 4 0.4839546120897415 5 0.032099285411890575
		3 2 0.063443625222787708 3 0.51827057488542538 4 0.41828579989178688
		3 2 0.063540553532879268 3 0.51812440878324439 4 0.41833503768387637
		3 2 0.063617435164388045 3 0.51800862412454896 4 0.41837394071106299
		3 2 0.063666731620443964 3 0.51793438450521645 4 0.41839888387433966
		3 2 0.063683672506138253 3 0.5179088826402799 4 0.41840744485358178
		3 2 0.063666622082942839 3 0.51793451502785026 4 0.41839886288920691
		3 2 0.063617192751188031 3 0.51800889616104728 4 0.41837391108776473
		3 2 0.063540225616503201 3 0.5181247920951384 4 0.41833498228835841
		3 2 0.063443214026937256 3 0.51827105881856805 4 0.41828572715449469
		3 2 0.063335610892416475 3 0.51843350805002453 4 0.41823088105755901
		3 2 0.063228009418450207 3 0.51859642897681035 4 0.41817556160473945
		3 2 0.063130852289313769 3 0.51874365684834101 4 0.41812549086234529
		3 2 0.063053734103004119 3 0.51886070518120164 4 0.41808556071579428
		3 2 0.063004147876703095 3 0.51893589958522279 4 0.41805995253807421
		3 2 0.062987124733486222 3 0.51896179823816968 4 0.4180510770283441
		3 2 0.063004251497938132 3 0.51893577921703127 4 0.41805996928503059
		3 2 0.063053878569382826 3 0.51886044823874922 4 0.4180856731918679
		3 2 0.063131108888625553 3 0.51874335309920405 4 0.41812553801217045
		3 2 0.063228277857100862 3 0.51859602404971783 4 0.41817569809318134
		3 2 0.063335931720451905 3 0.51843312404043351 4 0.41823094423911455
		3 2 0.13944300430037165 3 0.58487610612325347 4 0.27568088957637488
		3 2 0.13957261858747239 3 0.58457801210136762 4 0.27584936931116011
		3 2 0.1396752766720942 3 0.58434195046337223 4 0.27598277286453354
		3 2 0.13974104415726096 3 0.58419063370337287 4 0.27606832213936616
		3 2 0.13976363775665604 3 0.58413865486703431 4 0.27609770737630968
		3 2 0.13974086473485733 3 0.58419094929843662 4 0.27606818596670607
		3 2 0.13967496473278404 3 0.58434251132160198 4 0.27598252394561407
		3 2 0.1395721447795874 3 0.58457885713587332 4 0.27584899808453933
		3 2 0.13944243643235679 3 0.58487714327835072 4 0.27568042028929257
		3 2 0.13929844332632746 3 0.58520854101367825 4 0.27549301565999429
		3 2 0.13915417027419907 3 0.58554075633236236 4 0.27530507339343863
		3 2 0.13902376843025821 3 0.58584111765700042 4 0.27513511391274137
		3 2 0.13892015656237264 3 0.58607992167613043 4 0.27499992176149685
		3 2 0.13885360686983975 3 0.58623346994906167 4 0.27491292318109856
		3 2 0.1388307126629558 3 0.58628630387703373 4 0.27488298346001044
		3 2 0.13885375131410888 3 0.58623320989299599 4 0.27491303879289503
		3 2 0.13892041159954943 3 0.58607945659204819 4 0.27500013180840244
		3 2 0.13902412374977238 3 0.5858404667105418 4 0.2751354095396859
		3 2 0.13915459112425596 3 0.5855399843243505 4 0.27530542455139345
		3 2 0.13929888499388435 3 0.58520772272051835 4 0.27549339228559727
		3 2 0.21564419567584991 3 0.63122378646409694 4 0.15313201786005315
		3 2 0.20744547247886658 3 0.6375988315908977 4 0.15495569593023573
		3 2 0.18572038412094116 3 0.65489470481800427 4 0.1593849110610546
		3 2 0.20073787868022919 3 0.64270244954034583 4 0.15655967177942495
		3 2 0.2075212299823761 3 0.63720884783125875 4 0.15526992218636509
		3 2 0.2293965220451355 3 0.61965765326245992 4 0.15094582469240461
		3 2 0.23419846594333649 3 0.61590597696732075 4 0.14989555708934274
		3 2 0.27191974628606658 3 0.58573070911341552 4 0.14234954460051799
		3 2 0.27181425326172359 3 0.58602061601256494 4 0.14216513072571149
		3 2 0.27169702338906493 3 0.58634261723111569 4 0.14196035937981946
		3 2 0.2715790986543683 3 0.5866654442583098 4 0.14175545708732176
		3 2 0.27147236916569661 3 0.58695728473604791 4 0.14157034609825545
		3 2 0.27138742580944164 3 0.5871892837531788 4 0.14142329043737956
		3 2 0.27133282260721941 3 0.58733841254658148 4 0.14132876484619913
		3 2 0.27131402344720329 3 0.58738973016875107 4 0.14129624638404573
		3 2 0.27133295320854195 3 0.58733814666954198 4 0.14132890012191596
		3 2 0.27138765475765625 3 0.58718881067764672 4 0.14142353456469708
		3 2 0.2714726869718192 3 0.58695662385281244 4 0.14157068917536839
		3 2 0.27157947414782252 3 0.58666466101150827 4 0.14175586484066921
		3 2 0.23574903607368469 3 0.6152831082621093 4 0.14896785566420606
		3 2 0.1586507260799408 3 0.81509326203111421 4 0.026256011888944952
		3 2 0.12583117187023163 3 0.8666540447033042 4 0.0075147834264641805
		3 2 0.11218077689409256 3 0.87885915214401933 4 0.0089600709618881148
		4 1 0.020708855995791316 2 0.11773620545864105 3 0.83063161782705408 
		4 0.030923320718513513
		3 2 0.15157702565193176 3 0.82239179504081528 4 0.026031179307252988
		3 2 0.19110643863677979 3 0.77008772356854771 4 0.038805837794672525
		3 2 0.20229141414165497 3 0.75890572246324417 4 0.03880286339510082
		3 2 0.23441873579167435 3 0.72896665334701538 4 0.036614610861310279
		3 2 0.23435917341068582 3 0.72911030054092407 4 0.036530526048390098
		3 2 0.24957324154105709 3 0.7116129994392395 4 0.038813759019703409
		3 2 0.25358793139457703 3 0.69223244251118665 4 0.054179626094236343
		3 2 0.28722211718559265 3 0.63436162657351247 4 0.078416256240894863
		3 2 0.38727205991744995 3 0.5441351174721244 4 0.068592822610425624
		3 2 0.4123084545135498 3 0.52323556954447314 4 0.064455975941977064
		3 2 0.4128604531288147 3 0.52276748766671732 4 0.064372059204467966
		3 2 0.41142255067825317 3 0.52402420688667295 4 0.064553242435073876
		3 2 0.40760049223899841 3 0.52727897175698113 4 0.065120536004020457
		3 2 0.40089255571365356 3 0.5333901641870501 4 0.065717280099296366
		3 2 0.31461289525032043 3 0.61149876759936517 4 0.073888337150314343
		3 2 0.24031475186347961 3 0.71557967628037877 4 0.044105571856141577
		2 2 0.033361863344907761 3 0.96663813665509224
		2 2 0.010433238931000233 3 0.98956676106899977
		2 2 0.012119916267693043 3 0.98788008373230696
		2 2 0.010555184446275234 3 0.98944481555372477
		2 2 0.032753974199295044 3 0.96724602580070496
		2 2 0.048030704259872437 3 0.95196929574012756
		2 2 0.098591156303882599 3 0.9014088436961174
		2 2 0.088659323751926422 3 0.91134067624807358
		2 2 0.12916480004787445 3 0.87083519995212555
		2 2 0.082203075289726257 3 0.91779692471027374
		2 2 0.11950071901082993 3 0.88049928098917007
		3 1 0.010740178796860988 2 0.11735419633665341 3 0.8719056248664856
		3 1 0.052351840666609875 2 0.52019194558414994 3 0.4274562137492402
		3 1 0.056884918256204953 2 0.53688539343040631 3 0.40622968831338863
		3 1 0.058501469939173004 2 0.54345744102197102 3 0.39804108903885593
		3 1 0.05688505638659868 2 0.53688535380758251 3 0.40622958980581875
		3 1 0.052352072881550825 2 0.52019191398894105 3 0.42745601312950804
		3 1 0.045832292316070777 2 0.50079033940388251 3 0.45337736828004677
		3 1 0.008151161225624164 2 0.20505338907241821 3 0.78679544970195758
		2 2 0.077272169291973114 3 0.92272783070802689
		1 6 1
		2 2 0.16144214570522308 3 0.83855785429477692;
	setAttr -s 7 ".pm";
	setAttr ".pm[0]" -type "matrix" 0 1 0 0 -0.98058045490430079 0 -0.19611723906805054 0
		 -0.19611723906805054 0 0.98058045490430079 0 9.8058045491939776 -3.0000000000040004 1.9611714014052168 1;
	setAttr ".pm[1]" -type "matrix" 0 1 0 0 -0.98058068277426147 0 -0.19611609972147492 0
		 -0.19611609972147492 0 0.98058068277426147 0 8.1074740069046367 -3.0000000764719448 1.9611616983700555 1;
	setAttr ".pm[2]" -type "matrix" 0 1 0 0 -0.98058068277426147 0 -0.19611609972147492 0
		 -0.19611609972147492 0 0.98058068277426147 0 6.4091402505526158 -2.999999068195168 1.9611602531611319 1;
	setAttr ".pm[3]" -type "matrix" 0 1 0 0 -0.98058067703187912 0 0.19611612843338963 0
		 0.19611612843338963 0 0.98058067703187912 0 5.1027092221317529 -2.9999980616573629 -0.0015407115235756001 1;
	setAttr ".pm[4]" -type "matrix" 0 0.99999022493380962 0 0 -0.98058053757703689 0 0.19611490865138395 0
		 0.19611682570633623 0 0.98057095233737712 0 3.4018079115172393 -2.9999687268296427 -0.0015443830109188922 1;
	setAttr ".pm[5]" -type "matrix" 0 0.99998045005872138 0 0 -0.980580537577037 0 0.19611299163390999 0
		 0.19611682570633626 0 0.98056136728510845 0 1.7009285594649539 -2.9999394215807524 -0.001544404194848458 1;
	setAttr ".pm[6]" -type "matrix" 1.6542641966374391e-24 0.99997067451476851 -6.7085046005930795e-08 0
		 -0.98058053757703723 1.3156506275046685e-08 0.19611107448526033 0 0.19611682570633629 6.5782290475875901e-08 0.98055178157696388 0
		 0.0027764452887178636 -2.9999101833796833 0.0013957712646779504 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 7 ".ma";
	setAttr -s 7 ".dpf[0:6]"  4 4 4 4 4 4 4;
	setAttr -s 7 ".lw";
	setAttr -s 7 ".lw";
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 7 ".ifcl";
	setAttr -s 7 ".ifcl";
createNode dagPose -n "bindPose4";
	rename -uid "350D0B94-4180-40C2-44C6-F59DC99E79D5";
	setAttr -s 8 ".wm";
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 10 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -6.9388816004010794e-17 1.1257921130742352e-06
		 2.1857511891442147e-16 0 3.0000000000039999 -1.9386589933390042e-07 9.7009362032426071e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.069676617866181997 0.069676617866181997 -0.70366552347172029 0.70366552347172029 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -6.5245321263555629e-13 -1.1619102109604977e-06
		 -5.4337241294198744e-19 0 1.6983328209886164 7.6467944420954836e-08 2.8287965125883829e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 3.1777650611637618e-16 5.7017276975866927e-10
		 1.1653890451875725e-12 0 1.69833375635202 -1.0082767767372047e-06 1.4452089234229248e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -1.9861338636007653e-14 4.2955673518196866e-08
		 -5.152891058150015e-24 0 1.6983544568329059 -1.0065378042156681e-06 2.1807179642063801e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.19611613513818399 0 0.98058067569092022 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1.0000097751617432 1.0000097751617432 -1.1037732787042721e-23
		 -7.1108172181072386e-07 1.1669063143116946e-22 0 1.7009013095171799 -9.6481911349144411e-09
		 1.2676205095592079e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1.0000195503234863 1.0000195503234863 -3.4171876387803149e-25
		 -2.0569062147985735e-08 -6.4571231085441594e-23 0 1.7008793520522858 1.935752225179499e-08
		 3.6280582894074667e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99999022493380973
		 0.99999022493380973 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 0.99999999999999978 1.0000293263452384 1.0000293263452387 6.7087013365150389e-08
		 0 0 0 1.6981521141762359 8.8506426187962006e-08 -0.002939987847367884 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99998045005872138 0.99998045005872138 yes;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr -s 8 ".g[0:7]" yes no no no no no no no;
	setAttr ".bp" yes;
createNode distanceBetween -n "distanceBetween6";
	rename -uid "ED6A0A6E-4FF4-2BF0-9740-C380BA330A31";
createNode multiplyDivide -n "multiplyDivide20";
	rename -uid "F680C22E-4F9E-DCF2-CD3F-FC85DC87E053";
	setAttr ".i2" -type "float3" 10.223 1 1 ;
createNode condition -n "condition8";
	rename -uid "D0C3D4B0-4FB0-3EC6-AA6F-4ABF7792C895";
	setAttr ".op" 3;
createNode multiplyDivide -n "multiplyDivide21";
	rename -uid "AFDE8E45-43CF-24D2-53BA-5BA754692D64";
	setAttr ".op" 2;
createNode multiplyDivide -n "multiplyDivide22";
	rename -uid "59309D60-4F89-2F25-9330-D5BEA9F6AB63";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "multiplyDivide23";
	rename -uid "22A867C3-4836-8E91-69E9-16A2046D2098";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode distanceBetween -n "distanceBetween7";
	rename -uid "8B727D31-49FB-0397-7C13-DE86CBD3BB45";
createNode condition -n "condition9";
	rename -uid "F7B7050C-44C2-0FA3-F1AB-9FB1B77A248C";
	setAttr ".op" 3;
createNode multiplyDivide -n "multiplyDivide25";
	rename -uid "8DC3F677-496B-9BF8-FBDB-45B5072D18B6";
	setAttr ".i2" -type "float3" 5.5139999 1 1 ;
createNode multiplyDivide -n "multiplyDivide26";
	rename -uid "28C485B1-4054-6B52-D39F-039E3831558C";
	setAttr ".op" 2;
createNode multiplyDivide -n "multiplyDivide27";
	rename -uid "A311993D-4345-5EB6-3F27-37A44A613404";
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode blendColors -n "blendColors3";
	rename -uid "ED90FBB4-4F2E-D345-2C75-98827F209FC5";
	setAttr ".b" 0.66666001081466675;
createNode blendColors -n "blendColors4";
	rename -uid "06331EE4-4C2D-43F6-48B9-D59E7BFFAB8E";
	setAttr ".b" 0.33333000540733337;
createNode blendColors -n "blendColors5";
	rename -uid "DDB79C6B-4672-A496-4782-8B98312A73DF";
	setAttr ".b" 0.66666001081466675;
createNode blendColors -n "blendColors6";
	rename -uid "C797EA64-4D15-E37E-B705-9BA6B740A933";
	setAttr ".b" 0.33333000540733337;
createNode plusMinusAverage -n "plusMinusAverage1";
	rename -uid "FD757BFA-4C81-5598-B407-37B2C0571AD2";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "plusMinusAverage2";
	rename -uid "D12BC494-4DBB-5466-5BD3-06985272B5CA";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "plusMinusAverage3";
	rename -uid "5A7C04B9-4677-3CDD-FE51-15882D0A0F56";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "plusMinusAverage4";
	rename -uid "B4F6979F-446C-C2A8-D6CB-3396E196FC5E";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "plusMinusAverage5";
	rename -uid "CDB1E989-47A0-1211-1A0C-88B1BA91914A";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "plusMinusAverage6";
	rename -uid "100F3D36-458E-67F2-9DBE-8385328A763A";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "plusMinusAverage7";
	rename -uid "61585BFD-4C32-6263-671B-908CDFE9D69F";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "plusMinusAverage8";
	rename -uid "6D25D84E-41A0-6614-2F76-3DA5F749AF52";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode objectSet -n "jnt";
	rename -uid "19BBC53A-4DC7-EE63-BC97-0484DBE0AD92";
	setAttr ".ihi" 0;
	setAttr -s 33 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode nodeGraphEditorBookmarks -n "MayaNodeEditorBookmarks";
	rename -uid "869D7C94-4339-FE55-422E-53B1D0F989DD";
createNode nodeGraphEditorBookmarkInfo -n "nodeView1";
	rename -uid "01AD7894-466B-0235-AA9E-5B9B3FFDBE42";
	setAttr ".vl" -type "double2" -831.0679588747422 -557.6439337476744 ;
	setAttr ".vh" -type "double2" 926.59739880275822 524.90283348090111 ;
createNode multiplyDivide -n "multiplyDivide28";
	rename -uid "17FCDCC4-47CE-3701-C8EC-3188FFC4F3DD";
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode condition -n "condition10";
	rename -uid "609AB534-4533-1398-9DC9-EC839DB2732F";
	setAttr ".st" 1;
createNode condition -n "condition11";
	rename -uid "75C7C847-437B-3182-1BDA-0F9A6B2349CF";
	setAttr ".st" 1;
createNode condition -n "condition12";
	rename -uid "0A31D4A7-47FB-B3E9-010A-2AA921B674B3";
	setAttr ".st" 1;
createNode condition -n "condition13";
	rename -uid "25D8B6A0-49DF-EFF6-6A85-AD8E508F1852";
	setAttr ".st" 1;
createNode condition -n "condition14";
	rename -uid "710C873E-4A63-60F4-DFF2-FCBB01B38CA9";
	setAttr ".st" 1;
createNode condition -n "condition15";
	rename -uid "0D41BD71-45A5-4299-24E3-B0969FB2E27D";
	setAttr ".st" 1;
createNode condition -n "condition16";
	rename -uid "77AB045E-4907-FF03-8382-B9AE81926AC3";
	setAttr ".st" 1;
createNode condition -n "condition17";
	rename -uid "D2F04696-4DD5-9651-0EBB-3FB2CECF35A7";
	setAttr ".st" 1;
createNode blendColors -n "blendColors8";
	rename -uid "16E35B43-4E88-9AFD-EAE7-BFA2385E9716";
createNode blendColors -n "blendColors9";
	rename -uid "9C188866-4367-7388-213B-CDB41B133B45";
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "blendColors10";
	rename -uid "0E6C07A6-4108-5777-91BD-1087BFDAC8E1";
createNode blendColors -n "blendColors11";
	rename -uid "95284A7D-489A-A3DE-26AD-3CA437355CD6";
createNode condition -n "condition19";
	rename -uid "B6CEB697-4EDD-A91F-58FE-7F8FED2FFC92";
	setAttr ".op" 2;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "0CCDBC60-43DB-7508-669B-E3853E984D79";
	setAttr -s 7 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "stretch";
	setAttr ".tgi[0].vl" -type "double2" 949.08421137103039 -1164.2856680211585 ;
	setAttr ".tgi[0].vh" -type "double2" 4584.2489020873991 -179.76189761880863 ;
	setAttr -s 11 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1336.0184326171875;
	setAttr ".tgi[0].ni[0].y" -301.6224365234375;
	setAttr ".tgi[0].ni[0].nvs" 18305;
	setAttr ".tgi[0].ni[1].x" 1652.2242431640625;
	setAttr ".tgi[0].ni[1].y" -451.7291259765625;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" 3199.8388671875;
	setAttr ".tgi[0].ni[2].y" -278.42153930664062;
	setAttr ".tgi[0].ni[2].nvs" 18306;
	setAttr ".tgi[0].ni[3].x" 3525.71435546875;
	setAttr ".tgi[0].ni[3].y" -421.42855834960938;
	setAttr ".tgi[0].ni[3].nvs" 18306;
	setAttr ".tgi[0].ni[4].x" 1918.89990234375;
	setAttr ".tgi[0].ni[4].y" -622.8709716796875;
	setAttr ".tgi[0].ni[4].nvs" 18306;
	setAttr ".tgi[0].ni[5].x" 1364.474609375;
	setAttr ".tgi[0].ni[5].y" -664.32562255859375;
	setAttr ".tgi[0].ni[5].nvs" 18305;
	setAttr ".tgi[0].ni[6].x" 2602.569580078125;
	setAttr ".tgi[0].ni[6].y" -711.4285888671875;
	setAttr ".tgi[0].ni[6].nvs" 18306;
	setAttr ".tgi[0].ni[7].x" 1383.207275390625;
	setAttr ".tgi[0].ni[7].y" -1152.658203125;
	setAttr ".tgi[0].ni[7].nvs" 18321;
	setAttr ".tgi[0].ni[8].x" 2284.558837890625;
	setAttr ".tgi[0].ni[8].y" -552.99493408203125;
	setAttr ".tgi[0].ni[8].nvs" 18306;
	setAttr ".tgi[0].ni[9].x" 2911.428466796875;
	setAttr ".tgi[0].ni[9].y" -731.4285888671875;
	setAttr ".tgi[0].ni[9].nvs" 18306;
	setAttr ".tgi[0].ni[10].x" 1621.039306640625;
	setAttr ".tgi[0].ni[10].y" -846.45379638671875;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[1].tn" -type "string" "switch";
	setAttr ".tgi[1].vl" -type "double2" -6845.2382489802394 -2474.4047788873572 ;
	setAttr ".tgi[1].vh" -type "double2" 6869.0477718436568 1239.8810184191143 ;
	setAttr -s 8 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" -522.73223876953125;
	setAttr ".tgi[1].ni[0].y" -511.02346801757812;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" -412.11163330078125;
	setAttr ".tgi[1].ni[1].y" 451.53375244140625;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" -599.087646484375;
	setAttr ".tgi[1].ni[2].y" -434.74932861328125;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 385.25335693359375;
	setAttr ".tgi[1].ni[3].y" 629.4459228515625;
	setAttr ".tgi[1].ni[3].nvs" 18306;
	setAttr ".tgi[1].ni[4].x" -700.1531982421875;
	setAttr ".tgi[1].ni[4].y" -83.462631225585938;
	setAttr ".tgi[1].ni[4].nvs" 18305;
	setAttr ".tgi[1].ni[5].x" -153.64152526855469;
	setAttr ".tgi[1].ni[5].y" 666.10552978515625;
	setAttr ".tgi[1].ni[5].nvs" 18306;
	setAttr ".tgi[1].ni[6].x" -944.11480712890625;
	setAttr ".tgi[1].ni[6].y" 157.48471069335938;
	setAttr ".tgi[1].ni[6].nvs" 18306;
	setAttr ".tgi[1].ni[7].x" 111.65383148193359;
	setAttr ".tgi[1].ni[7].y" 644.27337646484375;
	setAttr ".tgi[1].ni[7].nvs" 18306;
	setAttr ".tgi[2].tn" -type "string" "armpit";
	setAttr ".tgi[2].vl" -type "double2" -1076.3277960584144 -3323.8093917332053 ;
	setAttr ".tgi[2].vh" -type "double2" 6734.6609045497917 -1208.3332853184827 ;
	setAttr -s 13 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" 1560.1646728515625;
	setAttr ".tgi[2].ni[0].y" -2530.245849609375;
	setAttr ".tgi[2].ni[0].nvs" 18306;
	setAttr ".tgi[2].ni[1].x" 1829.0701904296875;
	setAttr ".tgi[2].ni[1].y" -1996.150390625;
	setAttr ".tgi[2].ni[1].nvs" 18306;
	setAttr ".tgi[2].ni[2].x" 2842.160400390625;
	setAttr ".tgi[2].ni[2].y" -2497.20263671875;
	setAttr ".tgi[2].ni[2].nvs" 18306;
	setAttr ".tgi[2].ni[3].x" 1298.5714111328125;
	setAttr ".tgi[2].ni[3].y" -1761.4285888671875;
	setAttr ".tgi[2].ni[3].nvs" 18306;
	setAttr ".tgi[2].ni[4].x" 2067.7548828125;
	setAttr ".tgi[2].ni[4].y" -1846.728271484375;
	setAttr ".tgi[2].ni[4].nvs" 18306;
	setAttr ".tgi[2].ni[5].x" 2585.6611328125;
	setAttr ".tgi[2].ni[5].y" -2433.015625;
	setAttr ".tgi[2].ni[5].nvs" 18306;
	setAttr ".tgi[2].ni[6].x" 1825.08154296875;
	setAttr ".tgi[2].ni[6].y" -1239.566162109375;
	setAttr ".tgi[2].ni[6].nvs" 18306;
	setAttr ".tgi[2].ni[7].x" 2340.00830078125;
	setAttr ".tgi[2].ni[7].y" -1624.1190185546875;
	setAttr ".tgi[2].ni[7].nvs" 18306;
	setAttr ".tgi[2].ni[8].x" 1553.70263671875;
	setAttr ".tgi[2].ni[8].y" -2731.98779296875;
	setAttr ".tgi[2].ni[8].nvs" 18306;
	setAttr ".tgi[2].ni[9].x" 2278.736328125;
	setAttr ".tgi[2].ni[9].y" -2351.8330078125;
	setAttr ".tgi[2].ni[9].nvs" 18306;
	setAttr ".tgi[2].ni[10].x" 2291.0400390625;
	setAttr ".tgi[2].ni[10].y" -2589.31591796875;
	setAttr ".tgi[2].ni[10].nvs" 18306;
	setAttr ".tgi[2].ni[11].x" 1782.70263671875;
	setAttr ".tgi[2].ni[11].y" -2539.171142578125;
	setAttr ".tgi[2].ni[11].nvs" 18306;
	setAttr ".tgi[2].ni[12].x" 2016.954833984375;
	setAttr ".tgi[2].ni[12].y" -2692.930419921875;
	setAttr ".tgi[2].ni[12].nvs" 18306;
	setAttr ".tgi[3].tn" -type "string" "fk stretch";
	setAttr ".tgi[3].vl" -type "double2" -5024.6334999727032 -32.14285586558487 ;
	setAttr ".tgi[3].vh" -type "double2" 7669.871490098486 3405.9522456120285 ;
	setAttr -s 18 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" 1088.5714111328125;
	setAttr ".tgi[3].ni[0].y" 2012.857177734375;
	setAttr ".tgi[3].ni[0].nvs" 18306;
	setAttr ".tgi[3].ni[1].x" 2624.28564453125;
	setAttr ".tgi[3].ni[1].y" 1950;
	setAttr ".tgi[3].ni[1].nvs" 18306;
	setAttr ".tgi[3].ni[2].x" 1702.857177734375;
	setAttr ".tgi[3].ni[2].y" 1968.5714111328125;
	setAttr ".tgi[3].ni[2].nvs" 18306;
	setAttr ".tgi[3].ni[3].x" 2317.142822265625;
	setAttr ".tgi[3].ni[3].y" 2085.71435546875;
	setAttr ".tgi[3].ni[3].nvs" 18306;
	setAttr ".tgi[3].ni[4].x" 474.28570556640625;
	setAttr ".tgi[3].ni[4].y" 2040;
	setAttr ".tgi[3].ni[4].nvs" 18306;
	setAttr ".tgi[3].ni[5].x" 1014.0840454101562;
	setAttr ".tgi[3].ni[5].y" 1693.6424560546875;
	setAttr ".tgi[3].ni[5].nvs" 1923;
	setAttr ".tgi[3].ni[6].x" 2317.142822265625;
	setAttr ".tgi[3].ni[6].y" 1322.857177734375;
	setAttr ".tgi[3].ni[6].nvs" 18306;
	setAttr ".tgi[3].ni[7].x" 713.30242919921875;
	setAttr ".tgi[3].ni[7].y" 1587.964111328125;
	setAttr ".tgi[3].ni[7].nvs" 18305;
	setAttr ".tgi[3].ni[8].x" 1088.5714111328125;
	setAttr ".tgi[3].ni[8].y" 1417.142822265625;
	setAttr ".tgi[3].ni[8].nvs" 18306;
	setAttr ".tgi[3].ni[9].x" 1702.857177734375;
	setAttr ".tgi[3].ni[9].y" 1368.5714111328125;
	setAttr ".tgi[3].ni[9].nvs" 18306;
	setAttr ".tgi[3].ni[10].x" 2010;
	setAttr ".tgi[3].ni[10].y" 2102.857177734375;
	setAttr ".tgi[3].ni[10].nvs" 18306;
	setAttr ".tgi[3].ni[11].x" 2010;
	setAttr ".tgi[3].ni[11].y" 1322.857177734375;
	setAttr ".tgi[3].ni[11].nvs" 18306;
	setAttr ".tgi[3].ni[12].x" 1088.5714111328125;
	setAttr ".tgi[3].ni[12].y" 1194.2857666015625;
	setAttr ".tgi[3].ni[12].nvs" 1923;
	setAttr ".tgi[3].ni[13].x" 1395.7142333984375;
	setAttr ".tgi[3].ni[13].y" 2030;
	setAttr ".tgi[3].ni[13].nvs" 18306;
	setAttr ".tgi[3].ni[14].x" 750.17584228515625;
	setAttr ".tgi[3].ni[14].y" 1765.9266357421875;
	setAttr ".tgi[3].ni[14].nvs" 18304;
	setAttr ".tgi[3].ni[15].x" 781.4285888671875;
	setAttr ".tgi[3].ni[15].y" 2057.142822265625;
	setAttr ".tgi[3].ni[15].nvs" 18306;
	setAttr ".tgi[3].ni[16].x" 748.73046875;
	setAttr ".tgi[3].ni[16].y" 1167.2216796875;
	setAttr ".tgi[3].ni[16].nvs" 18304;
	setAttr ".tgi[3].ni[17].x" 1395.7142333984375;
	setAttr ".tgi[3].ni[17].y" 1378.5714111328125;
	setAttr ".tgi[3].ni[17].nvs" 18306;
	setAttr ".tgi[4].tn" -type "string" "stretch twist";
	setAttr ".tgi[4].vl" -type "double2" -3534.7068192503302 -139.28570875099729 ;
	setAttr ".tgi[4].vh" -type "double2" 2632.3259027267741 1530.9523201178017 ;
	setAttr -s 23 ".tgi[4].ni";
	setAttr ".tgi[4].ni[0].x" -222.85714721679688;
	setAttr ".tgi[4].ni[0].y" 1041.4285888671875;
	setAttr ".tgi[4].ni[0].nvs" 18306;
	setAttr ".tgi[4].ni[1].x" -841.4285888671875;
	setAttr ".tgi[4].ni[1].y" -540;
	setAttr ".tgi[4].ni[1].nvs" 1923;
	setAttr ".tgi[4].ni[2].x" -841.4285888671875;
	setAttr ".tgi[4].ni[2].y" 974.28570556640625;
	setAttr ".tgi[4].ni[2].nvs" 18306;
	setAttr ".tgi[4].ni[3].x" 100;
	setAttr ".tgi[4].ni[3].y" -1271.4285888671875;
	setAttr ".tgi[4].ni[3].nvs" 18304;
	setAttr ".tgi[4].ni[4].x" -1434.56982421875;
	setAttr ".tgi[4].ni[4].y" 564.70111083984375;
	setAttr ".tgi[4].ni[4].nvs" 18304;
	setAttr ".tgi[4].ni[5].x" -534.28570556640625;
	setAttr ".tgi[4].ni[5].y" 735.71429443359375;
	setAttr ".tgi[4].ni[5].nvs" 18306;
	setAttr ".tgi[4].ni[6].x" 84.285713195800781;
	setAttr ".tgi[4].ni[6].y" -570;
	setAttr ".tgi[4].ni[6].nvs" 18306;
	setAttr ".tgi[4].ni[7].x" -841.4285888671875;
	setAttr ".tgi[4].ni[7].y" 65.714286804199219;
	setAttr ".tgi[4].ni[7].nvs" 18306;
	setAttr ".tgi[4].ni[8].x" 84.285713195800781;
	setAttr ".tgi[4].ni[8].y" 102.85713958740234;
	setAttr ".tgi[4].ni[8].nvs" 18306;
	setAttr ".tgi[4].ni[9].x" -841.4285888671875;
	setAttr ".tgi[4].ni[9].y" 751.4285888671875;
	setAttr ".tgi[4].ni[9].nvs" 18306;
	setAttr ".tgi[4].ni[10].x" 84.285713195800781;
	setAttr ".tgi[4].ni[10].y" 922.85711669921875;
	setAttr ".tgi[4].ni[10].nvs" 18306;
	setAttr ".tgi[4].ni[11].x" -1117.3345947265625;
	setAttr ".tgi[4].ni[11].y" 562.85089111328125;
	setAttr ".tgi[4].ni[11].nvs" 18306;
	setAttr ".tgi[4].ni[12].x" -1148.5714111328125;
	setAttr ".tgi[4].ni[12].y" 295.71429443359375;
	setAttr ".tgi[4].ni[12].nvs" 18305;
	setAttr ".tgi[4].ni[13].x" -1148.5714111328125;
	setAttr ".tgi[4].ni[13].y" 878.5714111328125;
	setAttr ".tgi[4].ni[13].nvs" 18304;
	setAttr ".tgi[4].ni[14].x" -222.85714721679688;
	setAttr ".tgi[4].ni[14].y" -94.285713195800781;
	setAttr ".tgi[4].ni[14].nvs" 18306;
	setAttr ".tgi[4].ni[15].x" -534.28570556640625;
	setAttr ".tgi[4].ni[15].y" 175.71427917480469;
	setAttr ".tgi[4].ni[15].nvs" 18306;
	setAttr ".tgi[4].ni[16].x" -1148.5714111328125;
	setAttr ".tgi[4].ni[16].y" -561.4285888671875;
	setAttr ".tgi[4].ni[16].nvs" 18305;
	setAttr ".tgi[4].ni[17].x" -1435.1490478515625;
	setAttr ".tgi[4].ni[17].y" 427.26785278320312;
	setAttr ".tgi[4].ni[17].nvs" 18304;
	setAttr ".tgi[4].ni[18].x" 84.285713195800781;
	setAttr ".tgi[4].ni[18].y" 1528.5714111328125;
	setAttr ".tgi[4].ni[18].nvs" 18306;
	setAttr ".tgi[4].ni[19].x" -841.4285888671875;
	setAttr ".tgi[4].ni[19].y" 1150;
	setAttr ".tgi[4].ni[19].nvs" 1923;
	setAttr ".tgi[4].ni[20].x" -1148.5714111328125;
	setAttr ".tgi[4].ni[20].y" 1151.4285888671875;
	setAttr ".tgi[4].ni[20].nvs" 18305;
	setAttr ".tgi[4].ni[21].x" -534.28570556640625;
	setAttr ".tgi[4].ni[21].y" 958.5714111328125;
	setAttr ".tgi[4].ni[21].nvs" 18306;
	setAttr ".tgi[4].ni[22].x" -500.13665771484375;
	setAttr ".tgi[4].ni[22].y" -65.452644348144531;
	setAttr ".tgi[4].ni[22].nvs" 18354;
	setAttr ".tgi[5].tn" -type "string" "stretch joint";
	setAttr ".tgi[5].vl" -type "double2" -4176.3276728754863 2107.1427734124959 ;
	setAttr ".tgi[5].vh" -type "double2" 2263.2325107998208 3851.1903231578917 ;
	setAttr -s 63 ".tgi[5].ni";
	setAttr ".tgi[5].ni[0].x" 197.05592346191406;
	setAttr ".tgi[5].ni[0].y" 3002.3623046875;
	setAttr ".tgi[5].ni[0].nvs" 18306;
	setAttr ".tgi[5].ni[1].x" 380.4898681640625;
	setAttr ".tgi[5].ni[1].y" 2317.390380859375;
	setAttr ".tgi[5].ni[1].nvs" 18306;
	setAttr ".tgi[5].ni[2].x" -1266.8192138671875;
	setAttr ".tgi[5].ni[2].y" 3592.446533203125;
	setAttr ".tgi[5].ni[2].nvs" 18306;
	setAttr ".tgi[5].ni[3].x" -61.438720703125;
	setAttr ".tgi[5].ni[3].y" 2241.445068359375;
	setAttr ".tgi[5].ni[3].nvs" 18306;
	setAttr ".tgi[5].ni[4].x" 796.966064453125;
	setAttr ".tgi[5].ni[4].y" 3913.8056640625;
	setAttr ".tgi[5].ni[4].nvs" 18306;
	setAttr ".tgi[5].ni[5].x" -2426.60595703125;
	setAttr ".tgi[5].ni[5].y" 2528.46875;
	setAttr ".tgi[5].ni[5].nvs" 18305;
	setAttr ".tgi[5].ni[6].x" 1082.9708251953125;
	setAttr ".tgi[5].ni[6].y" 1548.7225341796875;
	setAttr ".tgi[5].ni[6].nvs" 18306;
	setAttr ".tgi[5].ni[7].x" -1204.757080078125;
	setAttr ".tgi[5].ni[7].y" 1736.1339111328125;
	setAttr ".tgi[5].ni[7].nvs" 1923;
	setAttr ".tgi[5].ni[8].x" 1430.3590087890625;
	setAttr ".tgi[5].ni[8].y" 3641.955322265625;
	setAttr ".tgi[5].ni[8].nvs" 18305;
	setAttr ".tgi[5].ni[9].x" 539.7706298828125;
	setAttr ".tgi[5].ni[9].y" 4034.05859375;
	setAttr ".tgi[5].ni[9].nvs" 18306;
	setAttr ".tgi[5].ni[10].x" -473.7618408203125;
	setAttr ".tgi[5].ni[10].y" 2821.845458984375;
	setAttr ".tgi[5].ni[10].nvs" 18306;
	setAttr ".tgi[5].ni[11].x" -344.1585693359375;
	setAttr ".tgi[5].ni[11].y" 2278.159423828125;
	setAttr ".tgi[5].ni[11].nvs" 18306;
	setAttr ".tgi[5].ni[12].x" 2276.1181640625;
	setAttr ".tgi[5].ni[12].y" 2771.775146484375;
	setAttr ".tgi[5].ni[12].nvs" 18306;
	setAttr ".tgi[5].ni[13].x" 474.97607421875;
	setAttr ".tgi[5].ni[13].y" 2956.89111328125;
	setAttr ".tgi[5].ni[13].nvs" 18305;
	setAttr ".tgi[5].ni[14].x" -2381.666015625;
	setAttr ".tgi[5].ni[14].y" 2949.885986328125;
	setAttr ".tgi[5].ni[14].nvs" 18305;
	setAttr ".tgi[5].ni[15].x" -1502.541015625;
	setAttr ".tgi[5].ni[15].y" 2642.410888671875;
	setAttr ".tgi[5].ni[15].nvs" 18304;
	setAttr ".tgi[5].ni[16].x" -1730.791259765625;
	setAttr ".tgi[5].ni[16].y" 3036.4560546875;
	setAttr ".tgi[5].ni[16].nvs" 1923;
	setAttr ".tgi[5].ni[17].x" 619.285400390625;
	setAttr ".tgi[5].ni[17].y" 2197.973388671875;
	setAttr ".tgi[5].ni[17].nvs" 1923;
	setAttr ".tgi[5].ni[18].x" 535.7054443359375;
	setAttr ".tgi[5].ni[18].y" 3345.3955078125;
	setAttr ".tgi[5].ni[18].nvs" 18306;
	setAttr ".tgi[5].ni[19].x" -1508.712890625;
	setAttr ".tgi[5].ni[19].y" 2535.557861328125;
	setAttr ".tgi[5].ni[19].nvs" 18304;
	setAttr ".tgi[5].ni[20].x" 1450.294189453125;
	setAttr ".tgi[5].ni[20].y" 1473.92138671875;
	setAttr ".tgi[5].ni[20].nvs" 18305;
	setAttr ".tgi[5].ni[21].x" 796.366455078125;
	setAttr ".tgi[5].ni[21].y" 1634.914306640625;
	setAttr ".tgi[5].ni[21].nvs" 1923;
	setAttr ".tgi[5].ni[22].x" 1070.9437255859375;
	setAttr ".tgi[5].ni[22].y" 1233.4124755859375;
	setAttr ".tgi[5].ni[22].nvs" 18306;
	setAttr ".tgi[5].ni[23].x" 1688.0501708984375;
	setAttr ".tgi[5].ni[23].y" 3158.585693359375;
	setAttr ".tgi[5].ni[23].nvs" 18305;
	setAttr ".tgi[5].ni[24].x" 1048.08740234375;
	setAttr ".tgi[5].ni[24].y" 3412.5068359375;
	setAttr ".tgi[5].ni[24].nvs" 18306;
	setAttr ".tgi[5].ni[25].x" -1805.5423583984375;
	setAttr ".tgi[5].ni[25].y" 3263.800537109375;
	setAttr ".tgi[5].ni[25].nvs" 18304;
	setAttr ".tgi[5].ni[26].x" -2698.177734375;
	setAttr ".tgi[5].ni[26].y" 2566.31494140625;
	setAttr ".tgi[5].ni[26].nvs" 18305;
	setAttr ".tgi[5].ni[27].x" 20.328962326049805;
	setAttr ".tgi[5].ni[27].y" 2692.170166015625;
	setAttr ".tgi[5].ni[27].nvs" 18306;
	setAttr ".tgi[5].ni[28].x" 1024.61572265625;
	setAttr ".tgi[5].ni[28].y" 3776.832275390625;
	setAttr ".tgi[5].ni[28].nvs" 18306;
	setAttr ".tgi[5].ni[29].x" 1692.681396484375;
	setAttr ".tgi[5].ni[29].y" 2771.83056640625;
	setAttr ".tgi[5].ni[29].nvs" 18306;
	setAttr ".tgi[5].ni[30].x" 212.19674682617188;
	setAttr ".tgi[5].ni[30].y" 2086.6279296875;
	setAttr ".tgi[5].ni[30].nvs" 18306;
	setAttr ".tgi[5].ni[31].x" -1011.3130493164062;
	setAttr ".tgi[5].ni[31].y" 2983.287353515625;
	setAttr ".tgi[5].ni[31].nvs" 18306;
	setAttr ".tgi[5].ni[32].x" 1435.408447265625;
	setAttr ".tgi[5].ni[32].y" 2445.258056640625;
	setAttr ".tgi[5].ni[32].nvs" 18305;
	setAttr ".tgi[5].ni[33].x" -2410.19384765625;
	setAttr ".tgi[5].ni[33].y" 3342.410888671875;
	setAttr ".tgi[5].ni[33].nvs" 18305;
	setAttr ".tgi[5].ni[34].x" -2431.236572265625;
	setAttr ".tgi[5].ni[34].y" 2162.25634765625;
	setAttr ".tgi[5].ni[34].nvs" 18305;
	setAttr ".tgi[5].ni[35].x" 805.31488037109375;
	setAttr ".tgi[5].ni[35].y" 3422.826904296875;
	setAttr ".tgi[5].ni[35].nvs" 18306;
	setAttr ".tgi[5].ni[36].x" 555.91351318359375;
	setAttr ".tgi[5].ni[36].y" 1706.05126953125;
	setAttr ".tgi[5].ni[36].nvs" 18306;
	setAttr ".tgi[5].ni[37].x" -762.1719970703125;
	setAttr ".tgi[5].ni[37].y" 2748.238037109375;
	setAttr ".tgi[5].ni[37].nvs" 18306;
	setAttr ".tgi[5].ni[38].x" -464.60955810546875;
	setAttr ".tgi[5].ni[38].y" 2628.249755859375;
	setAttr ".tgi[5].ni[38].nvs" 18306;
	setAttr ".tgi[5].ni[39].x" -765.5970458984375;
	setAttr ".tgi[5].ni[39].y" 3378.87255859375;
	setAttr ".tgi[5].ni[39].nvs" 18306;
	setAttr ".tgi[5].ni[40].x" -259.14422607421875;
	setAttr ".tgi[5].ni[40].y" 2853.0986328125;
	setAttr ".tgi[5].ni[40].nvs" 18306;
	setAttr ".tgi[5].ni[41].x" -1275.3231201171875;
	setAttr ".tgi[5].ni[41].y" 2980;
	setAttr ".tgi[5].ni[41].nvs" 18306;
	setAttr ".tgi[5].ni[42].x" 835.91644287109375;
	setAttr ".tgi[5].ni[42].y" 2550.2138671875;
	setAttr ".tgi[5].ni[42].nvs" 18306;
	setAttr ".tgi[5].ni[43].x" 540.1405029296875;
	setAttr ".tgi[5].ni[43].y" 1448.7938232421875;
	setAttr ".tgi[5].ni[43].nvs" 18306;
	setAttr ".tgi[5].ni[44].x" -1211.761962890625;
	setAttr ".tgi[5].ni[44].y" 1882.240966796875;
	setAttr ".tgi[5].ni[44].nvs" 1923;
	setAttr ".tgi[5].ni[45].x" 1962.4462890625;
	setAttr ".tgi[5].ni[45].y" 3131.040771484375;
	setAttr ".tgi[5].ni[45].nvs" 18306;
	setAttr ".tgi[5].ni[46].x" 2208.90087890625;
	setAttr ".tgi[5].ni[46].y" 3106.61376953125;
	setAttr ".tgi[5].ni[46].nvs" 18306;
	setAttr ".tgi[5].ni[47].x" 2029.523193359375;
	setAttr ".tgi[5].ni[47].y" 2774.349609375;
	setAttr ".tgi[5].ni[47].nvs" 1923;
	setAttr ".tgi[5].ni[48].x" -2067.32470703125;
	setAttr ".tgi[5].ni[48].y" 3382.002197265625;
	setAttr ".tgi[5].ni[48].nvs" 18304;
	setAttr ".tgi[5].ni[49].x" -2071.69873046875;
	setAttr ".tgi[5].ni[49].y" 3213.115966796875;
	setAttr ".tgi[5].ni[49].nvs" 18304;
	setAttr ".tgi[5].ni[50].x" -1532.24462890625;
	setAttr ".tgi[5].ni[50].y" 3651.45849609375;
	setAttr ".tgi[5].ni[50].nvs" 18306;
	setAttr ".tgi[5].ni[51].x" -1841.4156494140625;
	setAttr ".tgi[5].ni[51].y" 3818.3095703125;
	setAttr ".tgi[5].ni[51].nvs" 18306;
	setAttr ".tgi[5].ni[52].x" -1444.2857666015625;
	setAttr ".tgi[5].ni[52].y" 2315.71435546875;
	setAttr ".tgi[5].ni[52].nvs" 18304;
	setAttr ".tgi[5].ni[53].x" -1268.840576171875;
	setAttr ".tgi[5].ni[53].y" 2650.677978515625;
	setAttr ".tgi[5].ni[53].nvs" 1923;
	setAttr ".tgi[5].ni[54].x" 2798.072021484375;
	setAttr ".tgi[5].ni[54].y" 3034.52783203125;
	setAttr ".tgi[5].ni[54].nvs" 18305;
	setAttr ".tgi[5].ni[55].x" 641.509033203125;
	setAttr ".tgi[5].ni[55].y" 2534.908447265625;
	setAttr ".tgi[5].ni[55].nvs" 1923;
	setAttr ".tgi[5].ni[56].x" -994.3717041015625;
	setAttr ".tgi[5].ni[56].y" 3391.747314453125;
	setAttr ".tgi[5].ni[56].nvs" 18304;
	setAttr ".tgi[5].ni[57].x" -434.73184204101562;
	setAttr ".tgi[5].ni[57].y" 3333.17724609375;
	setAttr ".tgi[5].ni[57].nvs" 18306;
	setAttr ".tgi[5].ni[58].x" 816.5841064453125;
	setAttr ".tgi[5].ni[58].y" 1231.4713134765625;
	setAttr ".tgi[5].ni[58].nvs" 18306;
	setAttr ".tgi[5].ni[59].x" -1926.2899169921875;
	setAttr ".tgi[5].ni[59].y" 2082.018798828125;
	setAttr ".tgi[5].ni[59].nvs" 18305;
	setAttr ".tgi[5].ni[60].x" 878.82952880859375;
	setAttr ".tgi[5].ni[60].y" 2243.149169921875;
	setAttr ".tgi[5].ni[60].nvs" 18306;
	setAttr ".tgi[5].ni[61].x" 320.59234619140625;
	setAttr ".tgi[5].ni[61].y" 2501.12939453125;
	setAttr ".tgi[5].ni[61].nvs" 1923;
	setAttr ".tgi[5].ni[62].x" -70.735404968261719;
	setAttr ".tgi[5].ni[62].y" 3479.614501953125;
	setAttr ".tgi[5].ni[62].nvs" 18305;
	setAttr ".tgi[6].tn" -type "string" "Untitled_1";
	setAttr ".tgi[6].vl" -type "double2" 2004.9563478332727 790.21543195066397 ;
	setAttr ".tgi[6].vh" -type "double2" 3986.2062691054743 1911.9889094403368 ;
	setAttr -s 101 ".tgi[6].ni";
	setAttr ".tgi[6].ni[0].x" 2770;
	setAttr ".tgi[6].ni[0].y" -54.285713195800781;
	setAttr ".tgi[6].ni[0].nvs" 18304;
	setAttr ".tgi[6].ni[1].x" 3615.71435546875;
	setAttr ".tgi[6].ni[1].y" 1624.2857666015625;
	setAttr ".tgi[6].ni[1].nvs" 18304;
	setAttr ".tgi[6].ni[2].x" 3164.28564453125;
	setAttr ".tgi[6].ni[2].y" 1155.7142333984375;
	setAttr ".tgi[6].ni[2].nvs" 18304;
	setAttr ".tgi[6].ni[3].x" 108.57142639160156;
	setAttr ".tgi[6].ni[3].y" 1074.2857666015625;
	setAttr ".tgi[6].ni[3].nvs" 18304;
	setAttr ".tgi[6].ni[4].x" -198.57142639160156;
	setAttr ".tgi[6].ni[4].y" 655.71429443359375;
	setAttr ".tgi[6].ni[4].nvs" 18304;
	setAttr ".tgi[6].ni[5].x" -1427.142822265625;
	setAttr ".tgi[6].ni[5].y" 1097.142822265625;
	setAttr ".tgi[6].ni[5].nvs" 18304;
	setAttr ".tgi[6].ni[6].x" 2355.71435546875;
	setAttr ".tgi[6].ni[6].y" -285.71429443359375;
	setAttr ".tgi[6].ni[6].nvs" 18304;
	setAttr ".tgi[6].ni[7].x" 1951.4285888671875;
	setAttr ".tgi[6].ni[7].y" 121.42857360839844;
	setAttr ".tgi[6].ni[7].nvs" 18304;
	setAttr ".tgi[6].ni[8].x" 3164.28564453125;
	setAttr ".tgi[6].ni[8].y" -411.42855834960938;
	setAttr ".tgi[6].ni[8].nvs" 18304;
	setAttr ".tgi[6].ni[9].x" 3164.28564453125;
	setAttr ".tgi[6].ni[9].y" -1507.142822265625;
	setAttr ".tgi[6].ni[9].nvs" 18304;
	setAttr ".tgi[6].ni[10].x" 3164.28564453125;
	setAttr ".tgi[6].ni[10].y" 750;
	setAttr ".tgi[6].ni[10].nvs" 18304;
	setAttr ".tgi[6].ni[11].x" 3164.28564453125;
	setAttr ".tgi[6].ni[11].y" -772.85711669921875;
	setAttr ".tgi[6].ni[11].nvs" 18304;
	setAttr ".tgi[6].ni[12].x" 1644.2857666015625;
	setAttr ".tgi[6].ni[12].y" 338.57144165039062;
	setAttr ".tgi[6].ni[12].nvs" 18304;
	setAttr ".tgi[6].ni[13].x" 2355.71435546875;
	setAttr ".tgi[6].ni[13].y" -82.857139587402344;
	setAttr ".tgi[6].ni[13].nvs" 18304;
	setAttr ".tgi[6].ni[14].x" 2770;
	setAttr ".tgi[6].ni[14].y" -802.85711669921875;
	setAttr ".tgi[6].ni[14].nvs" 18304;
	setAttr ".tgi[6].ni[15].x" 3164.28564453125;
	setAttr ".tgi[6].ni[15].y" -975.71429443359375;
	setAttr ".tgi[6].ni[15].nvs" 18304;
	setAttr ".tgi[6].ni[16].x" -1734.2857666015625;
	setAttr ".tgi[6].ni[16].y" 1235.7142333984375;
	setAttr ".tgi[6].ni[16].nvs" 18304;
	setAttr ".tgi[6].ni[17].x" 3164.28564453125;
	setAttr ".tgi[6].ni[17].y" 591.4285888671875;
	setAttr ".tgi[6].ni[17].nvs" 18304;
	setAttr ".tgi[6].ni[18].x" 2770;
	setAttr ".tgi[6].ni[18].y" -270;
	setAttr ".tgi[6].ni[18].nvs" 18304;
	setAttr ".tgi[6].ni[19].x" 1644.2857666015625;
	setAttr ".tgi[6].ni[19].y" 122.85713958740234;
	setAttr ".tgi[6].ni[19].nvs" 18304;
	setAttr ".tgi[6].ni[20].x" 3615.71435546875;
	setAttr ".tgi[6].ni[20].y" 1517.142822265625;
	setAttr ".tgi[6].ni[20].nvs" 18304;
	setAttr ".tgi[6].ni[21].x" 3164.28564453125;
	setAttr ".tgi[6].ni[21].y" -11.428571701049805;
	setAttr ".tgi[6].ni[21].nvs" 18304;
	setAttr ".tgi[6].ni[22].x" 3615.71435546875;
	setAttr ".tgi[6].ni[22].y" 1415.7142333984375;
	setAttr ".tgi[6].ni[22].nvs" 18304;
	setAttr ".tgi[6].ni[23].x" 2770;
	setAttr ".tgi[6].ni[23].y" -961.4285888671875;
	setAttr ".tgi[6].ni[23].nvs" 18304;
	setAttr ".tgi[6].ni[24].x" 1644.2857666015625;
	setAttr ".tgi[6].ni[24].y" 21.428571701049805;
	setAttr ".tgi[6].ni[24].nvs" 18304;
	setAttr ".tgi[6].ni[25].x" 2770;
	setAttr ".tgi[6].ni[25].y" 332.85714721679688;
	setAttr ".tgi[6].ni[25].nvs" 18304;
	setAttr ".tgi[6].ni[26].x" 3615.71435546875;
	setAttr ".tgi[6].ni[26].y" 1314.2857666015625;
	setAttr ".tgi[6].ni[26].nvs" 18304;
	setAttr ".tgi[6].ni[27].x" 1951.4285888671875;
	setAttr ".tgi[6].ni[27].y" -525.71429443359375;
	setAttr ".tgi[6].ni[27].nvs" 18304;
	setAttr ".tgi[6].ni[28].x" 2770;
	setAttr ".tgi[6].ni[28].y" 1125.7142333984375;
	setAttr ".tgi[6].ni[28].nvs" 18304;
	setAttr ".tgi[6].ni[29].x" 3164.28564453125;
	setAttr ".tgi[6].ni[29].y" 1054.2857666015625;
	setAttr ".tgi[6].ni[29].nvs" 18304;
	setAttr ".tgi[6].ni[30].x" 3615.71435546875;
	setAttr ".tgi[6].ni[30].y" 1212.857177734375;
	setAttr ".tgi[6].ni[30].nvs" 18304;
	setAttr ".tgi[6].ni[31].x" 3164.28564453125;
	setAttr ".tgi[6].ni[31].y" 1415.7142333984375;
	setAttr ".tgi[6].ni[31].nvs" 18304;
	setAttr ".tgi[6].ni[32].x" 108.57142639160156;
	setAttr ".tgi[6].ni[32].y" 740;
	setAttr ".tgi[6].ni[32].nvs" 18304;
	setAttr ".tgi[6].ni[33].x" 3615.71435546875;
	setAttr ".tgi[6].ni[33].y" 1105.7142333984375;
	setAttr ".tgi[6].ni[33].nvs" 18304;
	setAttr ".tgi[6].ni[34].x" 2770;
	setAttr ".tgi[6].ni[34].y" 1674.2857666015625;
	setAttr ".tgi[6].ni[34].nvs" 18304;
	setAttr ".tgi[6].ni[35].x" 3164.28564453125;
	setAttr ".tgi[6].ni[35].y" -310;
	setAttr ".tgi[6].ni[35].nvs" 18304;
	setAttr ".tgi[6].ni[36].x" 3615.71435546875;
	setAttr ".tgi[6].ni[36].y" 952.85711669921875;
	setAttr ".tgi[6].ni[36].nvs" 18304;
	setAttr ".tgi[6].ni[37].x" 3615.71435546875;
	setAttr ".tgi[6].ni[37].y" 801.4285888671875;
	setAttr ".tgi[6].ni[37].nvs" 18304;
	setAttr ".tgi[6].ni[38].x" 3164.28564453125;
	setAttr ".tgi[6].ni[38].y" 204.28572082519531;
	setAttr ".tgi[6].ni[38].nvs" 18304;
	setAttr ".tgi[6].ni[39].x" 3164.28564453125;
	setAttr ".tgi[6].ni[39].y" -1405.7142333984375;
	setAttr ".tgi[6].ni[39].nvs" 18304;
	setAttr ".tgi[6].ni[40].x" 3164.28564453125;
	setAttr ".tgi[6].ni[40].y" 1624.2857666015625;
	setAttr ".tgi[6].ni[40].nvs" 18304;
	setAttr ".tgi[6].ni[41].x" 3164.28564453125;
	setAttr ".tgi[6].ni[41].y" 1517.142822265625;
	setAttr ".tgi[6].ni[41].nvs" 18304;
	setAttr ".tgi[6].ni[42].x" -2042.857177734375;
	setAttr ".tgi[6].ni[42].y" 964.28570556640625;
	setAttr ".tgi[6].ni[42].nvs" 18304;
	setAttr ".tgi[6].ni[43].x" 2770;
	setAttr ".tgi[6].ni[43].y" -600;
	setAttr ".tgi[6].ni[43].nvs" 18304;
	setAttr ".tgi[6].ni[44].x" 2355.71435546875;
	setAttr ".tgi[6].ni[44].y" -184.28572082519531;
	setAttr ".tgi[6].ni[44].nvs" 18304;
	setAttr ".tgi[6].ni[45].x" 3615.71435546875;
	setAttr ".tgi[6].ni[45].y" 391.42855834960938;
	setAttr ".tgi[6].ni[45].nvs" 18304;
	setAttr ".tgi[6].ni[46].x" 1030;
	setAttr ".tgi[6].ni[46].y" 454.28570556640625;
	setAttr ".tgi[6].ni[46].nvs" 18304;
	setAttr ".tgi[6].ni[47].x" 3615.71435546875;
	setAttr ".tgi[6].ni[47].y" 154.28572082519531;
	setAttr ".tgi[6].ni[47].nvs" 18304;
	setAttr ".tgi[6].ni[48].x" 2355.71435546875;
	setAttr ".tgi[6].ni[48].y" 18.571428298950195;
	setAttr ".tgi[6].ni[48].nvs" 18304;
	setAttr ".tgi[6].ni[49].x" -2474.28564453125;
	setAttr ".tgi[6].ni[49].y" 1322.857177734375;
	setAttr ".tgi[6].ni[49].nvs" 18304;
	setAttr ".tgi[6].ni[50].x" -1427.142822265625;
	setAttr ".tgi[6].ni[50].y" 777.14288330078125;
	setAttr ".tgi[6].ni[50].nvs" 18304;
	setAttr ".tgi[6].ni[51].x" 3164.28564453125;
	setAttr ".tgi[6].ni[51].y" -1077.142822265625;
	setAttr ".tgi[6].ni[51].nvs" 18304;
	setAttr ".tgi[6].ni[52].x" -1734.2857666015625;
	setAttr ".tgi[6].ni[52].y" 845.71429443359375;
	setAttr ".tgi[6].ni[52].nvs" 18304;
	setAttr ".tgi[6].ni[53].x" -2784.28564453125;
	setAttr ".tgi[6].ni[53].y" 1617.142822265625;
	setAttr ".tgi[6].ni[53].nvs" 18304;
	setAttr ".tgi[6].ni[54].x" -505.71429443359375;
	setAttr ".tgi[6].ni[54].y" 768.5714111328125;
	setAttr ".tgi[6].ni[54].nvs" 18304;
	setAttr ".tgi[6].ni[55].x" 3615.71435546875;
	setAttr ".tgi[6].ni[55].y" 45.714286804199219;
	setAttr ".tgi[6].ni[55].nvs" 18304;
	setAttr ".tgi[6].ni[56].x" -2474.28564453125;
	setAttr ".tgi[6].ni[56].y" 1538.5714111328125;
	setAttr ".tgi[6].ni[56].nvs" 18304;
	setAttr ".tgi[6].ni[57].x" -1120;
	setAttr ".tgi[6].ni[57].y" 1020;
	setAttr ".tgi[6].ni[57].nvs" 18304;
	setAttr ".tgi[6].ni[58].x" 3615.71435546875;
	setAttr ".tgi[6].ni[58].y" -128.57142639160156;
	setAttr ".tgi[6].ni[58].nvs" 18304;
	setAttr ".tgi[6].ni[59].x" 3615.71435546875;
	setAttr ".tgi[6].ni[59].y" -230;
	setAttr ".tgi[6].ni[59].nvs" 18304;
	setAttr ".tgi[6].ni[60].x" 3615.71435546875;
	setAttr ".tgi[6].ni[60].y" -461.42855834960938;
	setAttr ".tgi[6].ni[60].nvs" 18304;
	setAttr ".tgi[6].ni[61].x" 1337.142822265625;
	setAttr ".tgi[6].ni[61].y" 401.42855834960938;
	setAttr ".tgi[6].ni[61].nvs" 18304;
	setAttr ".tgi[6].ni[62].x" 3615.71435546875;
	setAttr ".tgi[6].ni[62].y" -614.28570556640625;
	setAttr ".tgi[6].ni[62].nvs" 18304;
	setAttr ".tgi[6].ni[63].x" 415.71429443359375;
	setAttr ".tgi[6].ni[63].y" 648.5714111328125;
	setAttr ".tgi[6].ni[63].nvs" 18304;
	setAttr ".tgi[6].ni[64].x" -2784.28564453125;
	setAttr ".tgi[6].ni[64].y" 1375.7142333984375;
	setAttr ".tgi[6].ni[64].nvs" 18304;
	setAttr ".tgi[6].ni[65].x" 722.85711669921875;
	setAttr ".tgi[6].ni[65].y" 725.71429443359375;
	setAttr ".tgi[6].ni[65].nvs" 18304;
	setAttr ".tgi[6].ni[66].x" -3840;
	setAttr ".tgi[6].ni[66].y" 1475.7142333984375;
	setAttr ".tgi[6].ni[66].nvs" 18306;
	setAttr ".tgi[6].ni[67].x" 2355.71435546875;
	setAttr ".tgi[6].ni[67].y" -758.5714111328125;
	setAttr ".tgi[6].ni[67].nvs" 18304;
	setAttr ".tgi[6].ni[68].x" -812.85711669921875;
	setAttr ".tgi[6].ni[68].y" 648.5714111328125;
	setAttr ".tgi[6].ni[68].nvs" 18304;
	setAttr ".tgi[6].ni[69].x" 3164.28564453125;
	setAttr ".tgi[6].ni[69].y" 851.4285888671875;
	setAttr ".tgi[6].ni[69].nvs" 18304;
	setAttr ".tgi[6].ni[70].x" -2042.857177734375;
	setAttr ".tgi[6].ni[70].y" 1424.2857666015625;
	setAttr ".tgi[6].ni[70].nvs" 18304;
	setAttr ".tgi[6].ni[71].x" 2770;
	setAttr ".tgi[6].ni[71].y" 1572.857177734375;
	setAttr ".tgi[6].ni[71].nvs" 18304;
	setAttr ".tgi[6].ni[72].x" 415.71429443359375;
	setAttr ".tgi[6].ni[72].y" 841.4285888671875;
	setAttr ".tgi[6].ni[72].nvs" 18304;
	setAttr ".tgi[6].ni[73].x" 1951.4285888671875;
	setAttr ".tgi[6].ni[73].y" -195.71427917480469;
	setAttr ".tgi[6].ni[73].nvs" 18304;
	setAttr ".tgi[6].ni[74].x" 3164.28564453125;
	setAttr ".tgi[6].ni[74].y" -512.85711669921875;
	setAttr ".tgi[6].ni[74].nvs" 18304;
	setAttr ".tgi[6].ni[75].x" 722.85711669921875;
	setAttr ".tgi[6].ni[75].y" 528.5714111328125;
	setAttr ".tgi[6].ni[75].nvs" 18304;
	setAttr ".tgi[6].ni[76].x" -3225.71435546875;
	setAttr ".tgi[6].ni[76].y" 1492.857177734375;
	setAttr ".tgi[6].ni[76].nvs" 18304;
	setAttr ".tgi[6].ni[77].x" 3164.28564453125;
	setAttr ".tgi[6].ni[77].y" 1314.2857666015625;
	setAttr ".tgi[6].ni[77].nvs" 18304;
	setAttr ".tgi[6].ni[78].x" 2770;
	setAttr ".tgi[6].ni[78].y" -701.4285888671875;
	setAttr ".tgi[6].ni[78].nvs" 18304;
	setAttr ".tgi[6].ni[79].x" 3615.71435546875;
	setAttr ".tgi[6].ni[79].y" -787.14288330078125;
	setAttr ".tgi[6].ni[79].nvs" 18304;
	setAttr ".tgi[6].ni[80].x" 3615.71435546875;
	setAttr ".tgi[6].ni[80].y" -975.71429443359375;
	setAttr ".tgi[6].ni[80].nvs" 18304;
	setAttr ".tgi[6].ni[81].x" 2355.71435546875;
	setAttr ".tgi[6].ni[81].y" -387.14285278320312;
	setAttr ".tgi[6].ni[81].nvs" 18304;
	setAttr ".tgi[6].ni[82].x" 3615.71435546875;
	setAttr ".tgi[6].ni[82].y" -1252.857177734375;
	setAttr ".tgi[6].ni[82].nvs" 18304;
	setAttr ".tgi[6].ni[83].x" -812.85711669921875;
	setAttr ".tgi[6].ni[83].y" 921.4285888671875;
	setAttr ".tgi[6].ni[83].nvs" 18304;
	setAttr ".tgi[6].ni[84].x" 1951.4285888671875;
	setAttr ".tgi[6].ni[84].y" -37.142856597900391;
	setAttr ".tgi[6].ni[84].nvs" 18304;
	setAttr ".tgi[6].ni[85].x" -198.57142639160156;
	setAttr ".tgi[6].ni[85].y" 757.14288330078125;
	setAttr ".tgi[6].ni[85].nvs" 18304;
	setAttr ".tgi[6].ni[86].x" 3615.71435546875;
	setAttr ".tgi[6].ni[86].y" -1354.2857666015625;
	setAttr ".tgi[6].ni[86].nvs" 18304;
	setAttr ".tgi[6].ni[87].x" 1951.4285888671875;
	setAttr ".tgi[6].ni[87].y" 280;
	setAttr ".tgi[6].ni[87].nvs" 18304;
	setAttr ".tgi[6].ni[88].x" 2355.71435546875;
	setAttr ".tgi[6].ni[88].y" 120;
	setAttr ".tgi[6].ni[88].nvs" 18304;
	setAttr ".tgi[6].ni[89].x" 3164.28564453125;
	setAttr ".tgi[6].ni[89].y" -874.28570556640625;
	setAttr ".tgi[6].ni[89].nvs" 18304;
	setAttr ".tgi[6].ni[90].x" 3164.28564453125;
	setAttr ".tgi[6].ni[90].y" -208.57142639160156;
	setAttr ".tgi[6].ni[90].nvs" 18304;
	setAttr ".tgi[6].ni[91].x" -505.71429443359375;
	setAttr ".tgi[6].ni[91].y" 492.85714721679688;
	setAttr ".tgi[6].ni[91].nvs" 18304;
	setAttr ".tgi[6].ni[92].x" 3164.28564453125;
	setAttr ".tgi[6].ni[92].y" 952.85711669921875;
	setAttr ".tgi[6].ni[92].nvs" 18304;
	setAttr ".tgi[6].ni[93].x" 108.57142639160156;
	setAttr ".tgi[6].ni[93].y" 638.5714111328125;
	setAttr ".tgi[6].ni[93].nvs" 18304;
	setAttr ".tgi[6].ni[94].x" 3662.857177734375;
	setAttr ".tgi[6].ni[94].y" -1637.142822265625;
	setAttr ".tgi[6].ni[94].nvs" 18304;
	setAttr ".tgi[6].ni[95].x" -1120;
	setAttr ".tgi[6].ni[95].y" 712.85711669921875;
	setAttr ".tgi[6].ni[95].nvs" 18304;
	setAttr ".tgi[6].ni[96].x" 3164.28564453125;
	setAttr ".tgi[6].ni[96].y" -614.28570556640625;
	setAttr ".tgi[6].ni[96].nvs" 18304;
	setAttr ".tgi[6].ni[97].x" -3532.857177734375;
	setAttr ".tgi[6].ni[97].y" 1495.7142333984375;
	setAttr ".tgi[6].ni[97].nvs" 18304;
	setAttr ".tgi[6].ni[98].x" -2042.857177734375;
	setAttr ".tgi[6].ni[98].y" 1265.7142333984375;
	setAttr ".tgi[6].ni[98].nvs" 18304;
	setAttr ".tgi[6].ni[99].x" 3615.71435546875;
	setAttr ".tgi[6].ni[99].y" -1455.7142333984375;
	setAttr ".tgi[6].ni[99].nvs" 18304;
	setAttr ".tgi[6].ni[100].x" 2355.71435546875;
	setAttr ".tgi[6].ni[100].y" 1694.2857666015625;
	setAttr ".tgi[6].ni[100].nvs" 18304;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "9454A979-479C-69B9-6850-4AA4A5B8F07F";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 72 ".u";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "world_jnt_parentConstraint1.ctx" "world_jnt.tx";
connectAttr "world_jnt_parentConstraint1.cty" "world_jnt.ty";
connectAttr "world_jnt_parentConstraint1.ctz" "world_jnt.tz";
connectAttr "world_jnt_parentConstraint1.crx" "world_jnt.rx";
connectAttr "world_jnt_parentConstraint1.cry" "world_jnt.ry";
connectAttr "world_jnt_parentConstraint1.crz" "world_jnt.rz";
connectAttr "world_jnt.s" "arm_L0_shoulder_jnt.is";
connectAttr "arm_L0_shoulder_jnt_parentConstraint1.ctx" "arm_L0_shoulder_jnt.tx"
		;
connectAttr "arm_L0_shoulder_jnt_parentConstraint1.cty" "arm_L0_shoulder_jnt.ty"
		;
connectAttr "arm_L0_shoulder_jnt_parentConstraint1.ctz" "arm_L0_shoulder_jnt.tz"
		;
connectAttr "arm_L0_shoulder_jnt_parentConstraint1.crx" "arm_L0_shoulder_jnt.rx"
		;
connectAttr "arm_L0_shoulder_jnt_parentConstraint1.cry" "arm_L0_shoulder_jnt.ry"
		;
connectAttr "arm_L0_shoulder_jnt_parentConstraint1.crz" "arm_L0_shoulder_jnt.rz"
		;
connectAttr "blendColors10.opr" "arm_L0_shoulder_jnt.sz";
connectAttr "blendColors10.opr" "arm_L0_shoulder_jnt.sy";
connectAttr "blendColors10.opr" "arm_L0_shoulder_jnt.sx";
connectAttr "arm_L0_shoulder_jnt.s" "arm_L0_twist0_jnt.is";
connectAttr "arm_L0_twist0_jnt_parentConstraint1.ctx" "arm_L0_twist0_jnt.tx";
connectAttr "arm_L0_twist0_jnt_parentConstraint1.cty" "arm_L0_twist0_jnt.ty";
connectAttr "arm_L0_twist0_jnt_parentConstraint1.ctz" "arm_L0_twist0_jnt.tz";
connectAttr "arm_L0_twist0_jnt_parentConstraint1.crx" "arm_L0_twist0_jnt.rx";
connectAttr "arm_L0_twist0_jnt_parentConstraint1.cry" "arm_L0_twist0_jnt.ry";
connectAttr "arm_L0_twist0_jnt_parentConstraint1.crz" "arm_L0_twist0_jnt.rz";
connectAttr "plusMinusAverage2.o1" "arm_L0_twist0_jnt.sz";
connectAttr "plusMinusAverage1.o1" "arm_L0_twist0_jnt.sy";
connectAttr "plusMinusAverage2.o1" "arm_L0_twist0_jnt.sx";
connectAttr "arm_L0_twist0_jnt.s" "arm_L0_twist1_jnt.is";
connectAttr "arm_L0_twist1_jnt_parentConstraint1.ctx" "arm_L0_twist1_jnt.tx";
connectAttr "arm_L0_twist1_jnt_parentConstraint1.cty" "arm_L0_twist1_jnt.ty";
connectAttr "arm_L0_twist1_jnt_parentConstraint1.ctz" "arm_L0_twist1_jnt.tz";
connectAttr "arm_L0_twist1_jnt_parentConstraint1.crx" "arm_L0_twist1_jnt.rx";
connectAttr "arm_L0_twist1_jnt_parentConstraint1.cry" "arm_L0_twist1_jnt.ry";
connectAttr "arm_L0_twist1_jnt_parentConstraint1.crz" "arm_L0_twist1_jnt.rz";
connectAttr "plusMinusAverage3.o1" "arm_L0_twist1_jnt.sy";
connectAttr "plusMinusAverage4.o1" "arm_L0_twist1_jnt.sz";
connectAttr "plusMinusAverage4.o1" "arm_L0_twist1_jnt.sx";
connectAttr "arm_L0_twist1_jnt.s" "arm_L0_elbow_jnt.is";
connectAttr "arm_L0_elbow_jnt_parentConstraint1.ctx" "arm_L0_elbow_jnt.tx";
connectAttr "arm_L0_elbow_jnt_parentConstraint1.cty" "arm_L0_elbow_jnt.ty";
connectAttr "arm_L0_elbow_jnt_parentConstraint1.ctz" "arm_L0_elbow_jnt.tz";
connectAttr "arm_L0_elbow_jnt_parentConstraint1.crx" "arm_L0_elbow_jnt.rx";
connectAttr "arm_L0_elbow_jnt_parentConstraint1.cry" "arm_L0_elbow_jnt.ry";
connectAttr "arm_L0_elbow_jnt_parentConstraint1.crz" "arm_L0_elbow_jnt.rz";
connectAttr "condition19.ocr" "arm_L0_elbow_jnt.sz";
connectAttr "condition19.ocr" "arm_L0_elbow_jnt.sy";
connectAttr "condition19.ocr" "arm_L0_elbow_jnt.sx";
connectAttr "arm_L0_elbow_jnt.s" "arm_L0_twist2_jnt.is";
connectAttr "arm_L0_twist2_jnt_parentConstraint1.ctx" "arm_L0_twist2_jnt.tx";
connectAttr "arm_L0_twist2_jnt_parentConstraint1.cty" "arm_L0_twist2_jnt.ty";
connectAttr "arm_L0_twist2_jnt_parentConstraint1.ctz" "arm_L0_twist2_jnt.tz";
connectAttr "arm_L0_twist2_jnt_parentConstraint1.crx" "arm_L0_twist2_jnt.rx";
connectAttr "arm_L0_twist2_jnt_parentConstraint1.cry" "arm_L0_twist2_jnt.ry";
connectAttr "arm_L0_twist2_jnt_parentConstraint1.crz" "arm_L0_twist2_jnt.rz";
connectAttr "plusMinusAverage5.o1" "arm_L0_twist2_jnt.sy";
connectAttr "plusMinusAverage6.o1" "arm_L0_twist2_jnt.sz";
connectAttr "plusMinusAverage5.o1" "arm_L0_twist2_jnt.sx";
connectAttr "arm_L0_twist2_jnt.s" "arm_L0_twist3_jnt4.is";
connectAttr "arm_L0_twist3_jnt4_parentConstraint1.ctx" "arm_L0_twist3_jnt4.tx";
connectAttr "arm_L0_twist3_jnt4_parentConstraint1.cty" "arm_L0_twist3_jnt4.ty";
connectAttr "arm_L0_twist3_jnt4_parentConstraint1.ctz" "arm_L0_twist3_jnt4.tz";
connectAttr "arm_L0_twist3_jnt4_parentConstraint1.crx" "arm_L0_twist3_jnt4.rx";
connectAttr "arm_L0_twist3_jnt4_parentConstraint1.cry" "arm_L0_twist3_jnt4.ry";
connectAttr "arm_L0_twist3_jnt4_parentConstraint1.crz" "arm_L0_twist3_jnt4.rz";
connectAttr "plusMinusAverage7.o1" "arm_L0_twist3_jnt4.sy";
connectAttr "plusMinusAverage8.o1" "arm_L0_twist3_jnt4.sz";
connectAttr "plusMinusAverage7.o1" "arm_L0_twist3_jnt4.sx";
connectAttr "arm_L0_twist3_jnt4.s" "arm_L0_wrist_jnt.is";
connectAttr "arm_L0_wrist_jnt_pointConstraint1.ctx" "arm_L0_wrist_jnt.tx";
connectAttr "arm_L0_wrist_jnt_pointConstraint1.cty" "arm_L0_wrist_jnt.ty";
connectAttr "arm_L0_wrist_jnt_pointConstraint1.ctz" "arm_L0_wrist_jnt.tz";
connectAttr "arm_L0_wrist_jnt_orientConstraint1.crx" "arm_L0_wrist_jnt.rx";
connectAttr "arm_L0_wrist_jnt_orientConstraint1.cry" "arm_L0_wrist_jnt.ry";
connectAttr "arm_L0_wrist_jnt_orientConstraint1.crz" "arm_L0_wrist_jnt.rz";
connectAttr "blendColors9.opr" "arm_L0_wrist_jnt.sy";
connectAttr "blendColors9.opr" "arm_L0_wrist_jnt.sz";
connectAttr "blendColors9.opr" "arm_L0_wrist_jnt.sx";
connectAttr "arm_L0_wrist_jnt.s" "arm_L0_finger_jnt5.is";
connectAttr "arm_L0_wrist_jnt.s" "arm_L0_finger_jnt2.is";
connectAttr "arm_L0_wrist_jnt.s" "arm_L0_finger_jnt1.is";
connectAttr "arm_L0_wrist_jnt.s" "arm_L0_finger_jnt3.is";
connectAttr "arm_L0_wrist_jnt.s" "arm_L0_finger_jnt4.is";
connectAttr "arm_L0_wrist_jnt.ro" "arm_L0_wrist_jnt_orientConstraint1.cro";
connectAttr "arm_L0_wrist_jnt.pim" "arm_L0_wrist_jnt_orientConstraint1.cpim";
connectAttr "arm_L0_wrist_jnt.jo" "arm_L0_wrist_jnt_orientConstraint1.cjo";
connectAttr "arm_L0_wrist_jnt.is" "arm_L0_wrist_jnt_orientConstraint1.is";
connectAttr "driver_arm_L0_wrist_jnt.r" "arm_L0_wrist_jnt_orientConstraint1.tg[0].tr"
		;
connectAttr "driver_arm_L0_wrist_jnt.ro" "arm_L0_wrist_jnt_orientConstraint1.tg[0].tro"
		;
connectAttr "driver_arm_L0_wrist_jnt.pm" "arm_L0_wrist_jnt_orientConstraint1.tg[0].tpm"
		;
connectAttr "driver_arm_L0_wrist_jnt.jo" "arm_L0_wrist_jnt_orientConstraint1.tg[0].tjo"
		;
connectAttr "arm_L0_wrist_jnt_orientConstraint1.w0" "arm_L0_wrist_jnt_orientConstraint1.tg[0].tw"
		;
connectAttr "arm_L0_wrist_jnt.pim" "arm_L0_wrist_jnt_pointConstraint1.cpim";
connectAttr "arm_L0_wrist_jnt.rp" "arm_L0_wrist_jnt_pointConstraint1.crp";
connectAttr "arm_L0_wrist_jnt.rpt" "arm_L0_wrist_jnt_pointConstraint1.crt";
connectAttr "lower_Follicle_jnt1.t" "arm_L0_wrist_jnt_pointConstraint1.tg[0].tt"
		;
connectAttr "lower_Follicle_jnt1.rp" "arm_L0_wrist_jnt_pointConstraint1.tg[0].trp"
		;
connectAttr "lower_Follicle_jnt1.rpt" "arm_L0_wrist_jnt_pointConstraint1.tg[0].trt"
		;
connectAttr "lower_Follicle_jnt1.pm" "arm_L0_wrist_jnt_pointConstraint1.tg[0].tpm"
		;
connectAttr "arm_L0_wrist_jnt_pointConstraint1.w0" "arm_L0_wrist_jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "arm_L0_twist3_jnt4.ro" "arm_L0_twist3_jnt4_parentConstraint1.cro";
connectAttr "arm_L0_twist3_jnt4.pim" "arm_L0_twist3_jnt4_parentConstraint1.cpim"
		;
connectAttr "arm_L0_twist3_jnt4.rp" "arm_L0_twist3_jnt4_parentConstraint1.crp";
connectAttr "arm_L0_twist3_jnt4.rpt" "arm_L0_twist3_jnt4_parentConstraint1.crt";
connectAttr "arm_L0_twist3_jnt4.jo" "arm_L0_twist3_jnt4_parentConstraint1.cjo";
connectAttr "lower_Follicle_jnt2.t" "arm_L0_twist3_jnt4_parentConstraint1.tg[0].tt"
		;
connectAttr "lower_Follicle_jnt2.rp" "arm_L0_twist3_jnt4_parentConstraint1.tg[0].trp"
		;
connectAttr "lower_Follicle_jnt2.rpt" "arm_L0_twist3_jnt4_parentConstraint1.tg[0].trt"
		;
connectAttr "lower_Follicle_jnt2.r" "arm_L0_twist3_jnt4_parentConstraint1.tg[0].tr"
		;
connectAttr "lower_Follicle_jnt2.ro" "arm_L0_twist3_jnt4_parentConstraint1.tg[0].tro"
		;
connectAttr "lower_Follicle_jnt2.s" "arm_L0_twist3_jnt4_parentConstraint1.tg[0].ts"
		;
connectAttr "lower_Follicle_jnt2.pm" "arm_L0_twist3_jnt4_parentConstraint1.tg[0].tpm"
		;
connectAttr "lower_Follicle_jnt2.jo" "arm_L0_twist3_jnt4_parentConstraint1.tg[0].tjo"
		;
connectAttr "lower_Follicle_jnt2.ssc" "arm_L0_twist3_jnt4_parentConstraint1.tg[0].tsc"
		;
connectAttr "lower_Follicle_jnt2.is" "arm_L0_twist3_jnt4_parentConstraint1.tg[0].tis"
		;
connectAttr "arm_L0_twist3_jnt4_parentConstraint1.w0" "arm_L0_twist3_jnt4_parentConstraint1.tg[0].tw"
		;
connectAttr "arm_L0_twist2_jnt.ro" "arm_L0_twist2_jnt_parentConstraint1.cro";
connectAttr "arm_L0_twist2_jnt.pim" "arm_L0_twist2_jnt_parentConstraint1.cpim";
connectAttr "arm_L0_twist2_jnt.rp" "arm_L0_twist2_jnt_parentConstraint1.crp";
connectAttr "arm_L0_twist2_jnt.rpt" "arm_L0_twist2_jnt_parentConstraint1.crt";
connectAttr "arm_L0_twist2_jnt.jo" "arm_L0_twist2_jnt_parentConstraint1.cjo";
connectAttr "lower_Follicle_jnt3.t" "arm_L0_twist2_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "lower_Follicle_jnt3.rp" "arm_L0_twist2_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "lower_Follicle_jnt3.rpt" "arm_L0_twist2_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "lower_Follicle_jnt3.r" "arm_L0_twist2_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "lower_Follicle_jnt3.ro" "arm_L0_twist2_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "lower_Follicle_jnt3.s" "arm_L0_twist2_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "lower_Follicle_jnt3.pm" "arm_L0_twist2_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "lower_Follicle_jnt3.jo" "arm_L0_twist2_jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "lower_Follicle_jnt3.ssc" "arm_L0_twist2_jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "lower_Follicle_jnt3.is" "arm_L0_twist2_jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "arm_L0_twist2_jnt_parentConstraint1.w0" "arm_L0_twist2_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "arm_L0_elbow_jnt.ro" "arm_L0_elbow_jnt_parentConstraint1.cro";
connectAttr "arm_L0_elbow_jnt.pim" "arm_L0_elbow_jnt_parentConstraint1.cpim";
connectAttr "arm_L0_elbow_jnt.rp" "arm_L0_elbow_jnt_parentConstraint1.crp";
connectAttr "arm_L0_elbow_jnt.rpt" "arm_L0_elbow_jnt_parentConstraint1.crt";
connectAttr "arm_L0_elbow_jnt.jo" "arm_L0_elbow_jnt_parentConstraint1.cjo";
connectAttr "lower_Follicle_jnt4.t" "arm_L0_elbow_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "lower_Follicle_jnt4.rp" "arm_L0_elbow_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "lower_Follicle_jnt4.rpt" "arm_L0_elbow_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "lower_Follicle_jnt4.r" "arm_L0_elbow_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "lower_Follicle_jnt4.ro" "arm_L0_elbow_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "lower_Follicle_jnt4.s" "arm_L0_elbow_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "lower_Follicle_jnt4.pm" "arm_L0_elbow_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "lower_Follicle_jnt4.jo" "arm_L0_elbow_jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "lower_Follicle_jnt4.ssc" "arm_L0_elbow_jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "lower_Follicle_jnt4.is" "arm_L0_elbow_jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "arm_L0_elbow_jnt_parentConstraint1.w0" "arm_L0_elbow_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "arm_L0_twist1_jnt.ro" "arm_L0_twist1_jnt_parentConstraint1.cro";
connectAttr "arm_L0_twist1_jnt.pim" "arm_L0_twist1_jnt_parentConstraint1.cpim";
connectAttr "arm_L0_twist1_jnt.rp" "arm_L0_twist1_jnt_parentConstraint1.crp";
connectAttr "arm_L0_twist1_jnt.rpt" "arm_L0_twist1_jnt_parentConstraint1.crt";
connectAttr "arm_L0_twist1_jnt.jo" "arm_L0_twist1_jnt_parentConstraint1.cjo";
connectAttr "upper_Follicle_jnt2.t" "arm_L0_twist1_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "upper_Follicle_jnt2.rp" "arm_L0_twist1_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "upper_Follicle_jnt2.rpt" "arm_L0_twist1_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "upper_Follicle_jnt2.r" "arm_L0_twist1_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "upper_Follicle_jnt2.ro" "arm_L0_twist1_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "upper_Follicle_jnt2.s" "arm_L0_twist1_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "upper_Follicle_jnt2.pm" "arm_L0_twist1_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "upper_Follicle_jnt2.jo" "arm_L0_twist1_jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "upper_Follicle_jnt2.ssc" "arm_L0_twist1_jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "upper_Follicle_jnt2.is" "arm_L0_twist1_jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "arm_L0_twist1_jnt_parentConstraint1.w0" "arm_L0_twist1_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "arm_L0_twist0_jnt.ro" "arm_L0_twist0_jnt_parentConstraint1.cro";
connectAttr "arm_L0_twist0_jnt.pim" "arm_L0_twist0_jnt_parentConstraint1.cpim";
connectAttr "arm_L0_twist0_jnt.rp" "arm_L0_twist0_jnt_parentConstraint1.crp";
connectAttr "arm_L0_twist0_jnt.rpt" "arm_L0_twist0_jnt_parentConstraint1.crt";
connectAttr "arm_L0_twist0_jnt.jo" "arm_L0_twist0_jnt_parentConstraint1.cjo";
connectAttr "upper_Follicle_jnt3.t" "arm_L0_twist0_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "upper_Follicle_jnt3.rp" "arm_L0_twist0_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "upper_Follicle_jnt3.rpt" "arm_L0_twist0_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "upper_Follicle_jnt3.r" "arm_L0_twist0_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "upper_Follicle_jnt3.ro" "arm_L0_twist0_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "upper_Follicle_jnt3.s" "arm_L0_twist0_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "upper_Follicle_jnt3.pm" "arm_L0_twist0_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "upper_Follicle_jnt3.jo" "arm_L0_twist0_jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "upper_Follicle_jnt3.ssc" "arm_L0_twist0_jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "upper_Follicle_jnt3.is" "arm_L0_twist0_jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "arm_L0_twist0_jnt_parentConstraint1.w0" "arm_L0_twist0_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "arm_L0_shoulder_jnt.ro" "arm_L0_shoulder_jnt_parentConstraint1.cro"
		;
connectAttr "arm_L0_shoulder_jnt.pim" "arm_L0_shoulder_jnt_parentConstraint1.cpim"
		;
connectAttr "arm_L0_shoulder_jnt.rp" "arm_L0_shoulder_jnt_parentConstraint1.crp"
		;
connectAttr "arm_L0_shoulder_jnt.rpt" "arm_L0_shoulder_jnt_parentConstraint1.crt"
		;
connectAttr "arm_L0_shoulder_jnt.jo" "arm_L0_shoulder_jnt_parentConstraint1.cjo"
		;
connectAttr "upper_Follicle_jnt4.t" "arm_L0_shoulder_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "upper_Follicle_jnt4.rp" "arm_L0_shoulder_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "upper_Follicle_jnt4.rpt" "arm_L0_shoulder_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "upper_Follicle_jnt4.r" "arm_L0_shoulder_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "upper_Follicle_jnt4.ro" "arm_L0_shoulder_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "upper_Follicle_jnt4.s" "arm_L0_shoulder_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "upper_Follicle_jnt4.pm" "arm_L0_shoulder_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "upper_Follicle_jnt4.jo" "arm_L0_shoulder_jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "upper_Follicle_jnt4.ssc" "arm_L0_shoulder_jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "upper_Follicle_jnt4.is" "arm_L0_shoulder_jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "arm_L0_shoulder_jnt_parentConstraint1.w0" "arm_L0_shoulder_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "world_jnt.ro" "world_jnt_parentConstraint1.cro";
connectAttr "world_jnt.pim" "world_jnt_parentConstraint1.cpim";
connectAttr "world_jnt.rp" "world_jnt_parentConstraint1.crp";
connectAttr "world_jnt.rpt" "world_jnt_parentConstraint1.crt";
connectAttr "world_jnt.jo" "world_jnt_parentConstraint1.cjo";
connectAttr "main_cnt.t" "world_jnt_parentConstraint1.tg[0].tt";
connectAttr "main_cnt.rp" "world_jnt_parentConstraint1.tg[0].trp";
connectAttr "main_cnt.rpt" "world_jnt_parentConstraint1.tg[0].trt";
connectAttr "main_cnt.r" "world_jnt_parentConstraint1.tg[0].tr";
connectAttr "main_cnt.ro" "world_jnt_parentConstraint1.tg[0].tro";
connectAttr "main_cnt.s" "world_jnt_parentConstraint1.tg[0].ts";
connectAttr "main_cnt.pm" "world_jnt_parentConstraint1.tg[0].tpm";
connectAttr "world_jnt_parentConstraint1.w0" "world_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle2.oc" "main_cntShape.cr";
connectAttr "driver_arm_L0_shoulder_jnt1_parentConstraint1.ctx" "driver_arm_L0_shoulder_jnt1.tx"
		;
connectAttr "driver_arm_L0_shoulder_jnt1_parentConstraint1.cty" "driver_arm_L0_shoulder_jnt1.ty"
		;
connectAttr "driver_arm_L0_shoulder_jnt1_parentConstraint1.ctz" "driver_arm_L0_shoulder_jnt1.tz"
		;
connectAttr "driver_arm_L0_shoulder_jnt1_parentConstraint1.crx" "driver_arm_L0_shoulder_jnt1.rx"
		;
connectAttr "driver_arm_L0_shoulder_jnt1_parentConstraint1.cry" "driver_arm_L0_shoulder_jnt1.ry"
		;
connectAttr "driver_arm_L0_shoulder_jnt1_parentConstraint1.crz" "driver_arm_L0_shoulder_jnt1.rz"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.ro" "driver_arm_L0_shoulder_jnt1_parentConstraint1.cro"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.pim" "driver_arm_L0_shoulder_jnt1_parentConstraint1.cpim"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.rp" "driver_arm_L0_shoulder_jnt1_parentConstraint1.crp"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.rpt" "driver_arm_L0_shoulder_jnt1_parentConstraint1.crt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.jo" "driver_arm_L0_shoulder_jnt1_parentConstraint1.cjo"
		;
connectAttr "fk_arm_L0_shoulder_jnt.t" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[0].tt"
		;
connectAttr "fk_arm_L0_shoulder_jnt.rp" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[0].trp"
		;
connectAttr "fk_arm_L0_shoulder_jnt.rpt" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[0].trt"
		;
connectAttr "fk_arm_L0_shoulder_jnt.r" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[0].tr"
		;
connectAttr "fk_arm_L0_shoulder_jnt.ro" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[0].tro"
		;
connectAttr "fk_arm_L0_shoulder_jnt.s" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[0].ts"
		;
connectAttr "fk_arm_L0_shoulder_jnt.pm" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[0].tpm"
		;
connectAttr "fk_arm_L0_shoulder_jnt.jo" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[0].tjo"
		;
connectAttr "fk_arm_L0_shoulder_jnt.ssc" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[0].tsc"
		;
connectAttr "fk_arm_L0_shoulder_jnt.is" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[0].tis"
		;
connectAttr "driver_arm_L0_shoulder_jnt1_parentConstraint1.w0" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[0].tw"
		;
connectAttr "ik_arm_L0_shoulder_jnt.t" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[1].tt"
		;
connectAttr "ik_arm_L0_shoulder_jnt.rp" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[1].trp"
		;
connectAttr "ik_arm_L0_shoulder_jnt.rpt" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[1].trt"
		;
connectAttr "ik_arm_L0_shoulder_jnt.r" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[1].tr"
		;
connectAttr "ik_arm_L0_shoulder_jnt.ro" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[1].tro"
		;
connectAttr "ik_arm_L0_shoulder_jnt.s" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[1].ts"
		;
connectAttr "ik_arm_L0_shoulder_jnt.pm" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[1].tpm"
		;
connectAttr "ik_arm_L0_shoulder_jnt.jo" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[1].tjo"
		;
connectAttr "ik_arm_L0_shoulder_jnt.ssc" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[1].tsc"
		;
connectAttr "ik_arm_L0_shoulder_jnt.is" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[1].tis"
		;
connectAttr "driver_arm_L0_shoulder_jnt1_parentConstraint1.w1" "driver_arm_L0_shoulder_jnt1_parentConstraint1.tg[1].tw"
		;
connectAttr "reverse1.ox" "driver_arm_L0_shoulder_jnt1_parentConstraint1.w0";
connectAttr "L_arm_option.FkIkSwitch" "driver_arm_L0_shoulder_jnt1_parentConstraint1.w1"
		;
connectAttr "driver_arm_L0_elbow_jnt_parentConstraint1.ctx" "driver_arm_L0_elbow_jnt.tx"
		;
connectAttr "driver_arm_L0_elbow_jnt_parentConstraint1.cty" "driver_arm_L0_elbow_jnt.ty"
		;
connectAttr "driver_arm_L0_elbow_jnt_parentConstraint1.ctz" "driver_arm_L0_elbow_jnt.tz"
		;
connectAttr "driver_arm_L0_elbow_jnt_parentConstraint1.crx" "driver_arm_L0_elbow_jnt.rx"
		;
connectAttr "driver_arm_L0_elbow_jnt_parentConstraint1.cry" "driver_arm_L0_elbow_jnt.ry"
		;
connectAttr "driver_arm_L0_elbow_jnt_parentConstraint1.crz" "driver_arm_L0_elbow_jnt.rz"
		;
connectAttr "driver_arm_L0_elbow_jnt.ro" "driver_arm_L0_elbow_jnt_parentConstraint1.cro"
		;
connectAttr "driver_arm_L0_elbow_jnt.pim" "driver_arm_L0_elbow_jnt_parentConstraint1.cpim"
		;
connectAttr "driver_arm_L0_elbow_jnt.rp" "driver_arm_L0_elbow_jnt_parentConstraint1.crp"
		;
connectAttr "driver_arm_L0_elbow_jnt.rpt" "driver_arm_L0_elbow_jnt_parentConstraint1.crt"
		;
connectAttr "driver_arm_L0_elbow_jnt.jo" "driver_arm_L0_elbow_jnt_parentConstraint1.cjo"
		;
connectAttr "fk_arm_L0_elbow_jnt.t" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "fk_arm_L0_elbow_jnt.rp" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "fk_arm_L0_elbow_jnt.rpt" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "fk_arm_L0_elbow_jnt.r" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "fk_arm_L0_elbow_jnt.ro" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "fk_arm_L0_elbow_jnt.s" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "fk_arm_L0_elbow_jnt.pm" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "fk_arm_L0_elbow_jnt.jo" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "fk_arm_L0_elbow_jnt.ssc" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "fk_arm_L0_elbow_jnt.is" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "driver_arm_L0_elbow_jnt_parentConstraint1.w0" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "ik_arm_L0_elbow_jnt.t" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[1].tt"
		;
connectAttr "ik_arm_L0_elbow_jnt.rp" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "ik_arm_L0_elbow_jnt.rpt" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "ik_arm_L0_elbow_jnt.r" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[1].tr"
		;
connectAttr "ik_arm_L0_elbow_jnt.ro" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "ik_arm_L0_elbow_jnt.s" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[1].ts"
		;
connectAttr "ik_arm_L0_elbow_jnt.pm" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "ik_arm_L0_elbow_jnt.jo" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "ik_arm_L0_elbow_jnt.ssc" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "ik_arm_L0_elbow_jnt.is" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "driver_arm_L0_elbow_jnt_parentConstraint1.w1" "driver_arm_L0_elbow_jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "reverse1.ox" "driver_arm_L0_elbow_jnt_parentConstraint1.w0";
connectAttr "L_arm_option.FkIkSwitch" "driver_arm_L0_elbow_jnt_parentConstraint1.w1"
		;
connectAttr "driver_arm_L0_wrist_jnt_parentConstraint1.crx" "driver_arm_L0_wrist_jnt.rx"
		;
connectAttr "driver_arm_L0_wrist_jnt_parentConstraint1.cry" "driver_arm_L0_wrist_jnt.ry"
		;
connectAttr "driver_arm_L0_wrist_jnt_parentConstraint1.crz" "driver_arm_L0_wrist_jnt.rz"
		;
connectAttr "driver_arm_L0_wrist_jnt_parentConstraint1.ctx" "driver_arm_L0_wrist_jnt.tx"
		;
connectAttr "driver_arm_L0_wrist_jnt_parentConstraint1.cty" "driver_arm_L0_wrist_jnt.ty"
		;
connectAttr "driver_arm_L0_wrist_jnt_parentConstraint1.ctz" "driver_arm_L0_wrist_jnt.tz"
		;
connectAttr "driver_arm_L0_wrist_jnt.ro" "driver_arm_L0_wrist_jnt_parentConstraint1.cro"
		;
connectAttr "driver_arm_L0_wrist_jnt.pim" "driver_arm_L0_wrist_jnt_parentConstraint1.cpim"
		;
connectAttr "driver_arm_L0_wrist_jnt.rp" "driver_arm_L0_wrist_jnt_parentConstraint1.crp"
		;
connectAttr "driver_arm_L0_wrist_jnt.rpt" "driver_arm_L0_wrist_jnt_parentConstraint1.crt"
		;
connectAttr "driver_arm_L0_wrist_jnt.jo" "driver_arm_L0_wrist_jnt_parentConstraint1.cjo"
		;
connectAttr "fk_arm_L0_wrist_jnt.t" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "fk_arm_L0_wrist_jnt.rp" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "fk_arm_L0_wrist_jnt.rpt" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "fk_arm_L0_wrist_jnt.r" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "fk_arm_L0_wrist_jnt.ro" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "fk_arm_L0_wrist_jnt.s" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "fk_arm_L0_wrist_jnt.pm" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "fk_arm_L0_wrist_jnt.jo" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[0].tjo"
		;
connectAttr "fk_arm_L0_wrist_jnt.ssc" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[0].tsc"
		;
connectAttr "fk_arm_L0_wrist_jnt.is" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[0].tis"
		;
connectAttr "driver_arm_L0_wrist_jnt_parentConstraint1.w0" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "ik_arm_L0_wrist_jnt.t" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[1].tt"
		;
connectAttr "ik_arm_L0_wrist_jnt.rp" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[1].trp"
		;
connectAttr "ik_arm_L0_wrist_jnt.rpt" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[1].trt"
		;
connectAttr "ik_arm_L0_wrist_jnt.r" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[1].tr"
		;
connectAttr "ik_arm_L0_wrist_jnt.ro" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[1].tro"
		;
connectAttr "ik_arm_L0_wrist_jnt.s" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[1].ts"
		;
connectAttr "ik_arm_L0_wrist_jnt.pm" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[1].tpm"
		;
connectAttr "ik_arm_L0_wrist_jnt.jo" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[1].tjo"
		;
connectAttr "ik_arm_L0_wrist_jnt.ssc" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[1].tsc"
		;
connectAttr "ik_arm_L0_wrist_jnt.is" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[1].tis"
		;
connectAttr "driver_arm_L0_wrist_jnt_parentConstraint1.w1" "driver_arm_L0_wrist_jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "reverse1.ox" "driver_arm_L0_wrist_jnt_parentConstraint1.w0";
connectAttr "L_arm_option.FkIkSwitch" "driver_arm_L0_wrist_jnt_parentConstraint1.w1"
		;
connectAttr "reverse1.ox" "fk_grp.v";
connectAttr "makeNurbCircle1.oc" "fk_arm_L0_shoulder_cntShape.cr";
connectAttr "fk_arm_L0_shoulder_jnt_parentConstraint1.ctx" "fk_arm_L0_shoulder_jnt.tx"
		;
connectAttr "fk_arm_L0_shoulder_jnt_parentConstraint1.cty" "fk_arm_L0_shoulder_jnt.ty"
		;
connectAttr "fk_arm_L0_shoulder_jnt_parentConstraint1.ctz" "fk_arm_L0_shoulder_jnt.tz"
		;
connectAttr "fk_arm_L0_shoulder_jnt_parentConstraint1.crx" "fk_arm_L0_shoulder_jnt.rx"
		;
connectAttr "fk_arm_L0_shoulder_jnt_parentConstraint1.cry" "fk_arm_L0_shoulder_jnt.ry"
		;
connectAttr "fk_arm_L0_shoulder_jnt_parentConstraint1.crz" "fk_arm_L0_shoulder_jnt.rz"
		;
connectAttr "multiplyDivide13.ox" "fk_arm_L0_shoulder_jnt.sy";
connectAttr "multiplyDivide13.ox" "fk_arm_L0_shoulder_jnt.sz";
connectAttr "fk_arm_L0_elbow_jnt_parentConstraint1.ctx" "fk_arm_L0_elbow_jnt.tx"
		;
connectAttr "fk_arm_L0_elbow_jnt_parentConstraint1.cty" "fk_arm_L0_elbow_jnt.ty"
		;
connectAttr "fk_arm_L0_elbow_jnt_parentConstraint1.ctz" "fk_arm_L0_elbow_jnt.tz"
		;
connectAttr "fk_arm_L0_elbow_jnt_parentConstraint1.crx" "fk_arm_L0_elbow_jnt.rx"
		;
connectAttr "fk_arm_L0_elbow_jnt_parentConstraint1.cry" "fk_arm_L0_elbow_jnt.ry"
		;
connectAttr "fk_arm_L0_elbow_jnt_parentConstraint1.crz" "fk_arm_L0_elbow_jnt.rz"
		;
connectAttr "multiplyDivide17.ox" "fk_arm_L0_elbow_jnt.sy";
connectAttr "multiplyDivide17.ox" "fk_arm_L0_elbow_jnt.sz";
connectAttr "fk_arm_L0_shoulder_jnt.s" "fk_arm_L0_elbow_jnt.is";
connectAttr "fk_arm_L0_wrist_jnt_parentConstraint1.ctx" "fk_arm_L0_wrist_jnt.tx"
		;
connectAttr "fk_arm_L0_wrist_jnt_parentConstraint1.cty" "fk_arm_L0_wrist_jnt.ty"
		;
connectAttr "fk_arm_L0_wrist_jnt_parentConstraint1.ctz" "fk_arm_L0_wrist_jnt.tz"
		;
connectAttr "fk_arm_L0_wrist_jnt_parentConstraint1.crx" "fk_arm_L0_wrist_jnt.rx"
		;
connectAttr "fk_arm_L0_wrist_jnt_parentConstraint1.cry" "fk_arm_L0_wrist_jnt.ry"
		;
connectAttr "fk_arm_L0_wrist_jnt_parentConstraint1.crz" "fk_arm_L0_wrist_jnt.rz"
		;
connectAttr "fk_arm_L0_elbow_jnt.s" "fk_arm_L0_wrist_jnt.is";
connectAttr "fk_arm_L0_wrist_jnt.ro" "fk_arm_L0_wrist_jnt_parentConstraint1.cro"
		;
connectAttr "fk_arm_L0_wrist_jnt.pim" "fk_arm_L0_wrist_jnt_parentConstraint1.cpim"
		;
connectAttr "fk_arm_L0_wrist_jnt.rp" "fk_arm_L0_wrist_jnt_parentConstraint1.crp"
		;
connectAttr "fk_arm_L0_wrist_jnt.rpt" "fk_arm_L0_wrist_jnt_parentConstraint1.crt"
		;
connectAttr "fk_arm_L0_wrist_jnt.jo" "fk_arm_L0_wrist_jnt_parentConstraint1.cjo"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt|fk_arm_L0_wrist_cnt.t" "fk_arm_L0_wrist_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt|fk_arm_L0_wrist_cnt.rp" "fk_arm_L0_wrist_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt|fk_arm_L0_wrist_cnt.rpt" "fk_arm_L0_wrist_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt|fk_arm_L0_wrist_cnt.r" "fk_arm_L0_wrist_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt|fk_arm_L0_wrist_cnt.ro" "fk_arm_L0_wrist_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt|fk_arm_L0_wrist_cnt.s" "fk_arm_L0_wrist_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt|fk_arm_L0_wrist_cnt.pm" "fk_arm_L0_wrist_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "fk_arm_L0_wrist_jnt_parentConstraint1.w0" "fk_arm_L0_wrist_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "fk_arm_L0_elbow_jnt.ro" "fk_arm_L0_elbow_jnt_parentConstraint1.cro"
		;
connectAttr "fk_arm_L0_elbow_jnt.pim" "fk_arm_L0_elbow_jnt_parentConstraint1.cpim"
		;
connectAttr "fk_arm_L0_elbow_jnt.rp" "fk_arm_L0_elbow_jnt_parentConstraint1.crp"
		;
connectAttr "fk_arm_L0_elbow_jnt.rpt" "fk_arm_L0_elbow_jnt_parentConstraint1.crt"
		;
connectAttr "fk_arm_L0_elbow_jnt.jo" "fk_arm_L0_elbow_jnt_parentConstraint1.cjo"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt.t" "fk_arm_L0_elbow_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt.rp" "fk_arm_L0_elbow_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt.rpt" "fk_arm_L0_elbow_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt.r" "fk_arm_L0_elbow_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt.ro" "fk_arm_L0_elbow_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt.s" "fk_arm_L0_elbow_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt.pm" "fk_arm_L0_elbow_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "fk_arm_L0_elbow_jnt_parentConstraint1.w0" "fk_arm_L0_elbow_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "fk_arm_L0_shoulder_jnt.ro" "fk_arm_L0_shoulder_jnt_parentConstraint1.cro"
		;
connectAttr "fk_arm_L0_shoulder_jnt.pim" "fk_arm_L0_shoulder_jnt_parentConstraint1.cpim"
		;
connectAttr "fk_arm_L0_shoulder_jnt.rp" "fk_arm_L0_shoulder_jnt_parentConstraint1.crp"
		;
connectAttr "fk_arm_L0_shoulder_jnt.rpt" "fk_arm_L0_shoulder_jnt_parentConstraint1.crt"
		;
connectAttr "fk_arm_L0_shoulder_jnt.jo" "fk_arm_L0_shoulder_jnt_parentConstraint1.cjo"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt.t" "fk_arm_L0_shoulder_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt.rp" "fk_arm_L0_shoulder_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt.rpt" "fk_arm_L0_shoulder_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt.r" "fk_arm_L0_shoulder_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt.ro" "fk_arm_L0_shoulder_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt.s" "fk_arm_L0_shoulder_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt.pm" "fk_arm_L0_shoulder_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "fk_arm_L0_shoulder_jnt_parentConstraint1.w0" "fk_arm_L0_shoulder_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "fk_wrist_loc_pointConstraint1.ctx" "fk_wrist_loc.tx";
connectAttr "fk_wrist_loc_pointConstraint1.cty" "fk_wrist_loc.ty";
connectAttr "fk_wrist_loc_pointConstraint1.ctz" "fk_wrist_loc.tz";
connectAttr "fk_wrist_loc.pim" "fk_wrist_loc_pointConstraint1.cpim";
connectAttr "fk_wrist_loc.rp" "fk_wrist_loc_pointConstraint1.crp";
connectAttr "fk_wrist_loc.rpt" "fk_wrist_loc_pointConstraint1.crt";
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt|fk_arm_L0_wrist_cnt.t" "fk_wrist_loc_pointConstraint1.tg[0].tt"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt|fk_arm_L0_wrist_cnt.rp" "fk_wrist_loc_pointConstraint1.tg[0].trp"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt|fk_arm_L0_wrist_cnt.rpt" "fk_wrist_loc_pointConstraint1.tg[0].trt"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt|fk_arm_L0_wrist_cnt.pm" "fk_wrist_loc_pointConstraint1.tg[0].tpm"
		;
connectAttr "fk_wrist_loc_pointConstraint1.w0" "fk_wrist_loc_pointConstraint1.tg[0].tw"
		;
connectAttr "fk_elbow_loc_pointConstraint1.ctx" "fk_elbow_loc.tx";
connectAttr "fk_elbow_loc_pointConstraint1.cty" "fk_elbow_loc.ty";
connectAttr "fk_elbow_loc_pointConstraint1.ctz" "fk_elbow_loc.tz";
connectAttr "fk_elbow_loc.pim" "fk_elbow_loc_pointConstraint1.cpim";
connectAttr "fk_elbow_loc.rp" "fk_elbow_loc_pointConstraint1.crp";
connectAttr "fk_elbow_loc.rpt" "fk_elbow_loc_pointConstraint1.crt";
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt.t" "fk_elbow_loc_pointConstraint1.tg[0].tt"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt.rp" "fk_elbow_loc_pointConstraint1.tg[0].trp"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt.rpt" "fk_elbow_loc_pointConstraint1.tg[0].trt"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt.pm" "fk_elbow_loc_pointConstraint1.tg[0].tpm"
		;
connectAttr "fk_elbow_loc_pointConstraint1.w0" "fk_elbow_loc_pointConstraint1.tg[0].tw"
		;
connectAttr "fk_shoulder_loc_pointConstraint1.ctx" "fk_shoulder_loc.tx";
connectAttr "fk_shoulder_loc_pointConstraint1.cty" "fk_shoulder_loc.ty";
connectAttr "fk_shoulder_loc_pointConstraint1.ctz" "fk_shoulder_loc.tz";
connectAttr "fk_shoulder_loc.pim" "fk_shoulder_loc_pointConstraint1.cpim";
connectAttr "fk_shoulder_loc.rp" "fk_shoulder_loc_pointConstraint1.crp";
connectAttr "fk_shoulder_loc.rpt" "fk_shoulder_loc_pointConstraint1.crt";
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt.t" "fk_shoulder_loc_pointConstraint1.tg[0].tt"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt.rp" "fk_shoulder_loc_pointConstraint1.tg[0].trp"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt.rpt" "fk_shoulder_loc_pointConstraint1.tg[0].trt"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt.pm" "fk_shoulder_loc_pointConstraint1.tg[0].tpm"
		;
connectAttr "fk_shoulder_loc_pointConstraint1.w0" "fk_shoulder_loc_pointConstraint1.tg[0].tw"
		;
connectAttr "L_arm_option.FkIkSwitch" "ik_grp.v";
connectAttr "ik_arm_L0_shoulder_jnt_parentConstraint1.ctx" "ik_arm_L0_shoulder_jnt.tx"
		;
connectAttr "ik_arm_L0_shoulder_jnt_parentConstraint1.cty" "ik_arm_L0_shoulder_jnt.ty"
		;
connectAttr "ik_arm_L0_shoulder_jnt_parentConstraint1.ctz" "ik_arm_L0_shoulder_jnt.tz"
		;
connectAttr "ik_arm_L0_shoulder_jnt_parentConstraint1.crx" "ik_arm_L0_shoulder_jnt.rx"
		;
connectAttr "ik_arm_L0_shoulder_jnt_parentConstraint1.cry" "ik_arm_L0_shoulder_jnt.ry"
		;
connectAttr "ik_arm_L0_shoulder_jnt_parentConstraint1.crz" "ik_arm_L0_shoulder_jnt.rz"
		;
connectAttr "condition1.ocr" "ik_arm_L0_shoulder_jnt.sx";
connectAttr "multiplyDivide4.ox" "ik_arm_L0_shoulder_jnt.sy";
connectAttr "multiplyDivide4.ox" "ik_arm_L0_shoulder_jnt.sz";
connectAttr "condition1.ocr" "ik_arm_L0_elbow_jnt.sx";
connectAttr "ik_arm_L0_shoulder_jnt.s" "ik_arm_L0_elbow_jnt.is";
connectAttr "ik_arm_L0_wrist_jnt_orientConstraint1.crx" "ik_arm_L0_wrist_jnt.rx"
		;
connectAttr "ik_arm_L0_wrist_jnt_orientConstraint1.cry" "ik_arm_L0_wrist_jnt.ry"
		;
connectAttr "ik_arm_L0_wrist_jnt_orientConstraint1.crz" "ik_arm_L0_wrist_jnt.rz"
		;
connectAttr "ik_arm_L0_elbow_jnt.s" "ik_arm_L0_wrist_jnt.is";
connectAttr "ik_arm_L0_wrist_jnt.ro" "ik_arm_L0_wrist_jnt_orientConstraint1.cro"
		;
connectAttr "ik_arm_L0_wrist_jnt.pim" "ik_arm_L0_wrist_jnt_orientConstraint1.cpim"
		;
connectAttr "ik_arm_L0_wrist_jnt.jo" "ik_arm_L0_wrist_jnt_orientConstraint1.cjo"
		;
connectAttr "ik_arm_L0_wrist_jnt.is" "ik_arm_L0_wrist_jnt_orientConstraint1.is";
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.r" "ik_arm_L0_wrist_jnt_orientConstraint1.tg[0].tr"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.ro" "ik_arm_L0_wrist_jnt_orientConstraint1.tg[0].tro"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.pm" "ik_arm_L0_wrist_jnt_orientConstraint1.tg[0].tpm"
		;
connectAttr "ik_arm_L0_wrist_jnt_orientConstraint1.w0" "ik_arm_L0_wrist_jnt_orientConstraint1.tg[0].tw"
		;
connectAttr "ik_arm_L0_wrist_jnt.tx" "effector1.tx";
connectAttr "ik_arm_L0_wrist_jnt.ty" "effector1.ty";
connectAttr "ik_arm_L0_wrist_jnt.tz" "effector1.tz";
connectAttr "ik_arm_L0_wrist_jnt.opm" "effector1.opm";
connectAttr "ik_arm_L0_shoulder_jnt.ro" "ik_arm_L0_shoulder_jnt_parentConstraint1.cro"
		;
connectAttr "ik_arm_L0_shoulder_jnt.pim" "ik_arm_L0_shoulder_jnt_parentConstraint1.cpim"
		;
connectAttr "ik_arm_L0_shoulder_jnt.rp" "ik_arm_L0_shoulder_jnt_parentConstraint1.crp"
		;
connectAttr "ik_arm_L0_shoulder_jnt.rpt" "ik_arm_L0_shoulder_jnt_parentConstraint1.crt"
		;
connectAttr "ik_arm_L0_shoulder_jnt.jo" "ik_arm_L0_shoulder_jnt_parentConstraint1.cjo"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_shoulder_cnt|ik_arm_L0_shoulder_cnt.t" "ik_arm_L0_shoulder_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_shoulder_cnt|ik_arm_L0_shoulder_cnt.rp" "ik_arm_L0_shoulder_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_shoulder_cnt|ik_arm_L0_shoulder_cnt.rpt" "ik_arm_L0_shoulder_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_shoulder_cnt|ik_arm_L0_shoulder_cnt.r" "ik_arm_L0_shoulder_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_shoulder_cnt|ik_arm_L0_shoulder_cnt.ro" "ik_arm_L0_shoulder_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_shoulder_cnt|ik_arm_L0_shoulder_cnt.s" "ik_arm_L0_shoulder_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_shoulder_cnt|ik_arm_L0_shoulder_cnt.pm" "ik_arm_L0_shoulder_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "ik_arm_L0_shoulder_jnt_parentConstraint1.w0" "ik_arm_L0_shoulder_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "ik_arm_L0_shoulder_jnt.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_pointConstraint1.ctx" "ikHandle1.tx";
connectAttr "ikHandle1_pointConstraint1.cty" "ikHandle1.ty";
connectAttr "ikHandle1_pointConstraint1.ctz" "ikHandle1.tz";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "ik_arm_L0_shoulder_jnt.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "ik_arm_L0_shoulder_jnt.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "L_arm_pv.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "L_arm_pv.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "L_arm_pv.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "L_arm_pv.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "ikHandle1.pim" "ikHandle1_pointConstraint1.cpim";
connectAttr "ikHandle1.rp" "ikHandle1_pointConstraint1.crp";
connectAttr "ikHandle1.rpt" "ikHandle1_pointConstraint1.crt";
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.t" "ikHandle1_pointConstraint1.tg[0].tt"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.rp" "ikHandle1_pointConstraint1.tg[0].trp"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.rpt" "ikHandle1_pointConstraint1.tg[0].trt"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.pm" "ikHandle1_pointConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle1_pointConstraint1.w0" "ikHandle1_pointConstraint1.tg[0].tw"
		;
connectAttr "L_arm_pv_offset_parentConstraint1.ctx" "L_arm_pv_offset.tx";
connectAttr "L_arm_pv_offset_parentConstraint1.cty" "L_arm_pv_offset.ty";
connectAttr "L_arm_pv_offset_parentConstraint1.ctz" "L_arm_pv_offset.tz";
connectAttr "L_arm_pv_offset_parentConstraint1.crx" "L_arm_pv_offset.rx";
connectAttr "L_arm_pv_offset_parentConstraint1.cry" "L_arm_pv_offset.ry";
connectAttr "L_arm_pv_offset_parentConstraint1.crz" "L_arm_pv_offset.rz";
connectAttr "L_arm_pv_offset.ro" "L_arm_pv_offset_parentConstraint1.cro";
connectAttr "L_arm_pv_offset.pim" "L_arm_pv_offset_parentConstraint1.cpim";
connectAttr "L_arm_pv_offset.rp" "L_arm_pv_offset_parentConstraint1.crp";
connectAttr "L_arm_pv_offset.rpt" "L_arm_pv_offset_parentConstraint1.crt";
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.t" "L_arm_pv_offset_parentConstraint1.tg[0].tt"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.rp" "L_arm_pv_offset_parentConstraint1.tg[0].trp"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.rpt" "L_arm_pv_offset_parentConstraint1.tg[0].trt"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.r" "L_arm_pv_offset_parentConstraint1.tg[0].tr"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.ro" "L_arm_pv_offset_parentConstraint1.tg[0].tro"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.s" "L_arm_pv_offset_parentConstraint1.tg[0].ts"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.pm" "L_arm_pv_offset_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_arm_pv_offset_parentConstraint1.w0" "L_arm_pv_offset_parentConstraint1.tg[0].tw"
		;
connectAttr "main_cnt.t" "L_arm_pv_offset_parentConstraint1.tg[1].tt";
connectAttr "main_cnt.rp" "L_arm_pv_offset_parentConstraint1.tg[1].trp";
connectAttr "main_cnt.rpt" "L_arm_pv_offset_parentConstraint1.tg[1].trt";
connectAttr "main_cnt.r" "L_arm_pv_offset_parentConstraint1.tg[1].tr";
connectAttr "main_cnt.ro" "L_arm_pv_offset_parentConstraint1.tg[1].tro";
connectAttr "main_cnt.s" "L_arm_pv_offset_parentConstraint1.tg[1].ts";
connectAttr "main_cnt.pm" "L_arm_pv_offset_parentConstraint1.tg[1].tpm";
connectAttr "L_arm_pv_offset_parentConstraint1.w1" "L_arm_pv_offset_parentConstraint1.tg[1].tw"
		;
connectAttr "L_arm_pv_offset_parentConstraint1_ik_arm_L0_wrist_cntW0.o" "L_arm_pv_offset_parentConstraint1.w0"
		;
connectAttr "L_arm_pv_offset_parentConstraint1_main_cntW1.o" "L_arm_pv_offset_parentConstraint1.w1"
		;
connectAttr "L_arm_option.FkIkSwitch" "ik_L0_elbowSnap_cnt_offset.v";
connectAttr "ik_L0_elbowSnap_cnt_offset_pointConstraint1.ctx" "ik_L0_elbowSnap_cnt_offset.tx"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset_pointConstraint1.cty" "ik_L0_elbowSnap_cnt_offset.ty"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset_pointConstraint1.ctz" "ik_L0_elbowSnap_cnt_offset.tz"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset_orientConstraint1.crx" "ik_L0_elbowSnap_cnt_offset.rx"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset_orientConstraint1.cry" "ik_L0_elbowSnap_cnt_offset.ry"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset_orientConstraint1.crz" "ik_L0_elbowSnap_cnt_offset.rz"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset.pim" "ik_L0_elbowSnap_cnt_offset_pointConstraint1.cpim"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset.rp" "ik_L0_elbowSnap_cnt_offset_pointConstraint1.crp"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset.rpt" "ik_L0_elbowSnap_cnt_offset_pointConstraint1.crt"
		;
connectAttr "driver_arm_L0_elbow_jnt.t" "ik_L0_elbowSnap_cnt_offset_pointConstraint1.tg[0].tt"
		;
connectAttr "driver_arm_L0_elbow_jnt.rp" "ik_L0_elbowSnap_cnt_offset_pointConstraint1.tg[0].trp"
		;
connectAttr "driver_arm_L0_elbow_jnt.rpt" "ik_L0_elbowSnap_cnt_offset_pointConstraint1.tg[0].trt"
		;
connectAttr "driver_arm_L0_elbow_jnt.pm" "ik_L0_elbowSnap_cnt_offset_pointConstraint1.tg[0].tpm"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset_pointConstraint1.w0" "ik_L0_elbowSnap_cnt_offset_pointConstraint1.tg[0].tw"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset.ro" "ik_L0_elbowSnap_cnt_offset_orientConstraint1.cro"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset.pim" "ik_L0_elbowSnap_cnt_offset_orientConstraint1.cpim"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.r" "ik_L0_elbowSnap_cnt_offset_orientConstraint1.tg[0].tr"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.ro" "ik_L0_elbowSnap_cnt_offset_orientConstraint1.tg[0].tro"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.pm" "ik_L0_elbowSnap_cnt_offset_orientConstraint1.tg[0].tpm"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.jo" "ik_L0_elbowSnap_cnt_offset_orientConstraint1.tg[0].tjo"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset_orientConstraint1.w0" "ik_L0_elbowSnap_cnt_offset_orientConstraint1.tg[0].tw"
		;
connectAttr "driver_arm_L0_elbow_jnt.r" "ik_L0_elbowSnap_cnt_offset_orientConstraint1.tg[1].tr"
		;
connectAttr "driver_arm_L0_elbow_jnt.ro" "ik_L0_elbowSnap_cnt_offset_orientConstraint1.tg[1].tro"
		;
connectAttr "driver_arm_L0_elbow_jnt.pm" "ik_L0_elbowSnap_cnt_offset_orientConstraint1.tg[1].tpm"
		;
connectAttr "driver_arm_L0_elbow_jnt.jo" "ik_L0_elbowSnap_cnt_offset_orientConstraint1.tg[1].tjo"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset_orientConstraint1.w1" "ik_L0_elbowSnap_cnt_offset_orientConstraint1.tg[1].tw"
		;
connectAttr "ik_arm_loc_pointConstraint1.ctx" "ik_arm_loc.tx";
connectAttr "ik_arm_loc_pointConstraint1.cty" "ik_arm_loc.ty";
connectAttr "ik_arm_loc_pointConstraint1.ctz" "ik_arm_loc.tz";
connectAttr "ik_arm_loc.pim" "ik_arm_loc_pointConstraint1.cpim";
connectAttr "ik_arm_loc.rp" "ik_arm_loc_pointConstraint1.crp";
connectAttr "ik_arm_loc.rpt" "ik_arm_loc_pointConstraint1.crt";
connectAttr "ik_arm_L0_shoulder_jnt.t" "ik_arm_loc_pointConstraint1.tg[0].tt";
connectAttr "ik_arm_L0_shoulder_jnt.rp" "ik_arm_loc_pointConstraint1.tg[0].trp";
connectAttr "ik_arm_L0_shoulder_jnt.rpt" "ik_arm_loc_pointConstraint1.tg[0].trt"
		;
connectAttr "ik_arm_L0_shoulder_jnt.pm" "ik_arm_loc_pointConstraint1.tg[0].tpm";
connectAttr "ik_arm_loc_pointConstraint1.w0" "ik_arm_loc_pointConstraint1.tg[0].tw"
		;
connectAttr "ik_elbow_loc_pointConstraint1.ctx" "ik_elbow_loc.tx";
connectAttr "ik_elbow_loc_pointConstraint1.cty" "ik_elbow_loc.ty";
connectAttr "ik_elbow_loc_pointConstraint1.ctz" "ik_elbow_loc.tz";
connectAttr "ik_elbow_loc.pim" "ik_elbow_loc_pointConstraint1.cpim";
connectAttr "ik_elbow_loc.rp" "ik_elbow_loc_pointConstraint1.crp";
connectAttr "ik_elbow_loc.rpt" "ik_elbow_loc_pointConstraint1.crt";
connectAttr "ik_arm_L0_elbowSnap_cnt.t" "ik_elbow_loc_pointConstraint1.tg[0].tt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rp" "ik_elbow_loc_pointConstraint1.tg[0].trp"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rpt" "ik_elbow_loc_pointConstraint1.tg[0].trt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.pm" "ik_elbow_loc_pointConstraint1.tg[0].tpm"
		;
connectAttr "ik_elbow_loc_pointConstraint1.w0" "ik_elbow_loc_pointConstraint1.tg[0].tw"
		;
connectAttr "ik_wrist_loc_pointConstraint1.ctx" "ik_wrist_loc.tx";
connectAttr "ik_wrist_loc_pointConstraint1.cty" "ik_wrist_loc.ty";
connectAttr "ik_wrist_loc_pointConstraint1.ctz" "ik_wrist_loc.tz";
connectAttr "ik_wrist_loc.pim" "ik_wrist_loc_pointConstraint1.cpim";
connectAttr "ik_wrist_loc.rp" "ik_wrist_loc_pointConstraint1.crp";
connectAttr "ik_wrist_loc.rpt" "ik_wrist_loc_pointConstraint1.crt";
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.t" "ik_wrist_loc_pointConstraint1.tg[0].tt"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.rp" "ik_wrist_loc_pointConstraint1.tg[0].trp"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.rpt" "ik_wrist_loc_pointConstraint1.tg[0].trt"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.pm" "ik_wrist_loc_pointConstraint1.tg[0].tpm"
		;
connectAttr "ik_wrist_loc_pointConstraint1.w0" "ik_wrist_loc_pointConstraint1.tg[0].tw"
		;
connectAttr "unitConversion15.o" "arm_L0_twist01_cntOffset.rx";
connectAttr "arm_L0_twist01_cntOffset_orientConstraint1.cry" "arm_L0_twist01_cntOffset.ry"
		;
connectAttr "arm_L0_twist01_cntOffset_orientConstraint1.crz" "arm_L0_twist01_cntOffset.rz"
		;
connectAttr "arm_L0_twist01_cntOffset_pointConstraint1.ctx" "arm_L0_twist01_cntOffset.tx"
		;
connectAttr "arm_L0_twist01_cntOffset_pointConstraint1.cty" "arm_L0_twist01_cntOffset.ty"
		;
connectAttr "arm_L0_twist01_cntOffset_pointConstraint1.ctz" "arm_L0_twist01_cntOffset.tz"
		;
connectAttr "arm_L0_twist01_cntOffset.pim" "arm_L0_twist01_cntOffset_pointConstraint1.cpim"
		;
connectAttr "arm_L0_twist01_cntOffset.rp" "arm_L0_twist01_cntOffset_pointConstraint1.crp"
		;
connectAttr "arm_L0_twist01_cntOffset.rpt" "arm_L0_twist01_cntOffset_pointConstraint1.crt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.t" "arm_L0_twist01_cntOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.rp" "arm_L0_twist01_cntOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.rpt" "arm_L0_twist01_cntOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.pm" "arm_L0_twist01_cntOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "arm_L0_twist01_cntOffset_pointConstraint1.w0" "arm_L0_twist01_cntOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.t" "arm_L0_twist01_cntOffset_pointConstraint1.tg[1].tt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rp" "arm_L0_twist01_cntOffset_pointConstraint1.tg[1].trp"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rpt" "arm_L0_twist01_cntOffset_pointConstraint1.tg[1].trt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.pm" "arm_L0_twist01_cntOffset_pointConstraint1.tg[1].tpm"
		;
connectAttr "arm_L0_twist01_cntOffset_pointConstraint1.w1" "arm_L0_twist01_cntOffset_pointConstraint1.tg[1].tw"
		;
connectAttr "arm_L0_twist01_cntOffset.ro" "arm_L0_twist01_cntOffset_orientConstraint1.cro"
		;
connectAttr "arm_L0_twist01_cntOffset.pim" "arm_L0_twist01_cntOffset_orientConstraint1.cpim"
		;
connectAttr "upperarm_L0_Twist_Start_jnt.r" "arm_L0_twist01_cntOffset_orientConstraint1.tg[0].tr"
		;
connectAttr "upperarm_L0_Twist_Start_jnt.ro" "arm_L0_twist01_cntOffset_orientConstraint1.tg[0].tro"
		;
connectAttr "upperarm_L0_Twist_Start_jnt.pm" "arm_L0_twist01_cntOffset_orientConstraint1.tg[0].tpm"
		;
connectAttr "upperarm_L0_Twist_Start_jnt.jo" "arm_L0_twist01_cntOffset_orientConstraint1.tg[0].tjo"
		;
connectAttr "arm_L0_twist01_cntOffset_orientConstraint1.w0" "arm_L0_twist01_cntOffset_orientConstraint1.tg[0].tw"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.r" "arm_L0_twist01_cntOffset_orientConstraint1.tg[1].tr"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.ro" "arm_L0_twist01_cntOffset_orientConstraint1.tg[1].tro"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.pm" "arm_L0_twist01_cntOffset_orientConstraint1.tg[1].tpm"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.jo" "arm_L0_twist01_cntOffset_orientConstraint1.tg[1].tjo"
		;
connectAttr "arm_L0_twist01_cntOffset_orientConstraint1.w1" "arm_L0_twist01_cntOffset_orientConstraint1.tg[1].tw"
		;
connectAttr "unitConversion13.o" "arm_L0_twist02_cntOffset.rx";
connectAttr "arm_L0_twist02_cntOffset_orientConstraint1.cry" "arm_L0_twist02_cntOffset.ry"
		;
connectAttr "arm_L0_twist02_cntOffset_orientConstraint1.crz" "arm_L0_twist02_cntOffset.rz"
		;
connectAttr "arm_L0_twist02_cntOffset_pointConstraint1.ctx" "arm_L0_twist02_cntOffset.tx"
		;
connectAttr "arm_L0_twist02_cntOffset_pointConstraint1.cty" "arm_L0_twist02_cntOffset.ty"
		;
connectAttr "arm_L0_twist02_cntOffset_pointConstraint1.ctz" "arm_L0_twist02_cntOffset.tz"
		;
connectAttr "arm_L0_twist02_cntOffset.pim" "arm_L0_twist02_cntOffset_pointConstraint1.cpim"
		;
connectAttr "arm_L0_twist02_cntOffset.rp" "arm_L0_twist02_cntOffset_pointConstraint1.crp"
		;
connectAttr "arm_L0_twist02_cntOffset.rpt" "arm_L0_twist02_cntOffset_pointConstraint1.crt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.t" "arm_L0_twist02_cntOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.rp" "arm_L0_twist02_cntOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.rpt" "arm_L0_twist02_cntOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.pm" "arm_L0_twist02_cntOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "arm_L0_twist02_cntOffset_pointConstraint1.w0" "arm_L0_twist02_cntOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.t" "arm_L0_twist02_cntOffset_pointConstraint1.tg[1].tt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rp" "arm_L0_twist02_cntOffset_pointConstraint1.tg[1].trp"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rpt" "arm_L0_twist02_cntOffset_pointConstraint1.tg[1].trt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.pm" "arm_L0_twist02_cntOffset_pointConstraint1.tg[1].tpm"
		;
connectAttr "arm_L0_twist02_cntOffset_pointConstraint1.w1" "arm_L0_twist02_cntOffset_pointConstraint1.tg[1].tw"
		;
connectAttr "arm_L0_twist02_cntOffset.ro" "arm_L0_twist02_cntOffset_orientConstraint1.cro"
		;
connectAttr "arm_L0_twist02_cntOffset.pim" "arm_L0_twist02_cntOffset_orientConstraint1.cpim"
		;
connectAttr "upperarm_L0_Twist_Start_jnt.r" "arm_L0_twist02_cntOffset_orientConstraint1.tg[0].tr"
		;
connectAttr "upperarm_L0_Twist_Start_jnt.ro" "arm_L0_twist02_cntOffset_orientConstraint1.tg[0].tro"
		;
connectAttr "upperarm_L0_Twist_Start_jnt.pm" "arm_L0_twist02_cntOffset_orientConstraint1.tg[0].tpm"
		;
connectAttr "upperarm_L0_Twist_Start_jnt.jo" "arm_L0_twist02_cntOffset_orientConstraint1.tg[0].tjo"
		;
connectAttr "arm_L0_twist02_cntOffset_orientConstraint1.w0" "arm_L0_twist02_cntOffset_orientConstraint1.tg[0].tw"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.r" "arm_L0_twist02_cntOffset_orientConstraint1.tg[1].tr"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.ro" "arm_L0_twist02_cntOffset_orientConstraint1.tg[1].tro"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.pm" "arm_L0_twist02_cntOffset_orientConstraint1.tg[1].tpm"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.jo" "arm_L0_twist02_cntOffset_orientConstraint1.tg[1].tjo"
		;
connectAttr "arm_L0_twist02_cntOffset_orientConstraint1.w1" "arm_L0_twist02_cntOffset_orientConstraint1.tg[1].tw"
		;
connectAttr "arm_L0_twist03_cntOffste_pointConstraint1.ctx" "arm_L0_twist03_cntOffste.tx"
		;
connectAttr "arm_L0_twist03_cntOffste_pointConstraint1.cty" "arm_L0_twist03_cntOffste.ty"
		;
connectAttr "arm_L0_twist03_cntOffste_pointConstraint1.ctz" "arm_L0_twist03_cntOffste.tz"
		;
connectAttr "arm_L0_twist03_cntOffste_orientConstraint1.crx" "arm_L0_twist03_cntOffste.rx"
		;
connectAttr "arm_L0_twist03_cntOffste_orientConstraint1.cry" "arm_L0_twist03_cntOffste.ry"
		;
connectAttr "arm_L0_twist03_cntOffste_orientConstraint1.crz" "arm_L0_twist03_cntOffste.rz"
		;
connectAttr "arm_L0_twist03_cntOffste.ro" "arm_L0_twist03_cntOffste_orientConstraint1.cro"
		;
connectAttr "arm_L0_twist03_cntOffste.pim" "arm_L0_twist03_cntOffste_orientConstraint1.cpim"
		;
connectAttr "elbow_L0_Twist_Start_jnt.r" "arm_L0_twist03_cntOffste_orientConstraint1.tg[0].tr"
		;
connectAttr "elbow_L0_Twist_Start_jnt.ro" "arm_L0_twist03_cntOffste_orientConstraint1.tg[0].tro"
		;
connectAttr "elbow_L0_Twist_Start_jnt.pm" "arm_L0_twist03_cntOffste_orientConstraint1.tg[0].tpm"
		;
connectAttr "elbow_L0_Twist_Start_jnt.jo" "arm_L0_twist03_cntOffste_orientConstraint1.tg[0].tjo"
		;
connectAttr "arm_L0_twist03_cntOffste_orientConstraint1.w0" "arm_L0_twist03_cntOffste_orientConstraint1.tg[0].tw"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.r" "arm_L0_twist03_cntOffste_orientConstraint1.tg[1].tr"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.ro" "arm_L0_twist03_cntOffste_orientConstraint1.tg[1].tro"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.pm" "arm_L0_twist03_cntOffste_orientConstraint1.tg[1].tpm"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.jo" "arm_L0_twist03_cntOffste_orientConstraint1.tg[1].tjo"
		;
connectAttr "arm_L0_twist03_cntOffste_orientConstraint1.w1" "arm_L0_twist03_cntOffste_orientConstraint1.tg[1].tw"
		;
connectAttr "arm_L0_twist03_cntOffste.pim" "arm_L0_twist03_cntOffste_pointConstraint1.cpim"
		;
connectAttr "arm_L0_twist03_cntOffste.rp" "arm_L0_twist03_cntOffste_pointConstraint1.crp"
		;
connectAttr "arm_L0_twist03_cntOffste.rpt" "arm_L0_twist03_cntOffste_pointConstraint1.crt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.t" "arm_L0_twist03_cntOffste_pointConstraint1.tg[0].tt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rp" "arm_L0_twist03_cntOffste_pointConstraint1.tg[0].trp"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rpt" "arm_L0_twist03_cntOffste_pointConstraint1.tg[0].trt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.pm" "arm_L0_twist03_cntOffste_pointConstraint1.tg[0].tpm"
		;
connectAttr "arm_L0_twist03_cntOffste_pointConstraint1.w0" "arm_L0_twist03_cntOffste_pointConstraint1.tg[0].tw"
		;
connectAttr "driver_arm_L0_wrist_jnt.t" "arm_L0_twist03_cntOffste_pointConstraint1.tg[1].tt"
		;
connectAttr "driver_arm_L0_wrist_jnt.rp" "arm_L0_twist03_cntOffste_pointConstraint1.tg[1].trp"
		;
connectAttr "driver_arm_L0_wrist_jnt.rpt" "arm_L0_twist03_cntOffste_pointConstraint1.tg[1].trt"
		;
connectAttr "driver_arm_L0_wrist_jnt.pm" "arm_L0_twist03_cntOffste_pointConstraint1.tg[1].tpm"
		;
connectAttr "arm_L0_twist03_cntOffste_pointConstraint1.w1" "arm_L0_twist03_cntOffste_pointConstraint1.tg[1].tw"
		;
connectAttr "arm_L0_twist04_cntOffset_pointConstraint1.ctx" "arm_L0_twist04_cntOffset.tx"
		;
connectAttr "arm_L0_twist04_cntOffset_pointConstraint1.cty" "arm_L0_twist04_cntOffset.ty"
		;
connectAttr "arm_L0_twist04_cntOffset_pointConstraint1.ctz" "arm_L0_twist04_cntOffset.tz"
		;
connectAttr "arm_L0_twist04_cntOffset_orientConstraint1.crx" "arm_L0_twist04_cntOffset.rx"
		;
connectAttr "arm_L0_twist04_cntOffset_orientConstraint1.cry" "arm_L0_twist04_cntOffset.ry"
		;
connectAttr "arm_L0_twist04_cntOffset_orientConstraint1.crz" "arm_L0_twist04_cntOffset.rz"
		;
connectAttr "arm_L0_twist04_cntOffset.ro" "arm_L0_twist04_cntOffset_orientConstraint1.cro"
		;
connectAttr "arm_L0_twist04_cntOffset.pim" "arm_L0_twist04_cntOffset_orientConstraint1.cpim"
		;
connectAttr "elbow_L0_Twist_Start_jnt.r" "arm_L0_twist04_cntOffset_orientConstraint1.tg[0].tr"
		;
connectAttr "elbow_L0_Twist_Start_jnt.ro" "arm_L0_twist04_cntOffset_orientConstraint1.tg[0].tro"
		;
connectAttr "elbow_L0_Twist_Start_jnt.pm" "arm_L0_twist04_cntOffset_orientConstraint1.tg[0].tpm"
		;
connectAttr "elbow_L0_Twist_Start_jnt.jo" "arm_L0_twist04_cntOffset_orientConstraint1.tg[0].tjo"
		;
connectAttr "arm_L0_twist04_cntOffset_orientConstraint1.w0" "arm_L0_twist04_cntOffset_orientConstraint1.tg[0].tw"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.r" "arm_L0_twist04_cntOffset_orientConstraint1.tg[1].tr"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.ro" "arm_L0_twist04_cntOffset_orientConstraint1.tg[1].tro"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.pm" "arm_L0_twist04_cntOffset_orientConstraint1.tg[1].tpm"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.jo" "arm_L0_twist04_cntOffset_orientConstraint1.tg[1].tjo"
		;
connectAttr "arm_L0_twist04_cntOffset_orientConstraint1.w1" "arm_L0_twist04_cntOffset_orientConstraint1.tg[1].tw"
		;
connectAttr "arm_L0_twist04_cntOffset.pim" "arm_L0_twist04_cntOffset_pointConstraint1.cpim"
		;
connectAttr "arm_L0_twist04_cntOffset.rp" "arm_L0_twist04_cntOffset_pointConstraint1.crp"
		;
connectAttr "arm_L0_twist04_cntOffset.rpt" "arm_L0_twist04_cntOffset_pointConstraint1.crt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.t" "arm_L0_twist04_cntOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rp" "arm_L0_twist04_cntOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rpt" "arm_L0_twist04_cntOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.pm" "arm_L0_twist04_cntOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "arm_L0_twist04_cntOffset_pointConstraint1.w0" "arm_L0_twist04_cntOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "driver_arm_L0_wrist_jnt.t" "arm_L0_twist04_cntOffset_pointConstraint1.tg[1].tt"
		;
connectAttr "driver_arm_L0_wrist_jnt.rp" "arm_L0_twist04_cntOffset_pointConstraint1.tg[1].trp"
		;
connectAttr "driver_arm_L0_wrist_jnt.rpt" "arm_L0_twist04_cntOffset_pointConstraint1.tg[1].trt"
		;
connectAttr "driver_arm_L0_wrist_jnt.pm" "arm_L0_twist04_cntOffset_pointConstraint1.tg[1].tpm"
		;
connectAttr "arm_L0_twist04_cntOffset_pointConstraint1.w1" "arm_L0_twist04_cntOffset_pointConstraint1.tg[1].tw"
		;
connectAttr "upperarm_L0_Twist_Start_jnt_pointConstraint1.ctx" "upperarm_L0_Twist_Start_jnt.tx"
		;
connectAttr "upperarm_L0_Twist_Start_jnt_pointConstraint1.cty" "upperarm_L0_Twist_Start_jnt.ty"
		;
connectAttr "upperarm_L0_Twist_Start_jnt_pointConstraint1.ctz" "upperarm_L0_Twist_Start_jnt.tz"
		;
connectAttr "upperarm_L0_Twist_Start_jnt.s" "upperarm_L0_Twist_End_jnt.is";
connectAttr "condition4.ocr" "upperarm_L0_Twist_End_jnt.tx";
connectAttr "upperarm_L0_Twist_End_jnt.tx" "effector2.tx";
connectAttr "upperarm_L0_Twist_End_jnt.ty" "effector2.ty";
connectAttr "upperarm_L0_Twist_End_jnt.tz" "effector2.tz";
connectAttr "upperarm_L0_Twist_End_jnt.opm" "effector2.opm";
connectAttr "upperarm_L0_Twist_Start_jnt.pim" "upperarm_L0_Twist_Start_jnt_pointConstraint1.cpim"
		;
connectAttr "upperarm_L0_Twist_Start_jnt.rp" "upperarm_L0_Twist_Start_jnt_pointConstraint1.crp"
		;
connectAttr "upperarm_L0_Twist_Start_jnt.rpt" "upperarm_L0_Twist_Start_jnt_pointConstraint1.crt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.t" "upperarm_L0_Twist_Start_jnt_pointConstraint1.tg[0].tt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.rp" "upperarm_L0_Twist_Start_jnt_pointConstraint1.tg[0].trp"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.rpt" "upperarm_L0_Twist_Start_jnt_pointConstraint1.tg[0].trt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.pm" "upperarm_L0_Twist_Start_jnt_pointConstraint1.tg[0].tpm"
		;
connectAttr "upperarm_L0_Twist_Start_jnt_pointConstraint1.w0" "upperarm_L0_Twist_Start_jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt_pointConstraint1.ctx" "upperarm_L0_NoTwist_Start_jnt.tx"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt_pointConstraint1.cty" "upperarm_L0_NoTwist_Start_jnt.ty"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt_pointConstraint1.ctz" "upperarm_L0_NoTwist_Start_jnt.tz"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.s" "upperarm_L0_NoTwist_End_jnt.is";
connectAttr "condition4.ocr" "upperarm_L0_NoTwist_End_jnt.tx";
connectAttr "upperarm_L0_NoTwist_End_jnt.tx" "effector3.tx";
connectAttr "upperarm_L0_NoTwist_End_jnt.ty" "effector3.ty";
connectAttr "upperarm_L0_NoTwist_End_jnt.tz" "effector3.tz";
connectAttr "upperarm_L0_NoTwist_End_jnt.opm" "effector3.opm";
connectAttr "upperarm_L0_NoTwist_Start_jnt.pim" "upperarm_L0_NoTwist_Start_jnt_pointConstraint1.cpim"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.rp" "upperarm_L0_NoTwist_Start_jnt_pointConstraint1.crp"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.rpt" "upperarm_L0_NoTwist_Start_jnt_pointConstraint1.crt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.t" "upperarm_L0_NoTwist_Start_jnt_pointConstraint1.tg[0].tt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.rp" "upperarm_L0_NoTwist_Start_jnt_pointConstraint1.tg[0].trp"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.rpt" "upperarm_L0_NoTwist_Start_jnt_pointConstraint1.tg[0].trt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.pm" "upperarm_L0_NoTwist_Start_jnt_pointConstraint1.tg[0].tpm"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt_pointConstraint1.w0" "upperarm_L0_NoTwist_Start_jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "upperarm_L0_Twist_ikHandle_pointConstraint1.ctx" "upperarm_L0_Twist_ikHandle.tx"
		;
connectAttr "upperarm_L0_Twist_ikHandle_pointConstraint1.cty" "upperarm_L0_Twist_ikHandle.ty"
		;
connectAttr "upperarm_L0_Twist_ikHandle_pointConstraint1.ctz" "upperarm_L0_Twist_ikHandle.tz"
		;
connectAttr "upperarm_L0_Twist_ikHandle_orientConstraint1.crx" "upperarm_L0_Twist_ikHandle.rx"
		;
connectAttr "upperarm_L0_Twist_ikHandle_orientConstraint1.cry" "upperarm_L0_Twist_ikHandle.ry"
		;
connectAttr "upperarm_L0_Twist_ikHandle_orientConstraint1.crz" "upperarm_L0_Twist_ikHandle.rz"
		;
connectAttr "upperarm_L0_Twist_Start_jnt.msg" "upperarm_L0_Twist_ikHandle.hsj";
connectAttr "effector2.hp" "upperarm_L0_Twist_ikHandle.hee";
connectAttr "ikSCsolver.msg" "upperarm_L0_Twist_ikHandle.hsv";
connectAttr "upperarm_L0_Twist_ikHandle.pim" "upperarm_L0_Twist_ikHandle_pointConstraint1.cpim"
		;
connectAttr "upperarm_L0_Twist_ikHandle.rp" "upperarm_L0_Twist_ikHandle_pointConstraint1.crp"
		;
connectAttr "upperarm_L0_Twist_ikHandle.rpt" "upperarm_L0_Twist_ikHandle_pointConstraint1.crt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.t" "upperarm_L0_Twist_ikHandle_pointConstraint1.tg[0].tt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rp" "upperarm_L0_Twist_ikHandle_pointConstraint1.tg[0].trp"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rpt" "upperarm_L0_Twist_ikHandle_pointConstraint1.tg[0].trt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.pm" "upperarm_L0_Twist_ikHandle_pointConstraint1.tg[0].tpm"
		;
connectAttr "upperarm_L0_Twist_ikHandle_pointConstraint1.w0" "upperarm_L0_Twist_ikHandle_pointConstraint1.tg[0].tw"
		;
connectAttr "upperarm_L0_Twist_ikHandle.ro" "upperarm_L0_Twist_ikHandle_orientConstraint1.cro"
		;
connectAttr "upperarm_L0_Twist_ikHandle.pim" "upperarm_L0_Twist_ikHandle_orientConstraint1.cpim"
		;
connectAttr "driver_arm_L0_elbow_jnt.r" "upperarm_L0_Twist_ikHandle_orientConstraint1.tg[0].tr"
		;
connectAttr "driver_arm_L0_elbow_jnt.ro" "upperarm_L0_Twist_ikHandle_orientConstraint1.tg[0].tro"
		;
connectAttr "driver_arm_L0_elbow_jnt.pm" "upperarm_L0_Twist_ikHandle_orientConstraint1.tg[0].tpm"
		;
connectAttr "driver_arm_L0_elbow_jnt.jo" "upperarm_L0_Twist_ikHandle_orientConstraint1.tg[0].tjo"
		;
connectAttr "upperarm_L0_Twist_ikHandle_orientConstraint1.w0" "upperarm_L0_Twist_ikHandle_orientConstraint1.tg[0].tw"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.msg" "upperarm_L0_NoTwist_ikHandle.hsj"
		;
connectAttr "effector3.hp" "upperarm_L0_NoTwist_ikHandle.hee";
connectAttr "ikSCsolver.msg" "upperarm_L0_NoTwist_ikHandle.hsv";
connectAttr "upperarm_L0_NoTwist_ikHandle_pointConstraint1.ctx" "upperarm_L0_NoTwist_ikHandle.tx"
		;
connectAttr "upperarm_L0_NoTwist_ikHandle_pointConstraint1.cty" "upperarm_L0_NoTwist_ikHandle.ty"
		;
connectAttr "upperarm_L0_NoTwist_ikHandle_pointConstraint1.ctz" "upperarm_L0_NoTwist_ikHandle.tz"
		;
connectAttr "upperarm_L0_NoTwist_ikHandle.pim" "upperarm_L0_NoTwist_ikHandle_pointConstraint1.cpim"
		;
connectAttr "upperarm_L0_NoTwist_ikHandle.rp" "upperarm_L0_NoTwist_ikHandle_pointConstraint1.crp"
		;
connectAttr "upperarm_L0_NoTwist_ikHandle.rpt" "upperarm_L0_NoTwist_ikHandle_pointConstraint1.crt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.t" "upperarm_L0_NoTwist_ikHandle_pointConstraint1.tg[0].tt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rp" "upperarm_L0_NoTwist_ikHandle_pointConstraint1.tg[0].trp"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rpt" "upperarm_L0_NoTwist_ikHandle_pointConstraint1.tg[0].trt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.pm" "upperarm_L0_NoTwist_ikHandle_pointConstraint1.tg[0].tpm"
		;
connectAttr "upperarm_L0_NoTwist_ikHandle_pointConstraint1.w0" "upperarm_L0_NoTwist_ikHandle_pointConstraint1.tg[0].tw"
		;
connectAttr "elbow_L0_Twist_Start_jnt_pointConstraint1.ctx" "elbow_L0_Twist_Start_jnt.tx"
		;
connectAttr "elbow_L0_Twist_Start_jnt_pointConstraint1.cty" "elbow_L0_Twist_Start_jnt.ty"
		;
connectAttr "elbow_L0_Twist_Start_jnt_pointConstraint1.ctz" "elbow_L0_Twist_Start_jnt.tz"
		;
connectAttr "elbow_L0_Twist_Start_jnt.s" "elbow_L0_Twist_End_jnt.is";
connectAttr "condition5.ocr" "elbow_L0_Twist_End_jnt.tx";
connectAttr "elbow_L0_Twist_End_jnt.tx" "effector5.tx";
connectAttr "elbow_L0_Twist_End_jnt.ty" "effector5.ty";
connectAttr "elbow_L0_Twist_End_jnt.tz" "effector5.tz";
connectAttr "elbow_L0_Twist_End_jnt.opm" "effector5.opm";
connectAttr "elbow_L0_Twist_Start_jnt.pim" "elbow_L0_Twist_Start_jnt_pointConstraint1.cpim"
		;
connectAttr "elbow_L0_Twist_Start_jnt.rp" "elbow_L0_Twist_Start_jnt_pointConstraint1.crp"
		;
connectAttr "elbow_L0_Twist_Start_jnt.rpt" "elbow_L0_Twist_Start_jnt_pointConstraint1.crt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.t" "elbow_L0_Twist_Start_jnt_pointConstraint1.tg[0].tt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rp" "elbow_L0_Twist_Start_jnt_pointConstraint1.tg[0].trp"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rpt" "elbow_L0_Twist_Start_jnt_pointConstraint1.tg[0].trt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.pm" "elbow_L0_Twist_Start_jnt_pointConstraint1.tg[0].tpm"
		;
connectAttr "elbow_L0_Twist_Start_jnt_pointConstraint1.w0" "elbow_L0_Twist_Start_jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt_pointConstraint1.ctx" "elbow_L0_NoTwist_Start_jnt.tx"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt_pointConstraint1.cty" "elbow_L0_NoTwist_Start_jnt.ty"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt_pointConstraint1.ctz" "elbow_L0_NoTwist_Start_jnt.tz"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.s" "elbow_L0_NoTwist_End_jnt.is";
connectAttr "condition5.ocr" "elbow_L0_NoTwist_End_jnt.tx";
connectAttr "elbow_L0_NoTwist_End_jnt.tx" "effector4.tx";
connectAttr "elbow_L0_NoTwist_End_jnt.ty" "effector4.ty";
connectAttr "elbow_L0_NoTwist_End_jnt.tz" "effector4.tz";
connectAttr "elbow_L0_NoTwist_End_jnt.opm" "effector4.opm";
connectAttr "elbow_L0_NoTwist_Start_jnt.pim" "elbow_L0_NoTwist_Start_jnt_pointConstraint1.cpim"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.rp" "elbow_L0_NoTwist_Start_jnt_pointConstraint1.crp"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.rpt" "elbow_L0_NoTwist_Start_jnt_pointConstraint1.crt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.t" "elbow_L0_NoTwist_Start_jnt_pointConstraint1.tg[0].tt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rp" "elbow_L0_NoTwist_Start_jnt_pointConstraint1.tg[0].trp"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rpt" "elbow_L0_NoTwist_Start_jnt_pointConstraint1.tg[0].trt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.pm" "elbow_L0_NoTwist_Start_jnt_pointConstraint1.tg[0].tpm"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt_pointConstraint1.w0" "elbow_L0_NoTwist_Start_jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "elbow_L0_Twist_Start_jnt.msg" "elbow_L0_Twist_ikHandle.hsj";
connectAttr "effector5.hp" "elbow_L0_Twist_ikHandle.hee";
connectAttr "ikSCsolver.msg" "elbow_L0_Twist_ikHandle.hsv";
connectAttr "elbow_L0_Twist_ikHandle_pointConstraint1.ctx" "elbow_L0_Twist_ikHandle.tx"
		;
connectAttr "elbow_L0_Twist_ikHandle_pointConstraint1.cty" "elbow_L0_Twist_ikHandle.ty"
		;
connectAttr "elbow_L0_Twist_ikHandle_pointConstraint1.ctz" "elbow_L0_Twist_ikHandle.tz"
		;
connectAttr "elbow_L0_Twist_ikHandle_orientConstraint1.crx" "elbow_L0_Twist_ikHandle.rx"
		;
connectAttr "elbow_L0_Twist_ikHandle_orientConstraint1.cry" "elbow_L0_Twist_ikHandle.ry"
		;
connectAttr "elbow_L0_Twist_ikHandle_orientConstraint1.crz" "elbow_L0_Twist_ikHandle.rz"
		;
connectAttr "elbow_L0_Twist_ikHandle.pim" "elbow_L0_Twist_ikHandle_pointConstraint1.cpim"
		;
connectAttr "elbow_L0_Twist_ikHandle.rp" "elbow_L0_Twist_ikHandle_pointConstraint1.crp"
		;
connectAttr "elbow_L0_Twist_ikHandle.rpt" "elbow_L0_Twist_ikHandle_pointConstraint1.crt"
		;
connectAttr "driver_arm_L0_wrist_jnt.t" "elbow_L0_Twist_ikHandle_pointConstraint1.tg[0].tt"
		;
connectAttr "driver_arm_L0_wrist_jnt.rp" "elbow_L0_Twist_ikHandle_pointConstraint1.tg[0].trp"
		;
connectAttr "driver_arm_L0_wrist_jnt.rpt" "elbow_L0_Twist_ikHandle_pointConstraint1.tg[0].trt"
		;
connectAttr "driver_arm_L0_wrist_jnt.pm" "elbow_L0_Twist_ikHandle_pointConstraint1.tg[0].tpm"
		;
connectAttr "elbow_L0_Twist_ikHandle_pointConstraint1.w0" "elbow_L0_Twist_ikHandle_pointConstraint1.tg[0].tw"
		;
connectAttr "elbow_L0_Twist_ikHandle.ro" "elbow_L0_Twist_ikHandle_orientConstraint1.cro"
		;
connectAttr "elbow_L0_Twist_ikHandle.pim" "elbow_L0_Twist_ikHandle_orientConstraint1.cpim"
		;
connectAttr "driver_arm_L0_wrist_jnt.r" "elbow_L0_Twist_ikHandle_orientConstraint1.tg[0].tr"
		;
connectAttr "driver_arm_L0_wrist_jnt.ro" "elbow_L0_Twist_ikHandle_orientConstraint1.tg[0].tro"
		;
connectAttr "driver_arm_L0_wrist_jnt.pm" "elbow_L0_Twist_ikHandle_orientConstraint1.tg[0].tpm"
		;
connectAttr "driver_arm_L0_wrist_jnt.jo" "elbow_L0_Twist_ikHandle_orientConstraint1.tg[0].tjo"
		;
connectAttr "elbow_L0_Twist_ikHandle_orientConstraint1.w0" "elbow_L0_Twist_ikHandle_orientConstraint1.tg[0].tw"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.msg" "elbow_L0_NoTwist_ikHandle.hsj";
connectAttr "effector4.hp" "elbow_L0_NoTwist_ikHandle.hee";
connectAttr "ikSCsolver.msg" "elbow_L0_NoTwist_ikHandle.hsv";
connectAttr "elbow_L0_NoTwist_ikHandle_pointConstraint1.ctx" "elbow_L0_NoTwist_ikHandle.tx"
		;
connectAttr "elbow_L0_NoTwist_ikHandle_pointConstraint1.cty" "elbow_L0_NoTwist_ikHandle.ty"
		;
connectAttr "elbow_L0_NoTwist_ikHandle_pointConstraint1.ctz" "elbow_L0_NoTwist_ikHandle.tz"
		;
connectAttr "elbow_L0_NoTwist_ikHandle_orientConstraint1.crx" "elbow_L0_NoTwist_ikHandle.rx"
		;
connectAttr "elbow_L0_NoTwist_ikHandle_orientConstraint1.cry" "elbow_L0_NoTwist_ikHandle.ry"
		;
connectAttr "elbow_L0_NoTwist_ikHandle_orientConstraint1.crz" "elbow_L0_NoTwist_ikHandle.rz"
		;
connectAttr "elbow_L0_NoTwist_ikHandle.pim" "elbow_L0_NoTwist_ikHandle_pointConstraint1.cpim"
		;
connectAttr "elbow_L0_NoTwist_ikHandle.rp" "elbow_L0_NoTwist_ikHandle_pointConstraint1.crp"
		;
connectAttr "elbow_L0_NoTwist_ikHandle.rpt" "elbow_L0_NoTwist_ikHandle_pointConstraint1.crt"
		;
connectAttr "driver_arm_L0_wrist_jnt.t" "elbow_L0_NoTwist_ikHandle_pointConstraint1.tg[0].tt"
		;
connectAttr "driver_arm_L0_wrist_jnt.rp" "elbow_L0_NoTwist_ikHandle_pointConstraint1.tg[0].trp"
		;
connectAttr "driver_arm_L0_wrist_jnt.rpt" "elbow_L0_NoTwist_ikHandle_pointConstraint1.tg[0].trt"
		;
connectAttr "driver_arm_L0_wrist_jnt.pm" "elbow_L0_NoTwist_ikHandle_pointConstraint1.tg[0].tpm"
		;
connectAttr "elbow_L0_NoTwist_ikHandle_pointConstraint1.w0" "elbow_L0_NoTwist_ikHandle_pointConstraint1.tg[0].tw"
		;
connectAttr "elbow_L0_NoTwist_ikHandle.ro" "elbow_L0_NoTwist_ikHandle_orientConstraint1.cro"
		;
connectAttr "elbow_L0_NoTwist_ikHandle.pim" "elbow_L0_NoTwist_ikHandle_orientConstraint1.cpim"
		;
connectAttr "driver_arm_L0_elbow_jnt.r" "elbow_L0_NoTwist_ikHandle_orientConstraint1.tg[0].tr"
		;
connectAttr "driver_arm_L0_elbow_jnt.ro" "elbow_L0_NoTwist_ikHandle_orientConstraint1.tg[0].tro"
		;
connectAttr "driver_arm_L0_elbow_jnt.pm" "elbow_L0_NoTwist_ikHandle_orientConstraint1.tg[0].tpm"
		;
connectAttr "driver_arm_L0_elbow_jnt.jo" "elbow_L0_NoTwist_ikHandle_orientConstraint1.tg[0].tjo"
		;
connectAttr "elbow_L0_NoTwist_ikHandle_orientConstraint1.w0" "elbow_L0_NoTwist_ikHandle_orientConstraint1.tg[0].tw"
		;
connectAttr "upper_Follicle_jnt_start_pointConstraint1.ctx" "upper_Follicle_jnt_start.tx"
		;
connectAttr "upper_Follicle_jnt_start_pointConstraint1.cty" "upper_Follicle_jnt_start.ty"
		;
connectAttr "upper_Follicle_jnt_start_pointConstraint1.ctz" "upper_Follicle_jnt_start.tz"
		;
connectAttr "unitConversion1.o" "upper_Follicle_jnt_start.rx";
connectAttr "upper_Follicle_jnt_start_orientConstraint1.cry" "upper_Follicle_jnt_start.ry"
		;
connectAttr "upper_Follicle_jnt_start_orientConstraint1.crz" "upper_Follicle_jnt_start.rz"
		;
connectAttr "upper_Follicle_jnt_start.pim" "upper_Follicle_jnt_start_pointConstraint1.cpim"
		;
connectAttr "upper_Follicle_jnt_start.rp" "upper_Follicle_jnt_start_pointConstraint1.crp"
		;
connectAttr "upper_Follicle_jnt_start.rpt" "upper_Follicle_jnt_start_pointConstraint1.crt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.t" "upper_Follicle_jnt_start_pointConstraint1.tg[0].tt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.rp" "upper_Follicle_jnt_start_pointConstraint1.tg[0].trp"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.rpt" "upper_Follicle_jnt_start_pointConstraint1.tg[0].trt"
		;
connectAttr "driver_arm_L0_shoulder_jnt1.pm" "upper_Follicle_jnt_start_pointConstraint1.tg[0].tpm"
		;
connectAttr "upper_Follicle_jnt_start_pointConstraint1.w0" "upper_Follicle_jnt_start_pointConstraint1.tg[0].tw"
		;
connectAttr "upper_Follicle_jnt_start.ro" "upper_Follicle_jnt_start_orientConstraint1.cro"
		;
connectAttr "upper_Follicle_jnt_start.pim" "upper_Follicle_jnt_start_orientConstraint1.cpim"
		;
connectAttr "upper_Follicle_jnt_start.jo" "upper_Follicle_jnt_start_orientConstraint1.cjo"
		;
connectAttr "upper_Follicle_jnt_start.is" "upper_Follicle_jnt_start_orientConstraint1.is"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.r" "upper_Follicle_jnt_start_orientConstraint1.tg[0].tr"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.ro" "upper_Follicle_jnt_start_orientConstraint1.tg[0].tro"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.pm" "upper_Follicle_jnt_start_orientConstraint1.tg[0].tpm"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.jo" "upper_Follicle_jnt_start_orientConstraint1.tg[0].tjo"
		;
connectAttr "upper_Follicle_jnt_start_orientConstraint1.w0" "upper_Follicle_jnt_start_orientConstraint1.tg[0].tw"
		;
connectAttr "upper_Follicle_jnt_0_parentConstraint1.ctx" "upper_Follicle_jnt_0.tx"
		;
connectAttr "upper_Follicle_jnt_0_parentConstraint1.cty" "upper_Follicle_jnt_0.ty"
		;
connectAttr "upper_Follicle_jnt_0_parentConstraint1.ctz" "upper_Follicle_jnt_0.tz"
		;
connectAttr "upper_Follicle_jnt_0_parentConstraint1.crx" "upper_Follicle_jnt_0.rx"
		;
connectAttr "upper_Follicle_jnt_0_parentConstraint1.cry" "upper_Follicle_jnt_0.ry"
		;
connectAttr "upper_Follicle_jnt_0_parentConstraint1.crz" "upper_Follicle_jnt_0.rz"
		;
connectAttr "upper_Follicle_jnt_0.ro" "upper_Follicle_jnt_0_parentConstraint1.cro"
		;
connectAttr "upper_Follicle_jnt_0.pim" "upper_Follicle_jnt_0_parentConstraint1.cpim"
		;
connectAttr "upper_Follicle_jnt_0.rp" "upper_Follicle_jnt_0_parentConstraint1.crp"
		;
connectAttr "upper_Follicle_jnt_0.rpt" "upper_Follicle_jnt_0_parentConstraint1.crt"
		;
connectAttr "upper_Follicle_jnt_0.jo" "upper_Follicle_jnt_0_parentConstraint1.cjo"
		;
connectAttr "arm_L0_twist01_cnt.t" "upper_Follicle_jnt_0_parentConstraint1.tg[0].tt"
		;
connectAttr "arm_L0_twist01_cnt.rp" "upper_Follicle_jnt_0_parentConstraint1.tg[0].trp"
		;
connectAttr "arm_L0_twist01_cnt.rpt" "upper_Follicle_jnt_0_parentConstraint1.tg[0].trt"
		;
connectAttr "arm_L0_twist01_cnt.r" "upper_Follicle_jnt_0_parentConstraint1.tg[0].tr"
		;
connectAttr "arm_L0_twist01_cnt.ro" "upper_Follicle_jnt_0_parentConstraint1.tg[0].tro"
		;
connectAttr "arm_L0_twist01_cnt.s" "upper_Follicle_jnt_0_parentConstraint1.tg[0].ts"
		;
connectAttr "arm_L0_twist01_cnt.pm" "upper_Follicle_jnt_0_parentConstraint1.tg[0].tpm"
		;
connectAttr "upper_Follicle_jnt_0_parentConstraint1.w0" "upper_Follicle_jnt_0_parentConstraint1.tg[0].tw"
		;
connectAttr "upper_Follicle_jnt_1_parentConstraint1.ctx" "upper_Follicle_jnt_1.tx"
		;
connectAttr "upper_Follicle_jnt_1_parentConstraint1.cty" "upper_Follicle_jnt_1.ty"
		;
connectAttr "upper_Follicle_jnt_1_parentConstraint1.ctz" "upper_Follicle_jnt_1.tz"
		;
connectAttr "upper_Follicle_jnt_1_parentConstraint1.crx" "upper_Follicle_jnt_1.rx"
		;
connectAttr "upper_Follicle_jnt_1_parentConstraint1.cry" "upper_Follicle_jnt_1.ry"
		;
connectAttr "upper_Follicle_jnt_1_parentConstraint1.crz" "upper_Follicle_jnt_1.rz"
		;
connectAttr "upper_Follicle_jnt_1.ro" "upper_Follicle_jnt_1_parentConstraint1.cro"
		;
connectAttr "upper_Follicle_jnt_1.pim" "upper_Follicle_jnt_1_parentConstraint1.cpim"
		;
connectAttr "upper_Follicle_jnt_1.rp" "upper_Follicle_jnt_1_parentConstraint1.crp"
		;
connectAttr "upper_Follicle_jnt_1.rpt" "upper_Follicle_jnt_1_parentConstraint1.crt"
		;
connectAttr "upper_Follicle_jnt_1.jo" "upper_Follicle_jnt_1_parentConstraint1.cjo"
		;
connectAttr "arm_L0_twist02_cnt.t" "upper_Follicle_jnt_1_parentConstraint1.tg[0].tt"
		;
connectAttr "arm_L0_twist02_cnt.rp" "upper_Follicle_jnt_1_parentConstraint1.tg[0].trp"
		;
connectAttr "arm_L0_twist02_cnt.rpt" "upper_Follicle_jnt_1_parentConstraint1.tg[0].trt"
		;
connectAttr "arm_L0_twist02_cnt.r" "upper_Follicle_jnt_1_parentConstraint1.tg[0].tr"
		;
connectAttr "arm_L0_twist02_cnt.ro" "upper_Follicle_jnt_1_parentConstraint1.tg[0].tro"
		;
connectAttr "arm_L0_twist02_cnt.s" "upper_Follicle_jnt_1_parentConstraint1.tg[0].ts"
		;
connectAttr "arm_L0_twist02_cnt.pm" "upper_Follicle_jnt_1_parentConstraint1.tg[0].tpm"
		;
connectAttr "upper_Follicle_jnt_1_parentConstraint1.w0" "upper_Follicle_jnt_1_parentConstraint1.tg[0].tw"
		;
connectAttr "upper_Follicle_jnt_end_pointConstraint1.ctx" "upper_Follicle_jnt_end.tx"
		;
connectAttr "upper_Follicle_jnt_end_pointConstraint1.cty" "upper_Follicle_jnt_end.ty"
		;
connectAttr "upper_Follicle_jnt_end_pointConstraint1.ctz" "upper_Follicle_jnt_end.tz"
		;
connectAttr "upper_Follicle_jnt_end_orientConstraint1.crx" "upper_Follicle_jnt_end.rx"
		;
connectAttr "upper_Follicle_jnt_end_orientConstraint1.cry" "upper_Follicle_jnt_end.ry"
		;
connectAttr "upper_Follicle_jnt_end_orientConstraint1.crz" "upper_Follicle_jnt_end.rz"
		;
connectAttr "upper_Follicle_jnt_end.ro" "upper_Follicle_jnt_end_orientConstraint1.cro"
		;
connectAttr "upper_Follicle_jnt_end.pim" "upper_Follicle_jnt_end_orientConstraint1.cpim"
		;
connectAttr "upper_Follicle_jnt_end.jo" "upper_Follicle_jnt_end_orientConstraint1.cjo"
		;
connectAttr "upper_Follicle_jnt_end.is" "upper_Follicle_jnt_end_orientConstraint1.is"
		;
connectAttr "upperarm_L0_Twist_End_jnt.r" "upper_Follicle_jnt_end_orientConstraint1.tg[0].tr"
		;
connectAttr "upperarm_L0_Twist_End_jnt.ro" "upper_Follicle_jnt_end_orientConstraint1.tg[0].tro"
		;
connectAttr "upperarm_L0_Twist_End_jnt.pm" "upper_Follicle_jnt_end_orientConstraint1.tg[0].tpm"
		;
connectAttr "upperarm_L0_Twist_End_jnt.jo" "upper_Follicle_jnt_end_orientConstraint1.tg[0].tjo"
		;
connectAttr "upper_Follicle_jnt_end_orientConstraint1.w0" "upper_Follicle_jnt_end_orientConstraint1.tg[0].tw"
		;
connectAttr "upper_Follicle_jnt_end.pim" "upper_Follicle_jnt_end_pointConstraint1.cpim"
		;
connectAttr "upper_Follicle_jnt_end.rp" "upper_Follicle_jnt_end_pointConstraint1.crp"
		;
connectAttr "upper_Follicle_jnt_end.rpt" "upper_Follicle_jnt_end_pointConstraint1.crt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.t" "upper_Follicle_jnt_end_pointConstraint1.tg[0].tt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rp" "upper_Follicle_jnt_end_pointConstraint1.tg[0].trp"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rpt" "upper_Follicle_jnt_end_pointConstraint1.tg[0].trt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.pm" "upper_Follicle_jnt_end_pointConstraint1.tg[0].tpm"
		;
connectAttr "upper_Follicle_jnt_end_pointConstraint1.w0" "upper_Follicle_jnt_end_pointConstraint1.tg[0].tw"
		;
connectAttr "lower_Follicle_jnt_start_pointConstraint1.ctx" "lower_Follicle_jnt_start.tx"
		;
connectAttr "lower_Follicle_jnt_start_pointConstraint1.cty" "lower_Follicle_jnt_start.ty"
		;
connectAttr "lower_Follicle_jnt_start_pointConstraint1.ctz" "lower_Follicle_jnt_start.tz"
		;
connectAttr "lower_Follicle_jnt_start_orientConstraint1.crx" "lower_Follicle_jnt_start.rx"
		;
connectAttr "lower_Follicle_jnt_start_orientConstraint1.cry" "lower_Follicle_jnt_start.ry"
		;
connectAttr "lower_Follicle_jnt_start_orientConstraint1.crz" "lower_Follicle_jnt_start.rz"
		;
connectAttr "lower_Follicle_jnt_start.pim" "lower_Follicle_jnt_start_pointConstraint1.cpim"
		;
connectAttr "lower_Follicle_jnt_start.rp" "lower_Follicle_jnt_start_pointConstraint1.crp"
		;
connectAttr "lower_Follicle_jnt_start.rpt" "lower_Follicle_jnt_start_pointConstraint1.crt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.t" "lower_Follicle_jnt_start_pointConstraint1.tg[0].tt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rp" "lower_Follicle_jnt_start_pointConstraint1.tg[0].trp"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.rpt" "lower_Follicle_jnt_start_pointConstraint1.tg[0].trt"
		;
connectAttr "ik_arm_L0_elbowSnap_cnt.pm" "lower_Follicle_jnt_start_pointConstraint1.tg[0].tpm"
		;
connectAttr "lower_Follicle_jnt_start_pointConstraint1.w0" "lower_Follicle_jnt_start_pointConstraint1.tg[0].tw"
		;
connectAttr "lower_Follicle_jnt_start.ro" "lower_Follicle_jnt_start_orientConstraint1.cro"
		;
connectAttr "lower_Follicle_jnt_start.pim" "lower_Follicle_jnt_start_orientConstraint1.cpim"
		;
connectAttr "lower_Follicle_jnt_start.jo" "lower_Follicle_jnt_start_orientConstraint1.cjo"
		;
connectAttr "lower_Follicle_jnt_start.is" "lower_Follicle_jnt_start_orientConstraint1.is"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.r" "lower_Follicle_jnt_start_orientConstraint1.tg[0].tr"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.ro" "lower_Follicle_jnt_start_orientConstraint1.tg[0].tro"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.pm" "lower_Follicle_jnt_start_orientConstraint1.tg[0].tpm"
		;
connectAttr "elbow_L0_NoTwist_Start_jnt.jo" "lower_Follicle_jnt_start_orientConstraint1.tg[0].tjo"
		;
connectAttr "lower_Follicle_jnt_start_orientConstraint1.w0" "lower_Follicle_jnt_start_orientConstraint1.tg[0].tw"
		;
connectAttr "lower_Follicle_jnt_0_parentConstraint1.ctx" "lower_Follicle_jnt_0.tx"
		;
connectAttr "lower_Follicle_jnt_0_parentConstraint1.cty" "lower_Follicle_jnt_0.ty"
		;
connectAttr "lower_Follicle_jnt_0_parentConstraint1.ctz" "lower_Follicle_jnt_0.tz"
		;
connectAttr "lower_Follicle_jnt_0_parentConstraint1.crx" "lower_Follicle_jnt_0.rx"
		;
connectAttr "lower_Follicle_jnt_0_parentConstraint1.cry" "lower_Follicle_jnt_0.ry"
		;
connectAttr "lower_Follicle_jnt_0_parentConstraint1.crz" "lower_Follicle_jnt_0.rz"
		;
connectAttr "lower_Follicle_jnt_0.ro" "lower_Follicle_jnt_0_parentConstraint1.cro"
		;
connectAttr "lower_Follicle_jnt_0.pim" "lower_Follicle_jnt_0_parentConstraint1.cpim"
		;
connectAttr "lower_Follicle_jnt_0.rp" "lower_Follicle_jnt_0_parentConstraint1.crp"
		;
connectAttr "lower_Follicle_jnt_0.rpt" "lower_Follicle_jnt_0_parentConstraint1.crt"
		;
connectAttr "lower_Follicle_jnt_0.jo" "lower_Follicle_jnt_0_parentConstraint1.cjo"
		;
connectAttr "arm_L0_twist03_cnt.t" "lower_Follicle_jnt_0_parentConstraint1.tg[0].tt"
		;
connectAttr "arm_L0_twist03_cnt.rp" "lower_Follicle_jnt_0_parentConstraint1.tg[0].trp"
		;
connectAttr "arm_L0_twist03_cnt.rpt" "lower_Follicle_jnt_0_parentConstraint1.tg[0].trt"
		;
connectAttr "arm_L0_twist03_cnt.r" "lower_Follicle_jnt_0_parentConstraint1.tg[0].tr"
		;
connectAttr "arm_L0_twist03_cnt.ro" "lower_Follicle_jnt_0_parentConstraint1.tg[0].tro"
		;
connectAttr "arm_L0_twist03_cnt.s" "lower_Follicle_jnt_0_parentConstraint1.tg[0].ts"
		;
connectAttr "arm_L0_twist03_cnt.pm" "lower_Follicle_jnt_0_parentConstraint1.tg[0].tpm"
		;
connectAttr "lower_Follicle_jnt_0_parentConstraint1.w0" "lower_Follicle_jnt_0_parentConstraint1.tg[0].tw"
		;
connectAttr "lower_Follicle_jnt_1_parentConstraint1.ctx" "lower_Follicle_jnt_1.tx"
		;
connectAttr "lower_Follicle_jnt_1_parentConstraint1.cty" "lower_Follicle_jnt_1.ty"
		;
connectAttr "lower_Follicle_jnt_1_parentConstraint1.ctz" "lower_Follicle_jnt_1.tz"
		;
connectAttr "lower_Follicle_jnt_1_parentConstraint1.crx" "lower_Follicle_jnt_1.rx"
		;
connectAttr "lower_Follicle_jnt_1_parentConstraint1.cry" "lower_Follicle_jnt_1.ry"
		;
connectAttr "lower_Follicle_jnt_1_parentConstraint1.crz" "lower_Follicle_jnt_1.rz"
		;
connectAttr "lower_Follicle_jnt_1.ro" "lower_Follicle_jnt_1_parentConstraint1.cro"
		;
connectAttr "lower_Follicle_jnt_1.pim" "lower_Follicle_jnt_1_parentConstraint1.cpim"
		;
connectAttr "lower_Follicle_jnt_1.rp" "lower_Follicle_jnt_1_parentConstraint1.crp"
		;
connectAttr "lower_Follicle_jnt_1.rpt" "lower_Follicle_jnt_1_parentConstraint1.crt"
		;
connectAttr "lower_Follicle_jnt_1.jo" "lower_Follicle_jnt_1_parentConstraint1.cjo"
		;
connectAttr "arm_L0_twist04_cnt.t" "lower_Follicle_jnt_1_parentConstraint1.tg[0].tt"
		;
connectAttr "arm_L0_twist04_cnt.rp" "lower_Follicle_jnt_1_parentConstraint1.tg[0].trp"
		;
connectAttr "arm_L0_twist04_cnt.rpt" "lower_Follicle_jnt_1_parentConstraint1.tg[0].trt"
		;
connectAttr "arm_L0_twist04_cnt.r" "lower_Follicle_jnt_1_parentConstraint1.tg[0].tr"
		;
connectAttr "arm_L0_twist04_cnt.ro" "lower_Follicle_jnt_1_parentConstraint1.tg[0].tro"
		;
connectAttr "arm_L0_twist04_cnt.s" "lower_Follicle_jnt_1_parentConstraint1.tg[0].ts"
		;
connectAttr "arm_L0_twist04_cnt.pm" "lower_Follicle_jnt_1_parentConstraint1.tg[0].tpm"
		;
connectAttr "lower_Follicle_jnt_1_parentConstraint1.w0" "lower_Follicle_jnt_1_parentConstraint1.tg[0].tw"
		;
connectAttr "lower_Follicle_jnt_end_orientConstraint1.crx" "lower_Follicle_jnt_end.rx"
		;
connectAttr "lower_Follicle_jnt_end_orientConstraint1.cry" "lower_Follicle_jnt_end.ry"
		;
connectAttr "lower_Follicle_jnt_end_orientConstraint1.crz" "lower_Follicle_jnt_end.rz"
		;
connectAttr "lower_Follicle_jnt_end_pointConstraint1.ctx" "lower_Follicle_jnt_end.tx"
		;
connectAttr "lower_Follicle_jnt_end_pointConstraint1.cty" "lower_Follicle_jnt_end.ty"
		;
connectAttr "lower_Follicle_jnt_end_pointConstraint1.ctz" "lower_Follicle_jnt_end.tz"
		;
connectAttr "lower_Follicle_jnt_end.pim" "lower_Follicle_jnt_end_pointConstraint1.cpim"
		;
connectAttr "lower_Follicle_jnt_end.rp" "lower_Follicle_jnt_end_pointConstraint1.crp"
		;
connectAttr "lower_Follicle_jnt_end.rpt" "lower_Follicle_jnt_end_pointConstraint1.crt"
		;
connectAttr "driver_arm_L0_wrist_jnt.t" "lower_Follicle_jnt_end_pointConstraint1.tg[0].tt"
		;
connectAttr "driver_arm_L0_wrist_jnt.rp" "lower_Follicle_jnt_end_pointConstraint1.tg[0].trp"
		;
connectAttr "driver_arm_L0_wrist_jnt.rpt" "lower_Follicle_jnt_end_pointConstraint1.tg[0].trt"
		;
connectAttr "driver_arm_L0_wrist_jnt.pm" "lower_Follicle_jnt_end_pointConstraint1.tg[0].tpm"
		;
connectAttr "lower_Follicle_jnt_end_pointConstraint1.w0" "lower_Follicle_jnt_end_pointConstraint1.tg[0].tw"
		;
connectAttr "lower_Follicle_jnt_end.ro" "lower_Follicle_jnt_end_orientConstraint1.cro"
		;
connectAttr "lower_Follicle_jnt_end.pim" "lower_Follicle_jnt_end_orientConstraint1.cpim"
		;
connectAttr "lower_Follicle_jnt_end.jo" "lower_Follicle_jnt_end_orientConstraint1.cjo"
		;
connectAttr "lower_Follicle_jnt_end.is" "lower_Follicle_jnt_end_orientConstraint1.is"
		;
connectAttr "elbow_L0_Twist_Start_jnt.r" "lower_Follicle_jnt_end_orientConstraint1.tg[0].tr"
		;
connectAttr "elbow_L0_Twist_Start_jnt.ro" "lower_Follicle_jnt_end_orientConstraint1.tg[0].tro"
		;
connectAttr "elbow_L0_Twist_Start_jnt.pm" "lower_Follicle_jnt_end_orientConstraint1.tg[0].tpm"
		;
connectAttr "elbow_L0_Twist_Start_jnt.jo" "lower_Follicle_jnt_end_orientConstraint1.tg[0].tjo"
		;
connectAttr "lower_Follicle_jnt_end_orientConstraint1.w0" "lower_Follicle_jnt_end_orientConstraint1.tg[0].tw"
		;
connectAttr "upper_loftFollicleShape1.ot" "upper_loftFollicle1.t" -l on;
connectAttr "upper_loftFollicleShape1.or" "upper_loftFollicle1.r" -l on;
connectAttr "upper_ribbonShape1.wm" "upper_loftFollicleShape1.iwm";
connectAttr "upper_ribbonShape1.l" "upper_loftFollicleShape1.is";
connectAttr "upper_curveShape9.l" "upper_loftFollicleShape1.sp";
connectAttr "upper_curve9.wm" "upper_loftFollicleShape1.spm";
connectAttr "upper_loftFollicleShape2.ot" "upper_loftFollicle2.t" -l on;
connectAttr "upper_loftFollicleShape2.or" "upper_loftFollicle2.r" -l on;
connectAttr "upper_ribbonShape1.wm" "upper_loftFollicleShape2.iwm";
connectAttr "upper_ribbonShape1.l" "upper_loftFollicleShape2.is";
connectAttr "upper_curveShape10.l" "upper_loftFollicleShape2.sp";
connectAttr "upper_curve10.wm" "upper_loftFollicleShape2.spm";
connectAttr "upper_loftFollicleShape3.ot" "upper_loftFollicle3.t" -l on;
connectAttr "upper_loftFollicleShape3.or" "upper_loftFollicle3.r" -l on;
connectAttr "upper_ribbonShape1.wm" "upper_loftFollicleShape3.iwm";
connectAttr "upper_ribbonShape1.l" "upper_loftFollicleShape3.is";
connectAttr "upper_curveShape11.l" "upper_loftFollicleShape3.sp";
connectAttr "upper_curve11.wm" "upper_loftFollicleShape3.spm";
connectAttr "upper_loftFollicleShape4.ot" "upper_loftFollicle4.t" -l on;
connectAttr "upper_loftFollicleShape4.or" "upper_loftFollicle4.r" -l on;
connectAttr "upper_ribbonShape1.wm" "upper_loftFollicleShape4.iwm";
connectAttr "upper_ribbonShape1.l" "upper_loftFollicleShape4.is";
connectAttr "upper_curveShape12.l" "upper_loftFollicleShape4.sp";
connectAttr "upper_curve12.wm" "upper_loftFollicleShape4.spm";
connectAttr "lower_loftFollicleShape5.ot" "lower_loftFollicle5.t" -l on;
connectAttr "lower_loftFollicleShape5.or" "lower_loftFollicle5.r" -l on;
connectAttr "lower_ribbonShape2.wm" "lower_loftFollicleShape5.iwm";
connectAttr "lower_ribbonShape2.l" "lower_loftFollicleShape5.is";
connectAttr "lower_curveShape13.l" "lower_loftFollicleShape5.sp";
connectAttr "lower_curve13.wm" "lower_loftFollicleShape5.spm";
connectAttr "lower_loftFollicleShape6.ot" "lower_loftFollicle6.t" -l on;
connectAttr "lower_loftFollicleShape6.or" "lower_loftFollicle6.r" -l on;
connectAttr "lower_ribbonShape2.wm" "lower_loftFollicleShape6.iwm";
connectAttr "lower_ribbonShape2.l" "lower_loftFollicleShape6.is";
connectAttr "lower_curveShape14.l" "lower_loftFollicleShape6.sp";
connectAttr "lower_curve14.wm" "lower_loftFollicleShape6.spm";
connectAttr "lower_loftFollicleShape7.ot" "lower_loftFollicle7.t" -l on;
connectAttr "lower_loftFollicleShape7.or" "lower_loftFollicle7.r" -l on;
connectAttr "lower_ribbonShape2.wm" "lower_loftFollicleShape7.iwm";
connectAttr "lower_ribbonShape2.l" "lower_loftFollicleShape7.is";
connectAttr "lower_curveShape15.l" "lower_loftFollicleShape7.sp";
connectAttr "lower_curve15.wm" "lower_loftFollicleShape7.spm";
connectAttr "lower_loftFollicleShape8.ot" "lower_loftFollicle8.t" -l on;
connectAttr "lower_loftFollicleShape8.or" "lower_loftFollicle8.r" -l on;
connectAttr "lower_ribbonShape2.wm" "lower_loftFollicleShape8.iwm";
connectAttr "lower_ribbonShape2.l" "lower_loftFollicleShape8.is";
connectAttr "lower_curveShape16.l" "lower_loftFollicleShape8.sp";
connectAttr "lower_curve16.wm" "lower_loftFollicleShape8.spm";
connectAttr "skinCluster3.og[0]" "upper_ribbonShape1.cr";
connectAttr "skinCluster4.og[0]" "lower_ribbonShape2.cr";
connectAttr "skinCluster5.og[0]" "test_mesh1Shape.i";
connectAttr "groupId1.id" "test_mesh1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "test_mesh1Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "ik_arm_loc.t" "distanceBetween1.p1";
connectAttr "ik_wrist_loc.t" "distanceBetween1.p2";
connectAttr "distanceBetween1.d" "condition1.ft";
connectAttr "multiplyDivide1.ox" "condition1.st";
connectAttr "multiplyDivide2.ox" "condition1.ctr";
connectAttr "main_cnt.sy" "multiplyDivide1.i1x";
connectAttr "distanceBetween1.d" "multiplyDivide2.i1x";
connectAttr "multiplyDivide1.ox" "multiplyDivide2.i2x";
connectAttr "condition1.ocr" "multiplyDivide3.i1x";
connectAttr "multiplyDivide3.ox" "multiplyDivide4.i2x";
connectAttr "armpit_multiplyDivide1.ox" "armpit_plusMinusAverage1.i1[0]";
connectAttr "unitConversion11.o" "armpit_plusMinusAverage1.i1[1]";
connectAttr "L_arm_option.ArmpitRotate" "armpit_multiplyDivide1.i1x";
connectAttr "L_arm_option.FkIkSwitch" "reverse1.ix";
connectAttr "armpit_plusMinusAverage1.o1" "unitConversion1.i";
connectAttr "armpit_multiplyDivide2.ox" "armpit_plusMinusAverage2.i1[0]";
connectAttr "unitConversion14.o" "armpit_plusMinusAverage2.i1[1]";
connectAttr "L_arm_option.ArmpitRotate" "armpit_multiplyDivide2.i1x";
connectAttr "L_arm_option.ArmpitRotate" "armpit_multiplyDivide3.i1x";
connectAttr "armpit_multiplyDivide3.ox" "armpit_plusMinusAverage3.i1[0]";
connectAttr "unitConversion12.o" "armpit_plusMinusAverage3.i1[1]";
connectAttr "armpit_plusMinusAverage2.o1" "unitConversion9.i";
connectAttr "upper_Follicle_jnt_start_orientConstraint1.crx" "unitConversion11.i"
		;
connectAttr "distanceBetween2.d" "condition2.ft";
connectAttr "multiplyDivide10.ox" "condition2.st";
connectAttr "multiplyDivide11.ox" "condition2.ctr";
connectAttr "main_cnt.sx" "multiplyDivide10.i1x";
connectAttr "distanceBetween2.d" "multiplyDivide11.i1x";
connectAttr "multiplyDivide10.ox" "multiplyDivide11.i2x";
connectAttr "condition2.ocr" "multiplyDivide12.i1x";
connectAttr "multiplyDivide12.ox" "multiplyDivide13.i2x";
connectAttr "distanceBetween3.d" "multiplyDivide14.i1x";
connectAttr "multiplyDivide15.ox" "multiplyDivide14.i2x";
connectAttr "distanceBetween3.d" "condition3.ft";
connectAttr "multiplyDivide15.ox" "condition3.st";
connectAttr "multiplyDivide14.ox" "condition3.ctr";
connectAttr "main_cnt.sx" "multiplyDivide15.i1x";
connectAttr "condition3.ocr" "multiplyDivide16.i1x";
connectAttr "multiplyDivide16.ox" "multiplyDivide17.i2x";
connectAttr "ik_arm_loc.t" "distanceBetween4.p1";
connectAttr "ik_elbow_loc.t" "distanceBetween4.p2";
connectAttr "condition6.ocr" "condition4.ft";
connectAttr "multiplyDivide18.ox" "condition4.st";
connectAttr "condition6.ocr" "condition4.ctr";
connectAttr "main_cnt.sy" "multiplyDivide18.i1x";
connectAttr "ik_elbow_loc.t" "distanceBetween5.p1";
connectAttr "ik_wrist_loc.t" "distanceBetween5.p2";
connectAttr "condition7.ocr" "condition5.ft";
connectAttr "multiplyDivide19.ox" "condition5.st";
connectAttr "condition7.ocr" "condition5.ctr";
connectAttr "condition7.ocr" "condition5.cfr";
connectAttr "main_cnt.sy" "multiplyDivide19.i1x";
connectAttr "arm_L0_twist02_cntOffset_orientConstraint1.crx" "unitConversion12.i"
		;
connectAttr "armpit_plusMinusAverage3.o1" "unitConversion13.i";
connectAttr "arm_L0_twist01_cntOffset_orientConstraint1.crx" "unitConversion14.i"
		;
connectAttr "armpit_plusMinusAverage2.o1" "unitConversion15.i";
connectAttr "fk_elbow_loc.t" "distanceBetween3.p1";
connectAttr "fk_wrist_loc.t" "distanceBetween3.p2";
connectAttr "fk_shoulder_loc.t" "distanceBetween2.p1";
connectAttr "fk_elbow_loc.t" "distanceBetween2.p2";
connectAttr "L_arm_option.FkIkSwitch" "condition6.ft";
connectAttr "distanceBetween4.d" "condition6.ctr";
connectAttr "distanceBetween2.d" "condition6.cfr";
connectAttr "L_arm_option.FkIkSwitch" "condition7.ft";
connectAttr "distanceBetween5.d" "condition7.ctr";
connectAttr "distanceBetween3.d" "condition7.cfr";
connectAttr "lower_Follicle_jnt_start.msg" "bindPose2.m[0]";
connectAttr "lower_Follicle_jnt_0.msg" "bindPose2.m[1]";
connectAttr "lower_Follicle_jnt_1.msg" "bindPose2.m[2]";
connectAttr "lower_Follicle_jnt_end.msg" "bindPose2.m[3]";
connectAttr "follicle_ribbon_bs.msg" "bindPose2.m[4]";
connectAttr "upper_Follicle_jnt_0.msg" "bindPose2.m[5]";
connectAttr "upper_Follicle_jnt_start.msg" "bindPose2.m[6]";
connectAttr "upper_Follicle_jnt_1.msg" "bindPose2.m[7]";
connectAttr "upper_Follicle_jnt_end.msg" "bindPose2.m[8]";
connectAttr "bindPose2.m[4]" "bindPose2.p[0]";
connectAttr "bindPose2.w" "bindPose2.p[1]";
connectAttr "bindPose2.w" "bindPose2.p[2]";
connectAttr "bindPose2.w" "bindPose2.p[3]";
connectAttr "bindPose2.w" "bindPose2.p[4]";
connectAttr "follicle_ribbon_bs.msg" "bindPose2.p[5]";
connectAttr "bindPose2.m[4]" "bindPose2.p[6]";
connectAttr "bindPose2.m[4]" "bindPose2.p[7]";
connectAttr "bindPose2.m[4]" "bindPose2.p[8]";
connectAttr "lower_Follicle_jnt_start.bps" "bindPose2.wm[0]";
connectAttr "lower_Follicle_jnt_0.bps" "bindPose2.wm[1]";
connectAttr "lower_Follicle_jnt_1.bps" "bindPose2.wm[2]";
connectAttr "lower_Follicle_jnt_end.bps" "bindPose2.wm[3]";
connectAttr "upper_Follicle_jnt_0.bps" "bindPose2.wm[5]";
connectAttr "upper_Follicle_jnt_start.bps" "bindPose2.wm[6]";
connectAttr "upper_Follicle_jnt_1.bps" "bindPose2.wm[7]";
connectAttr "upper_Follicle_jnt_end.bps" "bindPose2.wm[8]";
connectAttr "upper_Follicle_jnt_start.msg" "bindPose1.m[0]";
connectAttr "upper_Follicle_jnt_0.msg" "bindPose1.m[1]";
connectAttr "upper_Follicle_jnt_1.msg" "bindPose1.m[2]";
connectAttr "upper_Follicle_jnt_end.msg" "bindPose1.m[3]";
connectAttr "main_cnt.msg" "bindPose1.m[4]";
connectAttr "ribbon_grp.msg" "bindPose1.m[5]";
connectAttr "follicle_ribbon_bs.msg" "bindPose1.m[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[0]";
connectAttr "bindPose1.w" "bindPose1.p[1]";
connectAttr "bindPose1.w" "bindPose1.p[2]";
connectAttr "bindPose1.w" "bindPose1.p[3]";
connectAttr "bindPose1.w" "bindPose1.p[4]";
connectAttr "main_cnt.msg" "bindPose1.p[5]";
connectAttr "ribbon_grp.msg" "bindPose1.p[6]";
connectAttr "upper_Follicle_jnt_start.bps" "bindPose1.wm[0]";
connectAttr "upper_Follicle_jnt_0.bps" "bindPose1.wm[1]";
connectAttr "upper_Follicle_jnt_1.bps" "bindPose1.wm[2]";
connectAttr "upper_Follicle_jnt_end.bps" "bindPose1.wm[3]";
connectAttr "upper_ribbonShape1Orig.ws" "skinCluster3.ip[0].ig";
connectAttr "upper_ribbonShape1Orig.l" "skinCluster3.orggeom[0]";
connectAttr "upper_Follicle_jnt_end.wm" "skinCluster3.ma[0]";
connectAttr "upper_Follicle_jnt_0.wm" "skinCluster3.ma[1]";
connectAttr "upper_Follicle_jnt_start.wm" "skinCluster3.ma[2]";
connectAttr "upper_Follicle_jnt_1.wm" "skinCluster3.ma[3]";
connectAttr "upper_Follicle_jnt_end.liw" "skinCluster3.lw[0]";
connectAttr "upper_Follicle_jnt_0.liw" "skinCluster3.lw[1]";
connectAttr "upper_Follicle_jnt_start.liw" "skinCluster3.lw[2]";
connectAttr "upper_Follicle_jnt_1.liw" "skinCluster3.lw[3]";
connectAttr "upper_Follicle_jnt_end.obcc" "skinCluster3.ifcl[0]";
connectAttr "upper_Follicle_jnt_0.obcc" "skinCluster3.ifcl[1]";
connectAttr "upper_Follicle_jnt_start.obcc" "skinCluster3.ifcl[2]";
connectAttr "upper_Follicle_jnt_1.obcc" "skinCluster3.ifcl[3]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "lower_ribbonShape2Orig.ws" "skinCluster4.ip[0].ig";
connectAttr "lower_ribbonShape2Orig.l" "skinCluster4.orggeom[0]";
connectAttr "bindPose3.msg" "skinCluster4.bp";
connectAttr "lower_Follicle_jnt_start.wm" "skinCluster4.ma[0]";
connectAttr "lower_Follicle_jnt_0.wm" "skinCluster4.ma[1]";
connectAttr "lower_Follicle_jnt_1.wm" "skinCluster4.ma[2]";
connectAttr "lower_Follicle_jnt_end.wm" "skinCluster4.ma[3]";
connectAttr "lower_Follicle_jnt_start.liw" "skinCluster4.lw[0]";
connectAttr "lower_Follicle_jnt_0.liw" "skinCluster4.lw[1]";
connectAttr "lower_Follicle_jnt_1.liw" "skinCluster4.lw[2]";
connectAttr "lower_Follicle_jnt_end.liw" "skinCluster4.lw[3]";
connectAttr "lower_Follicle_jnt_start.obcc" "skinCluster4.ifcl[0]";
connectAttr "lower_Follicle_jnt_0.obcc" "skinCluster4.ifcl[1]";
connectAttr "lower_Follicle_jnt_1.obcc" "skinCluster4.ifcl[2]";
connectAttr "lower_Follicle_jnt_end.obcc" "skinCluster4.ifcl[3]";
connectAttr "main_cnt.msg" "bindPose3.m[0]";
connectAttr "ribbon_grp.msg" "bindPose3.m[1]";
connectAttr "follicle_ribbon_bs.msg" "bindPose3.m[2]";
connectAttr "lower_Follicle_jnt_start.msg" "bindPose3.m[3]";
connectAttr "lower_Follicle_jnt_0.msg" "bindPose3.m[4]";
connectAttr "lower_Follicle_jnt_1.msg" "bindPose3.m[5]";
connectAttr "lower_Follicle_jnt_end.msg" "bindPose3.m[6]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "bindPose3.m[2]" "bindPose3.p[3]";
connectAttr "bindPose3.m[2]" "bindPose3.p[4]";
connectAttr "bindPose3.m[2]" "bindPose3.p[5]";
connectAttr "bindPose3.m[2]" "bindPose3.p[6]";
connectAttr "test_mesh1ShapeOrig.w" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "L_arm_pv.Follow" "L_arm_pv_offset_parentConstraint1_ik_arm_L0_wrist_cntW0.i"
		;
connectAttr "L_arm_pv.Follow" "L_arm_pv_offset_parentConstraint1_main_cntW1.i";
connectAttr "groupParts1.og" "skinCluster5.ip[0].ig";
connectAttr "test_mesh1ShapeOrig.o" "skinCluster5.orggeom[0]";
connectAttr "bindPose4.msg" "skinCluster5.bp";
connectAttr "arm_L0_shoulder_jnt.wm" "skinCluster5.ma[0]";
connectAttr "arm_L0_twist0_jnt.wm" "skinCluster5.ma[1]";
connectAttr "arm_L0_twist1_jnt.wm" "skinCluster5.ma[2]";
connectAttr "arm_L0_elbow_jnt.wm" "skinCluster5.ma[3]";
connectAttr "arm_L0_twist2_jnt.wm" "skinCluster5.ma[4]";
connectAttr "arm_L0_twist3_jnt4.wm" "skinCluster5.ma[5]";
connectAttr "arm_L0_wrist_jnt.wm" "skinCluster5.ma[6]";
connectAttr "arm_L0_shoulder_jnt.liw" "skinCluster5.lw[0]";
connectAttr "arm_L0_twist0_jnt.liw" "skinCluster5.lw[1]";
connectAttr "arm_L0_twist1_jnt.liw" "skinCluster5.lw[2]";
connectAttr "arm_L0_elbow_jnt.liw" "skinCluster5.lw[3]";
connectAttr "arm_L0_twist2_jnt.liw" "skinCluster5.lw[4]";
connectAttr "arm_L0_twist3_jnt4.liw" "skinCluster5.lw[5]";
connectAttr "arm_L0_wrist_jnt.liw" "skinCluster5.lw[6]";
connectAttr "arm_L0_shoulder_jnt.obcc" "skinCluster5.ifcl[0]";
connectAttr "arm_L0_twist0_jnt.obcc" "skinCluster5.ifcl[1]";
connectAttr "arm_L0_twist1_jnt.obcc" "skinCluster5.ifcl[2]";
connectAttr "arm_L0_elbow_jnt.obcc" "skinCluster5.ifcl[3]";
connectAttr "arm_L0_twist2_jnt.obcc" "skinCluster5.ifcl[4]";
connectAttr "arm_L0_twist3_jnt4.obcc" "skinCluster5.ifcl[5]";
connectAttr "arm_L0_wrist_jnt.obcc" "skinCluster5.ifcl[6]";
connectAttr "arm_L0_elbow_jnt.msg" "skinCluster5.ptt";
connectAttr "world_jnt.msg" "bindPose4.m[0]";
connectAttr "arm_L0_shoulder_jnt.msg" "bindPose4.m[1]";
connectAttr "arm_L0_twist0_jnt.msg" "bindPose4.m[2]";
connectAttr "arm_L0_twist1_jnt.msg" "bindPose4.m[3]";
connectAttr "arm_L0_elbow_jnt.msg" "bindPose4.m[4]";
connectAttr "arm_L0_twist2_jnt.msg" "bindPose4.m[5]";
connectAttr "arm_L0_twist3_jnt4.msg" "bindPose4.m[6]";
connectAttr "arm_L0_wrist_jnt.msg" "bindPose4.m[7]";
connectAttr "bindPose4.w" "bindPose4.p[0]";
connectAttr "bindPose4.m[0]" "bindPose4.p[1]";
connectAttr "bindPose4.m[1]" "bindPose4.p[2]";
connectAttr "bindPose4.m[2]" "bindPose4.p[3]";
connectAttr "bindPose4.m[3]" "bindPose4.p[4]";
connectAttr "bindPose4.m[4]" "bindPose4.p[5]";
connectAttr "bindPose4.m[5]" "bindPose4.p[6]";
connectAttr "bindPose4.m[6]" "bindPose4.p[7]";
connectAttr "world_jnt.bps" "bindPose4.wm[0]";
connectAttr "arm_L0_shoulder_jnt.bps" "bindPose4.wm[1]";
connectAttr "arm_L0_twist0_jnt.bps" "bindPose4.wm[2]";
connectAttr "arm_L0_twist1_jnt.bps" "bindPose4.wm[3]";
connectAttr "arm_L0_elbow_jnt.bps" "bindPose4.wm[4]";
connectAttr "arm_L0_twist2_jnt.bps" "bindPose4.wm[5]";
connectAttr "arm_L0_twist3_jnt4.bps" "bindPose4.wm[6]";
connectAttr "arm_L0_wrist_jnt.bps" "bindPose4.wm[7]";
connectAttr "upperarm_L0_Twist_Start_jnt.t" "distanceBetween6.p1";
connectAttr "upperarm_L0_Twist_End_jnt.t" "distanceBetween6.p2";
connectAttr "main_cnt.sy" "multiplyDivide20.i1x";
connectAttr "distanceBetween6.d" "condition8.ft";
connectAttr "multiplyDivide20.ox" "condition8.st";
connectAttr "multiplyDivide21.ox" "condition8.ctr";
connectAttr "distanceBetween6.d" "multiplyDivide21.i1x";
connectAttr "multiplyDivide20.ox" "multiplyDivide21.i2x";
connectAttr "condition8.ocr" "multiplyDivide22.i1x";
connectAttr "multiplyDivide22.ox" "multiplyDivide23.i2x";
connectAttr "elbow_L0_Twist_Start_jnt.t" "distanceBetween7.p1";
connectAttr "elbow_L0_Twist_End_jnt.t" "distanceBetween7.p2";
connectAttr "distanceBetween7.d" "condition9.ft";
connectAttr "multiplyDivide25.ox" "condition9.st";
connectAttr "multiplyDivide26.ox" "condition9.ctr";
connectAttr "main_cnt.sy" "multiplyDivide25.i1x";
connectAttr "distanceBetween7.d" "multiplyDivide26.i1x";
connectAttr "multiplyDivide25.ox" "multiplyDivide26.i2x";
connectAttr "condition9.ocr" "multiplyDivide27.i1x";
connectAttr "arm_L0_shoulder_jnt.sy" "blendColors3.c1r";
connectAttr "arm_L0_elbow_jnt.sy" "blendColors3.c2r";
connectAttr "arm_L0_shoulder_jnt.sy" "blendColors4.c1r";
connectAttr "arm_L0_elbow_jnt.sy" "blendColors4.c2r";
connectAttr "arm_L0_elbow_jnt.sy" "blendColors5.c1r";
connectAttr "arm_L0_wrist_jnt.sy" "blendColors5.c2r";
connectAttr "arm_L0_elbow_jnt.sy" "blendColors6.c1r";
connectAttr "arm_L0_wrist_jnt.sy" "blendColors6.c2r";
connectAttr "blendColors3.opr" "plusMinusAverage1.i1[0]";
connectAttr "condition10.ocr" "plusMinusAverage1.i1[1]";
connectAttr "condition11.ocr" "plusMinusAverage2.i1[0]";
connectAttr "blendColors3.opr" "plusMinusAverage2.i1[1]";
connectAttr "condition12.ocr" "plusMinusAverage3.i1[0]";
connectAttr "blendColors4.opr" "plusMinusAverage3.i1[1]";
connectAttr "blendColors4.opr" "plusMinusAverage4.i1[0]";
connectAttr "condition13.ocr" "plusMinusAverage4.i1[1]";
connectAttr "condition14.ocr" "plusMinusAverage5.i1[0]";
connectAttr "blendColors5.opr" "plusMinusAverage5.i1[1]";
connectAttr "condition15.ocr" "plusMinusAverage6.i1[0]";
connectAttr "blendColors5.opr" "plusMinusAverage6.i1[1]";
connectAttr "blendColors6.opr" "plusMinusAverage7.i1[0]";
connectAttr "condition16.ocr" "plusMinusAverage7.i1[1]";
connectAttr "blendColors6.opr" "plusMinusAverage8.i1[0]";
connectAttr "condition17.ocr" "plusMinusAverage8.i1[1]";
connectAttr "driver_arm_L0_elbow_jnt.iog" "jnt.dsm" -na;
connectAttr "driver_arm_L0_shoulder_jnt1.iog" "jnt.dsm" -na;
connectAttr "driver_arm_L0_wrist_jnt.iog" "jnt.dsm" -na;
connectAttr "elbow_L0_NoTwist_End_jnt.iog" "jnt.dsm" -na;
connectAttr "elbow_L0_NoTwist_Start_jnt.iog" "jnt.dsm" -na;
connectAttr "elbow_L0_Twist_End_jnt.iog" "jnt.dsm" -na;
connectAttr "elbow_L0_Twist_Start_jnt.iog" "jnt.dsm" -na;
connectAttr "fk_arm_L0_elbow_jnt.iog" "jnt.dsm" -na;
connectAttr "fk_arm_L0_shoulder_jnt.iog" "jnt.dsm" -na;
connectAttr "fk_arm_L0_wrist_jnt.iog" "jnt.dsm" -na;
connectAttr "ik_arm_L0_elbow_jnt.iog" "jnt.dsm" -na;
connectAttr "ik_arm_L0_shoulder_jnt.iog" "jnt.dsm" -na;
connectAttr "ik_arm_L0_wrist_jnt.iog" "jnt.dsm" -na;
connectAttr "lower_Follicle_jnt1.iog" "jnt.dsm" -na;
connectAttr "lower_Follicle_jnt2.iog" "jnt.dsm" -na;
connectAttr "lower_Follicle_jnt3.iog" "jnt.dsm" -na;
connectAttr "lower_Follicle_jnt4.iog" "jnt.dsm" -na;
connectAttr "lower_Follicle_jnt_0.iog" "jnt.dsm" -na;
connectAttr "lower_Follicle_jnt_1.iog" "jnt.dsm" -na;
connectAttr "lower_Follicle_jnt_end.iog" "jnt.dsm" -na;
connectAttr "lower_Follicle_jnt_start.iog" "jnt.dsm" -na;
connectAttr "upper_Follicle_jnt1.iog" "jnt.dsm" -na;
connectAttr "upper_Follicle_jnt2.iog" "jnt.dsm" -na;
connectAttr "upper_Follicle_jnt3.iog" "jnt.dsm" -na;
connectAttr "upper_Follicle_jnt4.iog" "jnt.dsm" -na;
connectAttr "upper_Follicle_jnt_0.iog" "jnt.dsm" -na;
connectAttr "upper_Follicle_jnt_1.iog" "jnt.dsm" -na;
connectAttr "upper_Follicle_jnt_end.iog" "jnt.dsm" -na;
connectAttr "upper_Follicle_jnt_start.iog" "jnt.dsm" -na;
connectAttr "upperarm_L0_NoTwist_End_jnt.iog" "jnt.dsm" -na;
connectAttr "upperarm_L0_NoTwist_Start_jnt.iog" "jnt.dsm" -na;
connectAttr "upperarm_L0_Twist_End_jnt.iog" "jnt.dsm" -na;
connectAttr "upperarm_L0_Twist_Start_jnt.iog" "jnt.dsm" -na;
connectAttr "nodeView1.msg" "MayaNodeEditorBookmarks.b[0]";
connectAttr "multiplyDivide27.ox" "multiplyDivide28.i2x";
connectAttr "arm_L0_twist01_cnt.sy" "condition10.ft";
connectAttr "blendColors3.opr" "condition10.ctr";
connectAttr "arm_L0_twist01_cnt.sy" "condition10.cfr";
connectAttr "arm_L0_twist01_cnt.sz" "condition11.ft";
connectAttr "blendColors3.opr" "condition11.ctr";
connectAttr "arm_L0_twist01_cnt.sz" "condition11.cfr";
connectAttr "arm_L0_twist02_cnt.sy" "condition12.ft";
connectAttr "blendColors4.opr" "condition12.ctr";
connectAttr "arm_L0_twist02_cnt.sy" "condition12.cfr";
connectAttr "arm_L0_twist02_cnt.sz" "condition13.ft";
connectAttr "blendColors4.opr" "condition13.ctr";
connectAttr "arm_L0_twist02_cnt.sz" "condition13.cfr";
connectAttr "arm_L0_twist03_cnt.sy" "condition14.ft";
connectAttr "blendColors5.opr" "condition14.ctr";
connectAttr "arm_L0_twist03_cnt.sy" "condition14.cfr";
connectAttr "arm_L0_twist03_cnt.sz" "condition15.ft";
connectAttr "blendColors5.opr" "condition15.ctr";
connectAttr "arm_L0_twist03_cnt.sz" "condition15.cfr";
connectAttr "arm_L0_twist04_cnt.sy" "condition16.ft";
connectAttr "blendColors6.opr" "condition16.ctr";
connectAttr "arm_L0_twist04_cnt.sy" "condition16.cfr";
connectAttr "arm_L0_twist04_cnt.sz" "condition17.ft";
connectAttr "blendColors6.opr" "condition17.ctr";
connectAttr "arm_L0_twist04_cnt.sz" "condition17.cfr";
connectAttr "main_cnt.sx" "blendColors8.c1r";
connectAttr "condition9.ocr" "blendColors8.c2r";
connectAttr "main_cnt.s" "blendColors9.c1";
connectAttr "multiplyDivide4.ox" "blendColors9.c2r";
connectAttr "main_cnt.sx" "blendColors10.c1r";
connectAttr "multiplyDivide23.ox" "blendColors10.c2r";
connectAttr "multiplyDivide28.ox" "blendColors11.c1r";
connectAttr "main_cnt.sx" "blendColors11.c2r";
connectAttr "condition9.ft" "condition19.ft";
connectAttr "condition9.st" "condition19.st";
connectAttr "main_cnt.sx" "condition19.ctr";
connectAttr "blendColors11.opr" "condition19.cfr";
connectAttr "main_cnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "multiplyDivide1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "ik_arm_L0_shoulder_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "ik_arm_L0_elbow_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "multiplyDivide2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "ik_arm_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "multiplyDivide3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "ik_wrist_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "condition1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "multiplyDivide4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "distanceBetween1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "ik_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn";
connectAttr "fk_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn";
connectAttr "ik_L0_elbowSnap_cnt_offset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "driver_arm_L0_shoulder_jnt1_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "reverse1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn";
connectAttr "driver_arm_L0_wrist_jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "L_arm_option.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn";
connectAttr "driver_arm_L0_elbow_jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "armpit_multiplyDivide3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "armpit_multiplyDivide1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "arm_L0_twist01_cntOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "L_arm_option.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn";
connectAttr "armpit_plusMinusAverage1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "armpit_plusMinusAverage2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "upper_Follicle_jnt_start_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "upper_Follicle_jnt_start.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "arm_L0_twist02_cntOffset_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "armpit_multiplyDivide2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "arm_L0_twist01_cntOffset_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "armpit_plusMinusAverage3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "arm_L0_twist02_cntOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn"
		;
connectAttr "multiplyDivide11.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "fk_arm_L0_elbow_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn"
		;
connectAttr "multiplyDivide12.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "fk_arm_L0_shoulder_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "main_cnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[4].dn";
connectAttr "distanceBetween2.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[5].dn"
		;
connectAttr "multiplyDivide17.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[6].dn"
		;
connectAttr "fk_elbow_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[7].dn";
connectAttr "multiplyDivide15.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[8].dn"
		;
connectAttr "condition3.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[9].dn";
connectAttr "multiplyDivide13.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[10].dn"
		;
connectAttr "multiplyDivide16.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[11].dn"
		;
connectAttr "distanceBetween3.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "condition2.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[13].dn";
connectAttr "fk_shoulder_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[14].dn"
		;
connectAttr "multiplyDivide10.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[15].dn"
		;
connectAttr "fk_wrist_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[16].dn";
connectAttr "multiplyDivide14.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[17].dn"
		;
connectAttr "condition4.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[0].dn";
connectAttr "distanceBetween5.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[1].dn"
		;
connectAttr "distanceBetween2.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[2].dn"
		;
connectAttr "fk_wrist_locShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[3].dn"
		;
connectAttr "fk_elbow_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[4].dn";
connectAttr "condition6.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[5].dn";
connectAttr "elbow_L0_NoTwist_End_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[6].dn"
		;
connectAttr "L_arm_option.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[7].dn";
connectAttr "elbow_L0_Twist_End_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[8].dn"
		;
connectAttr "main_cnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[9].dn";
connectAttr "upperarm_L0_Twist_End_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[10].dn"
		;
connectAttr "distanceBetween3.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[11].dn"
		;
connectAttr "ik_elbow_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[12].dn";
connectAttr "fk_shoulder_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[13].dn"
		;
connectAttr "condition5.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[14].dn";
connectAttr "multiplyDivide19.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[15].dn"
		;
connectAttr "ik_wrist_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[16].dn";
connectAttr "fk_wrist_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[17].dn";
connectAttr "upperarm_L0_NoTwist_End_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[18].dn"
		;
connectAttr "distanceBetween4.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[19].dn"
		;
connectAttr "ik_arm_loc.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[20].dn";
connectAttr "multiplyDivide18.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[21].dn"
		;
connectAttr "condition7.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[22].dn";
connectAttr "condition19.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[0].dn";
connectAttr "blendColors5.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[1].dn";
connectAttr "condition8.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[2].dn";
connectAttr "blendColors9.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[3].dn";
connectAttr "condition10.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[4].dn";
connectAttr "ik_arm_L0_elbow_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[5].dn"
		;
connectAttr "plusMinusAverage7.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[6].dn"
		;
connectAttr "|main_cnt|fk_grp|fk_arm_L0_shoulder_cnt|fk_arm_L0_shoulder_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_elbow_cnt|fk_arm_L0_wrist_cnt|fk_arm_L0_wrist_cnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[7].dn"
		;
connectAttr "arm_L0_twist0_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[8].dn"
		;
connectAttr "arm_L0_twist01_cnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[9].dn"
		;
connectAttr "multiplyDivide27.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[10].dn"
		;
connectAttr "multiplyDivide4.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[11].dn"
		;
connectAttr "plusMinusAverage4.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[12].dn"
		;
connectAttr "arm_L0_elbow_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[13].dn"
		;
connectAttr "fk_arm_L0_shoulder_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[14].dn"
		;
connectAttr "elbow_L0_Twist_Start_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[15].dn"
		;
connectAttr "main_cnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[16].dn";
connectAttr "condition15.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[17].dn";
connectAttr "blendColors3.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[18].dn";
connectAttr "elbow_L0_Twist_End_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[19].dn"
		;
connectAttr "arm_L0_twist3_jnt4.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[20].dn"
		;
connectAttr "condition16.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[21].dn";
connectAttr "plusMinusAverage8.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[22].dn"
		;
connectAttr "arm_L0_twist02_cnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[23].dn"
		;
connectAttr "plusMinusAverage2.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[24].dn"
		;
connectAttr "distanceBetween6.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[25].dn"
		;
connectAttr "L_arm_option.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[26].dn";
connectAttr "blendColors11.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[27].dn";
connectAttr "plusMinusAverage1.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[28].dn"
		;
connectAttr "blendColors4.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[29].dn";
connectAttr "arm_L0_wrist_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[30].dn"
		;
connectAttr "multiplyDivide26.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[31].dn"
		;
connectAttr "arm_L0_twist2_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[32].dn"
		;
connectAttr "ik_arm_L0_shoulder_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[33].dn"
		;
connectAttr "fk_arm_L0_elbow_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[34].dn"
		;
connectAttr "condition11.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[35].dn";
connectAttr "blendColors6.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[36].dn";
connectAttr "condition9.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[37].dn";
connectAttr "blendColors8.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[38].dn";
connectAttr "multiplyDivide23.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[39].dn"
		;
connectAttr "multiplyDivide28.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[40].dn"
		;
connectAttr "multiplyDivide25.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[41].dn"
		;
connectAttr "plusMinusAverage5.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[42].dn"
		;
connectAttr "arm_L0_twist04_cnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[43].dn"
		;
connectAttr "|main_cnt|ik_grp|ik_arm_L0_wrist_cnt|ik_arm_L0_wrist_cnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[44].dn"
		;
connectAttr "condition12.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[45].dn";
connectAttr "plusMinusAverage3.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[46].dn"
		;
connectAttr "condition13.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[47].dn";
connectAttr "upperarm_L0_Twist_End_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[48].dn"
		;
connectAttr "upperarm_L0_Twist_Start_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[49].dn"
		;
connectAttr "multiplyDivide21.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[50].dn"
		;
connectAttr "multiplyDivide20.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[51].dn"
		;
connectAttr "distanceBetween7.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[53].dn"
		;
connectAttr "arm_L0_twist1_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[54].dn"
		;
connectAttr "condition14.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[55].dn";
connectAttr "multiplyDivide22.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[56].dn"
		;
connectAttr "blendColors10.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[57].dn";
connectAttr "condition17.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[58].dn";
connectAttr "driver_arm_L0_wrist_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[59].dn"
		;
connectAttr "plusMinusAverage6.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[60].dn"
		;
connectAttr "arm_L0_twist03_cnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[61].dn"
		;
connectAttr "arm_L0_shoulder_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[62].dn"
		;
connectAttr "arm_L0_twist3_jnt4.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[0].dn"
		;
connectAttr "skinCluster3.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[1].dn";
connectAttr "armpit_plusMinusAverage3.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[2].dn"
		;
connectAttr "plusMinusAverage1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[3].dn"
		;
connectAttr "blendColors10.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[4].dn";
connectAttr "multiplyDivide21.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[5].dn"
		;
connectAttr "blendColors3.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[6].dn";
connectAttr "plusMinusAverage5.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[7].dn"
		;
connectAttr "armpit_plusMinusAverage2.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[8].dn"
		;
connectAttr "elbow_L0_NoTwist_ikHandle_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[9].dn"
		;
connectAttr "elbow_L0_Twist_ikHandle_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[10].dn"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[11].dn"
		;
connectAttr "condition15.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[12].dn";
connectAttr "plusMinusAverage7.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[13].dn"
		;
connectAttr "armpit_multiplyDivide2.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[14].dn"
		;
connectAttr "arm_L0_twist04_cntOffset_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[15].dn"
		;
connectAttr "distanceBetween6.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[16].dn"
		;
connectAttr "plusMinusAverage4.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[17].dn"
		;
connectAttr "condition11.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[18].dn";
connectAttr "condition14.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[19].dn";
connectAttr "upperarm_L0_Twist_ikHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[20].dn"
		;
connectAttr "plusMinusAverage2.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[21].dn"
		;
connectAttr "upperarm_L0_NoTwist_Start_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[22].dn"
		;
connectAttr "lower_Follicle_jnt_end_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[23].dn"
		;
connectAttr "blendColors6.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[24].dn";
connectAttr "condition13.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[25].dn";
connectAttr "effector3.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[26].dn";
connectAttr "driver_arm_L0_wrist_jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[27].dn"
		;
connectAttr "armpit_multiplyDivide3.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[28].dn"
		;
connectAttr "arm_L0_twist02_cntOffset_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[29].dn"
		;
connectAttr "effector2.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[30].dn";
connectAttr "upperarm_L0_NoTwist_Start_jnt_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[31].dn"
		;
connectAttr "multiplyDivide28.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[32].dn"
		;
connectAttr "arm_L0_twist02_cntOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[33].dn"
		;
connectAttr "armpit_plusMinusAverage1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[34].dn"
		;
connectAttr "plusMinusAverage3.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[35].dn"
		;
connectAttr "arm_L0_twist03_cntOffste.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[36].dn"
		;
connectAttr "elbow_L0_Twist_ikHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[37].dn"
		;
connectAttr "arm_L0_wrist_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[38].dn"
		;
connectAttr "elbow_L0_NoTwist_ikHandle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[39].dn"
		;
connectAttr "upper_Follicle_jnt_start.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[40].dn"
		;
connectAttr "upperarm_L0_Twist_ikHandle_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[41].dn"
		;
connectAttr "condition7.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[42].dn";
connectAttr "condition12.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[43].dn";
connectAttr "blendColors4.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[44].dn";
connectAttr "skinCluster5.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[45].dn";
connectAttr "arm_L0_elbow_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[46].dn"
		;
connectAttr "arm_L0_wrist_jnt_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[47].dn"
		;
connectAttr "plusMinusAverage8.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[48].dn"
		;
connectAttr "upperarm_L0_Twist_Start_jnt_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[49].dn"
		;
connectAttr "elbow_L0_Twist_End_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[50].dn"
		;
connectAttr "condition10.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[51].dn";
connectAttr "condition5.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[52].dn";
connectAttr "condition6.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[53].dn";
connectAttr "multiplyDivide23.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[54].dn"
		;
connectAttr "fk_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[55].dn";
connectAttr "condition4.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[56].dn";
connectAttr "condition8.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[57].dn";
connectAttr "effector5.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[58].dn";
connectAttr "effector4.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[59].dn";
connectAttr "arm_L0_twist01_cntOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[60].dn"
		;
connectAttr "blendColors5.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[61].dn";
connectAttr "skinCluster4.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[62].dn";
connectAttr "blendColors11.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[63].dn";
connectAttr "driver_arm_L0_shoulder_jnt1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[64].dn"
		;
connectAttr "arm_L0_twist1_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[65].dn"
		;
connectAttr "L_arm_option.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[66].dn";
connectAttr "driver_arm_L0_elbow_jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[67].dn"
		;
connectAttr "multiplyDivide26.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[68].dn"
		;
connectAttr "elbow_L0_Twist_ikHandle_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[69].dn"
		;
connectAttr "upperarm_L0_Twist_End_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[70].dn"
		;
connectAttr "upper_Follicle_jnt_start_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[71].dn"
		;
connectAttr "arm_L0_twist0_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[72].dn"
		;
connectAttr "condition16.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[73].dn";
connectAttr "arm_L0_twist01_cntOffset_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[74].dn"
		;
connectAttr "condition19.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[75].dn";
connectAttr "driver_arm_L0_shoulder_jnt1_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[76].dn"
		;
connectAttr "upperarm_L0_NoTwist_End_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[77].dn"
		;
connectAttr "driver_arm_L0_elbow_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[78].dn"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[79].dn"
		;
connectAttr "arm_L0_twist04_cntOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[80].dn"
		;
connectAttr "driver_arm_L0_wrist_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[81].dn"
		;
connectAttr "ik_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[82].dn";
connectAttr "multiplyDivide22.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[83].dn"
		;
connectAttr "condition17.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[84].dn";
connectAttr "multiplyDivide27.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[85].dn"
		;
connectAttr "blendColors8.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[86].dn";
connectAttr "plusMinusAverage6.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[87].dn"
		;
connectAttr "arm_L0_twist2_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[88].dn"
		;
connectAttr "ik_L0_elbowSnap_cnt_offset_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[89].dn"
		;
connectAttr "elbow_L0_NoTwist_End_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[90].dn"
		;
connectAttr "condition9.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[91].dn";
connectAttr "arm_L0_twist03_cntOffste_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[92].dn"
		;
connectAttr "arm_L0_shoulder_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[93].dn"
		;
connectAttr "curveShape2.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[94].dn";
connectAttr "distanceBetween7.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[95].dn"
		;
connectAttr "lower_Follicle_jnt_end.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[96].dn"
		;
connectAttr "reverse1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[97].dn";
connectAttr "upperarm_L0_Twist_Start_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[98].dn"
		;
connectAttr "elbow_L0_NoTwist_ikHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[99].dn"
		;
connectAttr "armpit_multiplyDivide1.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[100].dn"
		;
connectAttr "distanceBetween1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armpit_plusMinusAverage1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armpit_multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armpit_plusMinusAverage2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armpit_multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armpit_multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "armpit_plusMinusAverage3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "distanceBetween2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "distanceBetween3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "distanceBetween4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "distanceBetween5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "distanceBetween6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide20.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide21.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide22.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide23.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "distanceBetween7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide25.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide26.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide27.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide28.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "upper_ribbonShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lower_ribbonShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "test_mesh1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
// End of humanarm10.ma
