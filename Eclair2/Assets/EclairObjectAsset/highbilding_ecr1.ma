//Maya ASCII 2016 scene
//Name: highbilding_ecr1.ma
//Last modified: Sun, Apr 09, 2017 03:06:12 PM
//Codeset: UTF-8
requires maya "2016";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.2 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Mac OS X 10.9.3";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "0EDC5132-5248-AEF4-5B23-9180C909E28C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -79.526150354071589 129.16638075429347 184.08709166988552 ;
	setAttr ".r" -type "double3" 1050.8616470511176 -9391.0000000019609 -1.8552706565705824e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "BDBDD3A6-3B4F-EB34-1B61-BF892FA40797";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 243.43588361405878;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D0EAD1D9-0142-F055-DF07-37AD82FCD97C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.9574350288871178 100.1 10.89378779307628 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "181197F7-C242-9CA6-80CE-A7B92CAC7630";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 20.358827068252829;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "45FF2F8F-3E43-E111-DB59-ECAFB5173414";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.053780135689828 13.919810466828313 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F742A480-5941-C047-2DCB-98ABECD8D89D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 19.141308991092625;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "7A5F877C-654E-AF6B-1962-F4BDB6DEAEB2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 30.526156661556811 14.921271281528783 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "111B6032-3343-92FF-23FD-8FB86E44BFBB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 56.633347350493935;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group";
	rename -uid "2014506A-F344-D866-4584-2B89EB60113A";
	setAttr ".t" -type "double3" 0 0 2.1668317733782603 ;
	setAttr ".rp" -type "double3" -5.5480716644444703 2.7408294071325305 0 ;
	setAttr ".sp" -type "double3" -5.5480716644444703 2.7408294071325305 0 ;
createNode transform -n "group1";
	rename -uid "4AAF2270-0541-6443-616A-D399C0E8D9D1";
	setAttr ".rp" -type "double3" -5.5480716644444703 2.7408294071325305 0 ;
	setAttr ".sp" -type "double3" -5.5480716644444703 2.7408294071325305 0 ;
createNode transform -n "group2";
	rename -uid "1104BB86-9A43-2070-4959-CA8E132F5D1D";
	setAttr ".t" -type "double3" 0 0 3.7918080435463488 ;
	setAttr ".s" -type "double3" 0.5781724910513748 0.5781724910513748 0.5781724910513748 ;
	setAttr ".rp" -type "double3" -5.4055624279965748 2.7408294071325305 0 ;
	setAttr ".sp" -type "double3" -5.4055624279965748 2.7408294071325305 0 ;
createNode transform -n "left";
	rename -uid "851EF5D8-2C4D-6D74-AA66-03A72AA8C3F6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -100.1 2.8344678794686988 1.9985792713829866 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "72CA2EE4-154B-DCB0-F04C-2EB31C981C06";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 23.080630918261914;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode transform -n "pCube7";
	rename -uid "E0E9351E-7044-8A0A-E62F-4F8A0C17D05C";
	setAttr ".s" -type "double3" 2.0240816695091661 2.0240816695091661 2.0240816695091661 ;
createNode transform -n "polySurface2" -p "pCube7";
	rename -uid "CDC4E564-6C46-C9AB-A672-FAB31292125B";
createNode transform -n "transform57" -p "|pCube7|polySurface2";
	rename -uid "3C3AFD45-2A45-BE09-1E59-40A05851D3A5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform57";
	rename -uid "35BFDA52-BA4E-8FB7-657F-8FBA286874BF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:29]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50560538470745087 0.5809306800365448 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 55 ".uvst[0].uvsp[0:54]" -type "float2" 0.37940449 0.0023509348
		 0.62500036 0.0023220284 0.625 0.07 0.38081032 0.070033342 0.36656541 0.24117357 0.63960087
		 0.24041288 0.63639635 0.50182724 0.37968835 0.49999434 0.37698498 0.68004858 0.625
		 0.67999995 0.62499911 0.74751818 0.37944555 0.74762142 0.62499893 0.99999613 0.37945387
		 1.000013589859 0.87499607 0.0022819599 0.875 0.07 0.12610717 0.0023023121 0.1203572
		 0.069993451 0.88236612 0.24544786 0.12400482 0.25041321 0.12179752 0.08923953 0.37663084
		 0.66185439 0.62560219 0.66339463 0.87688971 0.088806413 0.62815714 0.085737288 0.38056076
		 0.087235525 0.38153118 0.66174507 0.625 0.66199994 0.625 0.67999995 0.38167745 0.67973429
		 0.625 0.07 0.875 0.07 0.875 0.088000007 0.625 0.088 0.3786318 0.07027176 0.37972361
		 0.088179111 0.13015637 0.070003971 0.13094114 0.088163301 0.62365282 0.62166202 0.87477893
		 0.12828285 0.62596107 0.12466464 0.62698877 0.1311411 0.5 0.25 0.5 0.13336 0.47689676
		 0.12399918 0.46739617 0.24491334 0.46944654 0.12393052 0.625 0.1204 0.625 0.13336
		 0.5 0.13336 0.46250001 0.25 0.5 0.25 0.63528746 0.13336 0.63493276 0.1204 0.62900585
		 0.12490503;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 39 ".vt[0:38]"  -1.013159871 0.13836956 1 1.95947945 0.13836956 1
		 -1.013159871 18.94235229 1 1.95947945 18.94235229 1 -1.013159871 18.94235229 -1 1.95947945 18.94235229 -1
		 -1.013159871 0.13836956 -1 1.95947945 0.13836956 -1 -1.013159871 8.11673641 -1 1.95947945 8.11673641 -1
		 1.95947945 8.11673641 1 -1.013159871 8.11673641 1 -1.013159871 8.42048264 -1 1.95947945 8.42048264 -1
		 1.95947933 8.42048168 1 -1.013159752 8.42048168 1 -0.91443658 8.42048264 -0.90127683
		 1.76311827 8.371665 -0.85245776 1.76311827 8.067918777 -0.85245776 -0.91443658 8.11673641 -0.90127683
		 1.76311827 8.067918777 0.85245776 1.76311803 8.37166405 0.85245776 -0.91443658 8.11673641 0.8036387
		 -0.91443658 8.42048168 0.8036387 1.95947945 11.36660671 -1 1.95947933 11.17558479 1
		 1.95947945 11.3666048 1 0.13984786 18.94235229 1 0.1398478 11.3666048 1 0.02726382 11.17558479 1
		 0.027263865 18.94235229 1 0.1398478 11.3666048 0.9180094 0.02726382 11.17558479 0.9180094
		 1.95947933 11.17558479 0.9180094 1.95947945 11.3666048 0.9180094 0.02726385 18.94235229 0.9180094
		 0.13984786 18.94235229 0.9180094 1.95947945 11.3666048 0.91770005 1.95947933 11.17558479 0.92053795;
	setAttr -s 68 ".ed[0:67]"  2 30 0 2 4 0 3 5 0 5 24 0 6 0 0 7 1 0 0 11 0
		 1 10 0 8 6 0 9 7 0 9 10 0 10 11 0 11 8 0 14 25 0 15 2 0 13 14 0 14 15 0 15 12 0 12 16 1
		 13 17 1 9 18 1 17 18 0 8 19 1 16 19 0 10 20 1 18 20 0 14 21 1 17 21 0 20 21 0 11 22 1
		 20 22 0 15 23 1 21 23 0 22 23 0 22 19 0 23 16 0 4 12 0 24 13 0 25 29 0 26 3 0 26 28 0
		 0 1 0 6 7 0 8 9 0 19 18 0 16 17 0 12 13 0 27 3 0 27 28 0 4 5 0 30 27 0 30 29 0 28 31 0
		 29 32 1 31 32 1 25 33 0 33 32 0 26 34 0 33 34 0 34 31 0 30 35 0 35 32 0 27 36 0 36 31 0
		 35 36 0 37 26 0 38 25 0 37 38 0;
	setAttr -s 30 -ch 130 ".fc[0:29]" -type "polyFaces" 
		f 4 -7 41 7 11
		mu 0 4 3 0 1 2
		f 4 -9 43 9 -43
		mu 0 4 11 8 9 10
		f 4 -5 42 5 -42
		mu 0 4 13 11 10 12
		f 4 -6 -10 10 -8
		mu 0 4 1 14 15 2
		f 4 4 6 12 8
		mu 0 4 16 0 3 17
		f 4 -24 45 21 -45
		mu 0 4 29 26 27 28
		f 4 -26 -22 27 -29
		mu 0 4 30 31 32 33
		f 4 -34 -31 28 32
		mu 0 4 35 34 30 33
		f 4 -35 33 35 23
		mu 0 4 36 34 35 37
		f 5 -37 49 3 37 -47
		mu 0 5 21 7 6 38 22
		f 4 -18 14 1 36
		mu 0 4 20 25 4 19
		f 4 -19 46 19 -46
		mu 0 4 26 21 22 27
		f 4 -44 22 44 -21
		mu 0 4 9 8 29 28
		f 4 -11 20 25 -25
		mu 0 4 2 15 31 30
		f 4 15 26 -28 -20
		mu 0 4 23 24 33 32
		f 4 -30 -12 24 30
		mu 0 4 34 3 2 30
		f 4 16 31 -33 -27
		mu 0 4 24 25 35 33
		f 4 -13 29 34 -23
		mu 0 4 17 3 34 36
		f 4 17 18 -36 -32
		mu 0 4 25 20 37 35
		f 9 67 66 -14 -16 -38 -4 -3 -40 -66
		mu 0 9 52 53 40 24 23 39 18 5 41
		f 4 54 -57 58 59
		mu 0 4 49 46 47 48
		f 4 48 -41 39 -48
		mu 0 4 42 43 41 5
		f 6 -2 0 50 47 2 -50
		mu 0 6 7 4 45 42 5 6
		f 4 61 -55 -64 -65
		mu 0 4 50 46 49 51
		f 6 -17 13 38 -52 -1 -15
		mu 0 6 25 24 54 44 45 4
		f 4 -39 55 56 -54
		mu 0 4 44 40 47 46
		f 4 40 52 -60 -58
		mu 0 4 41 43 49 48
		f 4 51 53 -62 -61
		mu 0 4 45 44 46 50
		f 4 -49 62 63 -53
		mu 0 4 43 42 51 49
		f 4 -51 60 64 -63
		mu 0 4 42 45 50 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "polySurface3" -p "pCube7";
	rename -uid "DFC010D5-0943-18FC-9D86-DAB35D15BF46";
createNode transform -n "transform56" -p "polySurface3";
	rename -uid "F26F93FB-4245-70D6-7A6F-7FB4BC89EF9E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform56";
	rename -uid "1882A378-474A-E3F5-FF94-E681BB0E8E81";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:14]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.37500811 0.12499324 0.625 0 0.625 0.125 0.5 0.25 0.625 0.25 0.37497514 0.25003746
		 0.5 0.5 0.375025 0.49998751 0.625 0.5 0.37501875 0.62500626 0.5 0.625 0.625 0.625
		 0.5 0.75 0.375 0.75 0.625 0.75 0.5 1 0.375 1 0.625 1 0.875 0 0.875 0.125 0.875 0.25
		 0.125 0 0.1250125 0.12497501;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".pt";
	setAttr ".pt[2]" -type "float3" 6.2185497 8.7430063e-16 0 ;
	setAttr ".pt[5]" -type "float3" 6.2185497 8.8817842e-16 0 ;
	setAttr ".pt[7]" -type "float3" 6.2185497 0 0 ;
	setAttr ".pt[8]" -type "float3" 0 8.8817842e-16 -0.79875034 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.79875034 ;
	setAttr ".pt[10]" -type "float3" 6.2185497 0 -0.79875034 ;
	setAttr ".pt[11]" -type "float3" 0 8.8817842e-16 -0.79875034 ;
	setAttr ".pt[12]" -type "float3" 6.2185497 1.7763568e-15 -0.79875034 ;
	setAttr ".pt[13]" -type "float3" 0 8.7430063e-16 -0.79875034 ;
	setAttr ".pt[14]" -type "float3" 0 8.7430063e-16 -0.79875034 ;
	setAttr ".pt[15]" -type "float3" 6.2185497 1.7486013e-15 -0.79875034 ;
	setAttr -s 16 ".vt[0:15]"  -7.79669857 0.032082319 0.99839163 -4.36798859 0.032082319 0.99839163
		 -0.96902108 0.032082319 0.99839163 -7.79669857 1.39684713 0.99839163 -4.36798859 1.39684725 0.99839163
		 -0.96902108 1.39684713 0.99839163 -4.36798859 4.90696001 0.99839163 -0.96902108 4.90696001 0.99839163
		 -7.79669857 1.39684713 -0.99839163 -4.36798859 4.90696001 -0.99839163 -0.96902108 4.90696001 -0.99839163
		 -4.36798859 1.39684725 -0.99839163 -0.96902108 1.39684713 -0.99839163 -7.79669857 0.032082319 -0.99839163
		 -4.36798859 0.032082319 -0.99839163 -0.96902108 0.032082319 -0.99839163;
	setAttr -s 29 ".ed[0:28]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 8 9 0 9 10 0
		 8 11 1 11 12 1 13 14 0 14 15 0 0 3 0 1 4 1 2 5 0 4 6 1 5 7 0 6 9 1 7 10 0 9 11 1
		 10 12 0 8 13 0 11 14 1 12 15 0 13 0 0 14 1 1 15 2 0 12 5 1 8 3 0 6 3 0;
	setAttr -s 15 -ch 58 ".fc[0:14]" -type "polyFaces" 
		f 4 0 12 -3 -12
		mu 0 4 0 1 2 3
		f 4 1 13 -4 -13
		mu 0 4 1 4 5 2
		f 3 2 14 28
		mu 0 3 3 2 6
		f 4 3 15 -5 -15
		mu 0 4 2 5 7 6
		f 4 -29 16 -6 27
		mu 0 4 8 6 9 10
		f 4 4 17 -7 -17
		mu 0 4 6 7 11 9
		f 3 5 18 -8
		mu 0 3 12 9 13
		f 4 6 19 -9 -19
		mu 0 4 9 11 14 13
		f 4 7 21 -10 -21
		mu 0 4 12 13 15 16
		f 4 8 22 -11 -22
		mu 0 4 13 14 17 15
		f 4 9 24 -1 -24
		mu 0 4 16 15 18 19
		f 4 10 25 -2 -25
		mu 0 4 15 17 20 18
		f 4 -26 -23 26 -14
		mu 0 4 4 21 22 5
		f 4 -27 -20 -18 -16
		mu 0 4 5 22 23 7
		f 4 23 11 -28 20
		mu 0 4 24 0 3 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface13" -p "pCube7";
	rename -uid "7500F689-FC41-35B2-DBE5-A1A829BD2F85";
createNode transform -n "transform55" -p "polySurface13";
	rename -uid "BFF6703F-304B-0DD7-EA35-E3BA355EA902";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform55";
	rename -uid "0F845844-644F-D243-E541-8D96F35264D6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:18]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.37500811 0.12499324 0.5 0 0.625 0 0.625 0.125 0.5 0.125 0.37500811 0.12499324
		 0.5 0.25 0.625 0.25 0.37497514 0.25003746 0.5 0.5 0.375025 0.49998751 0.625 0.5 0.37501875
		 0.62500626 0.5 0.625 0.625 0.625 0.5 0.75 0.375 0.75 0.625 0.75 0.5 1 0.375 1 0.625
		 1 0.875 0 0.875 0.125 0.875 0.25 0.125 0 0.375 0 0.1250125 0.12497501;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[2]" -type "float3" 0.084301613 4.4408921e-16 0 ;
	setAttr ".pt[5]" -type "float3" 0.084301613 4.4408921e-16 0 ;
	setAttr ".pt[7]" -type "float3" 0.084301613 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.084301613 0 2.220446e-16 ;
	setAttr ".pt[12]" -type "float3" 0.084301613 4.4408921e-16 2.220446e-16 ;
	setAttr ".pt[15]" -type "float3" 0.084301613 4.4408921e-16 2.220446e-16 ;
	setAttr -s 20 ".vt[0:19]"  -2.11201668 0.063886881 2.14882088 -0.10610783 0.063886881 2.14882088
		 1.88240063 2.31755424 2.14882088 -2.11201668 3.16449022 2.14882088 -0.10610783 3.16449022 2.14882088
		 1.88240063 3.18624926 2.14882088 -0.10610783 5.4204936 2.14882088 1.88240063 5.4204936 2.14882088
		 -2.11201668 3.16484118 0.99433571 -0.10610783 5.4204936 0.99433571 1.88240063 5.4204936 0.99433571
		 -0.10610783 3.18624926 0.99433571 1.88240063 3.18624926 0.99433571 -2.11201668 0.063886881 0.99433571
		 -0.10610783 0.063886881 0.99433571 1.88240063 2.31755424 0.99433571 -2.11201668 0.063886881 3.75035381
		 -0.10610783 0.063886881 3.75035381 -0.10610783 3.16449022 3.75035381 -2.11201668 3.16449022 3.75035381;
	setAttr -s 37 ".ed[0:36]"  0 1 1 1 2 0 3 4 0 4 5 1 6 7 0 8 9 0 9 10 0
		 8 11 1 11 12 1 13 14 0 14 15 0 0 3 1 1 4 0 2 5 0 4 6 1 5 7 0 6 9 1 7 10 0 9 11 1
		 10 12 0 8 13 0 11 14 1 12 15 0 13 0 0 14 1 1 15 2 0 12 5 1 8 3 0 6 3 0 0 16 0 1 17 0
		 16 17 0 4 18 0 17 18 0 3 19 0 19 18 0 16 19 0;
	setAttr -s 19 -ch 74 ".fc[0:18]" -type "polyFaces" 
		f 4 31 33 -36 -37
		mu 0 4 0 1 2 3
		f 4 1 13 -4 -13
		mu 0 4 4 5 6 7
		f 3 2 14 28
		mu 0 3 8 7 9
		f 4 3 15 -5 -15
		mu 0 4 7 6 10 9
		f 4 -29 16 -6 27
		mu 0 4 11 9 12 13
		f 4 4 17 -7 -17
		mu 0 4 9 10 14 12
		f 3 5 18 -8
		mu 0 3 15 12 16
		f 4 6 19 -9 -19
		mu 0 4 12 14 17 16
		f 4 7 21 -10 -21
		mu 0 4 15 16 18 19
		f 4 8 22 -11 -22
		mu 0 4 16 17 20 18
		f 4 9 24 -1 -24
		mu 0 4 19 18 21 22
		f 4 10 25 -2 -25
		mu 0 4 18 20 23 21
		f 4 -26 -23 26 -14
		mu 0 4 5 24 25 6
		f 4 -27 -20 -18 -16
		mu 0 4 6 25 26 10
		f 4 23 11 -28 20
		mu 0 4 27 28 8 29
		f 4 0 30 -32 -30
		mu 0 4 28 4 1 0
		f 4 12 32 -34 -31
		mu 0 4 4 7 2 1
		f 4 -3 34 35 -33
		mu 0 4 7 8 3 2
		f 4 -12 29 36 -35
		mu 0 4 8 28 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface14" -p "pCube7";
	rename -uid "4B6E0831-1E4B-F20A-3A80-778566FC6EC3";
createNode transform -n "transform54" -p "polySurface14";
	rename -uid "3FB848DD-D24B-FC28-5AEC-C28C6E1FC729";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform54";
	rename -uid "E44D2F3C-9549-7E22-8509-3BAE6C77CE23";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5693897 4.29946375 1.53505552 0.4306103 4.29946375 1.53505552
		 -0.5693897 5.29946375 1.53505552 0.4306103 5.29946375 1.53505552 -0.5693897 5.29946375 1.17954576
		 0.4306103 5.29946375 1.17954576 -0.5693897 4.29946375 1.17954576 0.4306103 4.29946375 1.17954576;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface15" -p "pCube7";
	rename -uid "90F49995-4A4E-E52D-8D31-47A1C9551FEB";
createNode transform -n "transform53" -p "polySurface15";
	rename -uid "3F48343A-844D-E2F7-7A81-A69F42E983A0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform53";
	rename -uid "631D0983-3147-66F0-377D-1B89F8B025B8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1.36117733 3.42499685 2.079290867 -0.36117733 3.42499685 2.079290867
		 -1.36117733 4.42499685 2.079290867 -0.36117733 4.42499685 2.079290867 -1.36117733 4.42499685 1.079290986
		 -0.36117733 4.42499685 1.079290986 -1.36117733 3.42499685 1.079290986 -0.36117733 3.42499685 1.079290986;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface16" -p "pCube7";
	rename -uid "DDE0095D-A14F-E399-4541-83A144399011";
createNode transform -n "transform52" -p "polySurface16";
	rename -uid "2C69D001-8B44-5D5B-40DC-99866BC56FEF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape15" -p "transform52";
	rename -uid "8694D5BD-5746-8841-9567-35BB67469C45";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1.023813367 3.65323877 2.079290867 -0.023813367 3.65323877 2.079290867
		 -1.023813367 4.65323877 2.079290867 -0.023813367 4.65323877 2.079290867 -1.023813367 4.65323877 1.079290986
		 -0.023813367 4.65323877 1.079290986 -1.023813367 3.65323877 1.079290986 -0.023813367 3.65323877 1.079290986;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface17" -p "pCube7";
	rename -uid "18099BB8-0D48-743E-1190-F89B14784C1D";
createNode transform -n "transform51" -p "polySurface17";
	rename -uid "01149BAE-654D-557B-2729-028D21B103FF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform51";
	rename -uid "A1CD6228-5143-147F-7568-6EB39865B6EA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1.89126742 2.65600824 2.079290867 -0.89126742 2.65600824 2.079290867
		 -1.89126742 3.65600824 2.079290867 -0.89126742 3.65600824 2.079290867 -1.89126742 3.65600824 1.079290986
		 -0.89126742 3.65600824 1.079290986 -1.89126742 2.65600824 1.079290986 -0.89126742 2.65600824 1.079290986;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface18" -p "pCube7";
	rename -uid "8DB9E122-F748-1505-6A24-B6ABFA7CBCFD";
createNode transform -n "transform50" -p "polySurface18";
	rename -uid "57D9CC9D-9A40-F077-35A1-C8960372A09B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform50";
	rename -uid "6F9FC54D-8D45-EF23-BE76-82A5F55DFDF2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.69569504 4.17664862 2.079290867 0.30430496 4.17664862 2.079290867
		 -0.69569504 5.17664862 2.079290867 0.30430496 5.17664862 2.079290867 -0.69569504 5.17664862 1.079290986
		 0.30430496 5.17664862 1.079290986 -0.69569504 4.17664862 1.079290986 0.30430496 4.17664862 1.079290986;
	setAttr -s 11 ".ed[0:10]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 10 4 6 8
		mu 0 4 8 0 3 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface19" -p "pCube7";
	rename -uid "328258F9-7E4B-23A4-1AC6-ACAFDA68BE1F";
createNode transform -n "transform49" -p "polySurface19";
	rename -uid "10869C00-964C-4EED-9164-ACB2393CF699";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform49";
	rename -uid "541931F6-B943-C825-982D-EF8A61B6B454";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.46763885 4.37629223 2.046702623 0.53236115 4.37629223 2.046702623
		 -0.46763885 5.37629271 2.046702623 0.53236115 5.37629271 2.046702623 -0.46763885 5.37629271 1.54406667
		 0.53236115 5.37629271 1.54406667 -0.46763885 4.37629223 1.54406667 0.53236115 4.37629223 1.54406667;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface20" -p "pCube7";
	rename -uid "FA239A0E-4141-4D45-E881-6D89D76DF18B";
createNode transform -n "transform48" -p "polySurface20";
	rename -uid "75C90F6B-9448-6F52-933E-63BC2B4661AB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape19" -p "transform48";
	rename -uid "CC67D934-AE49-F1B2-3C0E-709E8570B1E7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1.71933448 3.028446198 1.53505552 -0.71933448 3.028446198 1.53505552
		 -1.71933448 4.028446198 1.53505552 -0.71933448 4.028446198 1.53505552 -1.71933448 4.028446198 1.17954576
		 -0.71933448 4.028446198 1.17954576 -1.71933448 3.028446198 1.17954576 -0.71933448 3.028446198 1.17954576;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface22" -p "pCube7";
	rename -uid "661FBF84-9A42-5115-11D5-18810740AA84";
createNode transform -n "transform47" -p "polySurface22";
	rename -uid "FCB418EC-1349-EE64-6F7C-87AD5F578F48";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape21" -p "transform47";
	rename -uid "DEF74AFA-5E49-FA1C-33EF-278AD5B661D7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:14]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.37500811 0.12499324 0.625 0 0.625 0.125 0.5 0.25 0.625 0.25 0.37497514 0.25003746
		 0.5 0.5 0.375025 0.49998751 0.625 0.5 0.37501875 0.62500626 0.5 0.625 0.625 0.625
		 0.5 0.75 0.375 0.75 0.625 0.75 0.5 1 0.375 1 0.625 1 0.875 0 0.875 0.125 0.875 0.25
		 0.125 0 0.1250125 0.12497501;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -6.079836845 0.068279505 3.97594285 -4.073927879 0.068279505 3.97594285
		 -0.04664278 0.068279505 3.97594285 -6.079836845 0.3821308 3.97594285 -4.073927879 0.38213092 3.97594285
		 -0.04664278 0.3821308 3.97594285 -4.073927879 2.61637473 3.97594285 -0.04664278 2.61637473 3.97594285
		 -6.079836845 0.3821308 3.58124399 -4.073927879 2.61637473 3.58124399 -0.04664278 2.61637473 3.58124399
		 -4.073927879 0.38213092 3.58124399 -0.04664278 0.3821308 3.58124399 -6.079836845 0.068279505 3.58124399
		 -4.073927879 0.068279505 3.58124399 -0.04664278 0.068279505 3.58124399;
	setAttr -s 29 ".ed[0:28]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 8 9 0 9 10 0
		 8 11 1 11 12 1 13 14 0 14 15 0 0 3 0 1 4 1 2 5 0 4 6 1 5 7 0 6 9 1 7 10 0 9 11 1
		 10 12 0 8 13 0 11 14 1 12 15 0 13 0 0 14 1 1 15 2 0 12 5 1 8 3 0 6 3 0;
	setAttr -s 15 -ch 58 ".fc[0:14]" -type "polyFaces" 
		f 4 0 12 -3 -12
		mu 0 4 0 1 2 3
		f 4 1 13 -4 -13
		mu 0 4 1 4 5 2
		f 3 2 14 28
		mu 0 3 3 2 6
		f 4 3 15 -5 -15
		mu 0 4 2 5 7 6
		f 4 -29 16 -6 27
		mu 0 4 8 6 9 10
		f 4 4 17 -7 -17
		mu 0 4 6 7 11 9
		f 3 5 18 -8
		mu 0 3 12 9 13
		f 4 6 19 -9 -19
		mu 0 4 9 11 14 13
		f 4 7 21 -10 -21
		mu 0 4 12 13 15 16
		f 4 8 22 -11 -22
		mu 0 4 13 14 17 15
		f 4 9 24 -1 -24
		mu 0 4 16 15 18 19
		f 4 10 25 -2 -25
		mu 0 4 15 17 20 18
		f 4 -26 -23 26 -14
		mu 0 4 4 21 22 5
		f 4 -27 -20 -18 -16
		mu 0 4 5 22 23 7
		f 4 23 11 -28 20
		mu 0 4 24 0 3 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface24" -p "pCube7";
	rename -uid "0F1769D1-1547-BD25-4E60-E89C3C121DE2";
createNode transform -n "transform46" -p "polySurface24";
	rename -uid "CE579EFA-B04A-1B49-3D6D-4AB00101E2F6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape23" -p "transform46";
	rename -uid "440CDF46-CF4A-BB39-B7AA-EC9FBED08686";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1.18170404 3.14616036 2.9882071 -0.082788348 3.14616036 2.9882071
		 -0.78287995 4.14616013 2.6508286 -0.082788348 4.14616013 2.6508286 -0.78287995 4.14616013 1.9882071
		 -0.082788348 4.14616013 1.9882071 -1.18170404 3.14616036 1.9882071 -0.082788348 3.14616036 1.9882071;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group15";
	rename -uid "8A6AF22C-3145-578F-A1C1-09BCE13D7AB2";
	setAttr ".t" -type "double3" -0.72809987647581931 0 -8.2861860536542054 ;
	setAttr ".r" -type "double3" 0 45 0 ;
	setAttr ".rp" -type "double3" -5.5229901313045184 4.8216379441625321 3.4452478820870058 ;
	setAttr ".sp" -type "double3" -5.5229901313045184 4.8216379441625321 3.4452478820870058 ;
createNode transform -n "pasted__pCube7" -p "group15";
	rename -uid "872B37A3-4E49-6802-6EFB-018D9526452B";
	setAttr ".s" -type "double3" 2.0240816695091661 2.0240816695091661 2.0240816695091661 ;
createNode transform -n "pasted__polySurface3" -p "|group15|pasted__pCube7";
	rename -uid "BDBDA978-314C-8B4B-3E04-0C9A5B96BE47";
	setAttr ".t" -type "double3" -0.55114512659601389 0 1.3667906324841748 ;
	setAttr ".s" -type "double3" 0.80285752205655414 0.80285752205655414 0.80285752205655414 ;
createNode transform -n "transform45" -p "pasted__polySurface3";
	rename -uid "7FCEBBAE-034F-23E2-0647-4081AD779E2C";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape3" -p "transform45";
	rename -uid "4D90A158-1D41-6D99-8D99-4FA926964BFC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:14]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25001875311136246 0.31248126178979874 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.37500811 0.12499324 0.625 0 0.625 0.125 0.5 0.25 0.625 0.25 0.37497514 0.25003746
		 0.5 0.5 0.375025 0.49998751 0.625 0.5 0.37501875 0.62500626 0.5 0.625 0.625 0.625
		 0.5 0.75 0.375 0.75 0.625 0.75 0.5 1 0.375 1 0.625 1 0.875 0 0.875 0.125 0.875 0.25
		 0.125 0 0.1250125 0.12497501;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  2.031127 0 1.2517304 1.1009829 
		0 2.1818759 1.1009829 0 2.1818759 2.031127 1.874746 1.2517304 1.1009829 0 2.1818759 
		1.1009829 0 2.1818759 1.1009829 0 2.1818759 1.1009829 0 2.1818759 0.50785708 1.874746 
		-0.27153996 -0.42228803 0 0.65860516 -0.42228803 0 0.65860516 -0.42228803 0 0.65860516 
		-0.42228803 0 0.65860516 0.50785708 0 -0.27153996 -0.42228803 0 0.65860516 -0.42228803 
		0 0.65860516;
	setAttr -s 16 ".vt[0:15]"  -5.59363461 0.032082319 14.79081917 -3.16917038 0.032082319 12.36635494
		 -0.76573706 0.032082319 9.96292114 -5.59363461 1.39684713 14.79081917 -3.16917038 1.39684725 12.36635494
		 -0.76573706 1.39684713 9.96292114 -3.16917038 4.90696001 12.36635494 -0.76573706 4.90696001 9.96292114
		 -7.0055732727 1.39684713 13.37887955 -4.58110952 4.90696001 10.95441532 -2.1776762 4.90696001 8.55098248
		 -4.58110952 1.39684725 10.95441532 -2.1776762 1.39684713 8.55098248 -7.0055732727 0.032082319 13.37887955
		 -4.58110952 0.032082319 10.95441532 -2.1776762 0.032082319 8.55098248;
	setAttr -s 29 ".ed[0:28]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 8 9 0 9 10 0
		 8 11 1 11 12 1 13 14 0 14 15 0 0 3 0 1 4 1 2 5 0 4 6 1 5 7 0 6 9 1 7 10 0 9 11 1
		 10 12 0 8 13 0 11 14 1 12 15 0 13 0 0 14 1 1 15 2 0 12 5 1 8 3 0 6 3 0;
	setAttr -s 15 -ch 58 ".fc[0:14]" -type "polyFaces" 
		f 4 0 12 -3 -12
		mu 0 4 0 1 2 3
		f 4 1 13 -4 -13
		mu 0 4 1 4 5 2
		f 3 2 14 28
		mu 0 3 3 2 6
		f 4 3 15 -5 -15
		mu 0 4 2 5 7 6
		f 4 -29 16 -6 27
		mu 0 4 8 6 9 10
		f 4 4 17 -7 -17
		mu 0 4 6 7 11 9
		f 3 5 18 -8
		mu 0 3 12 9 13
		f 4 6 19 -9 -19
		mu 0 4 9 11 14 13
		f 4 7 21 -10 -21
		mu 0 4 12 13 15 16
		f 4 8 22 -11 -22
		mu 0 4 13 14 17 15
		f 4 9 24 -1 -24
		mu 0 4 16 15 18 19
		f 4 10 25 -2 -25
		mu 0 4 15 17 20 18
		f 4 -26 -23 26 -14
		mu 0 4 4 21 22 5
		f 4 -27 -20 -18 -16
		mu 0 4 5 22 23 7
		f 4 23 11 -28 20
		mu 0 4 24 0 3 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8";
	rename -uid "97FE6ABC-5443-AB5E-D5F4-DBBCFA1D2DDC";
	setAttr ".t" -type "double3" -7.2973004312741852 1.4409545804517969 9.3074782508375904 ;
	setAttr ".s" -type "double3" 4.037523908034883 2.865319035586781 3.7053372343116102 ;
createNode transform -n "transform44" -p "pCube8";
	rename -uid "47918E9D-774C-6564-888C-4AB9182B2ACB";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform44";
	rename -uid "F4C46112-6141-3EE3-6DA0-A9942F00DFCB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 0 0.51635361 0 0 0.51635349 
		-7.4505806e-08 0 0.51635385 0 0 0.51635385;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group16";
	rename -uid "0F81C067-6340-4143-3747-FF8AF9EF7B50";
	setAttr ".t" -type "double3" -2.8972973929215673 -1.8799437066438101 2.802929275618375 ;
	setAttr ".s" -type "double3" 0.4672217692531091 0.4672217692531091 1 ;
	setAttr ".rp" -type "double3" -8.302594557493137 3.2638432981006793 6.4346601461895219 ;
	setAttr ".sp" -type "double3" -8.302594557493137 3.2638432981006793 6.4346601461895219 ;
createNode transform -n "pasted__pCube7" -p "group16";
	rename -uid "66C22F66-CE43-0BE3-D10F-278CB61C57F1";
	setAttr ".s" -type "double3" 2.0240816695091661 2.0240816695091661 2.0240816695091661 ;
createNode transform -n "pasted__polySurface25" -p "|group16|pasted__pCube7";
	rename -uid "94E2F17F-8347-D8BC-6FD0-A3BA95C04F73";
	setAttr ".t" -type "double3" 0.021590276314300584 0.03900850367487619 -0.0078611553632922729 ;
createNode transform -n "transform43" -p "pasted__polySurface25";
	rename -uid "C74541E2-D841-06D9-11EE-40A45AB7779F";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape25" -p "transform43";
	rename -uid "3AF9F4C3-FB47-F0E9-9086-7A8FC77D7792";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:14]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.37500811 0.12499324 0.625 0 0.625 0.125 0.5 0.25 0.625 0.25 0.37497514 0.25003746
		 0.5 0.5 0.375025 0.49998751 0.625 0.5 0.37501875 0.62500626 0.5 0.625 0.625 0.625
		 0.5 0.75 0.375 0.75 0.625 0.75 0.5 1 0.375 1 0.625 1 0.875 0 0.875 0.125 0.875 0.25
		 0.125 0 0.1250125 0.12497501;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -6.099115372 0.061036229 3.75629425 -4.093206882 0.061036229 3.75629425
		 -2.10469842 0.061036229 3.75629425 -6.099115372 0.92973131 3.75629425 -4.093206882 0.92973143 3.75629425
		 -2.10469842 0.92973131 3.75629425 -4.093206882 3.16397524 3.75629425 -2.10469842 3.16397524 3.75629425
		 -6.099115372 0.92973131 2.60180902 -4.093206882 3.16397524 2.60180902 -2.10469842 3.16397524 2.60180902
		 -4.093206882 0.92973143 2.60180902 -2.10469842 0.92973131 2.60180902 -6.099115372 0.061036229 2.60180902
		 -4.093206882 0.061036229 2.60180902 -2.10469842 0.061036229 2.60180902;
	setAttr -s 29 ".ed[0:28]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 8 9 0 9 10 0
		 8 11 1 11 12 1 13 14 0 14 15 0 0 3 0 1 4 1 2 5 0 4 6 1 5 7 0 6 9 1 7 10 0 9 11 1
		 10 12 0 8 13 0 11 14 1 12 15 0 13 0 0 14 1 1 15 2 0 12 5 1 8 3 0 6 3 0;
	setAttr -s 15 -ch 58 ".fc[0:14]" -type "polyFaces" 
		f 4 0 12 -3 -12
		mu 0 4 0 1 2 3
		f 4 1 13 -4 -13
		mu 0 4 1 4 5 2
		f 3 2 14 28
		mu 0 3 3 2 6
		f 4 3 15 -5 -15
		mu 0 4 2 5 7 6
		f 4 -29 16 -6 27
		mu 0 4 8 6 9 10
		f 4 4 17 -7 -17
		mu 0 4 6 7 11 9
		f 3 5 18 -8
		mu 0 3 12 9 13
		f 4 6 19 -9 -19
		mu 0 4 9 11 14 13
		f 4 7 21 -10 -21
		mu 0 4 12 13 15 16
		f 4 8 22 -11 -22
		mu 0 4 13 14 17 15
		f 4 9 24 -1 -24
		mu 0 4 16 15 18 19
		f 4 10 25 -2 -25
		mu 0 4 15 17 20 18
		f 4 -26 -23 26 -14
		mu 0 4 4 21 22 5
		f 4 -27 -20 -18 -16
		mu 0 4 5 22 23 7
		f 4 23 11 -28 20
		mu 0 4 24 0 3 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group17";
	rename -uid "9CC37400-2A48-BCF5-04F9-C39481CC39E8";
	setAttr ".t" -type "double3" -5.143967627456945 -3.8366665868342444 3.9774251165286003 ;
	setAttr ".rp" -type "double3" -1.2797179364869793 7.3801261158795697 5.0363343847402344 ;
	setAttr ".sp" -type "double3" -1.2797179364869793 7.3801261158795697 5.0363343847402344 ;
createNode transform -n "pasted__pCube7" -p "group17";
	rename -uid "838109BE-B64F-4C54-52E9-51BD14A01C5A";
	setAttr ".s" -type "double3" 2.0240816695091661 2.0240816695091661 2.0240816695091661 ;
createNode transform -n "pasted__polySurface24" -p "|group17|pasted__pCube7";
	rename -uid "F4927990-F74B-EC6E-33BD-029824DF23E4";
createNode transform -n "transform42" -p "pasted__polySurface24";
	rename -uid "BF6287D5-9A4E-9169-4AF2-99853D06C60C";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape24" -p "transform42";
	rename -uid "30C45DC6-0D45-7D79-C134-68B03F71CB8C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1.18170404 3.14616036 2.9882071 -0.082788348 3.14616036 2.9882071
		 -0.78287995 4.14616013 2.6508286 -0.082788348 4.14616013 2.6508286 -0.78287995 4.14616013 1.9882071
		 -0.082788348 4.14616013 1.9882071 -1.18170404 3.14616036 1.9882071 -0.082788348 3.14616036 1.9882071;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group19";
	rename -uid "A0E0B1B3-8746-AFA8-3F6E-328F1619E77B";
	setAttr ".t" -type "double3" -1.7372866529768185 0 -1.3536598744738155 ;
	setAttr ".rp" -type "double3" -5.9491472244262695 3.1573388576507568 2.1043272018432617 ;
	setAttr ".sp" -type "double3" -5.9491472244262695 3.1573388576507568 2.1043272018432617 ;
createNode transform -n "pasted__polySurface5" -p "group19";
	rename -uid "55482FD5-3F43-A1A8-B0AA-E394E64E39D0";
	setAttr ".t" -type "double3" -0.15766189142280584 0.74332455811391629 0.25226637327643253 ;
createNode transform -n "polySurface48" -p "|group19|pasted__polySurface5";
	rename -uid "0A75847E-324C-41B7-D0C8-69BE1697EBBD";
createNode transform -n "transform41" -p "polySurface48";
	rename -uid "5932FF52-3840-806C-A1EF-25807A4EFD75";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape48" -p "transform41";
	rename -uid "EF2FD2B0-AD47-41D2-D1D2-349A1D603CFB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -10.95999146 4.13508844 1.75341797 -8.93591022 4.13508844 1.75341797
		 -10.95999146 6.15917015 1.75341797 -8.93591022 6.15917015 1.75341797 -10.95999146 6.15917015 1.03383708
		 -8.93591022 6.15917015 1.03383708 -10.95999146 4.13508844 1.03383708 -8.93591022 4.13508844 1.03383708;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface49" -p "|group19|pasted__polySurface5";
	rename -uid "77B4E35B-9443-7ED9-0FA6-F29677418200";
createNode transform -n "transform40" -p "polySurface49";
	rename -uid "60A02471-7244-6CE6-E387-B9A7E01B80CE";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape49" -p "transform40";
	rename -uid "7B3703CF-4842-31FD-1D86-69B01CF70CA2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -2.05685 0 0 -2.05685 
		0 0 -2.05685 0 0 -2.05685;
	setAttr -s 8 ".vt[0:7]"  -12.56263447 2.36509681 2.85499454 -10.53855228 2.36509681 2.85499454
		 -12.56263447 4.38917875 2.85499454 -10.53855228 4.38917875 2.85499454 -12.56263447 4.38917875 0.83091331
		 -10.53855228 4.38917875 0.83091331 -12.56263447 2.36509681 0.83091331 -10.53855228 2.36509681 0.83091331;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface50" -p "|group19|pasted__polySurface5";
	rename -uid "61FE775B-8846-67EA-8949-AEB88543414C";
createNode transform -n "transform39" -p "polySurface50";
	rename -uid "521AE0A8-A142-EFDB-01B9-C48495AD6286";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape50" -p "transform39";
	rename -uid "D5281CD6-194C-5B72-5803-4389240B9B0C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -11.87978268 2.82707667 2.85499454 -9.85570145 2.82707667 2.85499454
		 -11.87978268 4.85115862 2.85499454 -9.85570145 4.85115862 2.85499454 -11.87978268 4.85115862 0.83091331
		 -9.85570145 4.85115862 0.83091331 -11.87978268 2.82707667 0.83091331 -9.85570145 2.82707667 0.83091331;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface51" -p "|group19|pasted__polySurface5";
	rename -uid "4D80068F-D24D-283E-CD98-2AAD759473AA";
createNode transform -n "transform38" -p "polySurface51";
	rename -uid "0705CAFD-3D4D-DD49-12C6-B7B34179576B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape51" -p "transform38";
	rename -uid "AAA94D18-D347-C665-E073-F4B4CA0AB792";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -13.63558102 0.80860066 2.85499454 -11.61149883 0.80860066 2.85499454
		 -13.63558102 2.83268237 2.85499454 -11.61149883 2.83268237 2.85499454 -13.63558102 2.83268237 0.83091331
		 -11.61149883 2.83268237 0.83091331 -13.63558102 0.80860066 0.83091331 -11.61149883 0.80860066 0.83091331;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface52" -p "|group19|pasted__polySurface5";
	rename -uid "4FAF068B-DC49-D7A5-87EE-D0B1997A3EB0";
createNode transform -n "transform37" -p "polySurface52";
	rename -uid "682528C2-C244-A833-6CDF-38BF180AF831";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape52" -p "transform37";
	rename -uid "C08F406D-8B49-8160-EA96-139C1BC06EC9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -11.21564484 3.88650155 2.85499454 -9.19156265 3.88650155 2.85499454
		 -11.21564484 5.91058302 2.85499454 -9.19156265 5.91058302 2.85499454 -11.21564484 5.91058302 0.83091331
		 -9.19156265 5.91058302 0.83091331 -11.21564484 3.88650155 0.83091331 -9.19156265 3.88650155 0.83091331;
	setAttr -s 11 ".ed[0:10]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 10 4 6 8
		mu 0 4 8 0 3 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface53" -p "|group19|pasted__polySurface5";
	rename -uid "611BA2E5-7944-C865-F5DB-D7B0281673CB";
createNode transform -n "transform36" -p "polySurface53";
	rename -uid "CDC17721-0B41-20AB-8307-9A877F826511";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape53" -p "transform36";
	rename -uid "921254AC-E648-F111-EBEE-01854FA0DAB4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -10.75403976 4.29059601 2.78903365 -8.72995853 4.29059601 2.78903365
		 -10.75403976 6.31467772 2.78903365 -8.72995853 6.31467772 2.78903365 -10.75403976 6.31467772 1.77165723
		 -8.72995853 6.31467772 1.77165723 -10.75403976 4.29059601 1.77165723 -8.72995853 4.29059601 1.77165723;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface54" -p "|group19|pasted__polySurface5";
	rename -uid "983FB368-744A-A6A8-FDF1-14B20241ECA9";
createNode transform -n "transform35" -p "polySurface54";
	rename -uid "F13B099A-014D-45E7-2232-70A595C058ED";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape54" -p "transform35";
	rename -uid "7ED0E520-4641-33F2-D05C-83AB1A55735C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -13.28757381 1.56244576 1.75341797 -11.26349258 1.56244576 1.75341797
		 -13.28757381 3.58652735 1.75341797 -11.26349258 3.58652735 1.75341797 -13.28757381 3.58652735 1.03383708
		 -11.26349258 3.58652735 1.03383708 -13.28757381 1.56244576 1.03383708 -11.26349258 1.56244576 1.03383708;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group20";
	rename -uid "A6AAFE68-9448-E29E-38A1-AC9F5302FD02";
	setAttr ".t" -type "double3" -0.84357505603867544 1.660748211197717 -2.7876046599669393 ;
	setAttr ".rp" -type "double3" -5.9491472244262695 3.1573388576507568 2.1043272018432617 ;
	setAttr ".sp" -type "double3" -5.9491472244262695 3.1573388576507568 2.1043272018432617 ;
createNode transform -n "pasted__polySurface5" -p "group20";
	rename -uid "0BC2C7FC-F54D-D818-131A-EE81B0355A0F";
	setAttr ".t" -type "double3" 0.40449218908302709 -0.17484987730537949 0 ;
createNode transform -n "polySurface41" -p "|group20|pasted__polySurface5";
	rename -uid "7347D049-974E-D43C-0417-D7BB50E6C1A3";
createNode transform -n "transform34" -p "polySurface41";
	rename -uid "7DC8B6D7-3E40-B276-3A4D-399CFB781313";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape41" -p "transform34";
	rename -uid "E13D63A6-284A-AE15-7C9C-A9845469E78F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -10.066280365 5.79583645 0.31947327 -8.042198181 5.79583645 0.31947327
		 -10.066280365 7.81991863 0.31947327 -8.042198181 7.81991863 0.31947327 -10.066280365 7.81991863 -0.40010762
		 -8.042198181 7.81991863 -0.40010762 -10.066280365 5.79583645 -0.40010762 -8.042198181 5.79583645 -0.40010762;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface42" -p "|group20|pasted__polySurface5";
	rename -uid "C508CFF7-FB45-48B8-1657-3E8F7FC669E4";
createNode transform -n "transform33" -p "polySurface42";
	rename -uid "BC9F66D8-944F-A77B-E6EC-C1920BE54F04";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape42" -p "transform33";
	rename -uid "1E684ABC-E04E-A9BD-EB9D-A6B1CEA4E020";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -11.66892338 4.025845051 2.34643245 -9.64484119 4.025845051 2.34643245
		 -11.66892338 6.049926758 2.34643245 -9.64484119 6.049926758 2.34643245 -11.66892338 6.049926758 -0.6030314
		 -9.64484119 6.049926758 -0.6030314 -11.66892338 4.025845051 -0.6030314 -9.64484119 4.025845051 -0.6030314;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface43" -p "|group20|pasted__polySurface5";
	rename -uid "511EBB8F-9042-ED0B-FD26-70B8540267D1";
	setAttr ".t" -type "double3" 0 0 -0.038681095376698948 ;
createNode transform -n "transform32" -p "polySurface43";
	rename -uid "234513B3-DA4F-CF61-11A4-488BD8073488";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape43" -p "transform32";
	rename -uid "F9E5A8BB-5F43-828D-473F-4ABD62D50C99";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 0 2.285944 0 0 2.285944 
		0 0 2.285944 0 0 2.285944;
	setAttr -s 8 ".vt[0:7]"  -10.98607159 4.48782492 2.34643245 -8.96199036 4.48782492 2.34643245
		 -10.98607159 6.51190662 2.34643245 -8.96199036 6.51190662 2.34643245 -10.98607159 6.51190662 -0.6030314
		 -8.96199036 6.51190662 -0.6030314 -10.98607159 4.48782492 -0.6030314 -8.96199036 4.48782492 -0.6030314;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface44" -p "|group20|pasted__polySurface5";
	rename -uid "EE0DBFC2-F54F-A5EE-6EE0-24A6BC55722D";
createNode transform -n "transform31" -p "polySurface44";
	rename -uid "DF421666-9043-A4F5-6459-26BC4338A730";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape44" -p "transform31";
	rename -uid "0F703DB3-0F48-B64C-68E7-108F7816708A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[0]" -type "float3"  0 0 0.98277003;
	setAttr -s 8 ".vt[0:7]"  -12.74186993 2.46934891 1.42104983 -10.71778774 2.46934891 2.34643245
		 -12.74186993 4.49343061 2.34643245 -10.71778774 4.49343061 2.34643245 -12.74186993 4.49343061 -0.6030314
		 -10.71778774 4.49343061 -0.6030314 -12.74186993 2.46934891 -0.6030314 -10.71778774 2.46934891 -0.6030314;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface45" -p "|group20|pasted__polySurface5";
	rename -uid "385E1C5B-984C-7DB1-5D7F-D0AD47CF28D7";
createNode transform -n "transform30" -p "polySurface45";
	rename -uid "FFB65282-2146-2BDF-8510-60B870629A52";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape45" -p "transform30";
	rename -uid "D53E5CEE-6A4A-6CE2-D641-D89D9F681FBC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -10.32193375 5.54724979 2.34643245 -8.29785156 5.54724979 2.34643245
		 -10.32193375 7.57133102 2.34643245 -8.29785156 7.57133102 2.34643245 -10.32193375 7.57133102 -0.6030314
		 -8.29785156 7.57133102 -0.6030314 -10.32193375 5.54724979 -0.6030314 -8.29785156 5.54724979 -0.6030314;
	setAttr -s 11 ".ed[0:10]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 10 4 6 8
		mu 0 4 8 0 3 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface46" -p "|group20|pasted__polySurface5";
	rename -uid "CE332735-4445-1EB8-168A-B8840629A2AE";
createNode transform -n "transform29" -p "polySurface46";
	rename -uid "DFC74DD6-904F-F8A3-9B97-E682B883A67A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape46" -p "transform29";
	rename -uid "EB186003-A147-E792-1CA2-B990C5829B3C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -9.86032867 5.95134449 2.28047156 -7.83624697 5.95134449 2.28047156
		 -9.86032867 7.97542572 2.28047156 -7.83624697 7.97542572 2.28047156 -9.86032867 7.97542572 0.33771253
		 -7.83624697 7.97542572 0.33771253 -9.86032867 5.95134449 0.33771253 -7.83624697 5.95134449 0.33771253;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface47" -p "|group20|pasted__polySurface5";
	rename -uid "C6EF186C-4941-1F1F-118A-80824F48AE8A";
createNode transform -n "transform28" -p "polySurface47";
	rename -uid "5F1784A9-C647-471E-EF3C-10AF57C04407";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape47" -p "transform28";
	rename -uid "9E10DBD1-914D-BA07-2D65-79AB44F86C6D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -12.39386272 3.22319412 0.31947327 -10.36978149 3.22319412 0.31947327
		 -12.39386272 5.24727535 0.31947327 -10.36978149 5.24727535 0.31947327 -12.39386272 5.24727535 -0.40010762
		 -10.36978149 5.24727535 -0.40010762 -12.39386272 3.22319412 -0.40010762 -10.36978149 3.22319412 -0.40010762;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9";
	rename -uid "8E0C8A93-6942-C4CB-175C-65A0C65AF76A";
	setAttr ".t" -type "double3" -14.368263954735569 3.8585175578443209 -1.6983790466256479 ;
	setAttr ".s" -type "double3" 1 1 2.4461701123034412 ;
createNode transform -n "transform27" -p "pCube9";
	rename -uid "091C8D7B-5D44-5921-EE52-E98D09932E56";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform27";
	rename -uid "8E6E79BD-4447-D380-7F99-A4A5EF6E957B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group21";
	rename -uid "39FDD404-C443-5A32-C540-B2805C616C7C";
	setAttr ".t" -type "double3" 0.95988752160576496 1.4027295668359954 0.067773407177588396 ;
	setAttr ".rp" -type "double3" -7.1931374808903694 3.529001136707715 0.16699013784036509 ;
	setAttr ".sp" -type "double3" -7.1931374808903694 3.529001136707715 0.16699013784036509 ;
createNode transform -n "pasted__group19" -p "group21";
	rename -uid "EFE3E317-9046-541D-AECB-12A186CB56F5";
	setAttr ".t" -type "double3" -1.7372866529768185 0 -1.3536598744738155 ;
	setAttr ".rp" -type "double3" -5.9491472244262695 3.1573388576507568 2.1043272018432617 ;
	setAttr ".sp" -type "double3" -5.9491472244262695 3.1573388576507568 2.1043272018432617 ;
createNode transform -n "pasted__pasted__polySurface5" -p "pasted__group19";
	rename -uid "817B7939-744F-BF7B-88DC-82BAE4D62106";
	setAttr ".t" -type "double3" -0.15766189142280584 0.74332455811391629 0.25226637327643253 ;
createNode transform -n "pasted__polySurface53" -p "pasted__pasted__polySurface5";
	rename -uid "AEBA1BFC-4548-2A6D-F217-5A810ABD0D57";
	setAttr ".t" -type "double3" 0 0 -0.074480137511021116 ;
createNode transform -n "transform26" -p "pasted__polySurface53";
	rename -uid "A70B3425-4446-B9DF-5286-7E8CC6081187";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape53" -p "transform26";
	rename -uid "6EF5AC9C-FA41-3388-A6F1-C596038E07FB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -9.79415226 5.69332552 2.85680699 -7.77007103 5.69332552 2.85680699
		 -9.79415226 7.71740723 2.85680699 -7.77007103 7.71740723 2.85680699 -9.79415226 7.71740723 1.83943057
		 -7.77007103 7.71740723 1.83943057 -9.79415226 5.69332552 1.83943057 -7.77007103 5.69332552 1.83943057;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group22";
	rename -uid "BD4CC6FF-2141-6BED-20A1-8693D315151E";
	setAttr ".t" -type "double3" 41.674859171987585 3.6002664627210534 2.0679919237741275 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 3.1885592725186416 3.1885592725186416 3.1885592725186416 ;
	setAttr ".rp" -type "double3" -24.707301736746707 1.6125057631823148 3.105943410745021 ;
	setAttr ".sp" -type "double3" -24.707301736746707 1.6125057631823148 3.105943410745021 ;
createNode transform -n "pasted__group2" -p "group22";
	rename -uid "3A3406FA-654F-1847-5F1B-8994C0C97404";
	setAttr ".t" -type "double3" 0 0 3.7918080435463488 ;
	setAttr ".s" -type "double3" 0.5781724910513748 0.5781724910513748 0.5781724910513748 ;
	setAttr ".rp" -type "double3" -5.4055624279965748 2.7408294071325305 0 ;
	setAttr ".sp" -type "double3" -5.4055624279965748 2.7408294071325305 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group22|pasted__group2";
	rename -uid "F8F05518-1D45-61F4-05BD-5E9B8D9EEF4C";
	setAttr ".t" -type "double3" -38.824107152457913 0.62490706064867585 -1.1862629983555961 ;
	setAttr ".s" -type "double3" 6.3538436243493104 5.088659227283606 1.3147133389619829 ;
createNode transform -n "transform25" -p "pasted__pasted__pCube2";
	rename -uid "02A7E777-B142-61A2-9F77-AD972EEFA34D";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "transform25";
	rename -uid "9CA38A8F-8347-01DF-85A4-B29745315D88";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:14]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.5 0 0.625
		 0 0.37500811 0.12499324 0.5 0.125 0.625 0.125 0.37497514 0.25003746 0.5 0.25 0.625
		 0.25 0.375025 0.49998751 0.5 0.5 0.625 0.5 0.37501875 0.62500626 0.5 0.625 0.625
		 0.625 0.375 0.75 0.5 0.75 0.625 0.75 0.375 1 0.5 1 0.625 1 0.875 0 0.875 0.125 0.875
		 0.25 0.125 0 0.1250125 0.12497501;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -0.050371066 -0.0069714952 
		0.25939867 0.22504568 -0.0069714952 0.25939867 0.036954202 -0.0069714952 0.25939867 
		-0.050371066 -0.19976392 0.25939867 0.22504568 -0.19976389 0.25939867 0.036954202 
		-0.19976392 0.25939867 0.22504568 0.059634674 0.25939867 0.036954202 0.059634674 
		0.25939867 -0.050371066 -0.19976392 -1.1404479 0.22504568 0.059634674 -1.1404479 
		0.036954202 0.059634674 -1.1404479 0.22504568 -0.19976389 -1.1404479 0.036954202 
		-0.19976392 -1.1404479 -0.050371066 -0.0069714952 -1.1404479 0.22504568 -0.0069714952 
		-1.1404479 0.036954202 -0.0069714952 -1.1404479;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 0 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5
		 0 0 0.5 0.5 0 0.5 0 0.5 0.5 0.5 0.5 0.5 -0.5 0 -0.5 0 0.5 -0.5 0.5 0.5 -0.5 0 0 -0.5
		 0.5 0 -0.5 -0.5 -0.5 -0.5 0 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 29 ".ed[0:28]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 8 9 0 9 10 0
		 8 11 1 11 12 1 13 14 0 14 15 0 0 3 0 1 4 1 2 5 0 4 6 1 5 7 0 6 9 1 7 10 0 9 11 1
		 10 12 0 8 13 0 11 14 1 12 15 0 13 0 0 14 1 1 15 2 0 12 5 1 8 3 0 6 3 0;
	setAttr -s 15 -ch 58 ".fc[0:14]" -type "polyFaces" 
		f 4 0 12 -3 -12
		mu 0 4 0 1 4 3
		f 4 1 13 -4 -13
		mu 0 4 1 2 5 4
		f 3 2 14 28
		mu 0 3 3 4 7
		f 4 3 15 -5 -15
		mu 0 4 4 5 8 7
		f 4 -29 16 -6 27
		mu 0 4 6 7 10 9
		f 4 4 17 -7 -17
		mu 0 4 7 8 11 10
		f 3 5 18 -8
		mu 0 3 12 10 13
		f 4 6 19 -9 -19
		mu 0 4 10 11 14 13
		f 4 7 21 -10 -21
		mu 0 4 12 13 16 15
		f 4 8 22 -11 -22
		mu 0 4 13 14 17 16
		f 4 9 24 -1 -24
		mu 0 4 15 16 19 18
		f 4 10 25 -2 -25
		mu 0 4 16 17 20 19
		f 4 -26 -23 26 -14
		mu 0 4 2 21 22 5
		f 4 -27 -20 -18 -16
		mu 0 4 5 22 23 8
		f 4 23 11 -28 20
		mu 0 4 24 0 3 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "group23";
	rename -uid "43FC8399-AC44-C188-E04F-608E1019D3A9";
	setAttr ".t" -type "double3" 37.156718621473715 4.1719455840132964 9.5845553953098932 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 2.8073839173035062 2.8073839173035062 2.9036670931493691 ;
	setAttr ".rp" -type "double3" -24.707301736746707 1.6125057631823148 3.105943410745021 ;
	setAttr ".sp" -type "double3" -24.707301736746707 1.6125057631823148 3.105943410745021 ;
createNode transform -n "pasted__group2" -p "group23";
	rename -uid "8B9E816B-5B42-A1F5-A8F3-6BA48EF2C2F7";
	setAttr ".t" -type "double3" 0 0 3.7918080435463488 ;
	setAttr ".s" -type "double3" 0.5781724910513748 0.5781724910513748 0.5781724910513748 ;
	setAttr ".rp" -type "double3" -5.4055624279965748 2.7408294071325305 0 ;
	setAttr ".sp" -type "double3" -5.4055624279965748 2.7408294071325305 0 ;
createNode transform -n "polySurface64";
	rename -uid "E985EB48-FE42-3A0F-4A10-21809BC91FFE";
	setAttr ".rp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
	setAttr ".sp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
createNode transform -n "transform24" -p "polySurface64";
	rename -uid "047306D2-BE4B-62B7-384C-6E830C3AF4A9";
	setAttr ".v" no;
createNode mesh -n "polySurface64Shape" -p "transform24";
	rename -uid "0835AC80-AA43-11DB-A5BA-67B7321FD263";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:46]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 140 ".uvst[0].uvsp[0:139]" -type "float2" 0.46365514 0.25 0.375
		 0.25 0.375 0.21929631 0.43608934 0.21929631 0.46365514 0.5 0.375 0.5 0.125 0.25 0.125
		 0.21929631 0.43608934 0.53070366 0.375 0.53070366 0.375 0 0.5 0 0.5 0.125 0.37500811
		 0.12499324 0.125 0 0.1250125 0.12497501 0.375 0.75 0.5 0.75 0.5 1 0.375 1 0.625 0
		 0.625 0.125 0.5 0.25 0.37501875 0.62500626 0.5 0.625 0.5 0.5 0.375025 0.49998751
		 0.4218027 0.48159757 0.44282204 0.48159924 0.44431406 0.48159933 0.45708144 0.48160022
		 0.4632656 0.48160064 0.48635957 0.48160252 0.48635915 0.45989311 0.49322945 0.45989323
		 0.49322879 0.38290954 0.48635763 0.38291007 0.4863576 0.3809588 0.49752706 0.38095778
		 0.49752682 0.27211389 0.37497514 0.25003746 0.48635554 0.27211672 0.48635539 0.26506001
		 0.46325293 0.26506662 0.45706686 0.2650682 0.44429493 0.26507184 0.4428024 0.26507226
		 0.42177546 0.26507819 0.4217903 0.38291568 0.40128303 0.38291743 0.40126449 0.26508373
		 0.38873655 0.26508737 0.38877535 0.48159522 0.625 0.75 0.625 1 0.875 0 0.875 0.125
		 0.625 0.25 0.625 0.625 0.625 0.5 0.42179996 0.45989048 0.40129855 0.48159617 0.40129513
		 0.45988974 0.45934096 0.50666821 0.375 0.60060978 0.375 0.5 0.45934096 0.5 0.46532768
		 0.5 0.375 0.5 0.43221569 0.5 0.38098675 0.55706042 0.375 0.55706042 0.375 0.60321403
		 0.375 0.5 0.46766576 0.5 0.375 0.25 0.46766576 0.25 0.46766576 0.258147 0.43201411
		 0.258147 0.43201417 0.38380608 0.46766576 0.38380605 0.46766573 0.38605884 0.40657645
		 0.38605884 0.40657645 0.47493634 0.46766576 0.47493631 0.375 0.5 0.45546174 0.5 0.41065165
		 0.5499109 0.375 0.54991084 0.375 0.25 0.45546174 0.25 0.375 0.20008913 0.41065165
		 0.20008914 0.375 0.14678591 0.125 0.25 0.125 0.14678591 0.375 0.25 0.43221569 0.25
		 0.375 0.19293958 0.38098675 0.19293958 0.45934096 0.24333178 0.46532768 0.25 0.45934096
		 0.25 0.375 0.25 0.375 0.14939019 0.125 0.25 0.125 0.14939019 0.15006369 0.14939019
		 0.15006369 0.15086228 0.23894113 0.15086228 0.23894116 0.14939019 0.46453932 0.25
		 0.375 0.25 0.375 0.1568905 0.38226706 0.1568905 0.46453929 0.2485279 0.42525041 0.5
		 0.375 0.5 0.375 0.25 0.42525041 0.25 0.42525041 0.38605884 0.41798335 0.38605884
		 0.41798332 0.47493631 0.42525041 0.47493631 0.375 0.19402954 0.125 0.25 0.125 0.19402954
		 0.875 0.25 0.375 0.5 0.46453932 0.5 0.46453932 0.50147212 0.38226706 0.59310949 0.375
		 0.59310949 0.375 0.55597049 0.125 0.25 0.125 0.19293958 0.125 0.25 0.125 0.20008913
		 0.125 0.25 0.125 0.1568905;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 68 ".vt[0:67]"  -8.50492382 6.15917015 3.10707784 -9.22270489 6.15917015 3.10707784
		 -9.22270489 5.91058302 3.10707784 -8.72810555 5.91058302 3.10707784 -8.50492382 6.15917015 2.38749695
		 -9.22270489 6.15917015 2.38749695 -9.22270489 5.91058302 2.38749695 -8.72810555 5.91058302 2.38749695
		 -12.34510803 0.12354232 4.34938908 -8.28498554 0.12354232 4.34938908 -8.28498554 1.88185239 4.34938908
		 -12.34510803 1.88185215 4.34938908 -12.34510803 0.12354232 2.012616634 -12.34510803 1.88185215 2.012616634
		 -8.28498554 0.12354232 2.012616634 -4.26008177 0.12354232 4.34938908 -4.26008177 1.88185215 4.34938908
		 -8.28498554 6.40414429 4.34938908 -8.28498554 1.88185239 2.012616634 -8.28498554 6.40414429 2.012616634
		 -10.8253479 3.5746088 2.18457317 -10.14249611 4.33519077 2.18457317 -10.094025612 4.38917875 2.18457317
		 -9.6792593 4.85115862 2.18457317 -9.47835827 5.074928284 2.18457317 -8.72810555 5.91058302 2.18457317
		 -8.72810555 5.91058302 3.1253171 -8.36530876 6.31467772 3.1253171 -8.36530876 6.31467772 4.14269352
		 -8.72810555 5.91058302 4.14269352 -8.72810555 5.91058302 4.2086544 -9.47835827 5.074928284 4.2086544
		 -9.6792593 4.85115862 4.2086544 -10.094025612 4.38917875 4.2086544 -10.14249611 4.33519077 4.2086544
		 -10.8253479 3.5746088 4.2086544 -10.8253479 3.5746088 3.10707784 -11.49145126 2.83268237 3.10707784
		 -11.49145126 2.83268237 4.2086544 -11.89829445 2.37952709 4.2086544 -11.89829445 2.37952709 2.18457317
		 -4.26008177 0.12354232 2.012616634 -4.26008177 1.88185215 2.012616634 -4.26008177 6.40414429 4.34938908
		 -4.26008177 6.40414429 2.012616634 -10.8253479 3.5746088 2.38749695 -11.49145126 2.83268237 2.18457317
		 -11.49145126 2.83268237 2.38749695 -10.8253479 4.38917875 2.18457317 -10.14249611 4.38917875 2.18457317
		 -10.14249611 4.85115862 2.18457317 -9.47835827 5.91058302 2.18457317 -9.47835827 5.91058302 4.2086544
		 -9.016753197 5.91058302 4.14269352 -9.016753197 5.91058302 3.1253171 -9.016753197 6.31467772 3.1253171
		 -9.016753197 6.31467772 4.14269352 -10.14249611 4.85115862 4.2086544 -10.14249611 4.38917875 4.2086544
		 -10.8253479 4.38917875 4.2086544 -10.8253479 3.58652735 2.38749695 -10.8253479 3.58652735 3.10707784
		 -11.55028725 3.58652735 3.10707784 -11.55028725 2.83268237 3.10707784 -11.89829445 2.83268237 2.18457317
		 -11.89829445 2.83268237 4.2086544 -11.55028725 2.83268237 2.38749695 -11.55028725 3.58652735 2.38749695;
	setAttr -s 113 ".ed[0:112]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 4 7 0 7 6 0 8 9 0 9 10 1 10 11 1 11 8 0 12 8 0 11 13 0 13 12 0 12 14 0
		 14 9 1 9 15 0 15 16 0 16 10 1 10 17 1 17 11 0 13 18 1 18 14 1 17 19 1 19 13 0 13 20 1
		 20 21 0 21 22 0 22 23 0 23 24 1 24 25 0 25 7 0 3 26 0 26 27 0 27 28 0 28 17 1 28 29 0
		 29 30 0 30 31 0 31 24 0 23 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0
		 39 40 0 40 13 1 14 41 0 41 15 0 41 42 0 42 16 1 16 43 0 43 17 0 19 18 1 18 42 1 43 44 0
		 44 19 0 45 20 0 40 46 0 46 47 0 47 45 0 20 48 0 48 49 0 49 21 1 49 22 1 50 23 0 49 50 0
		 24 51 0 51 25 0 51 52 0 52 30 0 29 53 0 53 54 0 54 26 0 55 27 0 54 55 0 55 56 0 56 28 0
		 56 53 0 52 31 0 50 57 0 57 32 0 57 58 0 58 33 1 58 34 1 58 59 0 59 35 0 59 48 0 45 60 0
		 60 61 0 61 36 0 61 62 0 62 63 0 63 37 0 46 64 0 64 65 0 65 38 0 63 66 0 66 47 0 65 39 0
		 64 40 0 42 44 0 67 60 0 66 67 0 58 49 0 67 62 0;
	setAttr -s 47 -ch 226 ".fc[0:46]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 1 0
		f 4 -2 -6 7 8
		mu 0 4 2 1 6 7
		f 4 -5 9 10 -8
		mu 0 4 5 4 8 9
		f 4 11 12 13 14
		mu 0 4 10 11 12 13
		f 4 15 -15 16 17
		mu 0 4 14 10 13 15
		f 4 18 19 -12 -16
		mu 0 4 16 17 18 19
		f 4 20 21 22 -13
		mu 0 4 11 20 21 12
		f 3 -14 23 24
		mu 0 3 13 12 22
		f 4 25 26 -19 -18
		mu 0 4 23 24 17 16
		f 16 27 28 29 30 31 32 33 34 35 -10 -7 -4 36 37 38 39
		mu 0 16 22 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		f 18 -25 -40 40 41 42 43 -34 44 45 46 47 48 49 50 51 52 53 -17
		mu 0 18 40 22 39 41 42 43 31 30 44 45 46 47 48 49 50 51 52 26
		f 4 54 55 -21 -20
		mu 0 4 17 53 54 18
		f 4 -56 56 57 -22
		mu 0 4 20 55 56 21
		f 4 -23 58 59 -24
		mu 0 4 12 21 57 22
		f 3 -29 60 -26
		mu 0 3 23 25 24
		f 4 61 -57 -55 -27
		mu 0 4 24 58 53 17
		f 4 -60 62 63 -28
		mu 0 4 22 57 59 25
		f 6 64 -30 -54 65 66 67
		mu 0 6 60 27 26 52 61 62
		f 4 -31 68 69 70
		mu 0 4 63 64 65 66
		f 3 71 -32 -71
		mu 0 3 66 67 63
		f 4 72 -33 -72 73
		mu 0 4 68 69 70 71
		f 3 74 75 -35
		mu 0 3 72 73 74
		f 12 -76 76 77 -42 78 79 80 -37 -3 -9 -11 -36
		mu 0 12 74 73 75 76 77 78 79 80 81 82 83 84
		f 4 81 -38 -81 82
		mu 0 4 85 86 87 88
		f 4 -82 83 84 -39
		mu 0 4 86 85 89 90
		f 4 -85 85 -79 -41
		mu 0 4 90 89 91 92
		f 3 -78 86 -43
		mu 0 3 76 75 93
		f 4 -87 -77 -75 -44
		mu 0 4 93 75 94 95
		f 4 -73 87 88 -45
		mu 0 4 69 68 96 97
		f 4 89 90 -46 -89
		mu 0 4 96 98 99 97
		f 3 -47 -91 91
		mu 0 3 100 101 102
		f 4 92 93 -48 -92
		mu 0 4 102 103 104 100
		f 8 -94 94 -69 -65 95 96 97 -49
		mu 0 8 104 103 105 106 107 108 109 110
		f 5 98 99 100 -50 -98
		mu 0 5 111 112 113 114 115
		f 8 101 102 103 -51 -101 104 105 -67
		mu 0 8 116 117 118 119 120 121 122 123
		f 3 -104 106 -52
		mu 0 3 119 118 124
		f 4 -107 -103 107 -53
		mu 0 4 124 118 125 126
		f 4 -58 108 -63 -59
		mu 0 4 21 56 127 57
		f 4 -64 -109 -62 -61
		mu 0 4 25 59 58 24
		f 5 109 -96 -68 -106 110
		mu 0 5 128 129 130 131 132
		f 3 -108 -102 -66
		mu 0 3 133 117 116
		f 4 -70 -95 -93 111
		mu 0 4 66 65 103 102
		f 4 -90 -88 -74 -112
		mu 0 4 98 96 134 135
		f 4 -86 -84 -83 -80
		mu 0 4 91 89 136 137
		f 4 -110 112 -99 -97
		mu 0 4 129 128 112 111
		f 4 -100 -113 -111 -105
		mu 0 4 113 112 138 139;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface28";
	rename -uid "2843AD28-6F43-CB2B-BEDF-8093700644E3";
createNode transform -n "polySurface77" -p "polySurface28";
	rename -uid "BB2BDAC5-B948-F7DB-48FA-88A88FE37A7A";
createNode transform -n "transform23" -p "polySurface77";
	rename -uid "5BCE793D-B443-C1AF-D07C-13B624295748";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape79" -p "transform23";
	rename -uid "2A2BF61B-DC40-FB79-ECA7-E9920E534912";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:14]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.37500811 0.12499324 0.625 0 0.625 0.125 0.5 0.25 0.625 0.25 0.37497514 0.25003746
		 0.5 0.5 0.375025 0.49998751 0.625 0.5 0.37501875 0.62500626 0.5 0.625 0.625 0.625
		 0.5 0.75 0.375 0.75 0.625 0.75 0.5 1 0.375 1 0.625 1 0.875 0 0.875 0.125 0.875 0.25
		 0.125 0 0.1250125 0.12497501;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -12.34510803 0.12354232 7.60304642 -8.28498554 0.12354232 7.60304642
		 -4.26008177 0.12354232 7.60304642 -12.34510803 1.88185215 7.60304642 -8.28498554 1.88185239 7.60304642
		 -4.26008177 1.88185215 7.60304642 -8.28498554 6.40414429 7.60304642 -4.26008177 6.40414429 7.60304642
		 -12.34510803 1.88185215 5.26627398 -8.28498554 6.40414429 5.26627398 -4.26008177 6.40414429 5.26627398
		 -8.28498554 1.88185239 5.26627398 -4.26008177 1.88185215 5.26627398 -12.34510803 0.12354232 5.26627398
		 -8.28498554 0.12354232 5.26627398 -4.26008177 0.12354232 5.26627398;
	setAttr -s 29 ".ed[0:28]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 8 9 0 9 10 0
		 8 11 1 11 12 1 13 14 0 14 15 0 0 3 0 1 4 1 2 5 0 4 6 1 5 7 0 6 9 1 7 10 0 9 11 1
		 10 12 0 8 13 0 11 14 1 12 15 0 13 0 0 14 1 1 15 2 0 12 5 1 8 3 0 6 3 0;
	setAttr -s 15 -ch 58 ".fc[0:14]" -type "polyFaces" 
		f 4 0 12 -3 -12
		mu 0 4 0 1 2 3
		f 4 1 13 -4 -13
		mu 0 4 1 4 5 2
		f 3 2 14 28
		mu 0 3 3 2 6
		f 4 3 15 -5 -15
		mu 0 4 2 5 7 6
		f 4 -29 16 -6 27
		mu 0 4 8 6 9 10
		f 4 4 17 -7 -17
		mu 0 4 6 7 11 9
		f 3 5 18 -8
		mu 0 3 12 9 13
		f 4 6 19 -9 -19
		mu 0 4 9 11 14 13
		f 4 7 21 -10 -21
		mu 0 4 12 13 15 16
		f 4 8 22 -11 -22
		mu 0 4 13 14 17 15
		f 4 9 24 -1 -24
		mu 0 4 16 15 18 19
		f 4 10 25 -2 -25
		mu 0 4 15 17 20 18
		f 4 -26 -23 26 -14
		mu 0 4 4 21 22 5
		f 4 -27 -20 -18 -16
		mu 0 4 5 22 23 7
		f 4 23 11 -28 20
		mu 0 4 24 0 3 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group24";
	rename -uid "67B0144E-204A-D38F-1100-83B0612D8DDE";
	setAttr ".t" -type "double3" 2.4717444274117808 1.3897376360854983 -5.6113381610707878 ;
	setAttr ".s" -type "double3" 1.8866979137420443 1.8866979137420443 1 ;
	setAttr ".rp" -type "double3" -6.2002475545023001 2.7169797138667828 7.648181679938328 ;
	setAttr ".sp" -type "double3" -6.2002475545023001 2.7169797138667828 7.648181679938328 ;
createNode transform -n "pasted__pCube7" -p "group24";
	rename -uid "11476518-1C4A-3CD0-9E19-D780B9D08404";
	setAttr ".s" -type "double3" 2.0240816695091661 2.0240816695091661 2.0240816695091661 ;
createNode transform -n "pasted__polySurface22" -p "|group24|pasted__pCube7";
	rename -uid "847F92D5-B14A-9F8D-DDA3-6A9F7EC0CC1C";
createNode transform -n "transform22" -p "pasted__polySurface22";
	rename -uid "CE4F3062-0440-7660-A143-81B1BA634DF6";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape22" -p "transform22";
	rename -uid "282ABC3C-E543-40DF-27C0-57A8C7BCFCB8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:14]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.37500811 0.12499324 0.625 0 0.625 0.125 0.5 0.25 0.625 0.25 0.37497514 0.25003746
		 0.5 0.5 0.375025 0.49998751 0.625 0.5 0.37501875 0.62500626 0.5 0.625 0.625 0.625
		 0.5 0.75 0.375 0.75 0.625 0.75 0.5 1 0.375 1 0.625 1 0.875 0 0.875 0.125 0.875 0.25
		 0.125 0 0.1250125 0.12497501;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" -1.7763568e-15 0.20932144 0 ;
	setAttr ".pt[1]" -type "float3" -1.7763568e-15 0.20932144 0 ;
	setAttr ".pt[2]" -type "float3" -9.2981178e-16 0.20932144 0 ;
	setAttr ".pt[13]" -type "float3" -1.7763568e-15 0.20932144 0 ;
	setAttr ".pt[14]" -type "float3" -1.7763568e-15 0.20932144 0 ;
	setAttr ".pt[15]" -type "float3" -9.2981178e-16 0.20932144 0 ;
	setAttr -s 16 ".vt[0:15]"  -6.079836845 0.068279505 3.97594285 -4.073927879 0.068279505 3.97594285
		 -0.04664278 0.068279505 3.97594285 -6.079836845 0.3821308 3.97594285 -4.073927879 0.38213092 3.97594285
		 -0.04664278 0.3821308 3.97594285 -4.073927879 2.61637473 3.97594285 -0.04664278 2.61637473 3.97594285
		 -6.079836845 0.3821308 3.58124399 -4.073927879 2.61637473 3.58124399 -0.04664278 2.61637473 3.58124399
		 -4.073927879 0.38213092 3.58124399 -0.04664278 0.3821308 3.58124399 -6.079836845 0.068279505 3.58124399
		 -4.073927879 0.068279505 3.58124399 -0.04664278 0.068279505 3.58124399;
	setAttr -s 29 ".ed[0:28]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 8 9 0 9 10 0
		 8 11 1 11 12 1 13 14 0 14 15 0 0 3 0 1 4 1 2 5 0 4 6 1 5 7 0 6 9 1 7 10 0 9 11 1
		 10 12 0 8 13 0 11 14 1 12 15 0 13 0 0 14 1 1 15 2 0 12 5 1 8 3 0 6 3 0;
	setAttr -s 15 -ch 58 ".fc[0:14]" -type "polyFaces" 
		f 4 0 12 -3 -12
		mu 0 4 0 1 2 3
		f 4 1 13 -4 -13
		mu 0 4 1 4 5 2
		f 3 2 14 28
		mu 0 3 3 2 6
		f 4 3 15 -5 -15
		mu 0 4 2 5 7 6
		f 4 -29 16 -6 27
		mu 0 4 8 6 9 10
		f 4 4 17 -7 -17
		mu 0 4 6 7 11 9
		f 3 5 18 -8
		mu 0 3 12 9 13
		f 4 6 19 -9 -19
		mu 0 4 9 11 14 13
		f 4 7 21 -10 -21
		mu 0 4 12 13 15 16
		f 4 8 22 -11 -22
		mu 0 4 13 14 17 15
		f 4 9 24 -1 -24
		mu 0 4 16 15 18 19
		f 4 10 25 -2 -25
		mu 0 4 15 17 20 18
		f 4 -26 -23 26 -14
		mu 0 4 4 21 22 5
		f 4 -27 -20 -18 -16
		mu 0 4 5 22 23 7
		f 4 23 11 -28 20
		mu 0 4 24 0 3 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group26";
	rename -uid "606E0779-614B-2A7D-616A-FBB9F354DC17";
	setAttr ".t" -type "double3" -3.6663479305646725 -6.8468820112672759 -22.561275381599827 ;
	setAttr ".s" -type "double3" 1 0.66399755339679245 1 ;
	setAttr ".rp" -type "double3" 0.95771405776687213 19.310467743705058 0 ;
	setAttr ".sp" -type "double3" 0.95771405776687213 19.310467743705058 0 ;
createNode transform -n "pasted__pCube7" -p "group26";
	rename -uid "8C16C416-574F-DACF-B8A9-8FA1817DEB60";
	setAttr ".s" -type "double3" 2.0240816695091661 2.0240816695091661 2.0240816695091661 ;
createNode transform -n "pasted__polySurface2" -p "|group26|pasted__pCube7";
	rename -uid "0C9B5233-8644-548D-27D2-E0B27A695B87";
	setAttr ".t" -type "double3" -0.53834557803840544 0 8.339118238141273 ;
	setAttr ".s" -type "double3" 0.47105653740067105 0.8319909283546042 0.8319909283546042 ;
createNode transform -n "transform21" -p "pasted__polySurface2";
	rename -uid "54F141BD-794C-68A7-6A2E-72990E0CF90F";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape2" -p "transform21";
	rename -uid "BAB0D800-8E4D-F687-E74B-C0BEA2F35C6B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:21]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.37499997392296791 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.37499911 0.002283836
		 0.62500107 0.0023220384 0.625 0.07 0.375 0.07 0.375 0.25 0.625 0.25 0.625 0.5 0.375
		 0.5 0.375 0.67999995 0.625 0.67999995 0.62499928 0.7475183 0.37500072 0.74763906
		 0.62499821 0.99996668 0.37500131 1.000018715858 0.87499768 0.0023617726 0.875 0.07
		 0.12500235 0.0023617726 0.125 0.07 0.875 0.25 0.125 0.25 0.125 0.088000007 0.375
		 0.66199994 0.625 0.66199994 0.875 0.088000007 0.625 0.088 0.37499997 0.088 0.375
		 0.66199994 0.625 0.66199994 0.625 0.67999995 0.375 0.67999995 0.625 0.07 0.875 0.07
		 0.875 0.088000007 0.625 0.088 0.375 0.07 0.37499997 0.088 0.125 0.07 0.125 0.088000007;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt";
	setAttr ".pt[1]" -type "float3" 1.4644165 0 -2.1094237e-15 ;
	setAttr ".pt[3]" -type "float3" 1.4644165 0 -2.1094237e-15 ;
	setAttr ".pt[5]" -type "float3" 1.4644165 0 -2.220446e-15 ;
	setAttr ".pt[7]" -type "float3" 1.4644165 0 -2.220446e-15 ;
	setAttr ".pt[8]" -type "float3" 0 2.5340793 -6.6613381e-15 ;
	setAttr ".pt[9]" -type "float3" 1.4644165 2.5340793 -8.8817842e-15 ;
	setAttr ".pt[10]" -type "float3" 1.4644165 2.5340793 -8.437695e-15 ;
	setAttr ".pt[11]" -type "float3" 0 2.5340793 -6.3282712e-15 ;
	setAttr ".pt[12]" -type "float3" 0 2.5340793 -6.6613381e-15 ;
	setAttr ".pt[13]" -type "float3" 1.4644165 2.5340793 -8.8817842e-15 ;
	setAttr ".pt[14]" -type "float3" 1.4644165 2.5340793 -8.437695e-15 ;
	setAttr ".pt[15]" -type "float3" 0 2.5340793 -6.3282712e-15 ;
	setAttr ".pt[16]" -type "float3" 0 2.5340793 -6.3282712e-15 ;
	setAttr ".pt[17]" -type "float3" 1.4644165 2.5340793 -8.437695e-15 ;
	setAttr ".pt[18]" -type "float3" 1.4644165 2.5340793 -8.437695e-15 ;
	setAttr ".pt[19]" -type "float3" 0 2.5340793 -6.3282712e-15 ;
	setAttr ".pt[20]" -type "float3" 1.4644165 2.5340793 -8.437695e-15 ;
	setAttr ".pt[21]" -type "float3" 1.4644165 2.5340793 -8.437695e-15 ;
	setAttr ".pt[22]" -type "float3" 0 2.5340793 -6.3282712e-15 ;
	setAttr ".pt[23]" -type "float3" 0 2.5340793 -6.3282712e-15 ;
	setAttr -s 24 ".vt[0:23]"  -1.013159871 0.13836956 1 1.95947945 0.13836956 1
		 -1.013159871 18.94235039 1 1.95947945 18.94235039 1 -1.013159871 18.94235039 -1 1.95947945 18.94235039 -1
		 -1.013159871 0.13836956 -1 1.95947945 0.13836956 -1 -1.013159871 8.11673641 -1 1.95947945 8.11673641 -1
		 1.95947945 8.11673641 1 -1.013159871 8.11673641 1 -1.013159871 8.42048264 -1 1.95947945 8.42048264 -1
		 1.95947933 8.42048168 1 -1.013159871 8.42048168 1 -0.91443658 8.42048264 -0.90127677
		 1.76311815 8.37166405 -0.8524577 1.76311815 8.067917824 -0.8524577 -0.91443658 8.11673641 -0.90127677
		 1.76311815 8.067917824 0.8524577 1.76311803 8.37166309 0.8524577 -0.91443658 8.11673641 0.80363864
		 -0.91443658 8.42048168 0.80363864;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 4 5 0 6 7 0 2 4 0 3 5 0 4 12 0
		 5 13 0 6 0 0 7 1 0 0 11 0 1 10 0 8 6 0 9 7 0 8 9 0 9 10 0 10 11 0 11 8 0 14 3 0 15 2 0
		 12 13 0 13 14 0 14 15 0 15 12 0 12 16 1 13 17 1 16 17 0 9 18 1 17 18 0 8 19 1 19 18 0
		 16 19 0 10 20 1 18 20 0 14 21 1 17 21 0 20 21 0 11 22 1 20 22 0 15 23 1 21 23 0 22 23 0
		 22 19 0 23 16 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 11 16 -11
		mu 0 4 0 1 2 3
		f 4 1 5 -3 -5
		mu 0 4 4 5 6 7
		f 4 14 13 -4 -13
		mu 0 4 8 9 10 11
		f 4 3 9 -1 -9
		mu 0 4 11 10 12 13
		f 4 -10 -14 15 -12
		mu 0 4 1 14 15 2
		f 4 8 10 17 12
		mu 0 4 16 0 3 17
		f 4 26 28 -31 -32
		mu 0 4 26 27 28 29
		f 4 -34 -29 35 -37
		mu 0 4 30 31 32 33
		f 4 -39 36 40 -42
		mu 0 4 34 30 33 35
		f 4 -43 41 43 31
		mu 0 4 36 34 35 37
		f 4 2 7 -21 -7
		mu 0 4 7 6 22 21
		f 4 -22 -8 -6 -19
		mu 0 4 24 23 18 5
		f 4 -23 18 -2 -20
		mu 0 4 25 24 5 4
		f 4 -24 19 4 6
		mu 0 4 20 25 4 19
		f 4 20 25 -27 -25
		mu 0 4 21 22 27 26
		f 4 -15 29 30 -28
		mu 0 4 9 8 29 28
		f 4 -16 27 33 -33
		mu 0 4 2 15 31 30
		f 4 21 34 -36 -26
		mu 0 4 23 24 33 32
		f 4 -17 32 38 -38
		mu 0 4 3 2 30 34
		f 4 22 39 -41 -35
		mu 0 4 24 25 35 33
		f 4 -18 37 42 -30
		mu 0 4 17 3 34 36
		f 4 23 24 -44 -40
		mu 0 4 25 20 37 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group27";
	rename -uid "6A7E3684-FA40-DD11-B493-8CB8D9FC6E5F";
	setAttr ".t" -type "double3" 2.1668350101234513 -9.941044647424075 -28.824675329057492 ;
	setAttr ".s" -type "double3" 0.55649177338423061 0.55649177338423061 0.55649177338423061 ;
	setAttr ".rp" -type "double3" 5.261023789754697 20.503432843446891 3.9080746616295352 ;
	setAttr ".sp" -type "double3" 5.261023789754697 20.503432843446891 3.9080746616295352 ;
createNode transform -n "pasted__pCube7" -p "group27";
	rename -uid "C713F6D2-234C-BCDC-FEAF-7E942158EE9E";
	setAttr ".s" -type "double3" 2.0240816695091661 2.0240816695091661 2.0240816695091661 ;
createNode transform -n "group28";
	rename -uid "E216D42B-5641-DDF0-4197-67A104D3DA70";
	setAttr ".t" -type "double3" -5.5184463836542239 0 -22.853868838785388 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 1.8871113806962967 5.5476620607078075 10.610128998756409 ;
	setAttr ".sp" -type "double3" 1.8871113806962967 5.5476620607078075 10.610128998756409 ;
createNode transform -n "group29";
	rename -uid "C69742F2-3741-0168-52C9-1587EF263922";
	setAttr ".t" -type "double3" -42.487692633579911 0 0 ;
	setAttr ".rp" -type "double3" 1.8871113806962967 5.5476620607078075 10.610128998756409 ;
	setAttr ".sp" -type "double3" 1.8871113806962967 5.5476620607078075 10.610128998756409 ;
createNode transform -n "group30";
	rename -uid "12F74786-754D-1454-4FAD-AC9AB4189786";
	setAttr ".rp" -type "double3" 1.8871113806962967 5.5476620607078075 10.610128998756409 ;
	setAttr ".sp" -type "double3" 1.8871113806962967 5.5476620607078075 10.610128998756409 ;
createNode transform -n "pasted__polySurface12" -p "group30";
	rename -uid "1A9D9CD2-0C4F-24A2-8043-13AC13B60CD7";
createNode transform -n "transform20" -p "pasted__polySurface12";
	rename -uid "6FECFEBD-A74E-82B6-B2A6-BEAF2E6F36C6";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurface12Shape" -p "transform20";
	rename -uid "23BF753A-C040-701F-739E-A393FDF7BD6B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:57]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25021323561668396 0.062487505376338959 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 107 ".uvst[0].uvsp[0:106]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.39394364 0.1191584 0.625 0.125 0.51526809 0.24101681 0.625 0.25 0.625 0.5
		 0.51154143 0.49929842 0.37524152 0.62980682 0.5 0.625 0.625 0.625 0.5 0.75 0.375
		 0.75 0.625 0.75 0.5 1 0.375 1 0.875 0.125 0.875 0.25 0.125 0 0.375 0 0.37542647 0.12484996
		 0.1250125 0.12497501 0.125 0 0.12730898 0.12458876 0.45417622 0.57691056 0.45949966
		 0.18471676 0.48494044 0.54031795 0.41603509 0.60524881 0.49722657 0.51975518 0.47058606
		 0.55948216 0.39498574 0.61560017 0.43588996 0.59226978 0.48599079 0.21757583 0.42627552
		 0.15296736 0.40744269 0.13823122 0.44369012 0.16857463 0.47363314 0.2012382 0.49662593
		 0.23329803 0.4448235 0.31418511 0.44482294 0.69262707 0.44999948 0.68843877 0.44999942
		 0.31250089 0.45499948 0.68843919 0.45499957 0.31250069 0.4599995 0.68843919 0.4599995
		 0.31250057 0.46499947 0.68843907 0.46499947 0.31250072 0.46999946 0.68843913 0.46999943
		 0.31250086 0.47499949 0.68843931 0.47499943 0.31250045 0.47999853 0.68843895 0.47999886
		 0.3125011 0.48491928 0.69262856 0.48491973 0.31418997 0.44482321 0.50340611 0.51340473
		 0.3701576 0.48491949 0.50340927 0.26062632 0.12187358 0.44482309 0.59801662 0.51247311
		 0.43472803 0.44999948 0.59889412 0.45499951 0.59943843 0.4599995 0.59971994 0.46499947
		 0.59978873 0.46999946 0.59964365 0.47499949 0.59928733 0.47999859 0.59872401 0.48491937
		 0.59801888 0.19396764 0.12323117 0.44482335 0.4087956 0.51433641 0.3055872 0.44999945
		 0.40804428 0.45499951 0.40757781 0.4599995 0.40733609 0.46499944 0.40727702 0.46999943
		 0.40740186 0.47499943 0.40770909 0.47999877 0.40819228 0.48491961 0.40879962 0.32728499
		 0.12051599 0.45499951 0.40757781 0.44999945 0.40804428 0.44999948 0.59889412 0.45499951
		 0.59943843 0.46499944 0.40727702 0.4599995 0.40733609 0.4599995 0.59971994 0.46499947
		 0.59978873 0.47499943 0.40770909 0.46999943 0.40740186 0.46999946 0.59964365 0.47499949
		 0.59928733 0.48491961 0.40879962 0.47999877 0.40819228 0.47999859 0.59872401 0.48491937
		 0.59801888 0.48491949 0.50340927 1.5808291e-16 0 0.99999994 7.9041455e-17 0.99999994
		 0.7380653 0 0.7380653 0 2.2149205e-16 0.99999994 0 0.0083912788 0.84846151;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr -s 17 ".clst[0].clsp[0:16]"  0.0123 0.0124 0.013 0.96380001
		 0.0123 0.0124 0.013 0.96380001 0.0123 0.0124 0.013 0.96380001 0.0123 0.0124 0.013
		 0.96380001 0.0123 0.0124 0.013 0.96380001 0.0123 0.0124 0.013 0.96380001 0.0123 0.0124
		 0.013 0.96380001 0.0123 0.0124 0.013 0.96380001 0.0123 0.0124 0.013 0.96380001 0.0123
		 0.0124 0.013 0.96380001 0.0123 0.0124 0.013 0.96380001 0.0123 0.0124 0.013 0.96380001
		 0.0123 0.0124 0.013 0.96380001 0.0123 0.0124 0.013 0.96380001 0.0123 0.0124 0.013
		 0.96380001 0.0123 0.0124 0.013 0.96380001 0.0123 0.0124 0.013 0.96380001;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[15:18]" -type "float3"  0 0 1.7488308 0 0 1.7488308 
		0 0 1.7488308 0 0 1.7488308;
	setAttr -s 70 ".vt[0:69]"  3.95115924 0.1162368 15.98922062 3.95115924 0.1162368 7.62389183
		 3.95115948 5.0033984184 15.98922062 3.95115924 0.15724634 7.62389183 3.95115924 0.15724634 2.0054581165
		 3.95115924 10.97908974 7.62389183 3.95115924 10.97908974 2.0054581165 -0.19540939 5.0033984184 15.98922062
		 -0.19540939 10.97908974 7.62389183 -0.19540939 10.97908974 2.0054581165 -0.19540939 5.0033984184 7.62389183
		 -0.19540939 5.0033984184 2.0054581165 -0.19540939 0.1162368 15.98922062 -0.19540939 0.1162368 7.62389183
		 -0.19540939 0.1162368 2.0054581165 -0.19540939 0.1162368 19.21479988 3.95115924 0.11623438 19.21479988
		 3.95115924 5.0033984184 19.21479988 -0.19540939 5.0033984184 19.21479988 -0.14950371 7.082037449 10.85345459
		 3.96961093 7.082045078 10.85349655 -0.14950371 8.76151848 8.94303417 -0.14950371 5.80081034 13.27821541
		 -0.14950371 9.71844387 8.28701496 -0.14950371 7.87804747 9.82565784 -0.14950371 5.3358779 14.63678932
		 -0.14950371 6.38597775 12.0104599 3.96961093 8.76154613 8.94303417 3.96963215 5.80081034 13.27810669
		 3.96963215 5.33594131 14.63671684 3.96961093 6.38606501 12.0104599 3.96961093 7.87813425 9.825737
		 3.96961093 9.71849823 8.28691006 1.87787497 10.97908974 7.62389183 1.87787509 5.0033984184 15.98922062
		 0.84123278 10.97908974 7.62389183 0.8316282 9.71845722 8.28699017 0.82566774 8.76152515 8.94303417
		 0.82258254 7.87806797 9.82567596 0.82182878 7.082038879 10.85346413 0.82341874 6.38599825 12.0104599
		 0.82732874 5.80081034 13.27818871 0.83349919 5.33589315 14.63677216 0.84123284 5.0033984184 15.98922062
		 2.91451716 10.97908974 7.62389183 2.92275167 9.71848488 8.28693676 2.92786193 8.76153946 8.94303417
		 2.93050957 7.87811279 9.82571697 2.93115735 7.082042694 10.85348511 2.92979145 6.38604355 12.010460854
		 2.92643738 5.80080986 13.27813339 2.92114782 5.3359251 14.63673496 2.9145174 5.0033984184 15.98922062
		 2.92275119 9.63468933 8.16471386 2.92786145 8.67774391 8.82081127 0.83162749 9.63466167 8.16476727
		 0.82566702 8.67772961 8.82081127 2.93051243 7.75215149 9.72815609 2.93116021 6.95608139 10.75592422
		 0.8225854 7.75210667 9.72811508 0.82183164 6.95607758 10.75590324 2.92979193 6.2681818 11.95605183
		 2.92643785 5.68294811 13.22372437 0.82341933 6.2681365 11.95605087 0.82732934 5.68294859 13.22377968
		 2.9211483 5.22297668 14.60896587 2.91451788 4.89045 15.96145153 0.83349979 5.22294474 14.60900307
		 0.84123343 4.89045 15.96145153 1.8778758 4.89045 15.96145153;
	setAttr -s 127 ".ed[0:126]"  0 1 0 2 3 1 3 4 0 5 6 0 8 9 0 7 10 1 10 11 1
		 12 13 0 13 14 0 0 2 1 1 3 0 3 5 1 4 6 0 6 9 0 8 10 1 9 11 0 7 12 1 10 13 1 11 14 0
		 12 0 1 13 1 0 11 4 0 7 43 0 5 44 0 12 15 0 0 16 0 15 16 0 2 17 0 16 17 0 7 18 0 18 17 0
		 18 15 0 7 25 0 5 32 0 19 24 0 20 30 0 21 23 0 22 26 0 23 8 0 24 21 0 25 22 0 26 19 0
		 27 31 0 28 29 0 29 2 0 30 28 0 31 20 0 32 27 0 32 45 1 27 46 1 31 47 1 20 48 1 30 49 1
		 28 50 1 29 51 1 33 35 0 34 52 0 35 8 0 36 23 1 37 21 1 38 24 1 39 19 1 40 26 1 41 22 1
		 42 25 1 43 34 0 35 36 1 36 37 0 37 38 1 38 39 0 39 40 1 40 41 0 41 42 1 42 43 0 44 33 0
		 45 36 0 46 37 0 47 38 0 48 39 0 49 40 0 50 41 0 51 42 0 52 2 0 44 45 1 45 46 0 46 47 1
		 47 48 0 48 49 1 49 50 0 50 51 1 51 52 0 45 53 0 46 54 0 53 54 0 36 55 0 53 55 0 37 56 0
		 55 56 0 54 56 0 47 57 0 48 58 0 57 58 0 38 59 0 57 59 0 39 60 0 59 60 0 58 60 0 49 61 0
		 50 62 0 61 62 0 40 63 0 61 63 0 41 64 0 63 64 0 62 64 0 51 65 0 52 66 0 65 66 0 42 67 0
		 65 67 0 43 68 0 67 68 0 34 69 1 68 69 0 69 66 0 3 13 0 14 4 0;
	setAttr -s 58 -ch 251 ".fc[0:57]" -type "polyFaces" 
		f 4 0 10 -2 -10
		mu 0 4 0 1 2 3
		f 10 1 11 33 47 42 46 35 45 43 44
		mu 0 10 3 2 5 38 33 37 26 36 34 35
		f 4 2 12 -4 -12
		mu 0 4 2 4 6 5
		f 7 3 13 -5 -58 -56 -75 -24
		mu 0 7 5 6 7 8 62 58 73
		f 10 32 40 37 41 34 39 36 38 14 -6
		mu 0 10 9 31 28 32 25 30 27 29 8 10
		f 4 4 15 -7 -15
		mu 0 4 8 7 11 10
		f 4 5 17 -8 -17
		mu 0 4 9 10 12 13
		f 4 6 18 -9 -18
		mu 0 4 10 11 14 12
		f 4 7 20 -1 -20
		mu 0 4 13 12 15 16
		f 4 -22 -16 -14 -13
		mu 0 4 4 17 18 6
		f 4 26 28 -31 31
		mu 0 4 19 20 21 22
		f 4 19 25 -27 -25
		mu 0 4 23 0 20 19
		f 4 9 27 -29 -26
		mu 0 4 0 3 21 20
		f 7 -83 -57 -66 -23 29 30 -28
		mu 0 7 3 82 60 71 24 22 21
		f 4 16 24 -32 -30
		mu 0 4 24 23 19 22
		f 4 23 83 -49 -34
		mu 0 4 39 72 74 42
		f 4 48 84 -50 -48
		mu 0 4 42 74 75 44
		f 4 49 85 -51 -43
		mu 0 4 44 75 76 46
		f 4 50 86 -52 -47
		mu 0 4 46 76 77 48
		f 4 51 87 -53 -36
		mu 0 4 48 77 78 50
		f 4 52 88 -54 -46
		mu 0 4 50 78 79 52
		f 4 53 89 -55 -44
		mu 0 4 52 79 80 54
		f 4 54 90 82 -45
		mu 0 4 54 80 81 56
		f 4 -67 57 -39 -59
		mu 0 4 63 61 40 41
		f 4 -68 58 -37 -60
		mu 0 4 64 63 41 43
		f 4 -69 59 -40 -61
		mu 0 4 65 64 43 45
		f 4 -70 60 -35 -62
		mu 0 4 66 65 45 47
		f 4 -71 61 -42 -63
		mu 0 4 67 66 47 49
		f 4 -72 62 -38 -64
		mu 0 4 68 67 49 51
		f 4 -73 63 -41 -65
		mu 0 4 69 68 51 53
		f 4 -74 64 -33 22
		mu 0 4 70 69 53 55
		f 5 -84 74 55 66 -76
		mu 0 5 74 72 57 61 63
		f 4 -94 95 97 -99
		mu 0 4 83 84 85 86
		mc 0 4 1 0 2 3
		f 4 -86 76 68 -78
		mu 0 4 76 75 64 65
		f 4 -102 103 105 -107
		mu 0 4 87 88 89 90
		mc 0 4 5 4 6 7
		f 4 -88 78 70 -80
		mu 0 4 78 77 66 67
		f 4 -110 111 113 -115
		mu 0 4 91 92 93 94
		mc 0 4 9 8 10 11
		f 4 -90 80 72 -82
		mu 0 4 80 79 68 69
		f 5 -118 119 121 123 124
		mu 0 5 95 96 97 98 99
		mc 0 5 13 12 14 15 16
		f 4 -85 91 93 -93
		mu 0 4 75 74 84 83
		f 4 75 94 -96 -92
		mu 0 4 74 63 85 84
		f 4 67 96 -98 -95
		mu 0 4 63 64 86 85
		f 4 -77 92 98 -97
		mu 0 4 64 75 83 86
		f 4 -87 99 101 -101
		mu 0 4 77 76 88 87
		f 4 77 102 -104 -100
		mu 0 4 76 65 89 88
		f 4 69 104 -106 -103
		mu 0 4 65 66 90 89
		f 4 -79 100 106 -105
		mu 0 4 66 77 87 90
		f 4 -89 107 109 -109
		mu 0 4 79 78 92 91
		f 4 79 110 -112 -108
		mu 0 4 78 67 93 92
		f 4 71 112 -114 -111
		mu 0 4 67 68 94 93
		f 4 -81 108 114 -113
		mu 0 4 68 79 91 94
		f 4 -91 115 117 -117
		mu 0 4 81 80 96 95
		f 4 81 118 -120 -116
		mu 0 4 80 69 97 96
		f 4 73 120 -122 -119
		mu 0 4 69 70 98 97
		f 4 65 122 -124 -121
		mu 0 4 70 59 99 98
		f 4 56 116 -125 -123
		mu 0 4 59 81 95 99
		f 4 -3 125 8 126
		mu 0 4 100 101 102 103
		f 3 -19 21 -127
		mu 0 3 104 105 106;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface81";
	rename -uid "F4503EF2-1046-BECA-71D2-3FBB113C1C66";
	setAttr ".rp" -type "double3" 5.2610235214233398 20.503432594239712 3.9080746173858643 ;
	setAttr ".sp" -type "double3" 5.2610235214233398 20.503432594239712 3.9080746173858643 ;
createNode transform -n "transform19" -p "polySurface81";
	rename -uid "1AC70C13-9744-EAB9-2259-E9B1A2ED5419";
	setAttr ".v" no;
createNode mesh -n "polySurface81Shape" -p "transform19";
	rename -uid "2FCD31E7-0449-D9E2-41DB-79BD7C43CD12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 118 ".uvst[0].uvsp[0:117]" -type "float2" 0.37499997 0.22499999
		 0.625 0.22499999 0.625 0.25 0.5951488 0.25 0.5951488 0.22935484 0.51558727 0.22935487
		 0.51558727 0.25 0.49116382 0.25 0.49116379 0.22935486 0.41160226 0.22935484 0.41160226
		 0.25 0.375 0.25 0.125 0.22499999 0.125 0.25 0.37499997 0.22499999 0.625 0.22499999
		 0.875 0.22499999 0.875 0.25 0.41160226 0.26744464 0.49116379 0.26744464 0.51558733
		 0.26744464 0.5951488 0.26744464 0.625 0.5 0.375 0.5 0.83200276 0 0.83200276 0.12514216
		 0.875 0.12514216 0.875 0 0.375 0.79299724 0.625 0.79299724 0.625 0.75 0.375 0.75
		 0.125 0 0.125 0.12514216 0.16799724 0.12514216 0.16799724 0 0.83200276 0 0.83200276
		 0.12514216 0.875 0.12514216 0.875 0 0.375 0.79299724 0.625 0.79299724 0.625 0.75
		 0.375 0.75 0.125 0 0.125 0.12514216 0.16799724 0.12514216 0.16799724 0 0.625 0.52499998
		 0.37499997 0.52499998 0.125 0.22499999 0.875 0.22499999 0.37499997 0.20249999 0.625
		 0.20249999 0.625 0.62485784 0.375 0.62485784 0.625 0.62485784 0.375 0.62485784 0.625
		 0.52499998 0.37499997 0.52499998 0.125 0.20249999 0.875 0.20249999 0.37499997 0.20249999
		 0.625 0.20249999 0.625 0.54750001 0.37499997 0.54749995 0.125 0.20249999 0.875 0.20249999
		 0.375 0 0.41247666 0.10560876 0.41247663 0.19821717 0.48990464 0.19821718 0.625 0.54750001
		 0.37499997 0.54749995 0.125 0 0.625 0 0.875 0 0.59345514 0.19829498 0.59345579 0.10568659
		 0.51602775 0.10568658 0.4899047 0.10560876 0.51602852 0.19829498 0.14535058 0.25
		 0.14535058 0 0.125 0 0.125 0.25 0.625 0.47964942 0.375 0.47964942 0.375 0.5 0.625
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.85464942 0 0.85464942 0.25 0.875 0.25
		 0.875 0 0.375 0.77035058 0.625 0.77035058 0.625 0.75 0.375 0.75 0.62498021 0.4798007
		 0.37501493 0.47983795 0.375 0.5 0.625 0.5 0.85464942 0 0.8548007 0.24999996 0.875
		 0.25 0.875 0 0.375 0.75 0.625 0.75 0.1451993 0.24999996 0.14535058 0 0.125 0 0.125
		 0.25 0.375 0.77035058 0.625 0.77035058;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  3.97796464 36.86685181 5.14046574 6.54408264 36.86685181 5.14046574
		 6.54408264 40.95771027 5.14046574 6.23767567 40.95771027 5.14046574 6.23767567 37.57945251 5.14046574
		 5.4210186 37.57945251 5.14046574 5.4210186 40.95771027 5.14046574 5.1703248 40.95771027 5.14046574
		 5.1703248 37.57945251 5.14046574 4.35366774 37.57945251 5.14046574 4.35366774 40.95771027 5.14046574
		 3.97796488 40.95771027 5.14046574 3.97796464 36.86685181 2.6756835 3.97796488 40.95771027 2.6756835
		 4.11045408 36.85341263 5.013208389 6.41159344 36.85341263 5.013208389 6.54408264 36.86685181 2.6756835
		 6.54408264 40.95771027 2.6756835 4.35366774 40.95771027 4.96847677 5.1703248 40.95771027 4.96847677
		 5.4210186 40.95771027 4.96847677 6.23767567 40.95771027 4.96847677 6.23767567 37.57945251 4.96847677
		 5.4210186 37.57945251 4.96847677 5.1703248 37.57945251 4.96847677 4.35366774 37.57945251 4.96847677
		 4.11045408 36.85341263 2.80294085 6.41159344 36.85341263 2.80294085 4.11045361 36.62002182 5.013208389
		 6.41159344 36.62002182 5.013208389 4.11045361 36.62002182 2.80294085 6.41159344 36.62002182 2.80294085
		 3.9779644 36.60658264 5.14046574 6.54408264 36.60658264 5.14046574 3.9779644 36.60658264 2.6756835
		 6.54408264 36.60658264 2.6756835 3.97796488 0.049154922 5.14046574 4.36264277 19.11475945 5.14046574
		 4.36264277 35.83340454 5.14046574 5.15740061 35.83340454 5.14046574 3.97796488 0.049154922 2.6756835
		 6.54408264 0.049154922 5.14046574 6.54408264 0.049154922 2.6756835 6.22029829 35.84745026 5.14046574
		 6.22029829 19.12880898 5.14046574 5.42554045 19.12880898 5.14046574 5.15740061 19.11475945 5.14046574
		 5.42554045 35.84745026 5.14046574 4.36264277 19.11475945 5.059063435 4.36264277 35.83340454 5.059063435
		 5.15740061 35.83340454 5.059063435 5.15740061 19.11475945 5.059063435 5.42554045 35.84745026 5.059063435
		 6.22029829 35.84745026 5.059063435 6.22029829 19.12880898 5.059063435 5.42554045 19.12880898 5.059063435;
	setAttr -s 96 ".ed[0:95]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 0 0 11 13 0 13 12 0 0 14 0 14 15 0 15 1 0 1 16 0
		 16 17 0 17 2 0 10 18 0 18 19 0 19 7 0 6 20 0 20 21 0 21 3 0 17 13 0 21 22 0 22 4 0
		 22 23 0 23 5 0 23 20 0 19 24 0 24 8 0 24 25 0 25 9 0 25 18 0 16 12 0 12 26 0 26 14 0
		 15 27 0 27 16 0 28 29 0 29 15 0 14 28 0 27 26 0 30 28 0 26 30 0 29 31 0 31 27 0 32 33 0
		 33 29 0 28 32 0 31 30 0 34 32 0 30 34 0 33 35 0 35 31 0 36 37 1 37 38 0 38 39 0 39 47 1
		 32 36 0 35 34 0 40 36 0 34 40 0 41 42 0 42 35 0 33 41 0 43 44 0 44 45 0 45 46 1 46 37 0
		 36 41 0 33 43 1 39 46 0 45 47 0 47 43 0 37 48 0 48 49 0 49 38 0 49 50 0 50 39 0 42 40 0
		 50 51 0 51 46 0 51 48 0 47 52 0 52 53 0 53 43 0 53 54 0 54 44 0 52 55 0 55 54 0 45 55 0;
	setAttr -s 42 -ch 192 ".fc[0:41]" -type "polyFaces" 
		f 12 0 1 2 3 4 5 6 7 8 9 10 11
		mu 0 12 0 1 2 3 4 5 6 7 8 9 10 11
		f 4 12 -12 13 14
		mu 0 4 12 0 11 13
		f 4 -1 15 16 17
		mu 0 4 1 0 14 15
		f 4 18 19 20 -2
		mu 0 4 1 16 17 2
		f 12 -11 21 22 23 -7 24 25 26 -3 -21 27 -14
		mu 0 12 11 10 18 19 7 6 20 21 3 2 22 23
		f 4 -4 -27 28 29
		mu 0 4 24 25 26 27
		f 4 -5 -30 30 31
		mu 0 4 28 29 30 31
		f 4 32 -25 -6 -32
		mu 0 4 32 33 34 35
		f 4 -8 -24 33 34
		mu 0 4 36 37 38 39
		f 4 -9 -35 35 36
		mu 0 4 40 41 42 43
		f 4 37 -22 -10 -37
		mu 0 4 44 45 46 47
		f 4 -28 -20 38 -15
		mu 0 4 23 22 48 49
		f 4 -13 39 40 -16
		mu 0 4 0 12 50 14
		f 4 -19 -18 41 42
		mu 0 4 16 1 15 51
		f 4 43 44 -17 45
		mu 0 4 52 53 15 14
		f 4 -23 -38 -36 -34
		mu 0 4 54 55 43 42
		f 4 -26 -33 -31 -29
		mu 0 4 56 57 31 30
		f 4 -39 -43 46 -40
		mu 0 4 49 48 58 59
		f 4 47 -46 -41 48
		mu 0 4 60 52 14 50
		f 4 49 50 -42 -45
		mu 0 4 53 61 51 15
		f 4 51 52 -44 53
		mu 0 4 62 63 53 52
		f 4 -47 -51 54 -49
		mu 0 4 59 58 64 65
		f 4 55 -54 -48 56
		mu 0 4 66 62 52 60
		f 4 57 58 -50 -53
		mu 0 4 63 67 61 53
		f 8 59 60 61 62 78 -76 -52 63
		mu 0 8 68 69 70 71 81 77 63 62
		f 4 64 -57 -55 -59
		mu 0 4 72 73 65 64
		f 4 65 -64 -56 66
		mu 0 4 74 68 62 66
		f 4 67 68 -58 69
		mu 0 4 75 76 67 63
		f 8 70 71 72 73 -60 74 -70 75
		mu 0 8 77 78 79 80 69 68 75 63
		f 4 76 -73 77 -63
		mu 0 4 71 80 79 81
		f 4 -61 79 80 81
		mu 0 4 82 83 84 85
		f 4 -62 -82 82 83
		mu 0 4 86 87 88 89
		f 4 -65 -69 84 -67
		mu 0 4 73 72 90 91
		f 4 -85 -68 -75 -66
		mu 0 4 91 90 92 93
		f 4 -77 -84 85 86
		mu 0 4 94 95 96 97
		f 4 -74 -87 87 -80
		mu 0 4 98 99 100 101
		f 4 -81 -88 -86 -83
		mu 0 4 88 101 100 89
		f 4 -79 88 89 90
		mu 0 4 102 103 104 105
		f 4 -71 -91 91 92
		mu 0 4 106 107 108 109
		f 4 93 94 -92 -90
		mu 0 4 104 110 111 105
		f 4 -78 95 -94 -89
		mu 0 4 112 113 114 115
		f 4 -72 -93 -95 -96
		mu 0 4 116 117 111 110;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube20";
	rename -uid "82D4F81F-DF4B-F7E1-AF5E-42BD280F50D7";
	setAttr ".t" -type "double3" -0.79294528128649233 0 1.0814709913515645 ;
	setAttr ".s" -type "double3" 1 1 1.3276226889676854 ;
	setAttr ".rp" -type "double3" 19.650357246398926 12.076378345489502 -2.9626160264015198 ;
	setAttr ".sp" -type "double3" 19.650357246398926 12.076378345489502 -2.9626160264015198 ;
createNode transform -n "transform18" -p "pCube20";
	rename -uid "9F0256A8-0844-2FE0-4CBA-F190D1DCCE01";
	setAttr ".v" no;
createNode mesh -n "pCube20Shape" -p "transform18";
	rename -uid "6270C14E-414F-4549-8B54-75B825BFD5ED";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:57]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.75 0.22025000303983688 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 162 ".uvst[0].uvsp[0:161]" -type "float2" 0.375 0.2 0.625 0.2
		 0.625 0.25 0.375 0.25 0.125 0.2 0.13950695 0.20000002 0.13950695 0.23449843 0.15690914
		 0.23449841 0.15690914 0.20000002 0.17311932 0.20000002 0.17311931 0.23449841 0.19052145
		 0.23449844 0.19052148 0.20000002 0.20673171 0.20000002 0.20673171 0.23449841 0.22413388
		 0.23449843 0.22413385 0.20000002 0.24034408 0.20000002 0.24034405 0.23449844 0.25774622
		 0.23449844 0.25774622 0.2 0.27395645 0.2 0.27395648 0.23449844 0.29135862 0.23449844
		 0.29135859 0.19999999 0.30756882 0.2 0.30756882 0.23449843 0.32497102 0.23449841
		 0.32497096 0.19999999 0.34118119 0.19999999 0.34118119 0.23449843 0.35858336 0.23449844
		 0.35858336 0.2 0.125 0.25 0.375 0.17999999 0.625 0.17999999 0.875 0.2 0.875 0.25
		 0.625 0.5 0.375 0.5 0.625 0.55000001 0.375 0.55000001 0.125 0.17999999 0.35858336
		 0.19745189 0.34118122 0.19745189 0.32497099 0.1974519 0.30756882 0.19745189 0.29135862
		 0.1974519 0.27395648 0.19745192 0.25774622 0.1974519 0.24034408 0.1974519 0.22413386
		 0.1974519 0.20673169 0.1974519 0.19052149 0.19745192 0.17311934 0.19745192 0.15690914
		 0.19745192 0.13950695 0.19745189 0.58804369 0.5 0.58804369 0.69480556 0.62500006
		 0.7015292 0.625 0.5 0.58804369 0.25 0.625 0.25 0.62500006 0.048470799 0.58804363
		 0.0551944 0.58804369 0.5 0.58804369 0.69480556 0.62500006 0.7015292 0.625 0.5 0.58804369
		 0.25 0.625 0.25 0.62500006 0.048470799 0.58804363 0.0551944 0.58804369 0.5 0.58804369
		 0.69480556 0.62500006 0.7015292 0.625 0.5 0.58804369 0.25 0.625 0.25 0.62500006 0.048470799
		 0.58804363 0.0551944 0.58804369 0.5 0.58804369 0.69480556 0.625 0.7015292 0.625 0.5
		 0.58804369 0.25 0.625 0.25 0.625 0.048470795 0.58804363 0.0551944 0.58804369 0.5
		 0.58804369 0.69480556 0.625 0.7015292 0.625 0.5 0.58804369 0.25 0.625 0.25 0.625
		 0.048470791 0.58804363 0.0551944 0.58804369 0.5 0.58804369 0.69480556 0.625 0.70152926
		 0.625 0.5 0.58804369 0.25 0.625 0.25 0.625 0.04847078 0.58804363 0.0551944 0.375
		 0 0.625 0 0.87499994 0.17999999 0.625 0.56999999 0.37499997 0.56999999 0.125 0 0.875
		 0.04847078 0.875 0.25 0.87499994 0.048470791 0.875 0.25 0.875 0.048470795 0.875 0.25
		 0.875 0.048470799 0.875 0.25 0.875 0.048470799 0.875 0.25 0.875 0.048470799 0.875
		 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0 0.62500006 0.048470799 0.58804363
		 0.0551944 0.58804369 0.25 0.625 0.25 0.875 0.048470799 0.875 0.25 0.58804369 0.5
		 0.625 0.5 0.58804369 0.69480556 0.62500006 0.7015292 0.625 0.245 0.875 0.245 0.625
		 0.505 0.125 0.24499999 0.37499997 0.505 0.37499997 0.24499999 0.625 0.2405 0.875
		 0.2405 0.625 0.50950003 0.125 0.24049999 0.37499997 0.50949997 0.37499997 0.24049999
		 0.625 0.2405 0.875 0.2405 0.875 0.245 0.625 0.245 0.37499997 0.505 0.625 0.505 0.625
		 0.50950003 0.37499997 0.50949997 0.125 0.24049999 0.37499997 0.24049999 0.37499997
		 0.24499999 0.125 0.24499999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[1]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[4]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".pt[36]" -type "float3" 5.9604645e-08 0 -5.9604645e-08 ;
	setAttr ".pt[76]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[77]" -type "float3" 5.9604645e-08 0 -5.9604645e-08 ;
	setAttr ".pt[78]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr -s 88 ".vt[0:87]"  17.42013931 19.25735664 -1.31253541 21.88057518 19.25735664 -1.31253541
		 21.88057518 24.04467392 -1.31253541 17.42013931 24.04467392 -1.31253541 17.42013931 19.25735664 -4.61269665
		 17.42013931 19.25735664 -4.42119551 17.42013931 22.56045532 -4.42119551 17.42013931 22.56045532 -4.19147539
		 17.42013931 19.25735664 -4.19147539 17.42013931 19.25735664 -3.97749043 17.42013931 22.56045532 -3.97749043
		 17.42013931 22.56045532 -3.74777079 17.42013931 19.25735664 -3.74777079 17.42013931 19.25735664 -3.53378534
		 17.42013931 22.56045532 -3.53378534 17.42013931 22.56045532 -3.3040657 17.42013931 19.25735664 -3.3040657
		 17.42013931 19.25735664 -3.090080261 17.42013931 22.56045532 -3.090080261 17.42013931 22.56045532 -2.86036062
		 17.42013931 19.25735664 -2.86036062 17.42013931 19.25735664 -2.64637518 17.42013931 22.56045532 -2.64637518
		 17.42013931 22.56045532 -2.41665554 17.42013931 19.25735664 -2.41665554 17.42013931 19.25735664 -2.20267034
		 17.42013931 22.56045532 -2.20267034 17.42013931 22.56045532 -1.97295058 17.42013931 19.25735664 -1.97295058
		 17.42013931 19.25735664 -1.75896525 17.42013931 22.56045532 -1.75896525 17.42013931 22.56045532 -1.52924538
		 17.42013931 19.25735664 -1.52924538 17.42013931 24.04467392 -4.61269665 18.58041573 18.36253548 -1.31253541
		 21.88057518 18.36253548 -1.31253541 21.88057518 19.25735664 -4.61269665 21.88057518 24.04467392 -4.61269665
		 18.58041573 18.36253548 -4.61269665 17.56796455 19.14335251 -1.52924538 17.56796455 19.14335251 -1.75896525
		 17.56796455 19.14335251 -1.97295058 17.56796455 19.14335251 -2.20267034 17.56796455 19.14335251 -2.41665554
		 17.56796455 19.14335251 -2.64637518 17.56796455 19.14335251 -2.86036062 17.56796455 19.14335251 -3.090080261
		 17.56796455 19.14335251 -3.3040657 17.56796455 19.14335251 -3.53378534 17.56796455 19.14335251 -3.74777079
		 17.56796455 19.14335251 -3.97749043 17.56796455 19.14335251 -4.19147539 17.56796455 19.14335251 -4.42119551
		 17.56796455 22.56045532 -3.97749043 17.56796455 22.56045532 -3.74777079 17.56796455 22.56045532 -3.53378534
		 17.56796455 22.56045532 -3.3040657 17.56796455 22.56045532 -3.090080261 17.56796455 22.56045532 -2.86036062
		 17.56796455 22.56045532 -2.64637518 17.56796455 22.56045532 -2.41665554 17.56796455 22.56045532 -2.20267034
		 17.56796455 22.56045532 -1.97295058 17.56796455 22.56045532 -1.75896525 17.56796455 22.56045532 -1.52924538
		 18.58041573 0.10808277 -1.31253541 21.88057518 0.10808277 -1.31253541 21.88057518 18.36253548 -4.61269665
		 18.58041573 0.10808277 -4.61269665 21.88057518 0.10808277 -4.61269665 17.56796455 22.56045532 -4.19147539
		 17.56796455 22.56045532 -4.42119551 21.88057518 23.30536461 -1.31253541 21.88057518 23.30536461 -4.61269665
		 17.42013931 23.30536461 -4.61269665 17.42013931 23.30536461 -1.31253529 21.88057518 23.13508224 -1.31253541
		 21.88057518 23.13508224 -4.61269665 17.42013931 23.13508224 -4.61269665 17.42013931 23.13508224 -1.31253529
		 21.77713203 23.13508224 -1.415977 21.77713203 23.13508224 -4.57667446 21.77713203 23.30536461 -4.57667446
		 21.77713203 23.30536461 -1.415977 17.4561615 23.30536461 -4.57667446 17.4561615 23.13508224 -4.57667446
		 17.4561615 23.13508224 -1.415977 17.4561615 23.30536461 -1.415977;
	setAttr -s 144 ".ed[0:143]"  0 1 1 1 76 0 2 3 0 3 75 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 0 0 3 33 0 33 74 0 34 35 1 35 1 0 0 34 0 1 36 1 36 77 0
		 37 2 0 37 33 0 36 4 1 38 34 1 32 39 0 39 40 0 40 29 0 28 41 0 41 42 0 42 25 0 24 43 0
		 43 44 0 44 21 0 20 45 0 45 46 0 46 17 0 16 47 0 47 48 0 48 13 0 12 49 0 49 50 0 50 9 0
		 8 51 0 51 52 0 52 5 0 4 38 0 50 53 0 53 10 0 53 54 0 54 11 0 54 49 0 48 55 0 55 14 0
		 55 56 0 56 15 0 56 47 0 46 57 0 57 18 0 57 58 0 58 19 0 58 45 0 44 59 0 59 22 0 59 60 0
		 60 23 0 60 43 0 42 61 0 61 26 0 61 62 0 62 27 0 62 41 0 40 63 0 63 30 0 63 64 0 64 31 0
		 64 39 0 65 66 0 66 35 0 34 65 0 35 67 1 67 36 0 67 38 1 68 65 0 38 68 0 68 69 0 69 66 0
		 69 67 0 7 70 0 70 51 0 70 71 0 71 52 0 6 71 0 72 2 0 73 37 0 72 73 0 73 74 0 74 75 0
		 75 72 0 78 4 0 79 0 0 76 77 0 77 78 0 78 79 0 79 76 0 76 80 1 77 81 1 80 81 0 73 82 1
		 81 82 0 72 83 1 83 82 0 80 83 0 74 84 1 82 84 0 78 85 1 81 85 0 84 85 0 79 86 1 85 86 0
		 75 87 1 87 86 0 84 87 0 86 80 0 87 83 0;
	setAttr -s 58 -ch 288 ".fc[0:57]" -type "polyFaces" 
		f 4 117 112 2 3
		mu 0 4 143 138 2 3
		f 4 116 -4 33 34
		mu 0 4 141 143 3 33
		f 4 35 36 -1 37
		mu 0 4 34 35 1 0
		f 4 114 113 40 -113
		mu 0 4 138 139 37 2
		f 4 -3 -41 41 -34
		mu 0 4 3 2 38 39
		f 4 -42 -114 115 -35
		mu 0 4 39 38 140 142
		f 32 43 -38 -33 44 45 46 -29 47 48 49 -25 50 51 52 -21 53 54 55 -17 56 57 58 -13 59
		 60 61 -9 62 63 64 -5 65
		mu 0 32 42 34 0 32 43 44 29 28 45 46 25 24 47 48 21 20 49 50 17 16 51 52 13 12 53 54 9
		 8 55 56 5 4
		f 4 -10 -62 66 67
		mu 0 4 57 58 59 60
		f 4 -11 -68 68 69
		mu 0 4 61 57 60 62
		f 4 -60 -12 -70 70
		mu 0 4 63 64 61 62
		f 4 -14 -59 71 72
		mu 0 4 65 66 67 68
		f 4 -15 -73 73 74
		mu 0 4 69 65 68 70
		f 4 -57 -16 -75 75
		mu 0 4 71 72 69 70
		f 4 -18 -56 76 77
		mu 0 4 73 74 75 76
		f 4 -19 -78 78 79
		mu 0 4 77 73 76 78
		f 4 -54 -20 -80 80
		mu 0 4 79 80 77 78
		f 4 -22 -53 81 82
		mu 0 4 81 82 83 84
		f 4 -23 -83 83 84
		mu 0 4 85 81 84 86
		f 4 -51 -24 -85 85
		mu 0 4 87 88 85 86
		f 4 -26 -50 86 87
		mu 0 4 89 90 91 92
		f 4 -27 -88 88 89
		mu 0 4 93 89 92 94
		f 4 -48 -28 -90 90
		mu 0 4 95 96 93 94
		f 4 -30 -47 91 92
		mu 0 4 97 98 99 100
		f 4 -31 -93 93 94
		mu 0 4 101 97 100 102
		f 4 -45 -32 -95 95
		mu 0 4 103 104 101 102
		f 4 96 97 -36 98
		mu 0 4 105 106 35 34
		f 4 99 100 -39 -37
		mu 0 4 35 107 36 1
		f 4 -43 -101 101 -66
		mu 0 4 41 40 108 109
		f 4 102 -99 -44 103
		mu 0 4 110 105 34 42
		f 4 -46 -96 -94 -92
		mu 0 4 111 103 102 112
		f 4 -49 -91 -89 -87
		mu 0 4 113 95 94 114
		f 4 -52 -86 -84 -82
		mu 0 4 115 87 86 116
		f 4 -55 -81 -79 -77
		mu 0 4 117 79 78 118
		f 4 -58 -76 -74 -72
		mu 0 4 119 71 70 120
		f 4 -61 -71 -69 -67
		mu 0 4 121 63 62 122
		f 4 104 105 -97 -103
		mu 0 4 123 124 125 126
		f 4 -106 106 -100 -98
		mu 0 4 106 127 107 35
		f 4 -102 -107 -105 -104
		mu 0 4 109 108 124 123
		f 4 -63 -8 107 108
		mu 0 4 128 129 130 131
		f 4 -64 -109 109 110
		mu 0 4 132 128 131 133
		f 4 -7 111 -110 -108
		mu 0 4 130 134 135 131
		f 4 -6 -65 -111 -112
		mu 0 4 134 136 137 135
		f 4 126 128 -131 -132
		mu 0 4 150 151 152 153
		f 4 -134 -129 135 -137
		mu 0 4 154 155 156 157
		f 4 138 -141 -142 136
		mu 0 4 158 159 160 161
		f 4 142 131 -144 140
		mu 0 4 159 150 153 160
		f 4 38 39 -121 -2
		mu 0 4 1 36 145 144
		f 4 -122 -40 42 -119
		mu 0 4 148 146 40 41
		f 32 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32
		 -120 -123 118
		mu 0 32 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32
		 0 149 147
		f 4 0 1 -124 119
		mu 0 4 0 1 144 149
		f 4 120 125 -127 -125
		mu 0 4 144 145 151 150
		f 4 -115 129 130 -128
		mu 0 4 139 138 153 152
		f 4 -116 127 133 -133
		mu 0 4 142 140 155 154
		f 4 121 134 -136 -126
		mu 0 4 146 148 157 156
		f 4 122 137 -139 -135
		mu 0 4 147 149 159 158
		f 4 -117 132 141 -140
		mu 0 4 143 141 161 160
		f 4 123 124 -143 -138
		mu 0 4 149 144 150 159
		f 4 -118 139 143 -130
		mu 0 4 138 143 160 153;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface76";
	rename -uid "39AA4CFF-624C-CF80-0F19-7F9ACB8FE366";
createNode transform -n "polySurface82" -p "polySurface76";
	rename -uid "2FAD09F9-E744-735D-92D2-BD89F9958BB0";
createNode transform -n "transform17" -p "polySurface82";
	rename -uid "C0607EAE-E347-022C-245E-2E84CAC36EAF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape81" -p "transform17";
	rename -uid "F7A36B04-BA4F-193C-E619-3583B494ECC9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -9.18846989 4.30597734 6.36073446 -7.16438818 4.30597734 6.36073446
		 -9.18846989 6.33005905 6.36073446 -7.16438818 6.33005905 6.36073446 -9.18846989 6.33005905 5.64115381
		 -7.16438818 6.33005905 5.64115381 -9.18846989 4.30597734 5.64115381 -7.16438818 4.30597734 5.64115381;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface85" -p "polySurface76";
	rename -uid "5CAD81F1-2840-64E4-1B9E-B5A95F9B8EC4";
createNode transform -n "transform16" -p "polySurface85";
	rename -uid "B471F71B-7043-4FE6-C577-478DDA6DF676";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape84" -p "transform16";
	rename -uid "3DD48E95-6B4F-854B-2D93-5AA0BF42AFE0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -10.14249611 2.82707667 7.46231222 -8.11841488 2.82707667 7.46231222
		 -10.14249611 4.85115862 7.46231222 -8.11841488 4.85115862 7.46231222 -10.14249611 4.85115862 5.43823051
		 -8.11841488 4.85115862 5.43823051 -10.14249611 2.82707667 5.43823051 -8.11841488 2.82707667 5.43823051;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface86" -p "polySurface76";
	rename -uid "BC58AA87-D24D-6328-F3DD-4BAC0C3BDFFD";
createNode transform -n "transform15" -p "polySurface86";
	rename -uid "A8DD3EB6-894F-8391-3808-F2A18279DACE";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape85" -p "transform15";
	rename -uid "3EAEF7DE-8343-D56C-DE30-CEAC0BEB5932";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -10.8253479 2.36509681 7.46231222 -8.80126572 2.36509681 7.46231222
		 -10.8253479 4.38917875 7.46231222 -8.80126572 4.38917875 7.46231222 -10.8253479 4.38917875 5.43823051
		 -8.80126572 4.38917875 5.43823051 -10.8253479 2.36509681 5.43823051 -8.80126572 2.36509681 5.43823051;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface87" -p "polySurface76";
	rename -uid "1980618B-5E4E-FCD0-7E79-C48727C4097E";
createNode transform -n "transform14" -p "polySurface87";
	rename -uid "F9485117-684A-E10E-5C3D-05B3667A80B7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape86" -p "transform14";
	rename -uid "C39C971E-8A4C-0A7A-5E0C-8097D3B0A3F0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -11.55028725 1.56244576 6.36073446 -9.52620602 1.56244576 6.36073446
		 -11.55028725 3.58652735 6.36073446 -9.52620602 3.58652735 6.36073446 -11.55028725 3.58652735 5.64115381
		 -9.52620602 3.58652735 5.64115381 -11.55028725 1.56244576 5.64115381 -9.52620602 1.56244576 5.64115381;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface88" -p "polySurface76";
	rename -uid "7F47D3D1-A948-9C87-936A-2B814BE7A7C5";
createNode transform -n "transform13" -p "polySurface88";
	rename -uid "AAB1E73A-D442-2871-4BD9-7FA9D59F11B6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape87" -p "transform13";
	rename -uid "77C0897F-224B-1EB8-CC30-1081E836DF34";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -11.89829445 0.80860066 7.46231222 -9.87421227 0.80860066 7.46231222
		 -11.89829445 2.83268237 7.46231222 -9.87421227 2.83268237 7.46231222 -11.89829445 2.83268237 5.43823051
		 -9.87421227 2.83268237 5.43823051 -11.89829445 0.80860066 5.43823051 -9.87421227 0.80860066 5.43823051;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface83";
	rename -uid "B1C315AE-3E4B-E66E-B117-F0A90B017E3B";
	setAttr ".rp" -type "double3" -8.2355151176452637 5.0452538728713989 6.4502713680267334 ;
	setAttr ".sp" -type "double3" -8.2355151176452637 5.0452538728713989 6.4502713680267334 ;
createNode transform -n "transform12" -p "polySurface83";
	rename -uid "FBA99265-E44D-2FC3-1DF8-97AF88860A07";
	setAttr ".v" no;
createNode mesh -n "polySurface83Shape" -p "transform12";
	rename -uid "7909FE2C-4947-B3F0-C8A8-4F976454C1E4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.125 0 0.125 0.25 0.62499994 0.25814712 0.43201414 0.25814715 0.43201411
		 0.38380614 0.625 0.38380614 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -9.47835827 3.88650155 7.46231222 -7.45427608 3.88650155 7.46231222
		 -7.45427608 5.91058302 7.46231222 -9.47835827 5.91058302 7.46231222 -9.47835827 3.88650155 5.43823051
		 -9.47835827 5.91058302 5.43823051 -7.45427608 5.91058302 7.39635038 -9.016753197 5.91058302 7.39635038
		 -9.016753197 5.91058302 6.37897396 -7.45427608 5.91058302 6.37897396 -7.45427608 5.91058302 5.43823051
		 -7.45427608 3.88650155 5.43823051;
	setAttr -s 15 ".ed[0:14]"  0 1 0 1 2 0 2 3 0 3 0 0 4 0 0 3 5 0 5 4 0
		 2 6 0 6 7 0 7 8 0 8 9 0 9 10 0 10 5 0 10 11 0 11 4 0;
	setAttr -s 4 -ch 20 ".fc[0:3]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -4 5 6
		mu 0 4 4 0 3 5
		f 8 -3 7 8 9 10 11 12 -6
		mu 0 8 3 2 6 7 8 9 10 11
		f 4 -13 13 14 -7
		mu 0 4 11 10 12 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group39";
	rename -uid "C8EE850B-B34C-8490-1B3F-33ACBAC53700";
	setAttr ".t" -type "double3" 5.8723130465732654 0 -3.7852350991665302 ;
	setAttr ".rp" -type "double3" -6.1725540161132812 3.2020721435546875 2.1746945381164551 ;
	setAttr ".sp" -type "double3" -6.1725540161132812 3.2020721435546875 2.1746945381164551 ;
createNode transform -n "group40";
	rename -uid "062FBE28-9B42-728C-AEB4-A990B2399E4D";
	setAttr ".t" -type "double3" 8.3506930315769701 0 3.5612605686810692 ;
	setAttr ".rp" -type "double3" 2.1437197354638622 3.2020721435546875 -9.2752448306673738 ;
	setAttr ".sp" -type "double3" 2.1437197354638622 3.2020721435546875 -9.2752448306673738 ;
createNode transform -n "pasted__group39" -p "group40";
	rename -uid "87880DD3-C54F-3048-EA67-89AB72165064";
	setAttr ".t" -type "double3" 5.8723130465732654 0 -3.7852350991665302 ;
	setAttr ".rp" -type "double3" -6.1725540161132812 3.2020721435546875 2.1746945381164551 ;
	setAttr ".sp" -type "double3" -6.1725540161132812 3.2020721435546875 2.1746945381164551 ;
createNode transform -n "pasted__pasted__polySurface64" -p "|group40|pasted__group39";
	rename -uid "DC9A5569-FD44-21BB-C715-44B962C64166";
	setAttr ".t" -type "double3" 11.116302418365148 0 52.043291842847765 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
	setAttr ".sp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
createNode transform -n "transform11" -p "|group40|pasted__group39|pasted__pasted__polySurface64";
	rename -uid "D9A0A136-534A-0AE4-3E64-6B85162022FD";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__polySurface64Shape" -p "transform11";
	rename -uid "55874176-874B-673C-1049-58B471C87100";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:46]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 140 ".uvst[0].uvsp[0:139]" -type "float2" 0.46365505 0.25 0.375
		 0.25 0.375 0.21929631 0.43608916 0.21929631 0.46365505 0.5 0.375 0.5 0.125 0.25 0.125
		 0.21929631 0.43608916 0.53070372 0.375 0.53070366 0.375 0 0.5 0 0.5 0.125 0.37500811
		 0.12499324 0.125 0 0.1250125 0.12497501 0.375 0.75 0.5 0.75 0.5 1 0.375 1 0.625 0
		 0.625 0.125 0.5 0.25 0.37501875 0.62500626 0.5 0.625 0.5 0.5 0.375025 0.49998751
		 0.4218027 0.48159754 0.44282216 0.48159921 0.44431412 0.48159933 0.45708144 0.48160022
		 0.46326563 0.48160064 0.48635957 0.48160255 0.48635915 0.45989317 0.49322951 0.45989326
		 0.49322882 0.38290954 0.48635763 0.3829101 0.4863576 0.38095883 0.49752709 0.38095778
		 0.49752682 0.27211386 0.37497514 0.25003746 0.48635554 0.27211672 0.48635539 0.26506001
		 0.46325302 0.26506662 0.45706677 0.2650682 0.44429493 0.26507181 0.44280243 0.26507223
		 0.42177546 0.26507816 0.4217903 0.38291565 0.40128309 0.38291746 0.40126449 0.2650837
		 0.38873664 0.26508734 0.38877538 0.48159522 0.625 0.75 0.625 1 0.875 0 0.875 0.125
		 0.625 0.25 0.625 0.625 0.625 0.5 0.42179996 0.45989046 0.40129861 0.48159623 0.40129519
		 0.4598898 0.45934114 0.50666803 0.375 0.6006099 0.375 0.5 0.45934114 0.5 0.46532774
		 0.5 0.375 0.5 0.43221554 0.5 0.38098657 0.55706042 0.375 0.55706042 0.375 0.60321379
		 0.375 0.5 0.46766552 0.5 0.375 0.25 0.46766552 0.25 0.46766552 0.258147 0.43201411
		 0.258147 0.43201411 0.38380605 0.46766549 0.38380605 0.46766546 0.38605884 0.40657645
		 0.38605881 0.40657645 0.47493631 0.46766552 0.47493631 0.375 0.5 0.45546162 0.5 0.41065145
		 0.5499109 0.375 0.54991084 0.375 0.25 0.45546162 0.25 0.375 0.20008913 0.41065148
		 0.20008913 0.375 0.14678623 0.125 0.25 0.125 0.14678623 0.375 0.25 0.43221554 0.25
		 0.375 0.19293958 0.38098657 0.19293958 0.45934114 0.24333195 0.46532774 0.25 0.45934114
		 0.25 0.375 0.25 0.375 0.14939015 0.125 0.25 0.125 0.14939015 0.15006369 0.14939013
		 0.15006369 0.15086228 0.23894116 0.15086229 0.23894116 0.14939015 0.46453902 0.25
		 0.375 0.25 0.375 0.1568905 0.38226685 0.1568905 0.46453902 0.24852785 0.42525017
		 0.5 0.375 0.5 0.375 0.25 0.42525017 0.25 0.42525017 0.38605884 0.41798335 0.38605884
		 0.41798329 0.47493631 0.42525017 0.47493631 0.37499997 0.19402978 0.125 0.25 0.125
		 0.19402978 0.875 0.25 0.375 0.5 0.46453902 0.5 0.46453899 0.50147212 0.38226685 0.59310949
		 0.375 0.59310949 0.37499997 0.55597019 0.125 0.25 0.125 0.19293958 0.125 0.25 0.125
		 0.20008913 0.125 0.25 0.125 0.1568905;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 68 ".pt[0:67]" -type "float3"  -1.1094035 3.6420555 -3.8556092 
		-1.5124919 3.6420555 -3.8556073 -1.5124919 3.5024564 -3.8556073 -1.2347332 3.5024564 
		-3.8556073 -1.1094035 3.6420555 -4.2597122 -1.5124919 3.6420555 -4.2597122 -1.5124919 
		3.5024564 -4.2597122 -1.2347363 3.5024564 -4.2597122 -3.2659674 -0.02081175 -3.1579537 
		-0.98588973 -0.02081175 -3.1579518 -0.98588973 1.2400022 -3.1579518 -3.2659674 1.2400022 
		-3.1579537 -3.2659674 -0.02081175 -4.4702392 -3.2659674 1.2400022 -4.4702392 -0.98588973 
		-0.02081175 -4.4702382 -0.85271013 -0.02081175 -3.1579545 -0.85271013 1.2400022 -3.1579545 
		-0.98588973 3.7796292 -3.1579518 -0.98588973 1.2400022 -4.4702382 -0.98588973 3.7796292 
		-4.4702382 -2.4125063 2.1906192 -4.3736615 -2.0290277 2.6177468 -4.3736615 -2.0018084 
		2.6480656 -4.3736615 -1.7688826 2.9075034 -4.3736615 -1.6560605 3.0331681 -4.3736725 
		-1.2347363 3.5024564 -4.3736725 -1.2347332 3.5024564 -3.8453686 -1.0309964 3.7293873 
		-3.8453689 -1.0309964 3.7293873 -3.2740245 -1.2347363 3.5024564 -3.2740245 -1.2347363 
		3.5024564 -3.2369843 -1.6560605 3.0331681 -3.2369843 -1.7688857 2.9075034 -3.2369843 
		-2.0018084 2.6480656 -3.2369843 -2.0290277 2.6177468 -3.2369843 -2.4125063 2.1906192 
		-3.2369843 -2.4125063 2.1906192 -3.8556073 -2.7865729 1.7739694 -3.8556092 -2.7865729 
		1.7739694 -3.2369862 -3.0150461 1.5194876 -3.2369862 -3.0150461 1.5194876 -4.3736725 
		-0.85271013 -0.02081175 -4.4702277 -0.85271013 1.2400022 -4.4702277 -0.85271013 3.7796292 
		-3.1579545 -0.85271013 3.7796292 -4.4702277 -2.4125063 2.1906192 -4.2597103 -2.7865729 
		1.7739694 -4.3736725 -2.7865729 1.7739694 -4.2597122 -2.4125063 2.6480656 -4.3736615 
		-2.0290277 2.6480656 -4.3736615 -2.0290277 2.9075034 -4.3736615 -1.6560605 3.5024564 
		-4.3736725 -1.6560605 3.5024564 -3.2369843 -1.3968349 3.5024564 -3.2740245 -1.3968315 
		3.5024564 -3.8453686 -1.3968315 3.7293873 -3.8453686 -1.3968349 3.7293873 -3.2740245 
		-2.0290277 2.9075034 -3.2369843 -2.0290277 2.6480656 -3.2369843 -2.4125063 2.6480656 
		-3.2369843 -2.4125063 2.1973124 -4.2597103 -2.4125063 2.1973124 -3.8556073 -2.8196115 
		2.1973124 -3.8556092 -2.8196115 1.7739694 -3.8556092 -3.0150461 1.7739694 -4.3736725 
		-3.0150461 1.7739694 -3.2369862 -2.8196115 1.7739694 -4.2597122 -2.8196115 2.1973124 
		-4.2597122;
	setAttr -s 68 ".vt[0:67]"  34.16409302 6.15917015 2.43515444 33.44631577 6.15917015 2.43515444
		 33.44631577 5.91058302 2.43515444 33.94091415 5.91058302 2.43515444 34.16409302 6.15917015 1.71557355
		 33.44631577 6.15917015 1.71557355 33.44631577 5.91058302 1.71557355 33.94091415 5.91058302 1.71557355
		 30.32390976 0.12354232 3.67746544 34.3840332 0.12354232 3.67746544 34.3840332 1.88185239 3.67746544
		 30.32390976 1.88185215 3.67746544 30.32390976 0.12354232 1.34069324 30.32390976 1.88185215 1.34069324
		 34.3840332 0.12354232 1.34069324 38.40893936 0.12354232 3.67746544 38.40893936 1.88185215 3.67746544
		 34.3840332 6.40414429 3.67746544 34.3840332 1.88185239 1.34069324 34.3840332 6.40414429 1.34069324
		 31.84366989 3.57460833 1.51264977 32.52652359 4.3351922 1.51264977 32.57499313 4.38917875 1.51264977
		 32.98975754 4.85115862 1.51264977 33.19066238 5.074930668 1.51264977 33.94091415 5.91058302 1.51264977
		 33.94091415 5.91058302 2.4533937 34.30371094 6.31467772 2.4533937 34.30371094 6.31467772 3.47077012
		 33.94091415 5.91058302 3.47077012 33.94091415 5.91058302 3.536731 33.19066238 5.074930668 3.536731
		 32.98975754 4.85115862 3.536731 32.57499313 4.38917875 3.536731 32.52652359 4.3351922 3.536731
		 31.84366989 3.57460833 3.536731 31.84366989 3.57460833 2.43515444 31.17756653 2.83268237 2.43515444
		 31.17756653 2.83268237 3.536731 30.77072525 2.37952924 3.536731 30.77072525 2.37952924 1.51264977
		 38.40893936 0.12354232 1.34069324 38.40893936 1.88185215 1.34069324 38.40893936 6.40414429 3.67746544
		 38.40893936 6.40414429 1.34069324 31.84366989 3.57460833 1.71557355 31.17756653 2.83268237 1.51264977
		 31.17756653 2.83268237 1.71557355 31.84366989 4.38917875 1.51264977 32.52652359 4.38917875 1.51264977
		 32.52652359 4.85115862 1.51264977 33.19066238 5.91058302 1.51264977 33.19066238 5.91058302 3.536731
		 33.65226746 5.91058302 3.47077012 33.65226746 5.91058302 2.4533937 33.65226746 6.31467772 2.4533937
		 33.65226746 6.31467772 3.47077012 32.52652359 4.85115862 3.536731 32.52652359 4.38917875 3.536731
		 31.84366989 4.38917875 3.536731 31.84366989 3.58652735 1.71557355 31.84366989 3.58652735 2.43515444
		 31.11873245 3.58652735 2.43515444 31.11873245 2.83268237 2.43515444 30.77072525 2.83268237 1.51264977
		 30.77072525 2.83268237 3.536731 31.11873245 2.83268237 1.71557355 31.11873245 3.58652735 1.71557355;
	setAttr -s 113 ".ed[0:112]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 4 7 0 7 6 0 8 9 0 9 10 1 10 11 1 11 8 0 12 8 0 11 13 0 13 12 0 12 14 0
		 14 9 1 9 15 0 15 16 0 16 10 1 10 17 1 17 11 0 13 18 1 18 14 1 17 19 1 19 13 0 13 20 1
		 20 21 0 21 22 0 22 23 0 23 24 1 24 25 0 25 7 0 3 26 0 26 27 0 27 28 0 28 17 1 28 29 0
		 29 30 0 30 31 0 31 24 0 23 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0
		 39 40 0 40 13 1 14 41 0 41 15 0 41 42 0 42 16 1 16 43 0 43 17 0 19 18 1 18 42 1 43 44 0
		 44 19 0 45 20 0 40 46 0 46 47 0 47 45 0 20 48 0 48 49 0 49 21 1 49 22 1 50 23 0 49 50 0
		 24 51 0 51 25 0 51 52 0 52 30 0 29 53 0 53 54 0 54 26 0 55 27 0 54 55 0 55 56 0 56 28 0
		 56 53 0 52 31 0 50 57 0 57 32 0 57 58 0 58 33 1 58 34 1 58 59 0 59 35 0 59 48 0 45 60 0
		 60 61 0 61 36 0 61 62 0 62 63 0 63 37 0 46 64 0 64 65 0 65 38 0 63 66 0 66 47 0 65 39 0
		 64 40 0 42 44 0 67 60 0 66 67 0 58 49 0 67 62 0;
	setAttr -s 47 -ch 226 ".fc[0:46]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 1 0
		f 4 -2 -6 7 8
		mu 0 4 2 1 6 7
		f 4 -5 9 10 -8
		mu 0 4 5 4 8 9
		f 4 11 12 13 14
		mu 0 4 10 11 12 13
		f 4 15 -15 16 17
		mu 0 4 14 10 13 15
		f 4 18 19 -12 -16
		mu 0 4 16 17 18 19
		f 4 20 21 22 -13
		mu 0 4 11 20 21 12
		f 3 -14 23 24
		mu 0 3 13 12 22
		f 4 25 26 -19 -18
		mu 0 4 23 24 17 16
		f 16 27 28 29 30 31 32 33 34 35 -10 -7 -4 36 37 38 39
		mu 0 16 22 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		f 18 -25 -40 40 41 42 43 -34 44 45 46 47 48 49 50 51 52 53 -17
		mu 0 18 40 22 39 41 42 43 31 30 44 45 46 47 48 49 50 51 52 26
		f 4 54 55 -21 -20
		mu 0 4 17 53 54 18
		f 4 -56 56 57 -22
		mu 0 4 20 55 56 21
		f 4 -23 58 59 -24
		mu 0 4 12 21 57 22
		f 3 -29 60 -26
		mu 0 3 23 25 24
		f 4 61 -57 -55 -27
		mu 0 4 24 58 53 17
		f 4 -60 62 63 -28
		mu 0 4 22 57 59 25
		f 6 64 -30 -54 65 66 67
		mu 0 6 60 27 26 52 61 62
		f 4 -31 68 69 70
		mu 0 4 63 64 65 66
		f 3 71 -32 -71
		mu 0 3 66 67 63
		f 4 72 -33 -72 73
		mu 0 4 68 69 70 71
		f 3 74 75 -35
		mu 0 3 72 73 74
		f 12 -76 76 77 -42 78 79 80 -37 -3 -9 -11 -36
		mu 0 12 74 73 75 76 77 78 79 80 81 82 83 84
		f 4 81 -38 -81 82
		mu 0 4 85 86 87 88
		f 4 -82 83 84 -39
		mu 0 4 86 85 89 90
		f 4 -85 85 -79 -41
		mu 0 4 90 89 91 92
		f 3 -78 86 -43
		mu 0 3 76 75 93
		f 4 -87 -77 -75 -44
		mu 0 4 93 75 94 95
		f 4 -73 87 88 -45
		mu 0 4 69 68 96 97
		f 4 89 90 -46 -89
		mu 0 4 96 98 99 97
		f 3 -47 -91 91
		mu 0 3 100 101 102
		f 4 92 93 -48 -92
		mu 0 4 102 103 104 100
		f 8 -94 94 -69 -65 95 96 97 -49
		mu 0 8 104 103 105 106 107 108 109 110
		f 5 98 99 100 -50 -98
		mu 0 5 111 112 113 114 115
		f 8 101 102 103 -51 -101 104 105 -67
		mu 0 8 116 117 118 119 120 121 122 123
		f 3 -104 106 -52
		mu 0 3 119 118 124
		f 4 -107 -103 107 -53
		mu 0 4 124 118 125 126
		f 4 -58 108 -63 -59
		mu 0 4 21 56 127 57
		f 4 -64 -109 -62 -61
		mu 0 4 25 59 58 24
		f 5 109 -96 -68 -106 110
		mu 0 5 128 129 130 131 132
		f 3 -108 -102 -66
		mu 0 3 133 117 116
		f 4 -70 -95 -93 111
		mu 0 4 66 65 103 102
		f 4 -90 -88 -74 -112
		mu 0 4 98 96 134 135
		f 4 -86 -84 -83 -80
		mu 0 4 91 89 136 137
		f 4 -110 112 -99 -97
		mu 0 4 129 128 112 111
		f 4 -100 -113 -111 -105
		mu 0 4 113 112 138 139;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group41";
	rename -uid "FA781D35-E341-7DF1-C14D-B9A296A2FBF9";
	setAttr ".t" -type "double3" 58.35866078316112 0 -16.274964375761762 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -51.305275289928709 5.5476620607078075 10.610128998756409 ;
	setAttr ".sp" -type "double3" -51.305275289928709 5.5476620607078075 10.610128998756409 ;
createNode transform -n "pasted__group29" -p "group41";
	rename -uid "16948362-9443-E823-155F-8390CDB84CD6";
	setAttr ".t" -type "double3" -42.487692633579911 0 0 ;
	setAttr ".rp" -type "double3" 1.8871113806962967 5.5476620607078075 10.610128998756409 ;
	setAttr ".sp" -type "double3" 1.8871113806962967 5.5476620607078075 10.610128998756409 ;
createNode transform -n "group42";
	rename -uid "53DDFD47-F84F-7132-C357-EB8B927E193D";
	setAttr ".t" -type "double3" -19.408862744601763 -10.440401960950155 -10.667541127705123 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 8.6185799550628346 11.997614964509314 3.9030865012299603 ;
	setAttr ".sp" -type "double3" 8.6185799550628346 11.997614964509314 3.9030865012299603 ;
createNode transform -n "pasted__group18" -p "group42";
	rename -uid "31D37A6F-0B45-0EC1-80E3-139BEFCE1F73";
	setAttr ".t" -type "double3" 33.799735735087125 10.385109201326998 1.6914632037604322 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 1.1263750015583562 2.6237863853237666 2.5389306996630618 ;
	setAttr ".rp" -type "double3" -24.707301736746707 1.6125057631823148 3.105943410745021 ;
	setAttr ".sp" -type "double3" -24.707301736746707 1.6125057631823148 3.105943410745021 ;
createNode transform -n "pasted__pasted__group2" -p "pasted__group18";
	rename -uid "299EF5AA-2840-BFA7-ED48-F19034EDEDF9";
	setAttr ".t" -type "double3" 0 0 3.7918080435463488 ;
	setAttr ".s" -type "double3" 0.5781724910513748 0.5781724910513748 0.5781724910513748 ;
	setAttr ".rp" -type "double3" -5.4055624279965748 2.7408294071325305 0 ;
	setAttr ".sp" -type "double3" -5.4055624279965748 2.7408294071325305 0 ;
createNode transform -n "group18_pasted__group2_pasted__pasted__pCube2";
	rename -uid "D498F1DB-4340-6682-0390-F9AFEA293899";
createNode transform -n "transform10" -p "group18_pasted__group2_pasted__pasted__pCube2";
	rename -uid "D74E7038-654E-10EB-E719-739761F88B43";
	setAttr ".v" no;
createNode mesh -n "group18_pasted__group2_pasted__pasted__pCube2Shape" -p "transform10";
	rename -uid "D04A9FD7-0F48-B363-27CB-BD973AB4E256";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:26]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0 0.5 0 0.625
		 0 0.37500811 0.12499324 0.5 0.125 0.625 0.125 0.37497514 0.25003746 0.5 0.25 0.625
		 0.25 0.375025 0.49998751 0.5 0.5 0.625 0.5 0.37501875 0.62500626 0.5 0.625 0.625
		 0.625 0.375 0.75 0.5 0.75 0.625 0.75 0.375 1 0.5 1 0.625 1 0.875 0 0.875 0.125 0.875
		 0.25 0.125 0 0.1250125 0.12497501 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5
		 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75
		 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -7.7593598 0 ;
	setAttr ".pt[1]" -type "float3" 0 -7.7593598 0 ;
	setAttr ".pt[2]" -type "float3" 0 -7.7593598 0 ;
	setAttr ".pt[13]" -type "float3" 0 -7.7593598 0 ;
	setAttr ".pt[14]" -type "float3" 0 -7.7593598 0 ;
	setAttr ".pt[15]" -type "float3" 0 -7.7593598 0 ;
	setAttr ".pt[18]" -type "float3" 0 2.6788259 0 ;
	setAttr ".pt[19]" -type "float3" 0 2.6788259 0 ;
	setAttr ".pt[20]" -type "float3" 0 2.6788259 0 ;
	setAttr ".pt[21]" -type "float3" 0 2.6788259 0 ;
	setAttr ".pt[26]" -type "float3" 0 2.6788259 0 ;
	setAttr ".pt[27]" -type "float3" 0 2.6788259 0 ;
	setAttr ".pt[28]" -type "float3" 0 2.6788259 0 ;
	setAttr ".pt[29]" -type "float3" 0 2.6788259 0 ;
	setAttr -s 32 ".vt[0:31]"  10.68894672 7.92689037 7.047012329 10.68894672 7.92689037 4.78760719
		 10.68894672 7.92689037 0.75916052 10.68894672 10.20616055 7.047012329 10.68894672 10.20616055 4.78760719
		 10.68894672 10.20616055 0.75916052 10.68894672 16.068340302 4.78760719 10.68894672 16.068340302 0.75916052
		 6.54821301 10.20616055 7.047012329 6.54821301 16.068340302 4.78760719 6.54821301 16.068340302 0.75916052
		 6.54821301 10.20616055 4.78760719 6.54821301 10.20616055 0.75916052 6.54821301 7.92689037 7.047012329
		 6.54821301 7.92689037 4.78760719 6.54821301 7.92689037 0.75916052 7.091255665 9.56350708 7.94525576
		 8.43904591 9.56350708 7.94525576 7.091255665 16.13048744 7.94525576 8.43904591 16.13048744 7.94525576
		 7.091255665 16.13048744 5.16806459 8.43904591 16.13048744 5.16806459 7.091255665 9.56350708 5.16806459
		 8.43904591 9.56350708 5.16806459 8.84562397 9.56350708 7.94525576 10.19341373 9.56350708 7.94525576
		 8.84562397 16.13048744 7.94525576 10.19341373 16.13048744 7.94525576 8.84562397 16.13048744 5.16806459
		 10.19341373 16.13048744 5.16806459 8.84562397 9.56350708 5.16806459 10.19341373 9.56350708 5.16806459;
	setAttr -s 53 ".ed[0:52]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 8 9 0 9 10 0
		 8 11 1 11 12 1 13 14 0 14 15 0 0 3 0 1 4 1 2 5 0 4 6 1 5 7 0 6 9 1 7 10 0 9 11 1
		 10 12 0 8 13 0 11 14 1 12 15 0 13 0 0 14 1 1 15 2 0 12 5 1 8 3 0 6 3 0 16 17 0 18 19 0
		 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0
		 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0;
	setAttr -s 27 -ch 106 ".fc[0:26]" -type "polyFaces" 
		f 4 0 12 -3 -12
		mu 0 4 0 1 4 3
		f 4 1 13 -4 -13
		mu 0 4 1 2 5 4
		f 3 2 14 28
		mu 0 3 3 4 7
		f 4 3 15 -5 -15
		mu 0 4 4 5 8 7
		f 4 -29 16 -6 27
		mu 0 4 6 7 10 9
		f 4 4 17 -7 -17
		mu 0 4 7 8 11 10
		f 3 5 18 -8
		mu 0 3 12 10 13
		f 4 6 19 -9 -19
		mu 0 4 10 11 14 13
		f 4 7 21 -10 -21
		mu 0 4 12 13 16 15
		f 4 8 22 -11 -22
		mu 0 4 13 14 17 16
		f 4 9 24 -1 -24
		mu 0 4 15 16 19 18
		f 4 10 25 -2 -25
		mu 0 4 16 17 20 19
		f 4 -26 -23 26 -14
		mu 0 4 2 21 22 5
		f 4 -27 -20 -18 -16
		mu 0 4 5 22 23 8
		f 4 23 11 -28 20
		mu 0 4 24 0 3 25
		f 4 29 34 -31 -34
		mu 0 4 26 27 28 29
		f 4 30 36 -32 -36
		mu 0 4 29 28 30 31
		f 4 31 38 -33 -38
		mu 0 4 31 30 32 33
		f 4 32 40 -30 -40
		mu 0 4 33 32 34 35
		f 4 -41 -39 -37 -35
		mu 0 4 27 36 37 28
		f 4 39 33 35 37
		mu 0 4 38 26 29 39
		f 4 41 46 -43 -46
		mu 0 4 40 41 42 43
		f 4 42 48 -44 -48
		mu 0 4 43 42 44 45
		f 4 43 50 -45 -50
		mu 0 4 45 44 46 47
		f 4 44 52 -42 -52
		mu 0 4 47 46 48 49
		f 4 -53 -51 -49 -47
		mu 0 4 41 50 51 42
		f 4 51 45 47 49
		mu 0 4 52 40 43 53;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group45";
	rename -uid "AE99CC9E-624B-77EE-D925-2EBE51BC7C5C";
	setAttr ".t" -type "double3" 0 1.1188972692969692 6.0353689575020848 ;
	setAttr ".r" -type "double3" 0 270 0 ;
	setAttr ".s" -type "double3" 1.7501601270438512 1.7501601270438512 1.7501601270438512 ;
	setAttr ".rp" -type "double3" -0.30096681977083151 3.2638433016836643 -11.721664923411378 ;
	setAttr ".sp" -type "double3" -0.30096681977083151 3.2638433016836643 -11.721664923411378 ;
createNode transform -n "pasted__group39" -p "group45";
	rename -uid "B670919C-8A4D-D46C-30B9-68BB5672F14E";
	setAttr ".t" -type "double3" 5.87 0 -3.7852350991665302 ;
	setAttr ".rp" -type "double3" -6.1725540161132812 3.2020721435546875 2.1746945381164551 ;
	setAttr ".sp" -type "double3" -6.1725540161132812 3.2020721435546875 2.1746945381164551 ;
createNode transform -n "pasted__pasted__polySurface64" -p "|group45|pasted__group39";
	rename -uid "C29F4B58-9842-9B1B-CB13-0DB2B6F7B419";
	setAttr ".t" -type "double3" -9.2785295096699159 0.62683058574807105 -29.180120314967496 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
	setAttr ".sp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
createNode transform -n "transform9" -p "|group45|pasted__group39|pasted__pasted__polySurface64";
	rename -uid "D28BF0FB-FF41-B32F-6C12-67B8A4455A82";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__polySurface64Shape" -p "transform9";
	rename -uid "5B83DFEF-B148-BD52-6253-EF83E92403F2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:46]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 140 ".uvst[0].uvsp[0:139]" -type "float2" 0.46365514 0.25 0.375
		 0.25 0.375 0.21929631 0.43608934 0.21929631 0.46365514 0.5 0.375 0.5 0.125 0.25 0.125
		 0.21929631 0.43608934 0.53070366 0.375 0.53070366 0.375 0 0.5 0 0.5 0.125 0.37500811
		 0.12499324 0.125 0 0.1250125 0.12497501 0.375 0.75 0.5 0.75 0.5 1 0.375 1 0.625 0
		 0.625 0.125 0.5 0.25 0.37501875 0.62500626 0.5 0.625 0.5 0.5 0.375025 0.49998751
		 0.4218027 0.48159751 0.44282207 0.48159915 0.44431406 0.48159927 0.45708144 0.48160017
		 0.46326557 0.48160058 0.4863596 0.48160249 0.48635918 0.45989308 0.49322951 0.4598932
		 0.49322876 0.38290951 0.48635766 0.38291007 0.48635763 0.38095883 0.49752706 0.38095784
		 0.49752682 0.27211386 0.37497514 0.25003746 0.48635554 0.27211672 0.48635542 0.26506001
		 0.46325293 0.26506662 0.45706686 0.26506823 0.44429496 0.26507184 0.4428024 0.26507226
		 0.42177546 0.26507816 0.4217903 0.38291568 0.40128309 0.38291749 0.40126449 0.26508373
		 0.38873655 0.26508737 0.38877532 0.48159516 0.625 0.75 0.625 1 0.875 0 0.875 0.125
		 0.625 0.25 0.625 0.625 0.625 0.5 0.42179996 0.45989043 0.40129864 0.48159623 0.40129521
		 0.4598898 0.45934087 0.50666821 0.375 0.60060978 0.375 0.5 0.4593409 0.5 0.46532762
		 0.5 0.375 0.5 0.43221569 0.5 0.38098675 0.55706042 0.375 0.55706042 0.375 0.60321414
		 0.375 0.5 0.46766576 0.5 0.375 0.25 0.46766576 0.25 0.46766576 0.258147 0.43201411
		 0.258147 0.43201411 0.38380611 0.46766573 0.38380611 0.46766573 0.38605887 0.40657645
		 0.38605887 0.40657645 0.47493631 0.46766573 0.47493631 0.375 0.5 0.45546171 0.5 0.41065162
		 0.54991084 0.375 0.54991084 0.375 0.25 0.45546171 0.25 0.375 0.20008913 0.41065162
		 0.20008913 0.375 0.1467859 0.125 0.25 0.125 0.1467859 0.375 0.25 0.43221569 0.25
		 0.375 0.19293958 0.38098672 0.19293958 0.45934087 0.2433318 0.46532762 0.25 0.4593409
		 0.25 0.375 0.25 0.375 0.14939022 0.125 0.25 0.125 0.14939022 0.15006369 0.14939022
		 0.15006369 0.15086229 0.2389411 0.15086228 0.23894113 0.14939022 0.46453935 0.25
		 0.375 0.25 0.375 0.1568905 0.38226706 0.15689048 0.46453935 0.24852794 0.42525035
		 0.5 0.375 0.5 0.375 0.25 0.42525035 0.25 0.42525035 0.38605887 0.41798329 0.38605887
		 0.41798332 0.47493634 0.42525035 0.47493631 0.375 0.19402954 0.125 0.25 0.125 0.19402954
		 0.875 0.25 0.375 0.5 0.46453935 0.5 0.46453935 0.50147212 0.38226706 0.59310949 0.375
		 0.59310949 0.375 0.55597043 0.125 0.25 0.125 0.19293958 0.125 0.25 0.125 0.20008913
		 0.125 0.25 0.125 0.1568905;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 68 ".pt[0:67]" -type "float3"  0.44574866 0 -0.052138962 
		0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 
		0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 
		0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 
		0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 
		-2.8807354 -1.0269563e-15 -0.052138962 -2.8807354 -8.8817842e-16 -0.052138962 0.44574866 
		0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 
		0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 
		0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 
		0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 
		0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 
		0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 
		0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 -2.8807354 -1.0269563e-15 
		-0.052138962 -2.8807354 -8.8817842e-16 -0.052138962 -2.8807354 -1.7763568e-15 -0.052138962 
		-2.8807354 -1.7763568e-15 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 
		0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 
		0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 
		0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 
		0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 
		0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 
		0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962 0.44574866 0 -0.052138962;
	setAttr -s 68 ".vt[0:67]"  9.11201477 6.15917015 -8.24862766 8.3942337 6.15917015 -8.24862766
		 8.3942337 5.91058302 -8.24862766 8.88883305 5.91058302 -8.24862766 9.11201477 6.15917015 -8.96820831
		 8.3942337 6.15917015 -8.96820831 8.3942337 5.91058302 -8.96820831 8.88883305 5.91058302 -8.96820831
		 5.27183104 0.12354232 -7.006316185 9.33195305 0.12354232 -7.006316185 9.33195305 1.88185239 -7.006316185
		 5.27183104 1.88185215 -7.006316185 5.27183104 0.12354232 -9.3430891 5.27183104 1.88185215 -9.3430891
		 9.33195305 0.12354232 -9.3430891 13.3568573 0.12354232 -7.006316185 13.3568573 1.88185215 -7.006316185
		 9.33195305 6.40414429 -7.006316185 9.33195305 1.88185239 -9.3430891 9.33195305 6.40414429 -9.3430891
		 6.79159117 3.57460904 -9.17113209 7.47444296 4.33519077 -9.17113209 7.52291346 4.38917875 -9.17113209
		 7.93767977 4.85115862 -9.17113209 8.13858032 5.074928284 -9.17113209 8.88883305 5.91058302 -9.17113209
		 8.88883305 5.91058302 -8.23038864 9.25162983 6.31467772 -8.23038864 9.25162983 6.31467772 -7.21301174
		 8.88883305 5.91058302 -7.21301174 8.88883305 5.91058302 -7.14705086 8.13858032 5.074928284 -7.14705086
		 7.93767977 4.85115862 -7.14705086 7.52291346 4.38917875 -7.14705086 7.47444296 4.33519077 -7.14705086
		 6.79159117 3.57460904 -7.14705086 6.79159117 3.57460904 -8.24862766 6.12548828 2.83268237 -8.24862766
		 6.12548828 2.83268237 -7.14705086 5.71864462 2.37952733 -7.14705086 5.71864462 2.37952733 -9.17113209
		 13.3568573 0.12354232 -9.3430891 13.3568573 1.88185215 -9.3430891 13.3568573 6.40414429 -7.006316185
		 13.3568573 6.40414429 -9.3430891 6.79159117 3.57460904 -8.96820831 6.12548828 2.83268237 -9.17113209
		 6.12548828 2.83268237 -8.96820831 6.79159117 4.38917875 -9.17113209 7.47444296 4.38917875 -9.17113209
		 7.47444296 4.85115862 -9.17113209 8.13858032 5.91058302 -9.17113209 8.13858032 5.91058302 -7.14705086
		 8.60018539 5.91058302 -7.21301174 8.60018539 5.91058302 -8.23038864 8.60018539 6.31467772 -8.23038864
		 8.60018539 6.31467772 -7.21301174 7.47444296 4.85115862 -7.14705086 7.47444296 4.38917875 -7.14705086
		 6.79159117 4.38917875 -7.14705086 6.79159117 3.58652735 -8.96820831 6.79159117 3.58652735 -8.24862766
		 6.066651821 3.58652735 -8.24862766 6.066651821 2.83268237 -8.24862766 5.71864462 2.83268237 -9.17113209
		 5.71864462 2.83268237 -7.14705086 6.066651821 2.83268237 -8.96820831 6.066651821 3.58652735 -8.96820831;
	setAttr -s 113 ".ed[0:112]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 4 7 0 7 6 0 8 9 0 9 10 1 10 11 1 11 8 0 12 8 0 11 13 0 13 12 0 12 14 0
		 14 9 1 9 15 0 15 16 0 16 10 1 10 17 1 17 11 0 13 18 1 18 14 1 17 19 1 19 13 0 13 20 1
		 20 21 0 21 22 0 22 23 0 23 24 1 24 25 0 25 7 0 3 26 0 26 27 0 27 28 0 28 17 1 28 29 0
		 29 30 0 30 31 0 31 24 0 23 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0
		 39 40 0 40 13 1 14 41 0 41 15 0 41 42 0 42 16 1 16 43 0 43 17 0 19 18 1 18 42 1 43 44 0
		 44 19 0 45 20 0 40 46 0 46 47 0 47 45 0 20 48 0 48 49 0 49 21 1 49 22 1 50 23 0 49 50 0
		 24 51 0 51 25 0 51 52 0 52 30 0 29 53 0 53 54 0 54 26 0 55 27 0 54 55 0 55 56 0 56 28 0
		 56 53 0 52 31 0 50 57 0 57 32 0 57 58 0 58 33 1 58 34 1 58 59 0 59 35 0 59 48 0 45 60 0
		 60 61 0 61 36 0 61 62 0 62 63 0 63 37 0 46 64 0 64 65 0 65 38 0 63 66 0 66 47 0 65 39 0
		 64 40 0 42 44 0 67 60 0 66 67 0 58 49 0 67 62 0;
	setAttr -s 47 -ch 226 ".fc[0:46]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 1 0
		f 4 -2 -6 7 8
		mu 0 4 2 1 6 7
		f 4 -5 9 10 -8
		mu 0 4 5 4 8 9
		f 4 11 12 13 14
		mu 0 4 10 11 12 13
		f 4 15 -15 16 17
		mu 0 4 14 10 13 15
		f 4 18 19 -12 -16
		mu 0 4 16 17 18 19
		f 4 20 21 22 -13
		mu 0 4 11 20 21 12
		f 3 -14 23 24
		mu 0 3 13 12 22
		f 4 25 26 -19 -18
		mu 0 4 23 24 17 16
		f 16 27 28 29 30 31 32 33 34 35 -10 -7 -4 36 37 38 39
		mu 0 16 22 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		f 18 -25 -40 40 41 42 43 -34 44 45 46 47 48 49 50 51 52 53 -17
		mu 0 18 40 22 39 41 42 43 31 30 44 45 46 47 48 49 50 51 52 26
		f 4 54 55 -21 -20
		mu 0 4 17 53 54 18
		f 4 -56 56 57 -22
		mu 0 4 20 55 56 21
		f 4 -23 58 59 -24
		mu 0 4 12 21 57 22
		f 3 -29 60 -26
		mu 0 3 23 25 24
		f 4 61 -57 -55 -27
		mu 0 4 24 58 53 17
		f 4 -60 62 63 -28
		mu 0 4 22 57 59 25
		f 6 64 -30 -54 65 66 67
		mu 0 6 60 27 26 52 61 62
		f 4 -31 68 69 70
		mu 0 4 63 64 65 66
		f 3 71 -32 -71
		mu 0 3 66 67 63
		f 4 72 -33 -72 73
		mu 0 4 68 69 70 71
		f 3 74 75 -35
		mu 0 3 72 73 74
		f 12 -76 76 77 -42 78 79 80 -37 -3 -9 -11 -36
		mu 0 12 74 73 75 76 77 78 79 80 81 82 83 84
		f 4 81 -38 -81 82
		mu 0 4 85 86 87 88
		f 4 -82 83 84 -39
		mu 0 4 86 85 89 90
		f 4 -85 85 -79 -41
		mu 0 4 90 89 91 92
		f 3 -78 86 -43
		mu 0 3 76 75 93
		f 4 -87 -77 -75 -44
		mu 0 4 93 75 94 95
		f 4 -73 87 88 -45
		mu 0 4 69 68 96 97
		f 4 89 90 -46 -89
		mu 0 4 96 98 99 97
		f 3 -47 -91 91
		mu 0 3 100 101 102
		f 4 92 93 -48 -92
		mu 0 4 102 103 104 100
		f 8 -94 94 -69 -65 95 96 97 -49
		mu 0 8 104 103 105 106 107 108 109 110
		f 5 98 99 100 -50 -98
		mu 0 5 111 112 113 114 115
		f 8 101 102 103 -51 -101 104 105 -67
		mu 0 8 116 117 118 119 120 121 122 123
		f 3 -104 106 -52
		mu 0 3 119 118 124
		f 4 -107 -103 107 -53
		mu 0 4 124 118 125 126
		f 4 -58 108 -63 -59
		mu 0 4 21 56 127 57
		f 4 -64 -109 -62 -61
		mu 0 4 25 59 58 24
		f 5 109 -96 -68 -106 110
		mu 0 5 128 129 130 131 132
		f 3 -108 -102 -66
		mu 0 3 133 117 116
		f 4 -70 -95 -93 111
		mu 0 4 66 65 103 102
		f 4 -90 -88 -74 -112
		mu 0 4 98 96 134 135
		f 4 -86 -84 -83 -80
		mu 0 4 91 89 136 137
		f 4 -110 112 -99 -97
		mu 0 4 129 128 112 111
		f 4 -100 -113 -111 -105
		mu 0 4 113 112 138 139;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group46";
	rename -uid "0D184EDC-954F-DF26-481B-B69DAABDDE78";
	setAttr ".t" -type "double3" 3.0440275227027147 0 0 ;
	setAttr ".rp" -type "double3" -0.30096681977083151 3.2638433016836643 -11.701812985803866 ;
	setAttr ".sp" -type "double3" -0.30096681977083151 3.2638433016836643 -11.701812985803866 ;
createNode transform -n "pasted__group39" -p "group46";
	rename -uid "48769D9E-2549-DAD5-1CC5-A6A6D826E7FF";
	setAttr ".t" -type "double3" 5.8723130465732654 0 -3.7852350991665302 ;
	setAttr ".rp" -type "double3" -6.1725540161132812 3.2020721435546875 2.1746945381164551 ;
	setAttr ".sp" -type "double3" -6.1725540161132812 3.2020721435546875 2.1746945381164551 ;
createNode transform -n "group47";
	rename -uid "0320F601-4149-BAF7-2466-AFAA6416D563";
	setAttr ".t" -type "double3" 26.644674902789372 0 7.0876010336397126 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
	setAttr ".sp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
createNode transform -n "pasted__polySurface64" -p "group47";
	rename -uid "1258D529-094F-0765-C688-93BF8F636645";
	setAttr ".rp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
	setAttr ".sp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
createNode transform -n "transform8" -p "pasted__polySurface64";
	rename -uid "DAFB583E-6D4B-EB3C-BAE5-D0883F20AA36";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurface64Shape" -p "transform8";
	rename -uid "AB9CA168-2043-C9D2-5B00-079C4EBDFD17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:46]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 140 ".uvst[0].uvsp[0:139]" -type "float2" 0.46365514 0.25 0.375
		 0.25 0.375 0.21929631 0.43608934 0.21929631 0.46365514 0.5 0.375 0.5 0.125 0.25 0.125
		 0.21929631 0.43608934 0.53070366 0.375 0.53070366 0.375 0 0.5 0 0.5 0.125 0.37500811
		 0.12499324 0.125 0 0.1250125 0.12497501 0.375 0.75 0.5 0.75 0.5 1 0.375 1 0.625 0
		 0.625 0.125 0.5 0.25 0.37501875 0.62500626 0.5 0.625 0.5 0.5 0.375025 0.49998751
		 0.4218027 0.48159757 0.44282204 0.48159924 0.44431406 0.48159933 0.45708144 0.48160022
		 0.4632656 0.48160064 0.48635957 0.48160252 0.48635915 0.45989311 0.49322945 0.45989323
		 0.49322879 0.38290954 0.48635763 0.38291007 0.4863576 0.3809588 0.49752706 0.38095778
		 0.49752682 0.27211389 0.37497514 0.25003746 0.48635554 0.27211672 0.48635539 0.26506001
		 0.46325293 0.26506662 0.45706686 0.2650682 0.44429493 0.26507184 0.4428024 0.26507226
		 0.42177546 0.26507819 0.4217903 0.38291568 0.40128303 0.38291743 0.40126449 0.26508373
		 0.38873655 0.26508737 0.38877535 0.48159522 0.625 0.75 0.625 1 0.875 0 0.875 0.125
		 0.625 0.25 0.625 0.625 0.625 0.5 0.42179996 0.45989048 0.40129855 0.48159617 0.40129513
		 0.45988974 0.45934096 0.50666821 0.375 0.60060978 0.375 0.5 0.45934096 0.5 0.46532768
		 0.5 0.375 0.5 0.43221569 0.5 0.38098675 0.55706042 0.375 0.55706042 0.375 0.60321403
		 0.375 0.5 0.46766576 0.5 0.375 0.25 0.46766576 0.25 0.46766576 0.258147 0.43201411
		 0.258147 0.43201417 0.38380608 0.46766576 0.38380605 0.46766573 0.38605884 0.40657645
		 0.38605884 0.40657645 0.47493634 0.46766576 0.47493631 0.375 0.5 0.45546174 0.5 0.41065165
		 0.5499109 0.375 0.54991084 0.375 0.25 0.45546174 0.25 0.375 0.20008913 0.41065165
		 0.20008914 0.375 0.14678591 0.125 0.25 0.125 0.14678591 0.375 0.25 0.43221569 0.25
		 0.375 0.19293958 0.38098675 0.19293958 0.45934096 0.24333178 0.46532768 0.25 0.45934096
		 0.25 0.375 0.25 0.375 0.14939019 0.125 0.25 0.125 0.14939019 0.15006369 0.14939019
		 0.15006369 0.15086228 0.23894113 0.15086228 0.23894116 0.14939019 0.46453932 0.25
		 0.375 0.25 0.375 0.1568905 0.38226706 0.1568905 0.46453929 0.2485279 0.42525041 0.5
		 0.375 0.5 0.375 0.25 0.42525041 0.25 0.42525041 0.38605884 0.41798335 0.38605884
		 0.41798332 0.47493631 0.42525041 0.47493631 0.375 0.19402954 0.125 0.25 0.125 0.19402954
		 0.875 0.25 0.375 0.5 0.46453932 0.5 0.46453932 0.50147212 0.38226706 0.59310949 0.375
		 0.59310949 0.375 0.55597049 0.125 0.25 0.125 0.19293958 0.125 0.25 0.125 0.20008913
		 0.125 0.25 0.125 0.1568905;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 68 ".vt[0:67]"  -8.50492382 6.15917015 3.10707784 -9.22270489 6.15917015 3.10707784
		 -9.22270489 5.91058302 3.10707784 -8.72810555 5.91058302 3.10707784 -8.50492382 6.15917015 2.38749695
		 -9.22270489 6.15917015 2.38749695 -9.22270489 5.91058302 2.38749695 -8.72810555 5.91058302 2.38749695
		 -12.34510803 0.12354232 4.34938908 -8.28498554 0.12354232 4.34938908 -8.28498554 1.88185239 4.34938908
		 -12.34510803 1.88185215 4.34938908 -12.34510803 0.12354232 2.012616634 -12.34510803 1.88185215 2.012616634
		 -8.28498554 0.12354232 2.012616634 -4.26008177 0.12354232 4.34938908 -4.26008177 1.88185215 4.34938908
		 -8.28498554 6.40414429 4.34938908 -8.28498554 1.88185239 2.012616634 -8.28498554 6.40414429 2.012616634
		 -10.8253479 3.5746088 2.18457317 -10.14249611 4.33519077 2.18457317 -10.094025612 4.38917875 2.18457317
		 -9.6792593 4.85115862 2.18457317 -9.47835827 5.074928284 2.18457317 -8.72810555 5.91058302 2.18457317
		 -8.72810555 5.91058302 3.1253171 -8.36530876 6.31467772 3.1253171 -8.36530876 6.31467772 4.14269352
		 -8.72810555 5.91058302 4.14269352 -8.72810555 5.91058302 4.2086544 -9.47835827 5.074928284 4.2086544
		 -9.6792593 4.85115862 4.2086544 -10.094025612 4.38917875 4.2086544 -10.14249611 4.33519077 4.2086544
		 -10.8253479 3.5746088 4.2086544 -10.8253479 3.5746088 3.10707784 -11.49145126 2.83268237 3.10707784
		 -11.49145126 2.83268237 4.2086544 -11.89829445 2.37952709 4.2086544 -11.89829445 2.37952709 2.18457317
		 -4.26008177 0.12354232 2.012616634 -4.26008177 1.88185215 2.012616634 -4.26008177 6.40414429 4.34938908
		 -4.26008177 6.40414429 2.012616634 -10.8253479 3.5746088 2.38749695 -11.49145126 2.83268237 2.18457317
		 -11.49145126 2.83268237 2.38749695 -10.8253479 4.38917875 2.18457317 -10.14249611 4.38917875 2.18457317
		 -10.14249611 4.85115862 2.18457317 -9.47835827 5.91058302 2.18457317 -9.47835827 5.91058302 4.2086544
		 -9.016753197 5.91058302 4.14269352 -9.016753197 5.91058302 3.1253171 -9.016753197 6.31467772 3.1253171
		 -9.016753197 6.31467772 4.14269352 -10.14249611 4.85115862 4.2086544 -10.14249611 4.38917875 4.2086544
		 -10.8253479 4.38917875 4.2086544 -10.8253479 3.58652735 2.38749695 -10.8253479 3.58652735 3.10707784
		 -11.55028725 3.58652735 3.10707784 -11.55028725 2.83268237 3.10707784 -11.89829445 2.83268237 2.18457317
		 -11.89829445 2.83268237 4.2086544 -11.55028725 2.83268237 2.38749695 -11.55028725 3.58652735 2.38749695;
	setAttr -s 113 ".ed[0:112]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 4 7 0 7 6 0 8 9 0 9 10 1 10 11 1 11 8 0 12 8 0 11 13 0 13 12 0 12 14 0
		 14 9 1 9 15 0 15 16 0 16 10 1 10 17 1 17 11 0 13 18 1 18 14 1 17 19 1 19 13 0 13 20 1
		 20 21 0 21 22 0 22 23 0 23 24 1 24 25 0 25 7 0 3 26 0 26 27 0 27 28 0 28 17 1 28 29 0
		 29 30 0 30 31 0 31 24 0 23 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0
		 39 40 0 40 13 1 14 41 0 41 15 0 41 42 0 42 16 1 16 43 0 43 17 0 19 18 1 18 42 1 43 44 0
		 44 19 0 45 20 0 40 46 0 46 47 0 47 45 0 20 48 0 48 49 0 49 21 1 49 22 1 50 23 0 49 50 0
		 24 51 0 51 25 0 51 52 0 52 30 0 29 53 0 53 54 0 54 26 0 55 27 0 54 55 0 55 56 0 56 28 0
		 56 53 0 52 31 0 50 57 0 57 32 0 57 58 0 58 33 1 58 34 1 58 59 0 59 35 0 59 48 0 45 60 0
		 60 61 0 61 36 0 61 62 0 62 63 0 63 37 0 46 64 0 64 65 0 65 38 0 63 66 0 66 47 0 65 39 0
		 64 40 0 42 44 0 67 60 0 66 67 0 58 49 0 67 62 0;
	setAttr -s 47 -ch 226 ".fc[0:46]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 1 0
		f 4 -2 -6 7 8
		mu 0 4 2 1 6 7
		f 4 -5 9 10 -8
		mu 0 4 5 4 8 9
		f 4 11 12 13 14
		mu 0 4 10 11 12 13
		f 4 15 -15 16 17
		mu 0 4 14 10 13 15
		f 4 18 19 -12 -16
		mu 0 4 16 17 18 19
		f 4 20 21 22 -13
		mu 0 4 11 20 21 12
		f 3 -14 23 24
		mu 0 3 13 12 22
		f 4 25 26 -19 -18
		mu 0 4 23 24 17 16
		f 16 27 28 29 30 31 32 33 34 35 -10 -7 -4 36 37 38 39
		mu 0 16 22 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		f 18 -25 -40 40 41 42 43 -34 44 45 46 47 48 49 50 51 52 53 -17
		mu 0 18 40 22 39 41 42 43 31 30 44 45 46 47 48 49 50 51 52 26
		f 4 54 55 -21 -20
		mu 0 4 17 53 54 18
		f 4 -56 56 57 -22
		mu 0 4 20 55 56 21
		f 4 -23 58 59 -24
		mu 0 4 12 21 57 22
		f 3 -29 60 -26
		mu 0 3 23 25 24
		f 4 61 -57 -55 -27
		mu 0 4 24 58 53 17
		f 4 -60 62 63 -28
		mu 0 4 22 57 59 25
		f 6 64 -30 -54 65 66 67
		mu 0 6 60 27 26 52 61 62
		f 4 -31 68 69 70
		mu 0 4 63 64 65 66
		f 3 71 -32 -71
		mu 0 3 66 67 63
		f 4 72 -33 -72 73
		mu 0 4 68 69 70 71
		f 3 74 75 -35
		mu 0 3 72 73 74
		f 12 -76 76 77 -42 78 79 80 -37 -3 -9 -11 -36
		mu 0 12 74 73 75 76 77 78 79 80 81 82 83 84
		f 4 81 -38 -81 82
		mu 0 4 85 86 87 88
		f 4 -82 83 84 -39
		mu 0 4 86 85 89 90
		f 4 -85 85 -79 -41
		mu 0 4 90 89 91 92
		f 3 -78 86 -43
		mu 0 3 76 75 93
		f 4 -87 -77 -75 -44
		mu 0 4 93 75 94 95
		f 4 -73 87 88 -45
		mu 0 4 69 68 96 97
		f 4 89 90 -46 -89
		mu 0 4 96 98 99 97
		f 3 -47 -91 91
		mu 0 3 100 101 102
		f 4 92 93 -48 -92
		mu 0 4 102 103 104 100
		f 8 -94 94 -69 -65 95 96 97 -49
		mu 0 8 104 103 105 106 107 108 109 110
		f 5 98 99 100 -50 -98
		mu 0 5 111 112 113 114 115
		f 8 101 102 103 -51 -101 104 105 -67
		mu 0 8 116 117 118 119 120 121 122 123
		f 3 -104 106 -52
		mu 0 3 119 118 124
		f 4 -107 -103 107 -53
		mu 0 4 124 118 125 126
		f 4 -58 108 -63 -59
		mu 0 4 21 56 127 57
		f 4 -64 -109 -62 -61
		mu 0 4 25 59 58 24
		f 5 109 -96 -68 -106 110
		mu 0 5 128 129 130 131 132
		f 3 -108 -102 -66
		mu 0 3 133 117 116
		f 4 -70 -95 -93 111
		mu 0 4 66 65 103 102
		f 4 -90 -88 -74 -112
		mu 0 4 98 96 134 135
		f 4 -86 -84 -83 -80
		mu 0 4 91 89 136 137
		f 4 -110 112 -99 -97
		mu 0 4 129 128 112 111
		f 4 -100 -113 -111 -105
		mu 0 4 113 112 138 139;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group48";
	rename -uid "418D48AD-5C42-A0A5-E817-DF9D962DEFE7";
	setAttr ".t" -type "double3" 0 0 4.2174733842818117 ;
	setAttr ".rp" -type "double3" 18.342080002658147 3.2638433016836643 10.268603888940614 ;
	setAttr ".sp" -type "double3" 18.342080002658147 3.2638433016836643 10.268603888940614 ;
createNode transform -n "pasted__group47" -p "group48";
	rename -uid "1694BD71-3649-B15B-C0AB-E5B115B3457D";
	setAttr ".t" -type "double3" 26.644674902789372 0 7.0876010336397126 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
	setAttr ".sp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
createNode transform -n "pasted__pasted__polySurface64" -p "pasted__group47";
	rename -uid "1C30005C-C241-F4EB-0F71-9A9C1FFF049F";
	setAttr ".rp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
	setAttr ".sp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
createNode transform -n "transform7" -p "|group48|pasted__group47|pasted__pasted__polySurface64";
	rename -uid "871084A0-4049-5370-9C91-77869475C07E";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__polySurface64Shape" -p "transform7";
	rename -uid "7D952CC8-EB44-7EFF-9084-6AB8B39F5960";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:46]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 140 ".uvst[0].uvsp[0:139]" -type "float2" 0.46365514 0.25 0.375
		 0.25 0.375 0.21929631 0.43608934 0.21929631 0.46365514 0.5 0.375 0.5 0.125 0.25 0.125
		 0.21929631 0.43608934 0.53070366 0.375 0.53070366 0.375 0 0.5 0 0.5 0.125 0.37500811
		 0.12499324 0.125 0 0.1250125 0.12497501 0.375 0.75 0.5 0.75 0.5 1 0.375 1 0.625 0
		 0.625 0.125 0.5 0.25 0.37501875 0.62500626 0.5 0.625 0.5 0.5 0.375025 0.49998751
		 0.4218027 0.48159757 0.44282204 0.48159924 0.44431406 0.48159933 0.45708144 0.48160022
		 0.4632656 0.48160064 0.48635957 0.48160252 0.48635915 0.45989311 0.49322945 0.45989323
		 0.49322879 0.38290954 0.48635763 0.38291007 0.4863576 0.3809588 0.49752706 0.38095778
		 0.49752682 0.27211389 0.37497514 0.25003746 0.48635554 0.27211672 0.48635539 0.26506001
		 0.46325293 0.26506662 0.45706686 0.2650682 0.44429493 0.26507184 0.4428024 0.26507226
		 0.42177546 0.26507819 0.4217903 0.38291568 0.40128303 0.38291743 0.40126449 0.26508373
		 0.38873655 0.26508737 0.38877535 0.48159522 0.625 0.75 0.625 1 0.875 0 0.875 0.125
		 0.625 0.25 0.625 0.625 0.625 0.5 0.42179996 0.45989048 0.40129855 0.48159617 0.40129513
		 0.45988974 0.45934096 0.50666821 0.375 0.60060978 0.375 0.5 0.45934096 0.5 0.46532768
		 0.5 0.375 0.5 0.43221569 0.5 0.38098675 0.55706042 0.375 0.55706042 0.375 0.60321403
		 0.375 0.5 0.46766576 0.5 0.375 0.25 0.46766576 0.25 0.46766576 0.258147 0.43201411
		 0.258147 0.43201417 0.38380608 0.46766576 0.38380605 0.46766573 0.38605884 0.40657645
		 0.38605884 0.40657645 0.47493634 0.46766576 0.47493631 0.375 0.5 0.45546174 0.5 0.41065165
		 0.5499109 0.375 0.54991084 0.375 0.25 0.45546174 0.25 0.375 0.20008913 0.41065165
		 0.20008914 0.375 0.14678591 0.125 0.25 0.125 0.14678591 0.375 0.25 0.43221569 0.25
		 0.375 0.19293958 0.38098675 0.19293958 0.45934096 0.24333178 0.46532768 0.25 0.45934096
		 0.25 0.375 0.25 0.375 0.14939019 0.125 0.25 0.125 0.14939019 0.15006369 0.14939019
		 0.15006369 0.15086228 0.23894113 0.15086228 0.23894116 0.14939019 0.46453932 0.25
		 0.375 0.25 0.375 0.1568905 0.38226706 0.1568905 0.46453929 0.2485279 0.42525041 0.5
		 0.375 0.5 0.375 0.25 0.42525041 0.25 0.42525041 0.38605884 0.41798335 0.38605884
		 0.41798332 0.47493631 0.42525041 0.47493631 0.375 0.19402954 0.125 0.25 0.125 0.19402954
		 0.875 0.25 0.375 0.5 0.46453932 0.5 0.46453932 0.50147212 0.38226706 0.59310949 0.375
		 0.59310949 0.375 0.55597049 0.125 0.25 0.125 0.19293958 0.125 0.25 0.125 0.20008913
		 0.125 0.25 0.125 0.1568905;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 68 ".vt[0:67]"  -8.50492382 6.15917015 3.10707784 -9.22270489 6.15917015 3.10707784
		 -9.22270489 5.91058302 3.10707784 -8.72810555 5.91058302 3.10707784 -8.50492382 6.15917015 2.38749695
		 -9.22270489 6.15917015 2.38749695 -9.22270489 5.91058302 2.38749695 -8.72810555 5.91058302 2.38749695
		 -12.34510803 0.12354232 4.34938908 -8.28498554 0.12354232 4.34938908 -8.28498554 1.88185239 4.34938908
		 -12.34510803 1.88185215 4.34938908 -12.34510803 0.12354232 2.012616634 -12.34510803 1.88185215 2.012616634
		 -8.28498554 0.12354232 2.012616634 -4.26008177 0.12354232 4.34938908 -4.26008177 1.88185215 4.34938908
		 -8.28498554 6.40414429 4.34938908 -8.28498554 1.88185239 2.012616634 -8.28498554 6.40414429 2.012616634
		 -10.8253479 3.5746088 2.18457317 -10.14249611 4.33519077 2.18457317 -10.094025612 4.38917875 2.18457317
		 -9.6792593 4.85115862 2.18457317 -9.47835827 5.074928284 2.18457317 -8.72810555 5.91058302 2.18457317
		 -8.72810555 5.91058302 3.1253171 -8.36530876 6.31467772 3.1253171 -8.36530876 6.31467772 4.14269352
		 -8.72810555 5.91058302 4.14269352 -8.72810555 5.91058302 4.2086544 -9.47835827 5.074928284 4.2086544
		 -9.6792593 4.85115862 4.2086544 -10.094025612 4.38917875 4.2086544 -10.14249611 4.33519077 4.2086544
		 -10.8253479 3.5746088 4.2086544 -10.8253479 3.5746088 3.10707784 -11.49145126 2.83268237 3.10707784
		 -11.49145126 2.83268237 4.2086544 -11.89829445 2.37952709 4.2086544 -11.89829445 2.37952709 2.18457317
		 -4.26008177 0.12354232 2.012616634 -4.26008177 1.88185215 2.012616634 -4.26008177 6.40414429 4.34938908
		 -4.26008177 6.40414429 2.012616634 -10.8253479 3.5746088 2.38749695 -11.49145126 2.83268237 2.18457317
		 -11.49145126 2.83268237 2.38749695 -10.8253479 4.38917875 2.18457317 -10.14249611 4.38917875 2.18457317
		 -10.14249611 4.85115862 2.18457317 -9.47835827 5.91058302 2.18457317 -9.47835827 5.91058302 4.2086544
		 -9.016753197 5.91058302 4.14269352 -9.016753197 5.91058302 3.1253171 -9.016753197 6.31467772 3.1253171
		 -9.016753197 6.31467772 4.14269352 -10.14249611 4.85115862 4.2086544 -10.14249611 4.38917875 4.2086544
		 -10.8253479 4.38917875 4.2086544 -10.8253479 3.58652735 2.38749695 -10.8253479 3.58652735 3.10707784
		 -11.55028725 3.58652735 3.10707784 -11.55028725 2.83268237 3.10707784 -11.89829445 2.83268237 2.18457317
		 -11.89829445 2.83268237 4.2086544 -11.55028725 2.83268237 2.38749695 -11.55028725 3.58652735 2.38749695;
	setAttr -s 113 ".ed[0:112]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 4 7 0 7 6 0 8 9 0 9 10 1 10 11 1 11 8 0 12 8 0 11 13 0 13 12 0 12 14 0
		 14 9 1 9 15 0 15 16 0 16 10 1 10 17 1 17 11 0 13 18 1 18 14 1 17 19 1 19 13 0 13 20 1
		 20 21 0 21 22 0 22 23 0 23 24 1 24 25 0 25 7 0 3 26 0 26 27 0 27 28 0 28 17 1 28 29 0
		 29 30 0 30 31 0 31 24 0 23 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0
		 39 40 0 40 13 1 14 41 0 41 15 0 41 42 0 42 16 1 16 43 0 43 17 0 19 18 1 18 42 1 43 44 0
		 44 19 0 45 20 0 40 46 0 46 47 0 47 45 0 20 48 0 48 49 0 49 21 1 49 22 1 50 23 0 49 50 0
		 24 51 0 51 25 0 51 52 0 52 30 0 29 53 0 53 54 0 54 26 0 55 27 0 54 55 0 55 56 0 56 28 0
		 56 53 0 52 31 0 50 57 0 57 32 0 57 58 0 58 33 1 58 34 1 58 59 0 59 35 0 59 48 0 45 60 0
		 60 61 0 61 36 0 61 62 0 62 63 0 63 37 0 46 64 0 64 65 0 65 38 0 63 66 0 66 47 0 65 39 0
		 64 40 0 42 44 0 67 60 0 66 67 0 58 49 0 67 62 0;
	setAttr -s 47 -ch 226 ".fc[0:46]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 1 0
		f 4 -2 -6 7 8
		mu 0 4 2 1 6 7
		f 4 -5 9 10 -8
		mu 0 4 5 4 8 9
		f 4 11 12 13 14
		mu 0 4 10 11 12 13
		f 4 15 -15 16 17
		mu 0 4 14 10 13 15
		f 4 18 19 -12 -16
		mu 0 4 16 17 18 19
		f 4 20 21 22 -13
		mu 0 4 11 20 21 12
		f 3 -14 23 24
		mu 0 3 13 12 22
		f 4 25 26 -19 -18
		mu 0 4 23 24 17 16
		f 16 27 28 29 30 31 32 33 34 35 -10 -7 -4 36 37 38 39
		mu 0 16 22 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		f 18 -25 -40 40 41 42 43 -34 44 45 46 47 48 49 50 51 52 53 -17
		mu 0 18 40 22 39 41 42 43 31 30 44 45 46 47 48 49 50 51 52 26
		f 4 54 55 -21 -20
		mu 0 4 17 53 54 18
		f 4 -56 56 57 -22
		mu 0 4 20 55 56 21
		f 4 -23 58 59 -24
		mu 0 4 12 21 57 22
		f 3 -29 60 -26
		mu 0 3 23 25 24
		f 4 61 -57 -55 -27
		mu 0 4 24 58 53 17
		f 4 -60 62 63 -28
		mu 0 4 22 57 59 25
		f 6 64 -30 -54 65 66 67
		mu 0 6 60 27 26 52 61 62
		f 4 -31 68 69 70
		mu 0 4 63 64 65 66
		f 3 71 -32 -71
		mu 0 3 66 67 63
		f 4 72 -33 -72 73
		mu 0 4 68 69 70 71
		f 3 74 75 -35
		mu 0 3 72 73 74
		f 12 -76 76 77 -42 78 79 80 -37 -3 -9 -11 -36
		mu 0 12 74 73 75 76 77 78 79 80 81 82 83 84
		f 4 81 -38 -81 82
		mu 0 4 85 86 87 88
		f 4 -82 83 84 -39
		mu 0 4 86 85 89 90
		f 4 -85 85 -79 -41
		mu 0 4 90 89 91 92
		f 3 -78 86 -43
		mu 0 3 76 75 93
		f 4 -87 -77 -75 -44
		mu 0 4 93 75 94 95
		f 4 -73 87 88 -45
		mu 0 4 69 68 96 97
		f 4 89 90 -46 -89
		mu 0 4 96 98 99 97
		f 3 -47 -91 91
		mu 0 3 100 101 102
		f 4 92 93 -48 -92
		mu 0 4 102 103 104 100
		f 8 -94 94 -69 -65 95 96 97 -49
		mu 0 8 104 103 105 106 107 108 109 110
		f 5 98 99 100 -50 -98
		mu 0 5 111 112 113 114 115
		f 8 101 102 103 -51 -101 104 105 -67
		mu 0 8 116 117 118 119 120 121 122 123
		f 3 -104 106 -52
		mu 0 3 119 118 124
		f 4 -107 -103 107 -53
		mu 0 4 124 118 125 126
		f 4 -58 108 -63 -59
		mu 0 4 21 56 127 57
		f 4 -64 -109 -62 -61
		mu 0 4 25 59 58 24
		f 5 109 -96 -68 -106 110
		mu 0 5 128 129 130 131 132
		f 3 -108 -102 -66
		mu 0 3 133 117 116
		f 4 -70 -95 -93 111
		mu 0 4 66 65 103 102
		f 4 -90 -88 -74 -112
		mu 0 4 98 96 134 135
		f 4 -86 -84 -83 -80
		mu 0 4 91 89 136 137
		f 4 -110 112 -99 -97
		mu 0 4 129 128 112 111
		f 4 -100 -113 -111 -105
		mu 0 4 113 112 138 139;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group49";
	rename -uid "72CD2B42-064C-9015-1F08-7A880D14DD75";
	setAttr ".t" -type "double3" 26.704882362844263 0 7.2199801769143974 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -11.179474133651031 1.4207897390707342 9.2216778013358933 ;
	setAttr ".sp" -type "double3" -11.179474133651031 1.4207897390707342 9.2216778013358933 ;
createNode transform -n "pasted__group16" -p "group49";
	rename -uid "BC198437-184B-2BD0-AD09-919EA806B0A7";
	setAttr ".t" -type "double3" -2.8972973929215673 -1.8799437066438101 2.802929275618375 ;
	setAttr ".s" -type "double3" 0.4672217692531091 0.4672217692531091 1 ;
	setAttr ".rp" -type "double3" -8.302594557493137 3.2638432981006793 6.4346601461895219 ;
	setAttr ".sp" -type "double3" -8.302594557493137 3.2638432981006793 6.4346601461895219 ;
createNode transform -n "pasted__pasted__pCube7" -p "pasted__group16";
	rename -uid "D8242AB1-294B-7D9C-A3ED-A483E037BD65";
	setAttr ".s" -type "double3" 2.0240816695091661 2.0240816695091661 2.0240816695091661 ;
createNode transform -n "pasted__pasted__polySurface25" -p "pasted__pasted__pCube7";
	rename -uid "6EE20B43-214B-59A7-FF17-FBBA7D3A7FA3";
	setAttr ".t" -type "double3" 0.021590276314300584 0.03900850367487619 -0.0078611553632922729 ;
createNode transform -n "transform6" -p "pasted__pasted__polySurface25";
	rename -uid "F08A015D-D24B-3026-B589-F98E1DDB888A";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__polySurfaceShape25" -p "transform6";
	rename -uid "C9F6552E-6D40-91D8-7179-4594BE416E25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:14]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.37500811 0.12499324 0.625 0 0.625 0.125 0.5 0.25 0.625 0.25 0.37497514 0.25003746
		 0.5 0.5 0.375025 0.49998751 0.625 0.5 0.37501875 0.62500626 0.5 0.625 0.625 0.625
		 0.5 0.75 0.375 0.75 0.625 0.75 0.5 1 0.375 1 0.625 1 0.875 0 0.875 0.125 0.875 0.25
		 0.125 0 0.1250125 0.12497501;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -6.099115372 0.061036229 3.75629425 -4.093206882 0.061036229 3.75629425
		 -2.10469842 0.061036229 3.75629425 -6.099115372 0.92973131 3.75629425 -4.093206882 0.92973143 3.75629425
		 -2.10469842 0.92973131 3.75629425 -4.093206882 3.16397524 3.75629425 -2.10469842 3.16397524 3.75629425
		 -6.099115372 0.92973131 2.60180902 -4.093206882 3.16397524 2.60180902 -2.10469842 3.16397524 2.60180902
		 -4.093206882 0.92973143 2.60180902 -2.10469842 0.92973131 2.60180902 -6.099115372 0.061036229 2.60180902
		 -4.093206882 0.061036229 2.60180902 -2.10469842 0.061036229 2.60180902;
	setAttr -s 29 ".ed[0:28]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 8 9 0 9 10 0
		 8 11 1 11 12 1 13 14 0 14 15 0 0 3 0 1 4 1 2 5 0 4 6 1 5 7 0 6 9 1 7 10 0 9 11 1
		 10 12 0 8 13 0 11 14 1 12 15 0 13 0 0 14 1 1 15 2 0 12 5 1 8 3 0 6 3 0;
	setAttr -s 15 -ch 58 ".fc[0:14]" -type "polyFaces" 
		f 4 0 12 -3 -12
		mu 0 4 0 1 2 3
		f 4 1 13 -4 -13
		mu 0 4 1 4 5 2
		f 3 2 14 28
		mu 0 3 3 2 6
		f 4 3 15 -5 -15
		mu 0 4 2 5 7 6
		f 4 -29 16 -6 27
		mu 0 4 8 6 9 10
		f 4 4 17 -7 -17
		mu 0 4 6 7 11 9
		f 3 5 18 -8
		mu 0 3 12 9 13
		f 4 6 19 -9 -19
		mu 0 4 9 11 14 13
		f 4 7 21 -10 -21
		mu 0 4 12 13 15 16
		f 4 8 22 -11 -22
		mu 0 4 13 14 17 15
		f 4 9 24 -1 -24
		mu 0 4 16 15 18 19
		f 4 10 25 -2 -25
		mu 0 4 15 17 20 18
		f 4 -26 -23 26 -14
		mu 0 4 4 21 22 5
		f 4 -27 -20 -18 -16
		mu 0 4 5 22 23 7
		f 4 23 11 -28 20
		mu 0 4 24 0 3 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group50";
	rename -uid "82CD53CE-1D4C-3043-8251-23935B8BDBE4";
	setAttr ".t" -type "double3" 4.0528373499213561 0 -20.004530123930234 ;
	setAttr ".r" -type "double3" 0 270 0 ;
	setAttr ".rp" -type "double3" 12.550694581071973 5.1432518027722836 14.390640230300535 ;
	setAttr ".sp" -type "double3" 12.550694581071973 5.1432518027722836 14.390640230300535 ;
createNode transform -n "pasted__group40" -p "group50";
	rename -uid "228743DC-E44F-5156-66FB-36A4A5E57504";
	setAttr ".t" -type "double3" 8.3506930315769701 0 3.5612605686810692 ;
	setAttr ".rp" -type "double3" 2.1437197354638622 3.2020721435546875 -9.2752448306673738 ;
	setAttr ".sp" -type "double3" 2.1437197354638622 3.2020721435546875 -9.2752448306673738 ;
createNode transform -n "pasted__pasted__group39" -p "pasted__group40";
	rename -uid "BCCA42D5-1A48-4232-49E1-8EB0988ACFB3";
	setAttr ".t" -type "double3" 5.8723130465732654 0 -3.7852350991665302 ;
	setAttr ".rp" -type "double3" -6.1725540161132812 3.2020721435546875 2.1746945381164551 ;
	setAttr ".sp" -type "double3" -6.1725540161132812 3.2020721435546875 2.1746945381164551 ;
createNode transform -n "pasted__pasted__pasted__polySurface64" -p "pasted__pasted__group39";
	rename -uid "D9C639A0-C144-A69F-D53D-5D8CF5857921";
	setAttr ".t" -type "double3" 10.840919384589325 0 52.78 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
	setAttr ".sp" -type "double3" -8.3025949001312256 3.2638433016836643 3.1810028553009033 ;
createNode transform -n "transform5" -p "pasted__pasted__pasted__polySurface64";
	rename -uid "C2FC5406-5641-5FD7-14DA-8D9ED846B132";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__polySurface64Shape" -p "transform5";
	rename -uid "089A495B-D040-B707-4278-F484BFB155ED";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:46]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 140 ".uvst[0].uvsp[0:139]" -type "float2" 0.46365505 0.25 0.375
		 0.25 0.375 0.21929631 0.43608916 0.21929631 0.46365505 0.5 0.375 0.5 0.125 0.25 0.125
		 0.21929631 0.43608916 0.53070372 0.375 0.53070366 0.375 0 0.5 0 0.5 0.125 0.37500811
		 0.12499324 0.125 0 0.1250125 0.12497501 0.375 0.75 0.5 0.75 0.5 1 0.375 1 0.625 0
		 0.625 0.125 0.5 0.25 0.37501875 0.62500626 0.5 0.625 0.5 0.5 0.375025 0.49998751
		 0.4218027 0.48159754 0.44282216 0.48159921 0.44431412 0.48159933 0.45708144 0.48160022
		 0.46326563 0.48160064 0.48635957 0.48160255 0.48635915 0.45989317 0.49322951 0.45989326
		 0.49322882 0.38290954 0.48635763 0.3829101 0.4863576 0.38095883 0.49752709 0.38095778
		 0.49752682 0.27211386 0.37497514 0.25003746 0.48635554 0.27211672 0.48635539 0.26506001
		 0.46325302 0.26506662 0.45706677 0.2650682 0.44429493 0.26507181 0.44280243 0.26507223
		 0.42177546 0.26507816 0.4217903 0.38291565 0.40128309 0.38291746 0.40126449 0.2650837
		 0.38873664 0.26508734 0.38877538 0.48159522 0.625 0.75 0.625 1 0.875 0 0.875 0.125
		 0.625 0.25 0.625 0.625 0.625 0.5 0.42179996 0.45989046 0.40129861 0.48159623 0.40129519
		 0.4598898 0.45934114 0.50666803 0.375 0.6006099 0.375 0.5 0.45934114 0.5 0.46532774
		 0.5 0.375 0.5 0.43221554 0.5 0.38098657 0.55706042 0.375 0.55706042 0.375 0.60321379
		 0.375 0.5 0.46766552 0.5 0.375 0.25 0.46766552 0.25 0.46766552 0.258147 0.43201411
		 0.258147 0.43201411 0.38380605 0.46766549 0.38380605 0.46766546 0.38605884 0.40657645
		 0.38605881 0.40657645 0.47493631 0.46766552 0.47493631 0.375 0.5 0.45546162 0.5 0.41065145
		 0.5499109 0.375 0.54991084 0.375 0.25 0.45546162 0.25 0.375 0.20008913 0.41065148
		 0.20008913 0.375 0.14678623 0.125 0.25 0.125 0.14678623 0.375 0.25 0.43221554 0.25
		 0.375 0.19293958 0.38098657 0.19293958 0.45934114 0.24333195 0.46532774 0.25 0.45934114
		 0.25 0.375 0.25 0.375 0.14939015 0.125 0.25 0.125 0.14939015 0.15006369 0.14939013
		 0.15006369 0.15086228 0.23894116 0.15086229 0.23894116 0.14939015 0.46453902 0.25
		 0.375 0.25 0.375 0.1568905 0.38226685 0.1568905 0.46453902 0.24852785 0.42525017
		 0.5 0.375 0.5 0.375 0.25 0.42525017 0.25 0.42525017 0.38605884 0.41798335 0.38605884
		 0.41798329 0.47493631 0.42525017 0.47493631 0.37499997 0.19402978 0.125 0.25 0.125
		 0.19402978 0.875 0.25 0.375 0.5 0.46453902 0.5 0.46453899 0.50147212 0.38226685 0.59310949
		 0.375 0.59310949 0.37499997 0.55597019 0.125 0.25 0.125 0.19293958 0.125 0.25 0.125
		 0.20008913 0.125 0.25 0.125 0.1568905;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 68 ".pt[0:67]" -type "float3"  -1.1094035 3.6420555 -3.8556092 
		-1.5124919 3.6420555 -3.8556073 -1.5124919 3.5024564 -3.8556073 -1.2347332 3.5024564 
		-3.8556073 -1.1094035 3.6420555 -4.2597122 -1.5124919 3.6420555 -4.2597122 -1.5124919 
		3.5024564 -4.2597122 -1.2347363 3.5024564 -4.2597122 -3.2659674 -0.02081175 -3.1579537 
		-0.98588973 -0.02081175 -3.1579518 -0.98588973 1.2400022 -3.1579518 -3.2659674 1.2400022 
		-3.1579537 -3.2659674 -0.02081175 -4.4702392 -3.2659674 1.2400022 -4.4702392 -0.98588973 
		-0.02081175 -4.4702382 -0.85271013 -0.02081175 -3.1579545 -0.85271013 1.2400022 -3.1579545 
		-0.98588973 3.7796292 -3.1579518 -0.98588973 1.2400022 -4.4702382 -0.98588973 3.7796292 
		-4.4702382 -2.4125063 2.1906192 -4.3736615 -2.0290277 2.6177468 -4.3736615 -2.0018084 
		2.6480656 -4.3736615 -1.7688826 2.9075034 -4.3736615 -1.6560605 3.0331681 -4.3736725 
		-1.2347363 3.5024564 -4.3736725 -1.2347332 3.5024564 -3.8453686 -1.0309964 3.7293873 
		-3.8453689 -1.0309964 3.7293873 -3.2740245 -1.2347363 3.5024564 -3.2740245 -1.2347363 
		3.5024564 -3.2369843 -1.6560605 3.0331681 -3.2369843 -1.7688857 2.9075034 -3.2369843 
		-2.0018084 2.6480656 -3.2369843 -2.0290277 2.6177468 -3.2369843 -2.4125063 2.1906192 
		-3.2369843 -2.4125063 2.1906192 -3.8556073 -2.7865729 1.7739694 -3.8556092 -2.7865729 
		1.7739694 -3.2369862 -3.0150461 1.5194876 -3.2369862 -3.0150461 1.5194876 -4.3736725 
		-0.85271013 -0.02081175 -4.4702277 -0.85271013 1.2400022 -4.4702277 -0.85271013 3.7796292 
		-3.1579545 -0.85271013 3.7796292 -4.4702277 -2.4125063 2.1906192 -4.2597103 -2.7865729 
		1.7739694 -4.3736725 -2.7865729 1.7739694 -4.2597122 -2.4125063 2.6480656 -4.3736615 
		-2.0290277 2.6480656 -4.3736615 -2.0290277 2.9075034 -4.3736615 -1.6560605 3.5024564 
		-4.3736725 -1.6560605 3.5024564 -3.2369843 -1.3968349 3.5024564 -3.2740245 -1.3968315 
		3.5024564 -3.8453686 -1.3968315 3.7293873 -3.8453686 -1.3968349 3.7293873 -3.2740245 
		-2.0290277 2.9075034 -3.2369843 -2.0290277 2.6480656 -3.2369843 -2.4125063 2.6480656 
		-3.2369843 -2.4125063 2.1973124 -4.2597103 -2.4125063 2.1973124 -3.8556073 -2.8196115 
		2.1973124 -3.8556092 -2.8196115 1.7739694 -3.8556092 -3.0150461 1.7739694 -4.3736725 
		-3.0150461 1.7739694 -3.2369862 -2.8196115 1.7739694 -4.2597122 -2.8196115 2.1973124 
		-4.2597122;
	setAttr -s 68 ".vt[0:67]"  34.16409302 6.15917015 2.43515444 33.44631577 6.15917015 2.43515444
		 33.44631577 5.91058302 2.43515444 33.94091415 5.91058302 2.43515444 34.16409302 6.15917015 1.71557355
		 33.44631577 6.15917015 1.71557355 33.44631577 5.91058302 1.71557355 33.94091415 5.91058302 1.71557355
		 30.32390976 0.12354232 3.67746544 34.3840332 0.12354232 3.67746544 34.3840332 1.88185239 3.67746544
		 30.32390976 1.88185215 3.67746544 30.32390976 0.12354232 1.34069324 30.32390976 1.88185215 1.34069324
		 34.3840332 0.12354232 1.34069324 38.40893936 0.12354232 3.67746544 38.40893936 1.88185215 3.67746544
		 34.3840332 6.40414429 3.67746544 34.3840332 1.88185239 1.34069324 34.3840332 6.40414429 1.34069324
		 31.84366989 3.57460833 1.51264977 32.52652359 4.3351922 1.51264977 32.57499313 4.38917875 1.51264977
		 32.98975754 4.85115862 1.51264977 33.19066238 5.074930668 1.51264977 33.94091415 5.91058302 1.51264977
		 33.94091415 5.91058302 2.4533937 34.30371094 6.31467772 2.4533937 34.30371094 6.31467772 3.47077012
		 33.94091415 5.91058302 3.47077012 33.94091415 5.91058302 3.536731 33.19066238 5.074930668 3.536731
		 32.98975754 4.85115862 3.536731 32.57499313 4.38917875 3.536731 32.52652359 4.3351922 3.536731
		 31.84366989 3.57460833 3.536731 31.84366989 3.57460833 2.43515444 31.17756653 2.83268237 2.43515444
		 31.17756653 2.83268237 3.536731 30.77072525 2.37952924 3.536731 30.77072525 2.37952924 1.51264977
		 38.40893936 0.12354232 1.34069324 38.40893936 1.88185215 1.34069324 38.40893936 6.40414429 3.67746544
		 38.40893936 6.40414429 1.34069324 31.84366989 3.57460833 1.71557355 31.17756653 2.83268237 1.51264977
		 31.17756653 2.83268237 1.71557355 31.84366989 4.38917875 1.51264977 32.52652359 4.38917875 1.51264977
		 32.52652359 4.85115862 1.51264977 33.19066238 5.91058302 1.51264977 33.19066238 5.91058302 3.536731
		 33.65226746 5.91058302 3.47077012 33.65226746 5.91058302 2.4533937 33.65226746 6.31467772 2.4533937
		 33.65226746 6.31467772 3.47077012 32.52652359 4.85115862 3.536731 32.52652359 4.38917875 3.536731
		 31.84366989 4.38917875 3.536731 31.84366989 3.58652735 1.71557355 31.84366989 3.58652735 2.43515444
		 31.11873245 3.58652735 2.43515444 31.11873245 2.83268237 2.43515444 30.77072525 2.83268237 1.51264977
		 30.77072525 2.83268237 3.536731 31.11873245 2.83268237 1.71557355 31.11873245 3.58652735 1.71557355;
	setAttr -s 113 ".ed[0:112]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 1 0 0 4 0
		 5 6 0 6 2 0 4 7 0 7 6 0 8 9 0 9 10 1 10 11 1 11 8 0 12 8 0 11 13 0 13 12 0 12 14 0
		 14 9 1 9 15 0 15 16 0 16 10 1 10 17 1 17 11 0 13 18 1 18 14 1 17 19 1 19 13 0 13 20 1
		 20 21 0 21 22 0 22 23 0 23 24 1 24 25 0 25 7 0 3 26 0 26 27 0 27 28 0 28 17 1 28 29 0
		 29 30 0 30 31 0 31 24 0 23 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0
		 39 40 0 40 13 1 14 41 0 41 15 0 41 42 0 42 16 1 16 43 0 43 17 0 19 18 1 18 42 1 43 44 0
		 44 19 0 45 20 0 40 46 0 46 47 0 47 45 0 20 48 0 48 49 0 49 21 1 49 22 1 50 23 0 49 50 0
		 24 51 0 51 25 0 51 52 0 52 30 0 29 53 0 53 54 0 54 26 0 55 27 0 54 55 0 55 56 0 56 28 0
		 56 53 0 52 31 0 50 57 0 57 32 0 57 58 0 58 33 1 58 34 1 58 59 0 59 35 0 59 48 0 45 60 0
		 60 61 0 61 36 0 61 62 0 62 63 0 63 37 0 46 64 0 64 65 0 65 38 0 63 66 0 66 47 0 65 39 0
		 64 40 0 42 44 0 67 60 0 66 67 0 58 49 0 67 62 0;
	setAttr -s 47 -ch 226 ".fc[0:46]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 -1 6
		mu 0 4 4 5 1 0
		f 4 -2 -6 7 8
		mu 0 4 2 1 6 7
		f 4 -5 9 10 -8
		mu 0 4 5 4 8 9
		f 4 11 12 13 14
		mu 0 4 10 11 12 13
		f 4 15 -15 16 17
		mu 0 4 14 10 13 15
		f 4 18 19 -12 -16
		mu 0 4 16 17 18 19
		f 4 20 21 22 -13
		mu 0 4 11 20 21 12
		f 3 -14 23 24
		mu 0 3 13 12 22
		f 4 25 26 -19 -18
		mu 0 4 23 24 17 16
		f 16 27 28 29 30 31 32 33 34 35 -10 -7 -4 36 37 38 39
		mu 0 16 22 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		f 18 -25 -40 40 41 42 43 -34 44 45 46 47 48 49 50 51 52 53 -17
		mu 0 18 40 22 39 41 42 43 31 30 44 45 46 47 48 49 50 51 52 26
		f 4 54 55 -21 -20
		mu 0 4 17 53 54 18
		f 4 -56 56 57 -22
		mu 0 4 20 55 56 21
		f 4 -23 58 59 -24
		mu 0 4 12 21 57 22
		f 3 -29 60 -26
		mu 0 3 23 25 24
		f 4 61 -57 -55 -27
		mu 0 4 24 58 53 17
		f 4 -60 62 63 -28
		mu 0 4 22 57 59 25
		f 6 64 -30 -54 65 66 67
		mu 0 6 60 27 26 52 61 62
		f 4 -31 68 69 70
		mu 0 4 63 64 65 66
		f 3 71 -32 -71
		mu 0 3 66 67 63
		f 4 72 -33 -72 73
		mu 0 4 68 69 70 71
		f 3 74 75 -35
		mu 0 3 72 73 74
		f 12 -76 76 77 -42 78 79 80 -37 -3 -9 -11 -36
		mu 0 12 74 73 75 76 77 78 79 80 81 82 83 84
		f 4 81 -38 -81 82
		mu 0 4 85 86 87 88
		f 4 -82 83 84 -39
		mu 0 4 86 85 89 90
		f 4 -85 85 -79 -41
		mu 0 4 90 89 91 92
		f 3 -78 86 -43
		mu 0 3 76 75 93
		f 4 -87 -77 -75 -44
		mu 0 4 93 75 94 95
		f 4 -73 87 88 -45
		mu 0 4 69 68 96 97
		f 4 89 90 -46 -89
		mu 0 4 96 98 99 97
		f 3 -47 -91 91
		mu 0 3 100 101 102
		f 4 92 93 -48 -92
		mu 0 4 102 103 104 100
		f 8 -94 94 -69 -65 95 96 97 -49
		mu 0 8 104 103 105 106 107 108 109 110
		f 5 98 99 100 -50 -98
		mu 0 5 111 112 113 114 115
		f 8 101 102 103 -51 -101 104 105 -67
		mu 0 8 116 117 118 119 120 121 122 123
		f 3 -104 106 -52
		mu 0 3 119 118 124
		f 4 -107 -103 107 -53
		mu 0 4 124 118 125 126
		f 4 -58 108 -63 -59
		mu 0 4 21 56 127 57
		f 4 -64 -109 -62 -61
		mu 0 4 25 59 58 24
		f 5 109 -96 -68 -106 110
		mu 0 5 128 129 130 131 132
		f 3 -108 -102 -66
		mu 0 3 133 117 116
		f 4 -70 -95 -93 111
		mu 0 4 66 65 103 102
		f 4 -90 -88 -74 -112
		mu 0 4 98 96 134 135
		f 4 -86 -84 -83 -80
		mu 0 4 91 89 136 137
		f 4 -110 112 -99 -97
		mu 0 4 129 128 112 111
		f 4 -100 -113 -111 -105
		mu 0 4 113 112 138 139;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube22";
	rename -uid "282CB66E-3B45-18CA-A272-969549683B4A";
	setAttr ".t" -type "double3" 9.3553235683837137 1.1321502969636368 -5.725758873262162 ;
	setAttr ".s" -type "double3" 3.9796739569133326 3.9796739569133326 3.9796739569133326 ;
createNode transform -n "transform4" -p "pCube22";
	rename -uid "CEE9F409-704B-3422-71E4-4389E18A2AC5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform4";
	rename -uid "B03C411C-D341-BC45-5799-68A18479B96E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.14877313 0.23707898 0.01587617 
		-0.18292019 0.23707898 0.01587617 -0.14877313 0 0.01587617 -0.18292019 0 0.01587617 
		-0.14877313 0 0 -0.18292019 0 0 -0.14877313 0.23707898 0 -0.18292019 0.23707898 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2";
	rename -uid "0C9AEB57-8B40-2970-0B94-25A7BCDAC1E4";
	setAttr ".t" -type "double3" 12.181795293785784 -1.2888151622434925 8.9805863738453304 ;
	setAttr ".r" -type "double3" 0 270 0 ;
createNode transform -n "transform3" -p "pasted__pasted__pasted__pasted__pCube2";
	rename -uid "AACEE4C2-6445-5F25-AD36-81B9742F1896";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCube2Shape" -p "transform3";
	rename -uid "F2F83C8F-0149-6531-6963-0EB4D17861A5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:61]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 166 ".uvst[0].uvsp[0:165]" -type "float2" 0.375 0 0.5 0 0.625
		 0 0.37500811 0.12499324 0.5 0.125 0.625 0.125 0.37497514 0.25003746 0.5 0.25 0.625
		 0.25 0.375025 0.49998751 0.5 0.5 0.625 0.5 0.37501875 0.62500626 0.5 0.625 0.625
		 0.625 0.375 0.75 0.5 0.75 0.625 0.75 0.375 1 0.5 1 0.625 1 0.875 0 0.875 0.125 0.875
		 0.25 0.125 0 0.1250125 0.12497501 0.46365514 0.25 0.375 0.25 0.375 0.21929631 0.43608934
		 0.21929631 0.46365514 0.5 0.375 0.5 0.125 0.25 0.125 0.21929631 0.43608934 0.53070366
		 0.375 0.53070366 0.375 0 0.5 0 0.5 0.125 0.37500811 0.12499324 0.125 0 0.1250125
		 0.12497501 0.375 0.75 0.5 0.75 0.5 1 0.375 1 0.625 0 0.625 0.125 0.5 0.25 0.37501875
		 0.62500626 0.5 0.625 0.5 0.5 0.375025 0.49998751 0.4218027 0.48159751 0.44282204
		 0.48159915 0.44431406 0.48159927 0.45708141 0.48160017 0.46326554 0.48160058 0.4863596
		 0.48160249 0.48635918 0.45989308 0.49322948 0.4598932 0.49322876 0.38290948 0.48635766
		 0.38291007 0.48635763 0.38095883 0.49752706 0.38095781 0.49752682 0.27211386 0.37497514
		 0.25003746 0.48635554 0.27211672 0.48635542 0.26506001 0.46325296 0.26506659 0.45706686
		 0.26506823 0.44429496 0.26507184 0.44280243 0.26507226 0.42177546 0.26507819 0.4217903
		 0.38291568 0.40128306 0.38291746 0.40126452 0.26508373 0.38873655 0.26508737 0.38877532
		 0.48159516 0.625 0.75 0.625 1 0.875 0 0.875 0.125 0.625 0.25 0.625 0.625 0.625 0.5
		 0.42179996 0.45989043 0.40129858 0.48159617 0.40129516 0.45988974 0.45934096 0.50666821
		 0.375 0.60060978 0.375 0.5 0.45934096 0.5 0.46532768 0.5 0.375 0.5 0.43221569 0.5
		 0.38098675 0.55706042 0.375 0.55706042 0.375 0.60321403 0.375 0.5 0.46766576 0.5
		 0.375 0.25 0.46766576 0.25 0.46766576 0.258147 0.43201411 0.258147 0.43201411 0.38380611
		 0.46766573 0.38380611 0.46766573 0.38605887 0.40657645 0.38605887 0.40657645 0.47493631
		 0.46766573 0.47493631 0.375 0.5 0.45546174 0.5 0.41065165 0.5499109 0.375 0.54991084
		 0.375 0.25 0.45546174 0.25 0.375 0.20008913 0.41065165 0.20008914 0.375 0.14678591
		 0.125 0.25 0.125 0.14678591 0.375 0.25 0.43221569 0.25 0.375 0.19293958 0.38098675
		 0.19293958 0.45934096 0.24333178 0.46532768 0.25 0.45934096 0.25 0.375 0.25 0.375
		 0.14939019 0.125 0.25 0.125 0.14939019 0.15006369 0.14939019 0.15006369 0.15086228
		 0.23894113 0.15086229 0.23894113 0.14939019 0.46453932 0.25 0.375 0.25 0.375 0.1568905
		 0.38226706 0.1568905 0.46453929 0.2485279 0.42525041 0.5 0.375 0.5 0.375 0.25 0.42525041
		 0.25 0.42525041 0.38605887 0.41798335 0.38605887 0.41798332 0.47493631 0.42525041
		 0.47493631 0.375 0.19402954 0.125 0.25 0.125 0.19402954 0.875 0.25 0.375 0.5 0.46453932
		 0.5 0.46453932 0.50147212 0.38226706 0.59310949 0.375 0.59310949 0.375 0.55597049
		 0.125 0.25 0.125 0.19293958 0.125 0.25 0.125 0.20008913 0.125 0.25 0.125 0.1568905;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".vt[0:83]"  -8.72016335 0.09457922 -12.16372108 -8.72016335 0.09457922 -7.34799528
		 -8.72016335 0.09457922 -3.31954908 -8.72016335 4.017299652 -12.16372108 -8.72016335 4.017299652 -7.34799528
		 -8.72016335 4.017299652 -3.31954908 -8.72016335 9.31978798 -7.3479948 -8.72016335 9.31978798 -3.31954908
		 -8.40164375 4.017299652 -12.16372108 -8.40164375 9.31978798 -7.3479948 -8.40164375 9.31978798 -3.31954908
		 -8.40164375 4.017299652 -7.34799528 -8.40164375 4.017299652 -3.31954908 -8.40164375 0.09457922 -12.16372108
		 -8.40164375 0.09457922 -7.34799528 -8.40164375 0.09457922 -3.31954908 -6.95745182 9.60102177 -8.64314175
		 -6.95745182 9.60102177 -9.49422169 -6.95745182 9.30626869 -9.49422169 -6.95745182 9.30626869 -8.90777016
		 -6.10423756 9.60102177 -8.64314175 -6.10423756 9.60102177 -9.49422169 -6.10423756 9.30626869 -9.49422169
		 -6.10423756 9.30626869 -8.90777016 -8.43047333 0.070859671 -13.19648743 -8.43047333 0.070859671 -8.38235855
		 -8.43047333 4.52936125 -8.38235855 -8.43047333 4.52936077 -13.19648743 -5.65973759 0.070859671 -13.19648743
		 -5.65973759 4.52936077 -13.19648743 -5.65973759 0.070859671 -8.38235855 -8.43047333 0.070859671 -3.60998821
		 -8.43047333 4.52936077 -3.60998821 -8.43047333 9.89148998 -8.38235855 -5.65973759 4.52936125 -8.38235855
		 -5.65973759 9.89148998 -8.38235855 -5.86362839 6.53647995 -11.39449215 -5.86362839 7.43830967 -10.58482742
		 -5.86362839 7.5023241 -10.52735615 -5.86362839 8.050098419 -10.035563469 -5.86362839 8.31542492 -9.79735279
		 -5.86362839 9.30626869 -8.90777016 -6.97907829 9.30626869 -8.90777016 -6.97907829 9.78540802 -8.47759819
		 -8.18539238 9.78540802 -8.47759819 -8.18539238 9.30626869 -8.90777016 -8.26360321 9.30626869 -8.90777016
		 -8.26360321 8.31542492 -9.79735279 -8.26360321 8.050098419 -10.035563469 -8.26360321 7.5023241 -10.52735615
		 -8.26360321 7.43830967 -10.58482742 -8.26360321 6.53647995 -11.39449215 -6.95745182 6.53647995 -11.39449215
		 -6.95745182 5.65677023 -12.18429852 -8.26360321 5.65677023 -12.18429852 -8.26360321 5.11945915 -12.66669655
		 -5.86362839 5.11945915 -12.66669655 -5.65973759 0.070859671 -3.60998821 -5.65973759 4.52936077 -3.60998821
		 -8.43047333 9.89148998 -3.60998821 -5.65973759 9.89148998 -3.60998821 -6.10423756 6.53647995 -11.39449215
		 -5.86362839 5.65677023 -12.18429852 -6.10423756 5.65677023 -12.18429852 -5.86362839 7.5023241 -11.39449215
		 -5.86362839 7.5023241 -10.58482742 -5.86362839 8.050098419 -10.58482742 -5.86362839 9.30626869 -9.79735279
		 -8.26360321 9.30626869 -9.79735279 -8.18539238 9.30626869 -9.25002289 -6.97907829 9.30626869 -9.25002289
		 -6.97907829 9.78540802 -9.25002289 -8.18539238 9.78540802 -9.25002289 -8.26360321 8.050098419 -10.58482742
		 -8.26360321 7.5023241 -10.58482742 -8.26360321 7.5023241 -11.39449215 -6.10423756 6.55061245 -11.39449215
		 -6.95745182 6.55061245 -11.39449215 -6.95745182 6.55061245 -12.25406075 -6.95745182 5.65677023 -12.25406075
		 -5.86362839 5.65677023 -12.66669655 -8.26360321 5.65677023 -12.66669655 -6.10423756 5.65677023 -12.25406075
		 -6.10423756 6.55061245 -12.25406075;
	setAttr -s 142 ".ed[0:141]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 8 9 0 9 10 0
		 8 11 1 11 12 1 13 14 0 14 15 0 0 3 0 1 4 1 2 5 0 4 6 1 5 7 0 6 9 1 7 10 0 9 11 1
		 10 12 0 8 13 0 11 14 1 12 15 0 13 0 0 14 1 1 15 2 0 12 5 1 8 3 0 6 3 0 16 17 0 17 18 0
		 18 19 0 19 16 0 20 21 0 21 17 0 16 20 0 21 22 0 22 18 0 20 23 0 23 22 0 24 25 0 25 26 1
		 26 27 1 27 24 0 28 24 0 27 29 0 29 28 0 28 30 0 30 25 1 25 31 0 31 32 0 32 26 1 26 33 1
		 33 27 0 29 34 1 34 30 1 33 35 1 35 29 0 29 36 1 36 37 0 37 38 0 38 39 0 39 40 1 40 41 0
		 41 23 0 19 42 0 42 43 0 43 44 0 44 33 1 44 45 0 45 46 0 46 47 0 47 40 0 39 48 0 48 49 0
		 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0 56 29 1 30 57 0 57 31 0 57 58 0
		 58 32 1 32 59 0 59 33 0 35 34 1 34 58 1 59 60 0 60 35 0 61 36 0 56 62 0 62 63 0 63 61 0
		 36 64 0 64 65 0 65 37 1 65 38 1 66 39 0 65 66 0 40 67 0 67 41 0 67 68 0 68 46 0 45 69 0
		 69 70 0 70 42 0 71 43 0 70 71 0 71 72 0 72 44 0 72 69 0 68 47 0 66 73 0 73 48 0 73 74 0
		 74 49 1 74 50 1 74 75 0 75 51 0 75 64 0 61 76 0 76 77 0 77 52 0 77 78 0 78 79 0 79 53 0
		 62 80 0 80 81 0 81 54 0 79 82 0 82 63 0 81 55 0 80 56 0 58 60 0 83 76 0 82 83 0 74 65 0
		 83 78 0;
	setAttr -s 62 -ch 284 ".fc[0:61]" -type "polyFaces" 
		f 4 0 12 -3 -12
		mu 0 4 0 1 4 3
		f 4 1 13 -4 -13
		mu 0 4 1 2 5 4
		f 3 2 14 28
		mu 0 3 3 4 7
		f 4 3 15 -5 -15
		mu 0 4 4 5 8 7
		f 4 -29 16 -6 27
		mu 0 4 6 7 10 9
		f 4 4 17 -7 -17
		mu 0 4 7 8 11 10
		f 3 5 18 -8
		mu 0 3 12 10 13
		f 4 6 19 -9 -19
		mu 0 4 10 11 14 13
		f 4 7 21 -10 -21
		mu 0 4 12 13 16 15
		f 4 8 22 -11 -22
		mu 0 4 13 14 17 16
		f 4 9 24 -1 -24
		mu 0 4 15 16 19 18
		f 4 10 25 -2 -25
		mu 0 4 16 17 20 19
		f 4 -26 -23 26 -14
		mu 0 4 2 21 22 5
		f 4 -27 -20 -18 -16
		mu 0 4 5 22 23 8
		f 4 23 11 -28 20
		mu 0 4 24 0 3 25
		f 4 29 30 31 32
		mu 0 4 26 27 28 29
		f 4 33 34 -30 35
		mu 0 4 30 31 27 26
		f 4 -31 -35 36 37
		mu 0 4 28 27 32 33
		f 4 -34 38 39 -37
		mu 0 4 31 30 34 35
		f 4 40 41 42 43
		mu 0 4 36 37 38 39
		f 4 44 -44 45 46
		mu 0 4 40 36 39 41
		f 4 47 48 -41 -45
		mu 0 4 42 43 44 45
		f 4 49 50 51 -42
		mu 0 4 37 46 47 38
		f 3 -43 52 53
		mu 0 3 39 38 48
		f 4 54 55 -48 -47
		mu 0 4 49 50 43 42
		f 16 56 57 58 59 60 61 62 63 64 -39 -36 -33 65 66 67 68
		mu 0 16 48 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65
		f 18 -54 -69 69 70 71 72 -63 73 74 75 76 77 78 79 80 81 82 -46
		mu 0 18 66 48 65 67 68 69 57 56 70 71 72 73 74 75 76 77 78 52
		f 4 83 84 -50 -49
		mu 0 4 43 79 80 44
		f 4 -85 85 86 -51
		mu 0 4 46 81 82 47
		f 4 -52 87 88 -53
		mu 0 4 38 47 83 48
		f 3 -58 89 -55
		mu 0 3 49 51 50
		f 4 90 -86 -84 -56
		mu 0 4 50 84 79 43
		f 4 -89 91 92 -57
		mu 0 4 48 83 85 51
		f 6 93 -59 -83 94 95 96
		mu 0 6 86 53 52 78 87 88
		f 4 -60 97 98 99
		mu 0 4 89 90 91 92
		f 3 100 -61 -100
		mu 0 3 92 93 89
		f 4 101 -62 -101 102
		mu 0 4 94 95 96 97
		f 3 103 104 -64
		mu 0 3 98 99 100
		f 12 -105 105 106 -71 107 108 109 -66 -32 -38 -40 -65
		mu 0 12 100 99 101 102 103 104 105 106 107 108 109 110
		f 4 110 -67 -110 111
		mu 0 4 111 112 113 114
		f 4 -111 112 113 -68
		mu 0 4 112 111 115 116
		f 4 -114 114 -108 -70
		mu 0 4 116 115 117 118
		f 3 -107 115 -72
		mu 0 3 102 101 119
		f 4 -116 -106 -104 -73
		mu 0 4 119 101 120 121
		f 4 -102 116 117 -74
		mu 0 4 95 94 122 123
		f 4 118 119 -75 -118
		mu 0 4 122 124 125 123
		f 3 -76 -120 120
		mu 0 3 126 127 128
		f 4 121 122 -77 -121
		mu 0 4 128 129 130 126
		f 8 -123 123 -98 -94 124 125 126 -78
		mu 0 8 130 129 131 132 133 134 135 136
		f 5 127 128 129 -79 -127
		mu 0 5 137 138 139 140 141
		f 8 130 131 132 -80 -130 133 134 -96
		mu 0 8 142 143 144 145 146 147 148 149
		f 3 -133 135 -81
		mu 0 3 145 144 150
		f 4 -136 -132 136 -82
		mu 0 4 150 144 151 152
		f 4 -87 137 -92 -88
		mu 0 4 47 82 153 83
		f 4 -93 -138 -91 -90
		mu 0 4 51 85 84 50
		f 5 138 -125 -97 -135 139
		mu 0 5 154 155 156 157 158
		f 3 -137 -131 -95
		mu 0 3 159 143 142
		f 4 -99 -124 -122 140
		mu 0 4 92 91 129 128
		f 4 -119 -117 -103 -141
		mu 0 4 124 122 160 161
		f 4 -115 -113 -112 -109
		mu 0 4 117 115 162 163
		f 4 -139 141 -128 -126
		mu 0 4 155 154 138 137
		f 4 -129 -142 -140 -134
		mu 0 4 139 138 164 165;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface33";
	rename -uid "42899643-C848-7DA4-53BB-74BB67C9158C";
createNode transform -n "transform2" -p "polySurface33";
	rename -uid "40288E15-C442-03C0-13DE-19AE3BC82DA7";
	setAttr ".v" no;
createNode mesh -n "polySurface33Shape" -p "transform2";
	rename -uid "3AD30764-6046-B065-C157-1F945F8455A1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:52]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 116 ".uvst[0].uvsp[0:115]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.37500811 0.12499324 0.625 0 0.625 0.125 0.5 0.25 0.625 0.25 0.37497514 0.25003746
		 0.5 0.5 0.375025 0.49998751 0.625 0.5 0.37501875 0.62500626 0.5 0.625 0.625 0.625
		 0.5 0.75 0.375 0.75 0.625 0.75 0.5 1 0.375 1 0.625 1 0.875 0 0.875 0.125 0.875 0.25
		 0.125 0 0.1250125 0.12497501 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 72 ".vt[0:71]"  -0.20515324 -0.11760153 15.76008224 -0.20515373 -0.11760153 11.69996071
		 -0.20515397 -0.11760153 7.67505693 -0.20515324 0.47677687 15.76008224 -0.20515373 0.47677714 11.69996071
		 -0.20515397 0.47677687 7.67505693 -0.20515373 4.99906921 11.69996071 -0.20515397 4.99906921 7.67505693
		 -5.35332823 0.47677687 15.76008224 -5.35332823 4.99906921 11.69996071 -5.35332775 4.99906921 7.67505693
		 -5.35332823 0.47677714 11.69996071 -5.35332775 0.47677687 7.67505693 -5.35332823 -0.11760153 15.76008224
		 -5.35332823 -0.11760153 11.69996071 -5.35332775 -0.11760153 7.67505693 -4.25886822 2.73001313 12.63768101
		 -4.25886774 2.73001313 10.61359882 -4.25886822 4.75409508 12.63768101 -4.25886774 4.75409508 10.61359882
		 -4.97844887 4.75409508 12.63768101 -4.97844934 4.75409508 10.61359882 -4.97844887 2.73001313 12.63768101
		 -4.97844934 2.73001313 10.61359882 -0.34588864 0.96002167 14.24032307 -0.34588814 0.96002167 12.21624088
		 -0.34588864 2.98410344 14.24032307 -0.34588814 2.98410344 12.21624088 -5.18137169 2.98410344 14.24032307
		 -5.18137217 2.98410344 12.21624088 -5.18137169 0.96002167 14.24032307 -5.18137217 0.96002167 12.21624088
		 -0.34588814 1.42200148 13.55747223 -0.34588814 1.42200148 11.53339005 -0.34588814 3.44608331 13.55747223
		 -0.34588814 3.44608331 11.53339005 -5.18137217 3.44608331 13.55747223 -5.18137217 3.44608331 11.53339005
		 -5.18137217 1.42200148 13.55747223 -5.18137217 1.42200148 11.53339005 -0.34588814 0.56745678 15.31326866
		 -0.34588864 0.56745678 13.28918743 -0.34588814 1.42760706 15.31326866 -0.34588864 1.42760706 13.28918743
		 -5.18137217 1.42760706 15.31326866 -5.18137169 1.42760706 13.28918743 -5.18137217 0.56745678 15.31326866
		 -5.18137169 0.56745678 13.28918743 -0.34588766 2.48142624 12.89333248 -0.34588766 2.48142624 10.86925125
		 -0.34588766 4.50550795 12.89333248 -0.34588766 4.50550795 10.86925125 -5.18137121 4.50550795 12.89333153
		 -5.18137169 4.50550795 10.86925125 -5.18137121 2.48142624 12.89333153 -5.18137169 2.48142624 10.86925125
		 -0.41184941 2.88552094 12.43172836 -0.41184893 2.88552094 10.40764809 -0.41184941 4.90960264 12.43172836
		 -0.41184893 4.90960264 10.40764809 -2.96783376 4.90960264 12.43172836 -2.96783328 4.90960264 10.40764713
		 -2.96783376 2.88552094 12.43172836 -2.96783328 2.88552094 10.40764713 -1.18924379 0.15737048 14.96526241
		 -1.18924427 0.15737048 12.94118023 -1.18924379 2.18145204 14.96526241 -1.18924427 2.18145204 12.94118023
		 -1.90882492 2.18145204 14.96526241 -1.90882492 2.18145204 12.94118023 -1.90882492 0.15737048 14.96526241
		 -1.90882492 0.15737048 12.94118023;
	setAttr -s 112 ".ed[0:111]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 8 9 0 9 10 0
		 8 11 1 11 12 1 13 14 0 14 15 0 0 3 0 1 4 1 2 5 0 4 6 1 5 7 0 6 9 1 7 10 0 9 11 1
		 10 12 0 8 13 0 11 14 1 12 15 0 13 0 0 14 1 1 15 2 0 12 5 1 8 3 0 6 3 0 16 17 0 18 19 0
		 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0
		 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0
		 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0
		 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0
		 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0
		 53 55 0 54 48 0 56 57 0 58 59 0 60 61 0 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0
		 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0
		 68 70 0 69 71 0 70 64 0 71 65 0;
	setAttr -s 53 -ch 210 ".fc[0:52]" -type "polyFaces" 
		f 4 0 12 -3 -12
		mu 0 4 0 1 2 3
		f 4 1 13 -4 -13
		mu 0 4 1 4 5 2
		f 3 2 14 28
		mu 0 3 3 2 6
		f 4 3 15 -5 -15
		mu 0 4 2 5 7 6
		f 4 -29 16 -6 27
		mu 0 4 8 6 9 10
		f 4 4 17 -7 -17
		mu 0 4 6 7 11 9
		f 3 5 18 -8
		mu 0 3 12 9 13
		f 4 6 19 -9 -19
		mu 0 4 9 11 14 13
		f 4 7 21 -10 -21
		mu 0 4 12 13 15 16
		f 4 8 22 -11 -22
		mu 0 4 13 14 17 15
		f 4 9 24 -1 -24
		mu 0 4 16 15 18 19
		f 4 10 25 -2 -25
		mu 0 4 15 17 20 18
		f 4 -26 -23 26 -14
		mu 0 4 4 21 22 5
		f 4 -27 -20 -18 -16
		mu 0 4 5 22 23 7
		f 4 23 11 -28 20
		mu 0 4 24 0 3 25
		f 4 29 34 -31 -34
		mu 0 4 26 27 28 29
		f 4 30 36 -32 -36
		mu 0 4 29 28 30 31
		f 4 31 38 -33 -38
		mu 0 4 31 30 32 33
		f 4 32 40 -30 -40
		mu 0 4 33 32 34 35
		f 4 39 33 35 37
		mu 0 4 36 26 29 37
		f 4 41 46 -43 -46
		mu 0 4 38 39 40 41
		f 4 42 48 -44 -48
		mu 0 4 41 40 42 43
		f 4 43 50 -45 -50
		mu 0 4 43 42 44 45
		f 4 44 52 -42 -52
		mu 0 4 45 44 46 47
		f 4 -53 -51 -49 -47
		mu 0 4 39 48 49 40
		f 4 51 45 47 49
		mu 0 4 50 38 41 51
		f 4 53 58 -55 -58
		mu 0 4 52 53 54 55
		f 4 54 60 -56 -60
		mu 0 4 55 54 56 57
		f 4 55 62 -57 -62
		mu 0 4 57 56 58 59
		f 4 56 64 -54 -64
		mu 0 4 59 58 60 61
		f 4 63 57 59 61
		mu 0 4 62 52 55 63
		f 4 65 70 -67 -70
		mu 0 4 64 65 66 67
		f 4 66 72 -68 -72
		mu 0 4 67 66 68 69
		f 4 67 74 -69 -74
		mu 0 4 69 68 70 71
		f 4 68 76 -66 -76
		mu 0 4 71 70 72 73
		f 4 -77 -75 -73 -71
		mu 0 4 65 74 75 66
		f 4 75 69 71 73
		mu 0 4 76 64 67 77
		f 4 77 82 -79 -82
		mu 0 4 78 79 80 81
		f 4 78 84 -80 -84
		mu 0 4 81 80 82 83
		f 4 79 86 -81 -86
		mu 0 4 83 82 84 85
		f 4 87 81 83 85
		mu 0 4 86 78 81 87
		f 4 88 93 -90 -93
		mu 0 4 88 89 90 91
		f 4 89 95 -91 -95
		mu 0 4 91 90 92 93
		f 4 90 97 -92 -97
		mu 0 4 93 92 94 95
		f 4 91 99 -89 -99
		mu 0 4 95 94 96 97
		f 4 -100 -98 -96 -94
		mu 0 4 89 98 99 90
		f 4 98 92 94 96
		mu 0 4 100 88 91 101
		f 4 100 105 -102 -105
		mu 0 4 102 103 104 105
		f 4 101 107 -103 -107
		mu 0 4 105 104 106 107
		f 4 102 109 -104 -109
		mu 0 4 107 106 108 109
		f 4 103 111 -101 -111
		mu 0 4 109 108 110 111
		f 4 -112 -110 -108 -106
		mu 0 4 103 112 113 104
		f 4 110 104 106 108
		mu 0 4 114 102 105 115;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group51";
	rename -uid "ABB1E9FE-F242-F6E8-BE05-398C406E1B17";
	setAttr ".t" -type "double3" 19.323237005212768 0 0 ;
	setAttr ".r" -type "double3" 0 45 0 ;
	setAttr ".rp" -type "double3" -1.1418521810037436 2.4407338425517082 7.8800411224365234 ;
	setAttr ".sp" -type "double3" -1.1418521810037436 2.4407338425517082 7.8800411224365234 ;
createNode transform -n "pasted__polySurface33" -p "group51";
	rename -uid "862B185A-DF4B-0C53-8473-8393063A0BAB";
	setAttr ".t" -type "double3" -10.698377993443328 3.606042264285616 18.399848840711464 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "transform1" -p "pasted__polySurface33";
	rename -uid "60B876DC-1146-C972-CB54-85864B046C19";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurface33Shape" -p "transform1";
	rename -uid "76C63AE2-294F-8326-E9C0-C18B71AD3731";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:52]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 116 ".uvst[0].uvsp[0:115]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.37500811 0.12499324 0.625 0 0.625 0.125 0.5 0.25 0.625 0.25 0.37497514 0.25003746
		 0.5 0.5 0.375025 0.49998751 0.625 0.5 0.37501875 0.62500626 0.5 0.625 0.625 0.625
		 0.5 0.75 0.375 0.75 0.625 0.75 0.5 1 0.375 1 0.625 1 0.875 0 0.875 0.125 0.875 0.25
		 0.125 0 0.1250125 0.12497501 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -3.2956049 3.5527137e-15 ;
	setAttr ".pt[1]" -type "float3" 0 -3.2956049 3.5527137e-15 ;
	setAttr ".pt[2]" -type "float3" 0 -3.2956049 3.5527137e-15 ;
	setAttr ".pt[13]" -type "float3" 0 -3.2956049 0 ;
	setAttr ".pt[14]" -type "float3" 0 -3.2956049 3.5527137e-15 ;
	setAttr ".pt[15]" -type "float3" 3.5527137e-15 -3.2956049 3.5527137e-15 ;
	setAttr ".pt[65]" -type "float3" 0 -3.2956049 3.5527137e-15 ;
	setAttr ".pt[71]" -type "float3" 0 -3.2956049 3.5527137e-15 ;
	setAttr -s 72 ".vt[0:71]"  24.41576195 -0.11760153 12.7897253 21.54482269 -0.11760153 9.91878605
		 18.69878387 -0.11760153 7.072749138 24.41576195 0.47677687 12.7897253 21.54482269 0.47677714 9.91878605
		 18.69878387 0.47677687 7.072749138 21.54482269 4.99906921 9.91878605 18.69878387 4.99906921 7.072749138
		 20.77545166 0.47677687 16.43003464 17.90451431 4.99906921 13.55909538 15.058476448 4.99906921 10.71305752
		 17.90451431 0.47677714 13.55909538 15.058476448 0.47677687 10.71305752 20.77545166 -0.11760153 16.43003464
		 17.90451431 -0.11760153 13.55909538 15.058476448 -0.11760153 10.71305752 19.34148026 2.73001313 13.44826317
		 17.91024017 2.73001313 12.017021179 19.34148026 4.75409508 13.44826317 17.91024017 4.75409508 12.017021179
		 18.83266068 4.75409508 13.95708275 17.40141869 4.75409508 12.52584171 18.83266068 2.73001313 13.95708275
		 17.40141869 2.73001313 12.52584171 23.2416153 0.96002167 11.81460762 21.8103714 0.96002167 10.38336563
		 23.2416153 2.98410344 11.81460762 21.8103714 2.98410344 10.38336563 19.82241058 2.98410344 15.23381042
		 18.3911705 2.98410344 13.80256844 19.82241058 0.96002167 15.23381042 18.3911705 0.96002167 13.80256844
		 22.75876617 1.42200148 11.33175945 21.32752419 1.42200148 9.90051746 22.75876617 3.44608331 11.33175945
		 21.32752419 3.44608331 9.90051746 19.33956337 3.44608331 14.75096226 17.90832138 3.44608331 13.31972027
		 19.33956337 1.42200148 14.75096226 17.90832138 1.42200148 13.31972027 24.00030136108 0.56745678 12.57329559
		 22.56906128 0.56745678 11.1420536 24.00030136108 1.42760706 12.57329559 22.56906128 1.42760706 11.1420536
		 20.58110046 1.42760706 15.9924984 19.14985657 1.42760706 14.56125641 20.58110046 0.56745678 15.9924984
		 19.14985657 0.56745678 14.56125641 22.28915024 2.48142624 10.86214066 20.85790825 2.48142624 9.43089962
		 22.28915024 4.50550795 10.86214066 20.85790825 4.50550795 9.43089962 18.86994553 4.50550795 14.28134346
		 17.43870544 4.50550795 12.85010242 18.86994553 2.48142624 14.28134346 17.43870544 2.48142624 12.85010242
		 21.91610336 2.88552094 10.58238029 20.48486328 2.88552094 9.15113831 21.91610336 4.90960264 10.58238029
		 20.48486328 4.90960264 9.15113831 20.10874939 4.90960264 12.38973427 18.67750931 4.90960264 10.95849228
		 20.10874939 2.88552094 12.38973427 18.67750931 2.88552094 10.95849228 23.15788078 0.15737048 12.92356014
		 21.72663879 0.15737048 11.49231815 23.15788078 2.18145204 12.92356014 21.72663879 2.18145204 11.49231815
		 22.6490612 2.18145204 13.43238068 21.21781921 2.18145204 12.0011386871 22.6490612 0.15737048 13.43238068
		 21.21781921 0.15737048 12.0011386871;
	setAttr -s 112 ".ed[0:111]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 0 8 9 0 9 10 0
		 8 11 1 11 12 1 13 14 0 14 15 0 0 3 0 1 4 1 2 5 0 4 6 1 5 7 0 6 9 1 7 10 0 9 11 1
		 10 12 0 8 13 0 11 14 1 12 15 0 13 0 0 14 1 1 15 2 0 12 5 1 8 3 0 6 3 0 16 17 0 18 19 0
		 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0
		 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0
		 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0
		 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0
		 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0
		 53 55 0 54 48 0 56 57 0 58 59 0 60 61 0 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0
		 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0
		 68 70 0 69 71 0 70 64 0 71 65 0;
	setAttr -s 53 -ch 210 ".fc[0:52]" -type "polyFaces" 
		f 4 0 12 -3 -12
		mu 0 4 0 1 2 3
		f 4 1 13 -4 -13
		mu 0 4 1 4 5 2
		f 3 2 14 28
		mu 0 3 3 2 6
		f 4 3 15 -5 -15
		mu 0 4 2 5 7 6
		f 4 -29 16 -6 27
		mu 0 4 8 6 9 10
		f 4 4 17 -7 -17
		mu 0 4 6 7 11 9
		f 3 5 18 -8
		mu 0 3 12 9 13
		f 4 6 19 -9 -19
		mu 0 4 9 11 14 13
		f 4 7 21 -10 -21
		mu 0 4 12 13 15 16
		f 4 8 22 -11 -22
		mu 0 4 13 14 17 15
		f 4 9 24 -1 -24
		mu 0 4 16 15 18 19
		f 4 10 25 -2 -25
		mu 0 4 15 17 20 18
		f 4 -26 -23 26 -14
		mu 0 4 4 21 22 5
		f 4 -27 -20 -18 -16
		mu 0 4 5 22 23 7
		f 4 23 11 -28 20
		mu 0 4 24 0 3 25
		f 4 29 34 -31 -34
		mu 0 4 26 27 28 29
		f 4 30 36 -32 -36
		mu 0 4 29 28 30 31
		f 4 31 38 -33 -38
		mu 0 4 31 30 32 33
		f 4 32 40 -30 -40
		mu 0 4 33 32 34 35
		f 4 39 33 35 37
		mu 0 4 36 26 29 37
		f 4 41 46 -43 -46
		mu 0 4 38 39 40 41
		f 4 42 48 -44 -48
		mu 0 4 41 40 42 43
		f 4 43 50 -45 -50
		mu 0 4 43 42 44 45
		f 4 44 52 -42 -52
		mu 0 4 45 44 46 47
		f 4 -53 -51 -49 -47
		mu 0 4 39 48 49 40
		f 4 51 45 47 49
		mu 0 4 50 38 41 51
		f 4 53 58 -55 -58
		mu 0 4 52 53 54 55
		f 4 54 60 -56 -60
		mu 0 4 55 54 56 57
		f 4 55 62 -57 -62
		mu 0 4 57 56 58 59
		f 4 56 64 -54 -64
		mu 0 4 59 58 60 61
		f 4 63 57 59 61
		mu 0 4 62 52 55 63
		f 4 65 70 -67 -70
		mu 0 4 64 65 66 67
		f 4 66 72 -68 -72
		mu 0 4 67 66 68 69
		f 4 67 74 -69 -74
		mu 0 4 69 68 70 71
		f 4 68 76 -66 -76
		mu 0 4 71 70 72 73
		f 4 -77 -75 -73 -71
		mu 0 4 65 74 75 66
		f 4 75 69 71 73
		mu 0 4 76 64 67 77
		f 4 77 82 -79 -82
		mu 0 4 78 79 80 81
		f 4 78 84 -80 -84
		mu 0 4 81 80 82 83
		f 4 79 86 -81 -86
		mu 0 4 83 82 84 85
		f 4 87 81 83 85
		mu 0 4 86 78 81 87
		f 4 88 93 -90 -93
		mu 0 4 88 89 90 91
		f 4 89 95 -91 -95
		mu 0 4 91 90 92 93
		f 4 90 97 -92 -97
		mu 0 4 93 92 94 95
		f 4 91 99 -89 -99
		mu 0 4 95 94 96 97
		f 4 -100 -98 -96 -94
		mu 0 4 89 98 99 90
		f 4 98 92 94 96
		mu 0 4 100 88 91 101
		f 4 100 105 -102 -105
		mu 0 4 102 103 104 105
		f 4 101 107 -103 -107
		mu 0 4 105 104 106 107
		f 4 102 109 -104 -109
		mu 0 4 107 106 108 109
		f 4 103 111 -101 -111
		mu 0 4 109 108 110 111
		f 4 -112 -110 -108 -106
		mu 0 4 103 112 113 104
		f 4 110 104 106 108
		mu 0 4 114 102 105 115;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface2";
	rename -uid "C074D902-6042-CC7C-BF29-29B5F4D474CA";
	setAttr ".s" -type "double3" 2.6402325204150912 2.6402325204150912 2.6402325204150912 ;
createNode transform -n "polySurface89" -p "|polySurface2";
	rename -uid "FD76978F-D549-6795-4BFB-5AA4CE1F30FC";
createNode transform -n "transform64" -p "|polySurface2|polySurface89";
	rename -uid "E45B04E7-DA45-07DE-DC2F-84AA201D9755";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape88" -p "transform64";
	rename -uid "359CC765-A240-FDED-2F91-AEA7C00E85E4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface90" -p "|polySurface2";
	rename -uid "14FDDEFD-954F-9704-0648-88B1EAE8A1A4";
createNode transform -n "transform136" -p "|polySurface2|polySurface90";
	rename -uid "6C424898-914A-F4B3-ED95-7481F74ABB10";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape89" -p "transform136";
	rename -uid "FD75E3CC-AF49-4253-299F-929FD1C0CD1F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface91" -p "|polySurface2";
	rename -uid "84A86BA6-CC47-FEA9-30F3-63ADF3660736";
createNode transform -n "transform135" -p "polySurface91";
	rename -uid "07FE2D82-4042-1603-676B-4083944D0FC5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape90" -p "transform135";
	rename -uid "55C7E722-C742-450A-AEA2-BF9260A8B297";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface92" -p "|polySurface2";
	rename -uid "DBAE0328-C746-8B40-ED5B-BE81E7E6416D";
createNode transform -n "transform134" -p "polySurface92";
	rename -uid "A51E9DE2-F342-7459-130D-DBA63953A65C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape91" -p "transform134";
	rename -uid "E53AABCE-3C48-E520-95DF-E3A7A82127E1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface93" -p "|polySurface2";
	rename -uid "FDD75F8B-9541-810D-F66A-BC856DB6EB9A";
createNode transform -n "transform133" -p "polySurface93";
	rename -uid "C9A75BBB-2E49-AC51-1CDF-C8A0302616F6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape92" -p "transform133";
	rename -uid "528849EA-BA4D-504A-9A82-DF99B97C61C7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface94" -p "|polySurface2";
	rename -uid "1ED5AA15-7B40-6AE8-7FB2-45A3866789A3";
createNode transform -n "transform132" -p "polySurface94";
	rename -uid "955701DA-C047-6B46-B92C-70AC377F33B7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape93" -p "transform132";
	rename -uid "7BD321B2-554E-D43B-C1F2-A4B7D9336D4B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface95" -p "|polySurface2";
	rename -uid "785942F8-F944-1F36-C726-F3A0058B40F9";
createNode transform -n "transform131" -p "polySurface95";
	rename -uid "246FCA69-D94E-3E14-059F-08AD54780E4E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape94" -p "transform131";
	rename -uid "199B7E5A-0941-9E7E-1F79-02B1EA770314";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface96" -p "|polySurface2";
	rename -uid "C5D48864-0D48-68E1-031C-DE88795F8341";
createNode transform -n "transform130" -p "polySurface96";
	rename -uid "CB075CA0-AC4F-5E3E-49AA-DDB9577A9CE8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape95" -p "transform130";
	rename -uid "B4E83710-984D-7CF4-0F32-E7879FD00429";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface97" -p "|polySurface2";
	rename -uid "E6820DFA-7040-530E-4B8C-83ADD41391C3";
createNode transform -n "transform129" -p "polySurface97";
	rename -uid "2A67771D-B74E-2A87-B216-E4B29AEA156F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape96" -p "transform129";
	rename -uid "6D8E7D3A-0444-51EF-C9B1-1A8D2D591D5F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface98" -p "|polySurface2";
	rename -uid "5FCACD88-344D-9EC8-A9CF-DBB71E71B3D4";
createNode transform -n "transform128" -p "polySurface98";
	rename -uid "08C6E6BA-9B4B-E551-42BB-0DB63A2261BB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape97" -p "transform128";
	rename -uid "04C663BA-BD40-2D03-344C-76B7D4C84CC7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface99" -p "|polySurface2";
	rename -uid "8EC4A608-4741-36C4-E5F0-E78221AC0942";
createNode transform -n "transform127" -p "polySurface99";
	rename -uid "45DAED96-9A48-83C2-AE9F-05967E1DBC2F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape98" -p "transform127";
	rename -uid "FE2DFBFD-F04B-29B3-3227-29B4A92B53B5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface100" -p "|polySurface2";
	rename -uid "8BCCAE11-4B47-5A01-A6C8-548C88C230C3";
createNode transform -n "transform126" -p "polySurface100";
	rename -uid "C3E0A019-4145-EE35-7DEF-BBAA2D542C47";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape99" -p "transform126";
	rename -uid "B713231E-ED49-83AC-4A45-46830BBE71E2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface101" -p "|polySurface2";
	rename -uid "FC35B143-944D-39DC-38E0-2CABDF9BDD4F";
createNode transform -n "transform125" -p "polySurface101";
	rename -uid "87C0CA1C-9C49-BA75-889B-3A944D2288C9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape100" -p "transform125";
	rename -uid "84E97585-174C-D52B-FB69-F3A0284ED869";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.35124999284744263 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[30:35]" -type "float3"  2.9802322e-08 0.22671361 
		-0.16086558 0 -0.00013685753 -0.29184034 0 -0.00013685753 -0.29184034 2.9802322e-08 
		0.22671361 -0.16086558 2.9802322e-08 0 -0.16086558 2.9802322e-08 0 -0.16086558;
createNode transform -n "polySurface102" -p "|polySurface2";
	rename -uid "3959F746-2F43-1D85-6EC3-11A477816F77";
createNode transform -n "transform124" -p "polySurface102";
	rename -uid "C54C1250-A144-2CCF-3242-8C9EC85E2B6E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape101" -p "transform124";
	rename -uid "3F310DFC-114C-669E-BE84-6F8595CE3B4F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface103" -p "|polySurface2";
	rename -uid "A73B3FBC-AE4A-66E5-74ED-C495E898E8F8";
createNode transform -n "transform123" -p "polySurface103";
	rename -uid "52B7D0A1-2D48-FBA9-8723-44834D652C53";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape102" -p "transform123";
	rename -uid "F9B06C74-FA43-FB21-F23A-C79406B8A12F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface104" -p "|polySurface2";
	rename -uid "F8FC521C-964A-CDC4-8793-2083E0773CB3";
createNode transform -n "transform122" -p "polySurface104";
	rename -uid "1F3C2F8A-8E49-5AB3-4003-29861B289967";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape103" -p "transform122";
	rename -uid "EA3CBB75-6E49-EEEE-AF49-D1ADD893662C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface105" -p "|polySurface2";
	rename -uid "529F1F8E-DF4C-1FFD-FE55-A786FEE435CF";
createNode transform -n "transform121" -p "polySurface105";
	rename -uid "9E0673B8-E54B-398C-F69D-A3AD54C89B48";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape104" -p "transform121";
	rename -uid "C3E8E6DF-9A41-E279-5D10-56AF61CE95EA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface106" -p "|polySurface2";
	rename -uid "62260278-4948-697F-95EB-11A225E8C15A";
createNode transform -n "transform120" -p "polySurface106";
	rename -uid "836D2B01-0745-13EB-6AC8-F893774EEE2B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape105" -p "transform120";
	rename -uid "3ABAD715-624A-411A-CBD6-799061E36459";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface107" -p "|polySurface2";
	rename -uid "3CFA94AA-A74C-860A-7FFA-A6A8AD3BF230";
createNode transform -n "transform119" -p "polySurface107";
	rename -uid "BBE4A9CB-B241-62DC-E80E-73BABBAA34AF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape106" -p "transform119";
	rename -uid "7AE9733F-0042-6FC3-95DF-3ABFA292C6AB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface108" -p "|polySurface2";
	rename -uid "6737864C-874B-55CA-46A9-5CA3EB239DE8";
createNode transform -n "transform118" -p "polySurface108";
	rename -uid "82060C6C-104D-2AC9-A090-F18083FE88FD";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape107" -p "transform118";
	rename -uid "00F34ED2-6F4F-5626-0486-AD927385E63D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface109" -p "|polySurface2";
	rename -uid "5EBD17D2-7C49-D625-A385-FA8CF3900A53";
createNode transform -n "transform117" -p "polySurface109";
	rename -uid "095FB52C-CD4A-CBAA-6B36-0C92DEB22904";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape108" -p "transform117";
	rename -uid "B605C144-D245-8519-4DC3-0D9F51C58C86";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface110" -p "|polySurface2";
	rename -uid "7399A741-DC4B-D7FF-1EDD-C5AECB550B3F";
createNode transform -n "transform116" -p "polySurface110";
	rename -uid "F2D36C56-374E-377C-5035-DE8B2178FD05";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape109" -p "transform116";
	rename -uid "B184A0F2-8543-AC24-458C-918534A92919";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface111" -p "|polySurface2";
	rename -uid "5F17393C-E94E-D5D8-F940-4FAC26D74229";
createNode transform -n "transform115" -p "polySurface111";
	rename -uid "AFC0D11D-B84C-4000-59BA-1F93601F28B5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape110" -p "transform115";
	rename -uid "82B204B9-D84B-6C95-ACD1-8F97AFEB213B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface112" -p "|polySurface2";
	rename -uid "88EB914F-8A4E-F13E-4B64-BFB772A658EC";
createNode transform -n "transform114" -p "polySurface112";
	rename -uid "8A9C5861-4245-403E-AEA2-2790436D1DEF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape111" -p "transform114";
	rename -uid "5C647EFB-B648-99A0-7A71-F0B2449EB2AC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface113" -p "|polySurface2";
	rename -uid "F695A739-A242-5839-FD7B-A39C617A3545";
createNode transform -n "transform113" -p "polySurface113";
	rename -uid "A83C3EDC-9645-AFB3-C870-C083D4D339D2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape112" -p "transform113";
	rename -uid "0E9AF74F-C547-CD82-97D5-24BFC6723A53";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface114" -p "|polySurface2";
	rename -uid "0CFE7073-CE47-32CA-4F2D-0790C63577EF";
createNode transform -n "transform112" -p "polySurface114";
	rename -uid "E32397F2-C942-04BA-6902-C18FA74F9ED7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape113" -p "transform112";
	rename -uid "75108CB7-7E40-3A07-8FE1-B7A98A94B0A9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface115" -p "|polySurface2";
	rename -uid "D3D11DAF-1E45-D767-EADD-DCB889AAC6AB";
createNode transform -n "transform111" -p "polySurface115";
	rename -uid "E930AAFD-0F42-42BA-FC3E-60B6F4B8DE9E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape114" -p "transform111";
	rename -uid "7D49CE38-A84E-0DB4-BDCA-F1BC2580A56F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface116" -p "|polySurface2";
	rename -uid "1C8AF0D7-9642-0BB6-2DD6-658CA2C04D69";
createNode transform -n "transform110" -p "polySurface116";
	rename -uid "E8BE0829-674A-FF83-2203-6F98804ABDAA";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape115" -p "transform110";
	rename -uid "00236B5B-AE47-B256-A8C2-A4B58427B08C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface117" -p "|polySurface2";
	rename -uid "F9F988E2-DA42-A1CA-4B2E-E2AE69191D25";
createNode transform -n "transform109" -p "polySurface117";
	rename -uid "FE073640-EF4A-EC99-B0BE-398C2E3DD554";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape116" -p "transform109";
	rename -uid "9ADC5FA7-A74B-5439-3E38-A6B1AC0B12FA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface118" -p "|polySurface2";
	rename -uid "74B04EFF-7840-8B74-3BC1-43AAAE6B8DD1";
createNode transform -n "transform108" -p "polySurface118";
	rename -uid "C6569555-DE47-5FCC-0ED2-6B9609A34350";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape117" -p "transform108";
	rename -uid "A3B4A4A2-294F-3CF2-EAD4-7AA6C361451B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface119" -p "|polySurface2";
	rename -uid "DE5E6494-F949-6ED9-9599-AAB02B6B5E21";
createNode transform -n "transform107" -p "polySurface119";
	rename -uid "C6411B7C-2B4C-7550-78CC-709B99F1FA28";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape118" -p "transform107";
	rename -uid "43A6B081-C045-8804-2CCC-02AD5FAEEE35";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface120" -p "|polySurface2";
	rename -uid "977B4A22-2748-E2A5-198C-6FB1176E9823";
createNode transform -n "transform106" -p "polySurface120";
	rename -uid "A62D90DA-4A4F-BDFF-E398-90A04C0A9AC3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape119" -p "transform106";
	rename -uid "B713AC07-464A-4F9C-DE20-28901E24C1ED";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface121" -p "|polySurface2";
	rename -uid "76837E46-9049-680D-8EFA-0CA99BB50C04";
createNode transform -n "transform105" -p "polySurface121";
	rename -uid "4EFFCB3A-F041-72FF-1492-06BD7380AD33";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape120" -p "transform105";
	rename -uid "CC5CF316-0847-0C92-7757-7CA4A1E4AFF7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface122" -p "|polySurface2";
	rename -uid "24378BAE-5145-F3BA-E46A-B9A17240B907";
createNode transform -n "transform104" -p "polySurface122";
	rename -uid "1DFDA843-3549-7832-3578-B8B1268C5DFB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape121" -p "transform104";
	rename -uid "80FE46F4-F14C-B746-AFE3-B993FD2A1E25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface123" -p "|polySurface2";
	rename -uid "9BBAE462-484A-5321-71AD-67BDD6572B3F";
createNode transform -n "transform103" -p "polySurface123";
	rename -uid "31D566F4-4F4B-4ED0-671A-87B4CE27F1B7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape122" -p "transform103";
	rename -uid "9C74C847-5D44-82CB-E5F1-6A8CD91E0F40";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface124" -p "|polySurface2";
	rename -uid "855856A4-2A4F-23AD-3622-8592733DF746";
createNode transform -n "transform102" -p "polySurface124";
	rename -uid "C6AAD22C-E249-ADC8-1F69-A392B078A8A7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape123" -p "transform102";
	rename -uid "EC8CF733-4C45-E2DA-7F34-0E97BF0EA290";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface125" -p "|polySurface2";
	rename -uid "A7522535-4941-6358-2FCD-AD8F9C6A9238";
createNode transform -n "transform101" -p "polySurface125";
	rename -uid "2200AC0E-7C49-6F70-84EF-25ADB5901CB2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape124" -p "transform101";
	rename -uid "67E0C451-0F4B-91CE-AB3D-8E877A1FA98F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface126" -p "|polySurface2";
	rename -uid "1C61D5A2-1C47-1B42-8029-5EBC6A2A5997";
createNode transform -n "transform100" -p "polySurface126";
	rename -uid "A7A42364-DA43-86E9-38E5-0D8ED86ECF3F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape125" -p "transform100";
	rename -uid "7EC39CCD-6946-F243-835F-7BA046F5D519";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface127" -p "|polySurface2";
	rename -uid "6F418DF5-E247-5D4C-4EE5-E49D7DDD1B8E";
createNode transform -n "transform99" -p "polySurface127";
	rename -uid "1040010C-C94C-56A4-654D-919E796749D4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape126" -p "transform99";
	rename -uid "A6DB9A19-584C-A9AA-04A2-E796356DA81E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface128" -p "|polySurface2";
	rename -uid "BB8D2313-9942-76F7-1376-63B0CACE9DCA";
createNode transform -n "transform98" -p "polySurface128";
	rename -uid "133FA060-9D4C-68EC-6452-A2AE10644874";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape127" -p "transform98";
	rename -uid "CA09603A-5C43-0EE8-C018-FE977BEEFAC6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface129" -p "|polySurface2";
	rename -uid "DFEA16D8-4D41-1623-7977-45A03925983E";
createNode transform -n "transform97" -p "polySurface129";
	rename -uid "17359107-E740-B437-29BE-55B0D97C179B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape128" -p "transform97";
	rename -uid "BC9006B3-DB46-C58E-F517-F08CEB899869";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface130" -p "|polySurface2";
	rename -uid "CAED37AD-854A-E4E5-9B18-5E802E7B1337";
createNode transform -n "transform96" -p "polySurface130";
	rename -uid "3542C9E4-A347-9189-2B64-41AD6B399BBF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape129" -p "transform96";
	rename -uid "47C6A60B-8546-7F05-4B44-93880BBEA8BD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface131" -p "|polySurface2";
	rename -uid "1C389092-CB41-3073-F24D-14ACDCB9B66A";
createNode transform -n "transform95" -p "polySurface131";
	rename -uid "426FB399-3841-BE7A-CC3B-748D3639F006";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape130" -p "transform95";
	rename -uid "D9C65E62-E24E-96CD-03A4-F88D79D0D8DC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface132" -p "|polySurface2";
	rename -uid "D6D0E914-8D4C-49F0-1E9E-A2818A624370";
createNode transform -n "transform94" -p "polySurface132";
	rename -uid "A9DD571F-444F-5013-BA69-049BFEF665D1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape131" -p "transform94";
	rename -uid "7D935A16-7E4F-321A-C02C-4FB312A0F43D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface133" -p "|polySurface2";
	rename -uid "9C470539-F941-4509-FAA6-849D63CEFDB4";
createNode transform -n "transform93" -p "polySurface133";
	rename -uid "E7314B90-2B4F-11F7-9177-30820A33BD10";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape132" -p "transform93";
	rename -uid "82DA431F-FB41-B56F-4936-FB858521C6FD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface134" -p "|polySurface2";
	rename -uid "319B4405-0D4D-37C2-80FA-C0850238054A";
createNode transform -n "transform92" -p "polySurface134";
	rename -uid "CA61110C-244F-054E-1995-2F89B8255842";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape133" -p "transform92";
	rename -uid "E42017E6-F84D-7BFB-7B2A-2294C5F7A517";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface135" -p "|polySurface2";
	rename -uid "224DB343-9047-7F9B-C12D-AC86CC1657A8";
createNode transform -n "transform91" -p "polySurface135";
	rename -uid "46D412E7-2B40-0A1D-3E88-95999F2B152C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape134" -p "transform91";
	rename -uid "5C060CB8-7A49-AC2C-DF73-6EBBE9485ECF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface136" -p "|polySurface2";
	rename -uid "C91527A8-AD41-33F3-171A-C58623B6CDC7";
createNode transform -n "transform60" -p "polySurface136";
	rename -uid "91311097-7E43-109D-FAF5-08B7C9036383";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape135" -p "transform60";
	rename -uid "A2FD10B2-4847-F429-29D6-EDAFD3921889";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface137" -p "|polySurface2";
	rename -uid "D2876665-F447-B8D9-FFA5-82BC768A9A5F";
createNode transform -n "transform59" -p "polySurface137";
	rename -uid "446A1D43-E543-47AD-94CC-509607844450";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape136" -p "transform59";
	rename -uid "AE6733F8-1C4B-4613-38C7-03B55E831CB2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface138" -p "|polySurface2";
	rename -uid "A4B477FB-224C-5880-2091-D1A7132D2FA7";
createNode transform -n "transform61" -p "|polySurface2|polySurface138";
	rename -uid "F861CA48-BD44-7451-D50E-DF91CF00B8F6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape137" -p "transform61";
	rename -uid "64F6B67C-F04B-F9BE-9904-768507080EDF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface139" -p "|polySurface2";
	rename -uid "C616708F-3249-08E8-142D-D4813C895732";
createNode transform -n "transform90" -p "polySurface139";
	rename -uid "F9509824-3949-EA6E-9B85-B3BF51561650";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape138" -p "transform90";
	rename -uid "851B2D0B-1644-0531-3D2A-CF81C67C29FB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface140" -p "|polySurface2";
	rename -uid "53AF5F70-4043-7C37-BCBB-4CA7A61E8D46";
createNode transform -n "transform89" -p "polySurface140";
	rename -uid "7BDBA45E-2847-94DF-3F72-4B84726721E3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape139" -p "transform89";
	rename -uid "646DE9AD-F448-E5FB-AF17-6EBC0F6B37F6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface141" -p "|polySurface2";
	rename -uid "A9813D19-274A-8CB9-7484-BF9D7E699C6E";
createNode transform -n "transform88" -p "polySurface141";
	rename -uid "F30907F7-0143-6990-82F2-329229FFCDBD";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape140" -p "transform88";
	rename -uid "8F07B426-244F-63B5-F51A-6583558E2BDF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface142" -p "|polySurface2";
	rename -uid "DB29AE4A-0A43-9213-7E94-70A0CB147175";
createNode transform -n "transform87" -p "polySurface142";
	rename -uid "84AE3EE0-6849-8725-FA32-D8A7AB9BAA5A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape141" -p "transform87";
	rename -uid "1A720F88-7147-824D-DBEB-8A9FC30AD334";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface143" -p "|polySurface2";
	rename -uid "A84CEDD2-7148-7813-53B5-79919227DF70";
createNode transform -n "transform86" -p "polySurface143";
	rename -uid "787242D5-2045-EB42-BB0B-F2B4D5635DFD";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape142" -p "transform86";
	rename -uid "E85BB6EB-DC4F-CF86-251E-F098F988DE09";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface144" -p "|polySurface2";
	rename -uid "9D6F3717-CA4C-CF61-E566-CC92B43FD1D4";
createNode transform -n "transform85" -p "polySurface144";
	rename -uid "4B6C9D07-0141-71F5-D4F6-9689F299449B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape143" -p "transform85";
	rename -uid "2483FBDA-4846-08AE-792E-598608111CC9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface145" -p "|polySurface2";
	rename -uid "578E52CA-1C43-F7FE-647F-1C97769E68BC";
createNode transform -n "transform84" -p "polySurface145";
	rename -uid "3CE51911-5342-20D7-8E85-74828F66167D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape144" -p "transform84";
	rename -uid "6A5519E2-6F40-64BE-8E29-B4A487540848";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface146" -p "|polySurface2";
	rename -uid "1AC98DF1-0D45-9294-C18C-32856E7BA5CF";
createNode transform -n "transform83" -p "polySurface146";
	rename -uid "7813494A-304C-D0BF-DD66-D6B1AB73AD0F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape145" -p "transform83";
	rename -uid "9A8C7B6E-2742-578E-5C02-B8BC2D538B0A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[8]" -type "float3" 0 1.2451918 0 ;
	setAttr ".pt[9]" -type "float3" 0 1.2451918 0 ;
	setAttr ".pt[12]" -type "float3" 0 1.2451918 0 ;
	setAttr ".pt[14]" -type "float3" 0 1.2451918 0 ;
	setAttr ".pt[15]" -type "float3" 0 1.2451918 0 ;
	setAttr ".pt[41]" -type "float3" 0 1.2451918 0 ;
createNode transform -n "polySurface147" -p "|polySurface2";
	rename -uid "BDDE8E74-B049-8695-2DF8-8CA0672E4A29";
createNode transform -n "transform82" -p "polySurface147";
	rename -uid "DAE5CB2D-0142-590A-386A-B4A1F53A2B4E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape146" -p "transform82";
	rename -uid "8F3FEC02-4744-B4EC-16D5-3A8590E3A981";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface148" -p "|polySurface2";
	rename -uid "B70DC235-874A-BF8A-694D-DCBF39A6D08F";
createNode transform -n "transform81" -p "polySurface148";
	rename -uid "10A2B01D-1845-4B64-93B3-12A0355DB667";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape147" -p "transform81";
	rename -uid "2C4A157F-8B43-A99D-04EC-B6A0E6B861C2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface149" -p "|polySurface2";
	rename -uid "9278B94B-954A-F4A1-E5AF-2DA3FC7346FA";
createNode transform -n "transform80" -p "polySurface149";
	rename -uid "6630D11A-104E-0EFB-E9B9-42ADB4D7D125";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape148" -p "transform80";
	rename -uid "23577335-854E-4ABE-97B3-A090886E9C8E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface150" -p "|polySurface2";
	rename -uid "98743409-264B-BCC1-F4B9-9CB680AB6675";
createNode transform -n "transform79" -p "polySurface150";
	rename -uid "6B067DD1-9A43-0BF0-4D1E-3CAA89862909";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape149" -p "transform79";
	rename -uid "1DDE400C-7C44-D5B8-C6A3-4CB174B65400";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface151" -p "|polySurface2";
	rename -uid "6ED030B9-934F-8A89-AF0B-94900BABC10F";
createNode transform -n "transform78" -p "polySurface151";
	rename -uid "AB89CE0C-0B4B-DCD6-36D8-F5B9F7647D5B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape150" -p "transform78";
	rename -uid "EB903205-FD40-C0F1-AFD8-B1A8C8F3E99A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface152" -p "|polySurface2";
	rename -uid "C61766C6-9340-7722-645D-5D80B0EA4DE3";
createNode transform -n "transform77" -p "polySurface152";
	rename -uid "AD2DA791-6347-9864-6589-01AC7486629C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape151" -p "transform77";
	rename -uid "C926EDCB-6646-2BB2-7102-7F983ACB8ED4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface153" -p "|polySurface2";
	rename -uid "EAF29F8A-E644-3F70-1043-D792421148D2";
createNode transform -n "transform76" -p "polySurface153";
	rename -uid "CF23E5F6-5544-DC08-DD4D-3F90836CAB7E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape152" -p "transform76";
	rename -uid "231F3DF6-3147-13B0-9A04-1EBF9EE691F5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface154" -p "|polySurface2";
	rename -uid "8B49A3D0-0941-8FB1-5CAE-D898D5570D3F";
createNode transform -n "transform75" -p "polySurface154";
	rename -uid "C3A5490C-244C-8766-A238-CBB0D7C377C8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape153" -p "transform75";
	rename -uid "26095401-634D-EA00-F23C-73915E334EB5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface155" -p "|polySurface2";
	rename -uid "F1F09C76-FF48-DA8B-E404-D4B4BD892A72";
createNode transform -n "transform74" -p "polySurface155";
	rename -uid "AADF883A-F141-68A3-1AEF-7AA2CC716729";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape154" -p "transform74";
	rename -uid "AEBAEDC6-B046-772B-5D17-F483A4A18F5D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface156" -p "|polySurface2";
	rename -uid "FA8D551E-FA48-3D60-75BB-2CA8DAFDFC81";
createNode transform -n "transform73" -p "polySurface156";
	rename -uid "031FF359-3C4D-D628-3A55-758442D3EE90";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape155" -p "transform73";
	rename -uid "8E403CB7-474A-7AE0-9717-4AA572A142B5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface157" -p "|polySurface2";
	rename -uid "234004F3-A841-8C40-1062-7591F4254705";
createNode transform -n "transform72" -p "polySurface157";
	rename -uid "5C3C58BF-974D-C3F5-3D47-16A7828FF49A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape156" -p "transform72";
	rename -uid "45EF4E0E-3F43-AABD-6D46-26AC83C621DE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface158" -p "|polySurface2";
	rename -uid "1BA04024-C94E-2B7B-ECF0-0A916ACEC2D7";
createNode transform -n "transform71" -p "polySurface158";
	rename -uid "C73A9EBF-7D47-CC5F-A025-9784FD67D024";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape157" -p "transform71";
	rename -uid "1E4227DA-2D4E-BE0A-1712-79A156A52A4F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface159" -p "|polySurface2";
	rename -uid "E41C6FEC-B745-D6CA-DF91-4BA3CF3FCBA8";
createNode transform -n "transform70" -p "polySurface159";
	rename -uid "1A148513-4D4C-E5D1-4268-2F8275E9D595";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape158" -p "transform70";
	rename -uid "49F88E1E-1F4D-1158-468C-2BBCEF5C22A1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface160" -p "|polySurface2";
	rename -uid "CEA05135-3F47-A57B-6EFE-EC8306360E90";
createNode transform -n "transform69" -p "polySurface160";
	rename -uid "170E762D-5249-9B3D-3147-18B7E47B5B2D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape159" -p "transform69";
	rename -uid "679165F2-8E48-684E-2A3C-D0A83A5F63AE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface161" -p "|polySurface2";
	rename -uid "60743088-6A45-3607-DC30-B1AEE0C20E75";
createNode transform -n "transform68" -p "polySurface161";
	rename -uid "BCCA7CA8-214F-0BDA-382C-D4BB201B01D7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape160" -p "transform68";
	rename -uid "2A28AAF3-BF40-65A7-035B-0494E007D4AC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface162" -p "|polySurface2";
	rename -uid "132BF90D-894B-DE5E-003E-B3A151DFE1ED";
createNode transform -n "transform67" -p "polySurface162";
	rename -uid "2DB062C2-7446-0555-B364-6DABE3F336DD";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape161" -p "transform67";
	rename -uid "0F587B90-1244-8570-22C5-F3AACAACE42F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform58" -p "|polySurface2";
	rename -uid "5831BBCC-E446-2465-9BCD-BCA922379BF2";
	setAttr ".v" no;
createNode mesh -n "polySurface2Shape" -p "transform58";
	rename -uid "D339F5B0-DC4E-7B24-E4ED-27A6A8CAE2FE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".clst[1].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface138";
	rename -uid "E3AC5C10-A146-DF82-763A-52BE847E5347";
createNode transform -n "transform66" -p "|polySurface138";
	rename -uid "EC5DFE5C-D747-C556-6237-6CA7BA107C1E";
	setAttr ".v" no;
createNode mesh -n "polySurface138Shape" -p "transform66";
	rename -uid "ADB16B63-644E-E51B-9089-5F8B98F7B735";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube23";
	rename -uid "5F16DAED-2D4F-997F-1363-72B6949CEBA7";
	setAttr ".t" -type "double3" -2.4289527026065425 87.573644846986483 6.5168711285261995 ;
	setAttr ".s" -type "double3" 0.37099607053400507 86.354207577220237 2.9918614649277062 ;
createNode transform -n "transform63" -p "pCube23";
	rename -uid "28ED58E0-A340-EC9B-AA45-BB8A1F9FDD17";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform63";
	rename -uid "EE911B21-AF44-3357-9FC8-6E8114C0FE70";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group52";
	rename -uid "07BCB4BB-8846-B26C-E385-A29034E5BAE3";
	setAttr ".t" -type "double3" -1.6473624468710142 0 0 ;
	setAttr ".rp" -type "double3" -2.4289527026065425 87.573644846986483 6.5168711285261995 ;
	setAttr ".sp" -type "double3" -2.4289527026065425 87.573644846986483 6.5168711285261995 ;
createNode transform -n "pasted__pCube23" -p "group52";
	rename -uid "D1C5DE0A-E548-973E-50D3-E0A2D4ED4CD8";
	setAttr ".t" -type "double3" -1.9704107585380513 87.573644846986483 6.5168711285261995 ;
	setAttr ".s" -type "double3" 0.37099607053400507 86.354207577220237 2.9918614649277062 ;
createNode transform -n "transform62" -p "pasted__pCube23";
	rename -uid "BF170367-4C4E-7DDE-A5E7-39A194BD1325";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape23" -p "transform62";
	rename -uid "D0FBDB45-464F-57C4-16E8-108D244D6E48";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface89";
	rename -uid "6137DAE4-D443-94EE-20EC-39A5EA13B35E";
	setAttr ".rp" -type "double3" 2.528587818145752 50.984133243560791 0 ;
	setAttr ".sp" -type "double3" 2.528587818145752 50.984133243560791 0 ;
createNode transform -n "transform65" -p "|polySurface89";
	rename -uid "B04E53D1-DA44-CB95-0D52-47B27F7129E9";
	setAttr ".v" no;
createNode mesh -n "polySurface89Shape" -p "transform65";
	rename -uid "75E3D8A7-6E41-C8E6-7226-6CA2202FD1BD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface90";
	rename -uid "EFA5C2B1-B847-EC13-6D30-1BB4B79B0FA7";
createNode transform -n "polySurface163" -p "|polySurface90";
	rename -uid "B339AFBD-964A-4161-FB16-32A39DAA2A0A";
createNode transform -n "transform158" -p "|polySurface90|polySurface163";
	rename -uid "9E85BAFD-444E-F9CA-B07E-36AD3AE4648F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape162" -p "transform158";
	rename -uid "47E36A38-F549-6C18-3D75-83922BB8ED9C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface164" -p "|polySurface90";
	rename -uid "0C0BD0C6-8D4E-8E37-22AD-C799B722AA05";
createNode transform -n "transform234" -p "|polySurface90|polySurface164";
	rename -uid "0AD05F18-AD4D-30DB-44A1-04855B92AF42";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape163" -p "transform234";
	rename -uid "284652D7-B745-8DFA-146C-049FCBBB0588";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface165" -p "|polySurface90";
	rename -uid "909CE1BA-C043-F3AE-C705-A2B4AAB0F9D8";
createNode transform -n "transform233" -p "polySurface165";
	rename -uid "C8B63BF8-434E-831B-6B14-B787565DD15A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape164" -p "transform233";
	rename -uid "AA93AFA9-3444-52DF-6483-0989C804633B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface166" -p "|polySurface90";
	rename -uid "62304454-8347-7C51-8B3E-3D86F9DCDF71";
createNode transform -n "transform232" -p "polySurface166";
	rename -uid "8DAAB876-8245-88AF-0568-FDA1C99E1796";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape165" -p "transform232";
	rename -uid "2142F756-B649-FEA0-23BE-5DAE7AF9D6D5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface167" -p "|polySurface90";
	rename -uid "25FE16F0-7349-8DA7-3048-2FB726B99095";
createNode transform -n "transform231" -p "polySurface167";
	rename -uid "9B0B09FC-7545-5A80-9F86-B9894373990F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape166" -p "transform231";
	rename -uid "54145C3D-7543-2070-4C22-5ABDD88AE6AE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface168" -p "|polySurface90";
	rename -uid "14E93C3D-864D-01C8-36BA-5C9B1907F71E";
createNode transform -n "transform230" -p "polySurface168";
	rename -uid "CB8F5E62-7D40-870B-B129-A9B6D925CCC9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape167" -p "transform230";
	rename -uid "4903972B-6044-670C-260E-BEACC9C4F915";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface169" -p "|polySurface90";
	rename -uid "8D50DE0F-6D48-4AEB-F1DA-B299AE47D6DF";
createNode transform -n "transform229" -p "polySurface169";
	rename -uid "F8C8D7DB-3E48-0C01-4C48-3CAED27E94B9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape168" -p "transform229";
	rename -uid "242D4DB5-5D46-9C24-BEAE-D5877DF1C248";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface170" -p "|polySurface90";
	rename -uid "78D2B889-2443-B911-94F6-4689A34BD3B1";
createNode transform -n "transform228" -p "polySurface170";
	rename -uid "ABFDD7D2-EC4C-14A7-5161-128E65D93788";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape169" -p "transform228";
	rename -uid "25E3B34D-914A-E900-EC03-50B7B04071D5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface171" -p "|polySurface90";
	rename -uid "6938E944-1740-62F1-7FDE-3AB5858746BB";
createNode transform -n "transform227" -p "polySurface171";
	rename -uid "9268CE41-6941-E570-B7BD-FCBD51366FA5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape170" -p "transform227";
	rename -uid "F5CDD00D-B84C-42F9-EFFC-AE87086E54B7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface172" -p "|polySurface90";
	rename -uid "4905C4C7-6046-0A1D-B159-3BB2F0D0C1EB";
createNode transform -n "transform226" -p "polySurface172";
	rename -uid "08B43C37-1E4C-519E-1D53-4793FF999C24";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape171" -p "transform226";
	rename -uid "98C006B1-A140-9CFA-0403-01B41F9736E1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface173" -p "|polySurface90";
	rename -uid "5CE734A8-D34F-6175-DF2C-73A08B49EA92";
createNode transform -n "transform225" -p "polySurface173";
	rename -uid "D43E84C7-8B40-92DC-AF0C-4A83E1597C71";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape172" -p "transform225";
	rename -uid "22CA06D7-844C-FEAD-9949-1F8CA7E78363";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface174" -p "|polySurface90";
	rename -uid "0FFFD551-F445-33C5-C9EF-C4AEBC02C047";
createNode transform -n "transform224" -p "polySurface174";
	rename -uid "353B75A2-C746-5D47-1E1F-A6B41592B284";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape173" -p "transform224";
	rename -uid "74739313-F843-6753-A3E9-4C8D5C1DC578";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.21809998899698257 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[34]" -type "float3" 0 1.4090542 0 ;
	setAttr ".pt[35]" -type "float3" 0 1.4090542 0 ;
	setAttr ".pt[50]" -type "float3" 0 -0.23726419 -0.22826003 ;
	setAttr ".pt[51]" -type "float3" 0 0.3238371 -0.16545901 ;
	setAttr ".pt[52]" -type "float3" 0 -0.23726419 -0.22826003 ;
	setAttr ".pt[53]" -type "float3" 0 0.3238371 -0.16545901 ;
	setAttr ".pt[54]" -type "float3" 0 0.66464442 0 ;
	setAttr ".pt[55]" -type "float3" 0 0.66464442 0 ;
createNode transform -n "polySurface175" -p "|polySurface90";
	rename -uid "3F486380-E646-49B9-0E01-C08456538EE2";
createNode transform -n "transform223" -p "polySurface175";
	rename -uid "DCB1920B-EF41-DD92-8004-0582805D44C4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape174" -p "transform223";
	rename -uid "E639473E-384E-E08B-DCBF-D7A544B3CCF8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface176" -p "|polySurface90";
	rename -uid "BC1EE3C8-004C-ECE1-0B62-C89C6C65AAF2";
createNode transform -n "transform222" -p "polySurface176";
	rename -uid "D9D93ED9-5C44-8B0D-8CAA-67909E6C4C89";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape175" -p "transform222";
	rename -uid "C5E7F507-C342-895D-C5B0-CE9BEE4E9F13";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface177" -p "|polySurface90";
	rename -uid "12DFEE77-3843-946E-D690-0C8839F7F933";
createNode transform -n "transform221" -p "polySurface177";
	rename -uid "2D6A13B6-BF45-E169-D19A-50AC629A882A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape176" -p "transform221";
	rename -uid "137143A4-194E-FBF3-6FD5-1F96B1314A49";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface178" -p "|polySurface90";
	rename -uid "0C988019-E943-C0CE-FCB1-7CBCA342090D";
createNode transform -n "transform220" -p "polySurface178";
	rename -uid "E8138A98-B049-5264-E10D-72BE301A6966";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape177" -p "transform220";
	rename -uid "D70957FF-5C4D-2E80-E6BD-B9B7C512B145";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface179" -p "|polySurface90";
	rename -uid "AA4C7B18-F14E-6443-8686-8FAA59DB3031";
createNode transform -n "transform219" -p "polySurface179";
	rename -uid "EB173918-914B-979F-0980-FF8EA45A9463";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape178" -p "transform219";
	rename -uid "5000F283-2E4F-7AEF-A1AB-7F8ED0A196A3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface180" -p "|polySurface90";
	rename -uid "19A254E0-F647-9815-6AE8-5A90551C4F20";
createNode transform -n "transform218" -p "polySurface180";
	rename -uid "0EB05C60-3B49-8C8C-0657-F19719E8D8BB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape179" -p "transform218";
	rename -uid "92742AE9-E44B-B63B-19F2-538B46379579";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface181" -p "|polySurface90";
	rename -uid "B6F49DE2-8747-C2E2-CBFC-6B96B268DCC2";
createNode transform -n "transform217" -p "polySurface181";
	rename -uid "A08049B8-9F4B-D166-6723-72A2C281B40B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape180" -p "transform217";
	rename -uid "03B553A1-5D46-4CC1-DF4D-A1B1CDABD559";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface182" -p "|polySurface90";
	rename -uid "D2188C9B-824C-755F-D730-3F9404806068";
createNode transform -n "transform216" -p "polySurface182";
	rename -uid "5510D368-5448-67AE-D7C4-44B7D98C4A76";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape181" -p "transform216";
	rename -uid "5C13229F-424A-B5E0-4C48-B4AB209B1EA5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface183" -p "|polySurface90";
	rename -uid "01E4D0C8-064B-AF5B-1BD8-C7A2D6AC5845";
createNode transform -n "transform215" -p "polySurface183";
	rename -uid "01B4D161-1A4A-C436-D1F0-FF934D5164B6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape182" -p "transform215";
	rename -uid "56AF69D0-6448-0BBE-5366-51BCBC8643AF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface184" -p "|polySurface90";
	rename -uid "EC5341D0-BC43-818E-0C4A-8FAE5B7AC072";
createNode transform -n "transform214" -p "polySurface184";
	rename -uid "5144D21D-2A46-A6BB-E8DC-669207F2F878";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape183" -p "transform214";
	rename -uid "6966783D-6E42-7911-7DE8-EDB740ADA14E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface185" -p "|polySurface90";
	rename -uid "20168B71-4F4D-168F-C406-A282D9F0E25F";
createNode transform -n "transform213" -p "polySurface185";
	rename -uid "74CCF834-3542-9E75-61BB-5A9635BE5C38";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape184" -p "transform213";
	rename -uid "2374FE9F-AA42-B233-0E3A-E59219EB37FD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface186" -p "|polySurface90";
	rename -uid "A4C4DBE5-3B41-888F-E72D-6DA144487585";
createNode transform -n "transform212" -p "polySurface186";
	rename -uid "82C34ED5-494F-224C-A525-DAB1E630E3DA";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape185" -p "transform212";
	rename -uid "49761FE2-DB46-1BAE-DB3A-37A45B17AB32";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface187" -p "|polySurface90";
	rename -uid "31E381E8-624D-FC07-F523-C0949044D245";
createNode transform -n "transform211" -p "polySurface187";
	rename -uid "70655CF3-1E48-1F4F-5A3F-CF80DC01B18D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape186" -p "transform211";
	rename -uid "D6FA93E5-A849-CF2A-8946-2A99711CF436";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface188" -p "|polySurface90";
	rename -uid "D9568C46-274A-F621-974C-BAB706656C98";
createNode transform -n "transform210" -p "polySurface188";
	rename -uid "C575E032-704D-BB82-18CA-8495EE9B7DF3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape187" -p "transform210";
	rename -uid "A15C0607-0248-BA9C-9EF2-638D07E3AC2E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface189" -p "|polySurface90";
	rename -uid "3298D5DF-A546-586D-57CA-E7A07D70967F";
createNode transform -n "transform209" -p "polySurface189";
	rename -uid "0D4B20E6-9141-74FE-8F52-22885E1AE442";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape188" -p "transform209";
	rename -uid "1886E73B-4B42-43BB-87FC-09B8FFEBA2E3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface190" -p "|polySurface90";
	rename -uid "ADCC84C1-1340-7DA4-0919-ACB7DECC1ACA";
createNode transform -n "transform208" -p "polySurface190";
	rename -uid "AB0A5A8A-AB4A-2BB5-CEE7-08A0825FC770";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape189" -p "transform208";
	rename -uid "E5DDEA12-3A4F-A70D-6558-04A9E971F4D9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface191" -p "|polySurface90";
	rename -uid "B9F5E100-C241-D383-557F-B1893C3AB41D";
createNode transform -n "transform207" -p "polySurface191";
	rename -uid "D177C263-A345-A52A-B4CE-2FAF3999FD63";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape190" -p "transform207";
	rename -uid "0AA8251C-7047-A39A-03E1-AAB7BA79A1F7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface192" -p "|polySurface90";
	rename -uid "A9F39AA2-414D-76C1-E6B3-00860647FA3F";
createNode transform -n "transform206" -p "polySurface192";
	rename -uid "7E006C44-4C42-8283-50B4-05B5E633D0B7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape191" -p "transform206";
	rename -uid "72A87A4B-8B44-3A03-D2A0-8F84887838E4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface193" -p "|polySurface90";
	rename -uid "01C830A6-A849-648E-5205-C1A3A2BBDF19";
createNode transform -n "transform205" -p "polySurface193";
	rename -uid "6070996F-E549-4E17-7E3F-BEB91D445B82";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape192" -p "transform205";
	rename -uid "F65AFADD-F641-20A2-A8CF-E0B817CADFD3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface194" -p "|polySurface90";
	rename -uid "B695295C-BC48-AAF8-9AB9-6092C88E0792";
createNode transform -n "transform204" -p "polySurface194";
	rename -uid "CDDABC8E-C74B-54CB-047E-90AC3B9B793C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape193" -p "transform204";
	rename -uid "7794D1F4-8347-E49F-D9D5-0DA22CA888F9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface195" -p "|polySurface90";
	rename -uid "837ECA1C-2C40-6B37-6883-0CA3333D010C";
createNode transform -n "transform203" -p "polySurface195";
	rename -uid "5FDC84F3-6B48-234C-1DDB-9B844777C310";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape194" -p "transform203";
	rename -uid "B5E4389C-344F-9B7A-7983-C5B25EEBEFB3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface196" -p "|polySurface90";
	rename -uid "BD31F9CB-D749-A717-0B63-6984C22A4394";
createNode transform -n "transform202" -p "polySurface196";
	rename -uid "7D584C59-5A44-6A32-AD77-55ACB19DCD70";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape195" -p "transform202";
	rename -uid "0B0BC33E-6043-2B15-82B5-A3B1173161DE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface197" -p "|polySurface90";
	rename -uid "FDF2C7CC-E749-0A2A-BC65-D0B14B754760";
createNode transform -n "transform152" -p "|polySurface90|polySurface197";
	rename -uid "EB4E47E2-E84C-9AD1-6200-A1A8129051BF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape196" -p "transform152";
	rename -uid "81A6DD6B-BE4A-1D7F-4F91-2D99F8283455";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface198" -p "|polySurface90";
	rename -uid "153C671C-3942-76DE-A05A-108F295E6422";
	setAttr ".t" -type "double3" 0 0 0.96422248419534462 ;
createNode transform -n "transform154" -p "|polySurface90|polySurface198";
	rename -uid "DA913912-C648-0FAD-D20A-72921493647C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape197" -p "transform154";
	rename -uid "B85C3A7A-4B48-020B-9D01-6E8ADEAA6CCA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.34331310032625317 0.49999994039535522 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface199" -p "|polySurface90";
	rename -uid "648A458C-8741-A669-54E6-0D8D043F7B79";
createNode transform -n "transform146" -p "|polySurface90|polySurface199";
	rename -uid "95B96DF8-E143-5EE6-E9AC-B3BDC4B288A3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape198" -p "transform146";
	rename -uid "FAB5F31A-9740-3959-BC5A-8A83D6D388A9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface200" -p "|polySurface90";
	rename -uid "CEDDCFE2-534C-81B9-24E0-86B587E00C0A";
createNode transform -n "transform160" -p "|polySurface90|polySurface200";
	rename -uid "9502F4F5-F248-A218-9B54-2B876110AC8A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape199" -p "transform160";
	rename -uid "2149C5E5-9F43-B5D5-7445-AF84E6B6705D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.70183402299880981 0.99999988079071045 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.8136823 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.8136823 0 ;
	setAttr ".pt[6]" -type "float3" 0 1.8136823 0 ;
	setAttr ".pt[7]" -type "float3" 0 1.8136823 0 ;
	setAttr ".pt[10]" -type "float3" 0 1.8136823 0 ;
	setAttr ".pt[11]" -type "float3" 0 1.8136823 0 ;
	setAttr ".pt[13]" -type "float3" 0 1.8136823 0 ;
	setAttr ".pt[17]" -type "float3" 0 1.8136823 0 ;
	setAttr ".pt[18]" -type "float3" 0 1.8136823 0 ;
	setAttr ".pt[19]" -type "float3" 0 1.8136823 0 ;
	setAttr ".pt[20]" -type "float3" 0 1.8136823 0 ;
	setAttr ".pt[21]" -type "float3" 0 1.8136823 0 ;
createNode transform -n "polySurface201" -p "|polySurface90";
	rename -uid "5C3677EE-F747-5CCB-DC8A-3D8ABCF38126";
createNode transform -n "transform201" -p "polySurface201";
	rename -uid "EFF9B7B2-F44A-C8C8-EA6D-D8843404D4DB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape200" -p "transform201";
	rename -uid "33F662C3-7E42-B063-31E1-14802626724C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface202" -p "|polySurface90";
	rename -uid "29E5DE2E-864B-B48B-65BD-3E81A0525E4B";
createNode transform -n "transform200" -p "polySurface202";
	rename -uid "E3615AE1-C249-541F-488E-3687D338F22A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape201" -p "transform200";
	rename -uid "2077E965-8F4E-976C-1892-F999D8EECF1D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface203" -p "|polySurface90";
	rename -uid "3CFA3D82-9B49-6648-5B8F-BC9F7CB28C3C";
createNode transform -n "transform199" -p "polySurface203";
	rename -uid "91AC6630-D342-7C56-57E1-FC9856F85BB0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape202" -p "transform199";
	rename -uid "C30EDC67-A542-E9B2-C40C-EF8FF89DB776";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface204" -p "|polySurface90";
	rename -uid "A59DEBFE-7D41-B84A-46AD-EC90BB87C40E";
createNode transform -n "transform198" -p "polySurface204";
	rename -uid "7DDFB8BB-BC4C-7CD5-1F52-3F8EBAE50B63";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape203" -p "transform198";
	rename -uid "1D1D588F-B44D-E016-A08C-F5A045A559B7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface205" -p "|polySurface90";
	rename -uid "F60C3672-E54D-0426-0060-A98B8BE4F2D9";
	setAttr ".t" -type "double3" 0 0 2.2266392446441134 ;
createNode transform -n "transform197" -p "polySurface205";
	rename -uid "564C743F-D646-D2A3-7E01-EAB5B4CE8DC1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape204" -p "transform197";
	rename -uid "AABE01C0-D146-E905-8982-6FAC6454EFFE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface206" -p "|polySurface90";
	rename -uid "D3318877-B24D-7A8A-755C-1E85EEF3A963";
createNode transform -n "transform196" -p "polySurface206";
	rename -uid "61FDB3E6-264F-29AA-5C08-57AF28A3C146";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape205" -p "transform196";
	rename -uid "C5CC8E2C-1641-39DF-4EA0-34B88D54B39A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface207" -p "|polySurface90";
	rename -uid "4EEFC706-AF41-7338-F682-45B4986A6905";
createNode transform -n "transform195" -p "polySurface207";
	rename -uid "82AEDC99-9A47-1CD7-11DB-F787C9BFB3A8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape206" -p "transform195";
	rename -uid "672A89A1-B044-1F9A-F924-98BA4DFBC696";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface208" -p "|polySurface90";
	rename -uid "DAE168E4-034A-C59B-439D-CD88158CCCF1";
createNode transform -n "transform150" -p "|polySurface90|polySurface208";
	rename -uid "FEA526FB-9940-7635-0A3B-C0B438A703A5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape207" -p "transform150";
	rename -uid "4EB05C2E-5C45-B0D9-B7B6-F89995D98DCC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface209" -p "|polySurface90";
	rename -uid "76C2231C-5C47-FE14-9142-8BA55ECABCF9";
createNode transform -n "transform194" -p "polySurface209";
	rename -uid "26FDA5A6-FE4E-B24D-4A33-BDB33C2EC524";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape208" -p "transform194";
	rename -uid "B88D432F-0F48-BD3C-C0B9-86B9B7408C75";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface210" -p "|polySurface90";
	rename -uid "70A2D5E5-EB46-B61C-C4EA-8C962852D3C8";
createNode transform -n "transform193" -p "polySurface210";
	rename -uid "3F690CFB-3E4E-401D-C9E7-ACBAB56B8293";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape209" -p "transform193";
	rename -uid "BEBA1219-B342-120F-0F0D-3CAE938AB017";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface211" -p "|polySurface90";
	rename -uid "4DA11E0D-7B47-FEC5-8F5A-71B6DBF94E9F";
createNode transform -n "transform192" -p "polySurface211";
	rename -uid "91823520-E647-9BDA-5F4B-2C80B4006CEF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape210" -p "transform192";
	rename -uid "C72ABA38-574F-5539-6C15-999C9F0C88D6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface212" -p "|polySurface90";
	rename -uid "41A2FC92-EC47-8BE6-451A-A697C3466517";
createNode transform -n "transform191" -p "polySurface212";
	rename -uid "B3B73791-CF4C-4C9E-D1D0-84AF86FBFD66";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape211" -p "transform191";
	rename -uid "720E3902-4040-BE05-8094-DDABF560965E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface213" -p "|polySurface90";
	rename -uid "0F144E23-CC4F-A2A6-5351-98B00CF786D3";
createNode transform -n "transform190" -p "polySurface213";
	rename -uid "F4BA08D1-5C43-CD3C-E2C3-3EB953A404D1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape212" -p "transform190";
	rename -uid "501E402B-6646-C29C-004F-EDB779ABFBEF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface214" -p "|polySurface90";
	rename -uid "EB535657-9741-C9B6-55C9-B8B34D843C05";
createNode transform -n "transform189" -p "polySurface214";
	rename -uid "7DC3616B-9E4C-CE43-41DF-D3B147487C36";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape213" -p "transform189";
	rename -uid "70A3ECB2-7F4A-F6AC-F870-50B199382FD8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface215" -p "|polySurface90";
	rename -uid "B7B41526-0D44-CA26-1EC0-FAB237A024B5";
createNode transform -n "transform188" -p "polySurface215";
	rename -uid "DACA34BD-6B43-8B3C-1290-D7ABDA5A1260";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape214" -p "transform188";
	rename -uid "11CEF94C-AB4B-16F0-7FD4-F896B43CFF28";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 2.9532015 0 ;
	setAttr ".pt[1]" -type "float3" 0 2.9532015 0 ;
	setAttr ".pt[2]" -type "float3" 0 2.9532015 0 ;
	setAttr ".pt[13]" -type "float3" 0 2.9532015 0 ;
	setAttr ".pt[14]" -type "float3" 0 2.9532015 0 ;
	setAttr ".pt[15]" -type "float3" 0 2.9532015 0 ;
createNode transform -n "polySurface216" -p "|polySurface90";
	rename -uid "80DAF126-6F47-8EED-464D-42B51508FB39";
createNode transform -n "transform187" -p "polySurface216";
	rename -uid "D3A1D9A6-ED4F-F2EA-7BA4-DBBF7FDF1781";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape215" -p "transform187";
	rename -uid "21A0DC82-584D-7664-CFB3-0AB07C0697FE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface217" -p "|polySurface90";
	rename -uid "567F216A-A545-7D8B-369D-E0AFD555D0BB";
createNode transform -n "transform186" -p "polySurface217";
	rename -uid "7417B95C-804B-2EEF-8FF5-23A6DACBD451";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape216" -p "transform186";
	rename -uid "C69A246C-8F40-95BB-CE20-5CB647FF9A87";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface218" -p "|polySurface90";
	rename -uid "133B40AA-5D4E-8BAB-AED5-76AD6EDFB635";
createNode transform -n "transform185" -p "polySurface218";
	rename -uid "FBE80537-A24B-A9E1-95EA-008386E20D98";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape217" -p "transform185";
	rename -uid "4848A329-3D4D-5BB8-A6B7-01AB7A242948";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface219" -p "|polySurface90";
	rename -uid "09A48659-BC4D-C93D-FB68-9CADC7D80532";
createNode transform -n "transform184" -p "polySurface219";
	rename -uid "8D239BFD-4642-B6FF-DEAD-D5A3CD0E157C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape218" -p "transform184";
	rename -uid "ED674FA2-7F42-CECC-6262-7988C1D4047A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface220" -p "|polySurface90";
	rename -uid "976591B0-8D43-5566-9E05-C19141C04B7F";
createNode transform -n "transform183" -p "polySurface220";
	rename -uid "71A6B388-E546-19E1-E1E1-06804DDF7BBF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape219" -p "transform183";
	rename -uid "459B0AB7-604C-2123-825D-98A2F9EA8FA0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface221" -p "|polySurface90";
	rename -uid "65E0E46B-6447-8630-6217-168532573705";
createNode transform -n "transform182" -p "polySurface221";
	rename -uid "747F8ABD-204D-84AF-BDEF-4199AB3E2FB8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape220" -p "transform182";
	rename -uid "3C76D24B-854E-E5F8-ADA7-2CB8BE0D4536";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface222" -p "|polySurface90";
	rename -uid "254706A3-7C4D-AD32-4DE3-FA8E72A52CFA";
createNode transform -n "transform181" -p "polySurface222";
	rename -uid "EAB25C42-E840-2F51-CFBA-669A2D1699B2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape221" -p "transform181";
	rename -uid "712B7DA3-0043-F3B4-855B-B187DA650390";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface223" -p "|polySurface90";
	rename -uid "9389175B-F24F-FB54-E861-ED9F5B17622D";
createNode transform -n "transform180" -p "polySurface223";
	rename -uid "C7D11281-1242-135C-A46D-23B16A6762BE";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape222" -p "transform180";
	rename -uid "3C24A983-0A48-7CBC-DCC2-1AB8F8C485E0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface224" -p "|polySurface90";
	rename -uid "2A355B04-394D-2C7A-869E-4DA0BA9A20BA";
createNode transform -n "transform179" -p "polySurface224";
	rename -uid "40B9D645-E04C-A12C-D71C-53A90365890D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape223" -p "transform179";
	rename -uid "61771D30-E145-8B89-F430-0CA8E610835C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface225" -p "|polySurface90";
	rename -uid "981C898D-4348-4185-6414-EFA2FD9D0A13";
createNode transform -n "transform178" -p "polySurface225";
	rename -uid "50C0EEC8-584D-897E-231A-27AF56E2925C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape224" -p "transform178";
	rename -uid "BFB98357-2748-9EAA-A115-899A23C97231";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface226" -p "|polySurface90";
	rename -uid "B0BF651D-CA41-C456-3BB0-BDB787F23652";
createNode transform -n "transform177" -p "polySurface226";
	rename -uid "A5121501-2244-6D92-20B7-21BE916D5BDC";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape225" -p "transform177";
	rename -uid "1F66102F-9647-BC9F-BB23-8C8028576594";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface227" -p "|polySurface90";
	rename -uid "673BC8E2-BD48-1232-4DFD-FFA384EDCB9A";
createNode transform -n "transform176" -p "polySurface227";
	rename -uid "B8B1628C-8549-63E7-984E-158F95BD22C3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape226" -p "transform176";
	rename -uid "7730D642-1F44-3EBB-55EF-6D83BB1EEA7C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface228" -p "|polySurface90";
	rename -uid "F537F4F8-EB42-D23D-AD50-F088465B89F8";
createNode transform -n "transform175" -p "polySurface228";
	rename -uid "ED1BE3C4-C04A-6530-75CA-A6AD9C99A05A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape227" -p "transform175";
	rename -uid "F7BBA179-0942-8356-063D-1CAE8ABD0BC9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface229" -p "|polySurface90";
	rename -uid "8F105823-4049-E8D1-513B-47A75A1FA19B";
createNode transform -n "transform174" -p "polySurface229";
	rename -uid "137F6A56-694D-B83A-37E8-39BECE3CCA1B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape228" -p "transform174";
	rename -uid "3604234D-8946-121E-21F7-7EB33115D6A2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface230" -p "|polySurface90";
	rename -uid "0A731777-4A44-EC42-E68D-03B590EECE7E";
createNode transform -n "transform173" -p "polySurface230";
	rename -uid "A136BC1D-8D4E-7FE7-0B2B-9B8C0B9EB760";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape229" -p "transform173";
	rename -uid "E184D66D-CC47-588A-D654-BBA2AD77EA4B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface231" -p "|polySurface90";
	rename -uid "B583189B-0C4A-7F2F-7E8A-0DBA991FF332";
createNode transform -n "transform172" -p "polySurface231";
	rename -uid "32EBC76B-7E42-AAD1-10F2-0C9A114987C4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape230" -p "transform172";
	rename -uid "8198E23B-524B-E812-413C-FF9F09D1170A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface232" -p "|polySurface90";
	rename -uid "5E2F2BCB-3249-CAAB-90F6-A0B7A51DCC21";
createNode transform -n "transform171" -p "polySurface232";
	rename -uid "6F0FCEFF-3941-4568-DF59-43896038FF64";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape231" -p "transform171";
	rename -uid "CDEC8CEE-744F-304D-7094-1091D13476E2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface233" -p "|polySurface90";
	rename -uid "0536606A-2D44-C411-32B1-21847B2872EE";
createNode transform -n "transform140" -p "|polySurface90|polySurface233";
	rename -uid "3A8348BE-F44B-F723-ECE0-3B8CFC525DD0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape232" -p "transform140";
	rename -uid "B7039EBA-D84D-2AA0-D9EA-B6AB1AEC4FA6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface234" -p "|polySurface90";
	rename -uid "71A66C30-3149-01BB-1B22-2E9B11DC0330";
createNode transform -n "transform139" -p "polySurface234";
	rename -uid "882CA368-3A4A-61DB-A171-9184B268A3F6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape233" -p "transform139";
	rename -uid "42042C3C-B14B-0512-A4A9-269F8C70C454";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface235" -p "|polySurface90";
	rename -uid "A5992DC5-4440-2B1C-33A0-AEBCC8120C82";
createNode transform -n "transform138" -p "polySurface235";
	rename -uid "A36CD5BD-834E-607E-566D-7183FFA7211C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape234" -p "transform138";
	rename -uid "7C7ADCB3-6E4D-D9E4-8069-C78B4FBDEB71";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface236" -p "|polySurface90";
	rename -uid "935F5017-1F40-EF90-9347-F092BC28CEA7";
createNode transform -n "transform142" -p "|polySurface90|polySurface236";
	rename -uid "F2951854-634E-17E3-01E2-0A96C7D78B18";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape235" -p "transform142";
	rename -uid "F20FFC17-3245-C137-D74B-A4AF5A1D7BC6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.89258059640689913 0.49999991059303284 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform137" -p "|polySurface90";
	rename -uid "8ABFA880-9B49-9306-19CA-2DB145340252";
	setAttr ".v" no;
createNode mesh -n "polySurface90Shape" -p "transform137";
	rename -uid "4E3D5E51-2E4A-BA23-0DF8-C99A1D001F94";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".clst[1].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface233";
	rename -uid "87840A5F-7A42-10E3-7246-DD98466E800B";
createNode transform -n "transform144" -p "|polySurface233";
	rename -uid "170E2CFD-494F-87F8-C83E-B799548A1620";
	setAttr ".v" no;
createNode mesh -n "polySurface233Shape" -p "transform144";
	rename -uid "6311493F-264B-5E0F-EC68-A9A0BB34F79A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.11226643811184944 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube24";
	rename -uid "39E22317-6443-AE2D-6AE0-B5BB813147E7";
	setAttr ".t" -type "double3" -5.3728865210537382 27.273231776817088 0 ;
	setAttr ".s" -type "double3" 1 2.2234510332260133 1.5191066831595761 ;
createNode transform -n "transform141" -p "pCube24";
	rename -uid "1F51F065-074D-D72F-4C7C-DBA9354AD43F";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform141";
	rename -uid "60E6A6EF-F94A-74AB-C7DD-70A6D34D124A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface236";
	rename -uid "B8895036-D144-78FA-5F93-8C8BCA044600";
	setAttr ".rp" -type "double3" 2.528587818145752 50.984133243560791 0 ;
	setAttr ".sp" -type "double3" 2.528587818145752 50.984133243560791 0 ;
createNode transform -n "transform148" -p "|polySurface236";
	rename -uid "CEDE3801-5943-A22F-41CB-22B7D5D5D65E";
	setAttr ".v" no;
createNode mesh -n "polySurface236Shape" -p "transform148";
	rename -uid "2DFC6647-DB49-89A2-1398-C5AFECFB1FBD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube25";
	rename -uid "0C05D28D-C84D-FB17-92A3-CC8DB4E04582";
	setAttr ".t" -type "double3" 17.143577947035514 21.939162161353682 16.229906699526069 ;
	setAttr ".s" -type "double3" 1 1.9249412911004824 1.277715621763009 ;
createNode transform -n "transform143" -p "pCube25";
	rename -uid "B0A11943-434B-C7BF-5EDD-76944B68BB59";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform143";
	rename -uid "E8FC6481-E642-C598-20B3-9C98C1F19C0A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface237";
	rename -uid "D583E3DA-9940-4783-39E3-34870FDEBB7E";
	setAttr ".rp" -type "double3" 22.75505542755127 25.05164036154747 11.49084198474884 ;
	setAttr ".sp" -type "double3" 22.75505542755127 25.05164036154747 11.49084198474884 ;
createNode transform -n "transform156" -p "polySurface237";
	rename -uid "DB7E2998-4C47-50C5-6F82-A787A69D2AA9";
	setAttr ".v" no;
createNode mesh -n "polySurface233Shape" -p "transform156";
	rename -uid "E136DC8A-B941-6B9F-E77B-DE97C1AA6EC2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group53";
	rename -uid "DF4AFD60-D84F-DB5C-0DE2-1894D1AAC916";
	setAttr ".t" -type "double3" 46.037656197771838 14.200650679845761 22.972459864339839 ;
	setAttr ".rp" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".sp" -type "double3" -46.548214515207206 0 0 ;
createNode transform -n "pasted__pCube25" -p "group53";
	rename -uid "FEE8F367-684E-97CC-A7F3-968C93F50DC1";
	setAttr ".t" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".s" -type "double3" 1 1.9249412911004824 1.277715621763009 ;
createNode transform -n "transform145" -p "|group53|pasted__pCube25";
	rename -uid "39D206E0-D148-9554-740A-0A98A109ED51";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape25" -p "transform145";
	rename -uid "9C8FBDFE-6348-192B-F3B8-1DB21ACDD9F0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface199";
	rename -uid "D0442B01-ED46-847A-CCFE-F98C8E55FFB5";
	setAttr ".rp" -type "double3" 4.9824128746986389 14.647118136286736 30.321868658065796 ;
	setAttr ".sp" -type "double3" 4.9824128746986389 14.647118136286736 30.321868658065796 ;
createNode transform -n "transform170" -p "|polySurface199";
	rename -uid "9CDA7597-DF44-F7C4-65E5-0DBE4CEEBF21";
	setAttr ".v" no;
createNode mesh -n "polySurface199Shape" -p "transform170";
	rename -uid "B07FD7BF-5F41-7F11-AB99-869CA46886AA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group54";
	rename -uid "498D9ED8-A94C-4DC6-DBC2-E6B8EA7D85CB";
	setAttr ".t" -type "double3" 54.627296189270893 29.853627333290774 5.4298375353420187 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".sp" -type "double3" -46.548214515207206 0 0 ;
createNode transform -n "pasted__pCube25" -p "group54";
	rename -uid "03ECA9E3-E849-CF82-1507-14B21DDD0411";
	setAttr ".t" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".s" -type "double3" 1 1.9249412911004824 1.277715621763009 ;
createNode transform -n "transform147" -p "|group54|pasted__pCube25";
	rename -uid "646974F0-4540-F930-96AB-45B3203FC4AB";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape25" -p "transform147";
	rename -uid "3CAD94A2-E44D-A88B-57DC-70A2AA97C258";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface238";
	rename -uid "A91D487A-4945-8328-68C5-B19A44EE1802";
	setAttr ".rp" -type "double3" 2.528587818145752 50.984133243560791 0 ;
	setAttr ".sp" -type "double3" 2.528587818145752 50.984133243560791 0 ;
createNode transform -n "transform169" -p "polySurface238";
	rename -uid "E7F86910-3F45-A263-99FE-EC8934792F66";
	setAttr ".v" no;
createNode mesh -n "polySurface236Shape" -p "transform169";
	rename -uid "68E76DCE-8A4B-B339-59A9-F1908E1DAAC3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99730926752090454 0.58696150779724121 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group55";
	rename -uid "131BCE7F-3446-3270-3775-EF81C0A923F2";
	setAttr ".t" -type "double3" 84.496365062953501 17.816943593299783 28.274027650910099 ;
	setAttr ".rp" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".sp" -type "double3" -46.548214515207206 0 0 ;
createNode transform -n "pasted__pCube25" -p "group55";
	rename -uid "891ABAF9-D44B-CB66-B0D7-25A0B0B7C254";
	setAttr ".t" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".s" -type "double3" 1 1.9249412911004824 1.277715621763009 ;
createNode transform -n "transform149" -p "|group55|pasted__pCube25";
	rename -uid "CB21D7DC-9341-5441-CA7A-ABB54A4E33DA";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape25" -p "transform149";
	rename -uid "353DFF50-9046-C1CF-CF85-AC9DCB50E940";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface208";
	rename -uid "EDC2652D-3940-CBD6-6B65-C0A66DC59700";
	setAttr ".rp" -type "double3" 33.136754035949707 13.579380974173546 37.994631767272949 ;
	setAttr ".sp" -type "double3" 33.136754035949707 13.579380974173546 37.994631767272949 ;
createNode transform -n "transform168" -p "|polySurface208";
	rename -uid "C61863D7-504A-DBF5-14AF-12A5D0180BC2";
	setAttr ".v" no;
createNode mesh -n "polySurface208Shape" -p "transform168";
	rename -uid "7E4C49DC-004F-8325-0B43-A89B52B4FB2B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group56";
	rename -uid "1C582C98-7149-6775-C406-AEBAF195EE8A";
	setAttr ".t" -type "double3" 30.414244722152208 17.790878105632196 6.4391900612012467 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".sp" -type "double3" -46.548214515207206 0 0 ;
createNode transform -n "pasted__pCube25" -p "group56";
	rename -uid "F87FFBD3-9245-FBE0-FBAF-A68C9007B5CC";
	setAttr ".t" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".s" -type "double3" 1 1.9249412911004824 1.277715621763009 ;
createNode transform -n "transform151" -p "|group56|pasted__pCube25";
	rename -uid "3560F004-4A4F-0D7A-8642-118D819273B9";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape25" -p "transform151";
	rename -uid "37F487A0-6B48-6DD5-63A7-2C954E037BEB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface197";
	rename -uid "81A38DD0-0340-BD1A-AEB7-798654F52427";
	setAttr ".rp" -type "double3" -9.8441152572631836 11.897941894829273 5.3777413368225098 ;
	setAttr ".sp" -type "double3" -9.8441152572631836 11.897941894829273 5.3777413368225098 ;
createNode transform -n "transform167" -p "|polySurface197";
	rename -uid "1BF3C2B2-F843-5642-3C49-DAAC756E8B2D";
	setAttr ".v" no;
createNode mesh -n "polySurface197Shape" -p "transform167";
	rename -uid "64B5161E-4444-8B5D-CF30-8FAFC8E60142";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group57";
	rename -uid "90A2BF5E-2144-E6A4-26E0-888405BC11D7";
	setAttr ".rp" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".sp" -type "double3" -46.548214515207206 0 0 ;
createNode transform -n "pasted__pCube25" -p "group57";
	rename -uid "AF5E4740-C742-79FC-418D-5A8A642C8440";
	setAttr ".t" -type "double3" -9.3841532431545041 26.983723656565246 -9.7030707684281552 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 1 1.9249412911004824 1.277715621763009 ;
createNode transform -n "transform153" -p "|group57|pasted__pCube25";
	rename -uid "6D632787-354D-9988-32AA-6FB6C6C415A1";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape25" -p "transform153";
	rename -uid "47695B84-7B42-F35E-A28E-48894C5CA9E8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "directionalLight1";
	rename -uid "90D6409E-8B40-40BD-2F89-F5830264E70D";
	setAttr ".t" -type "double3" 54.984156874935351 161.99994753252255 110.86722603422004 ;
	setAttr ".r" -type "double3" -46.299802266570921 41.899073822785169 -34.946982908759892 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "87B13ED0-A54F-CBC0-B95C-71A4863EF58E";
	setAttr -k off ".v";
createNode transform -n "polySurface198";
	rename -uid "516A84A8-3245-5B45-3100-9D88C0ADF353";
	setAttr ".rp" -type "double3" -9.5226246118545532 27.219101220369339 -14.03815746307373 ;
	setAttr ".sp" -type "double3" -9.5226246118545532 27.219101220369339 -14.03815746307373 ;
createNode transform -n "transform166" -p "|polySurface198";
	rename -uid "AF93DB77-F443-1091-CC94-338158ACCE98";
	setAttr ".v" no;
createNode mesh -n "polySurface198Shape" -p "transform166";
	rename -uid "3EAB853E-D04F-97A9-2CBE-419EF8CD254F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group58";
	rename -uid "180FB0E8-8B49-DBC6-C847-4D8AB7FC1FD3";
	setAttr ".rp" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".sp" -type "double3" -46.548214515207206 0 0 ;
createNode transform -n "pasted__pCube25" -p "group58";
	rename -uid "4B446C7F-EC46-D292-5B86-108374579292";
	setAttr ".t" -type "double3" 28.209174528119036 23.609732888554163 5.7031879260803571 ;
	setAttr ".s" -type "double3" 1 1.9249412911004824 1.277715621763009 ;
createNode transform -n "transform155" -p "|group58|pasted__pCube25";
	rename -uid "A40ACE6F-F64F-424E-E83D-C3B9D11ABF5C";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape25" -p "transform155";
	rename -uid "7B0FE03F-7645-4D4C-A65B-67A19A5513FA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface239";
	rename -uid "3866DFC3-5148-89ED-91A2-BA83A391F1B6";
	setAttr ".rp" -type "double3" 22.75505542755127 25.05164036154747 11.49084198474884 ;
	setAttr ".sp" -type "double3" 22.75505542755127 25.05164036154747 11.49084198474884 ;
createNode transform -n "transform162" -p "polySurface239";
	rename -uid "FC38382D-3D46-F3DF-E0BB-3FABBA9DF2A1";
	setAttr ".v" no;
createNode mesh -n "polySurface239Shape" -p "transform162";
	rename -uid "37989999-654B-5606-415E-8793E7100F50";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group59";
	rename -uid "1DF5861A-6241-9D84-B149-53A05DD966DA";
	setAttr ".t" -type "double3" 69.505681382014586 11.035784372388168 -9.9490090981070658 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".sp" -type "double3" -46.548214515207206 0 0 ;
createNode transform -n "pasted__pCube25" -p "group59";
	rename -uid "D617261B-184B-7405-5F90-BAAFF82C6197";
	setAttr ".t" -type "double3" -46.863529694821978 -1.8895282274935852 7.0014034484427127e-17 ;
	setAttr ".s" -type "double3" 1 1.9249412911004824 1.277715621763009 ;
createNode transform -n "transform157" -p "|group59|pasted__pCube25";
	rename -uid "526E0C90-4A46-39E4-310D-F78891ACF59C";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape25" -p "transform157";
	rename -uid "EC51BD85-B441-FD4C-F421-1ABB972FEAB2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface163";
	rename -uid "2FC6906A-944E-7A03-8492-B89ACB3B9CA0";
	setAttr ".rp" -type "double3" -6.806096076965332 13.197235926985741 -2.1342794895172119 ;
	setAttr ".sp" -type "double3" -6.806096076965332 13.197235926985741 -2.1342794895172119 ;
createNode transform -n "transform165" -p "|polySurface163";
	rename -uid "BA1B0E30-984F-68A5-A4B2-4495AAC1A31F";
	setAttr ".v" no;
createNode mesh -n "polySurface163Shape" -p "transform165";
	rename -uid "BCF2E13D-6D4F-8694-6DBC-C8BE14738E84";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group60";
	rename -uid "BD156329-5E48-E661-78D5-A984E16E87B5";
	setAttr ".t" -type "double3" -23.624744147312853 0 0 ;
	setAttr ".rp" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".sp" -type "double3" -46.548214515207206 0 0 ;
createNode transform -n "pasted__pCube25" -p "group60";
	rename -uid "6AC7BBA5-A542-6BFD-6AFB-569F8F724993";
	setAttr ".t" -type "double3" 34.325109135756129 29.86898777464047 10.300954119821506 ;
	setAttr ".s" -type "double3" 1 1.9249412911004824 1.277715621763009 ;
createNode transform -n "transform159" -p "|group60|pasted__pCube25";
	rename -uid "187EE860-0F41-D8E8-09A5-CB95E77AE7C9";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape25" -p "transform159";
	rename -uid "52D356AB-F84F-1558-45E4-B2AD9C44E3B7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface200";
	rename -uid "8F699C40-B74E-8E58-7319-FF9C7E025EFE";
	setAttr ".rp" -type "double3" 13.890326023101807 55.040670700371265 10.318226099014282 ;
	setAttr ".sp" -type "double3" 13.890326023101807 55.040670700371265 10.318226099014282 ;
createNode transform -n "transform164" -p "|polySurface200";
	rename -uid "5461E351-C84E-74C1-5FC2-109C6CEDFBF7";
	setAttr ".v" no;
createNode mesh -n "polySurface200Shape" -p "transform164";
	rename -uid "43642798-2E49-A99D-5F37-1CB0EA4A347F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group61";
	rename -uid "DA093723-444E-6B86-B1CE-539B4FBFA25D";
	setAttr ".t" -type "double3" 74.82323760863099 27.756060506617207 13.585932581210539 ;
	setAttr ".rp" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".sp" -type "double3" -46.548214515207206 0 0 ;
createNode transform -n "pasted__pCube25" -p "group61";
	rename -uid "2645D6DC-164E-3A41-2D9F-09AB4F632225";
	setAttr ".t" -type "double3" -46.548214515207206 0 0 ;
	setAttr ".s" -type "double3" 1 1.9249412911004824 1.277715621763009 ;
createNode transform -n "transform161" -p "|group61|pasted__pCube25";
	rename -uid "B3EF8BA7-6E48-3B71-E657-CAB21B708B1B";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape25" -p "transform161";
	rename -uid "F3D4F553-2741-F828-8EE2-4EBBF09A1D09";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface240";
	rename -uid "8DB93482-CA41-ABAB-B769-3789A4DFAA19";
	setAttr ".rp" -type "double3" 22.75505542755127 25.05164036154747 11.49084198474884 ;
	setAttr ".sp" -type "double3" 22.75505542755127 25.05164036154747 11.49084198474884 ;
createNode transform -n "transform163" -p "polySurface240";
	rename -uid "DA75ECE6-8549-0482-10C5-25ADF89358E8";
	setAttr ".v" no;
createNode mesh -n "polySurface240Shape" -p "transform163";
	rename -uid "2A61DC20-6F40-9AC2-53FE-C5AC3CBCC3C5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface164";
	rename -uid "EA48EA1B-234E-7EBA-DA73-5BA45B180324";
createNode transform -n "polySurface241" -p "|polySurface164";
	rename -uid "DD9D603A-A84D-DD93-37FB-8BAED07DD151";
createNode mesh -n "polySurfaceShape236" -p "polySurface241";
	rename -uid "432EAD6C-6D41-BB95-61B9-4894227B965C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.48175625503063202 0.49372819066047668 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface242" -p "|polySurface164";
	rename -uid "7C353155-F140-90F5-A224-89AD93433D0E";
createNode transform -n "transform293" -p "|polySurface164|polySurface242";
	rename -uid "8A905923-7B4D-5628-35BA-5B921C4FB2CD";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape237" -p "transform293";
	rename -uid "46B78E59-D645-0B4D-A625-C7B901B70EB2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface243" -p "|polySurface164";
	rename -uid "299011C9-E94A-24CA-FB68-54ACE167741F";
createNode transform -n "transform292" -p "polySurface243";
	rename -uid "9B69FC19-1248-10B4-5AD2-C18A3EF1A2D2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape238" -p "transform292";
	rename -uid "77797111-7741-0657-7529-C4B8F62DF824";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface244" -p "|polySurface164";
	rename -uid "72D52BE9-2742-B3B2-3B65-40B41C2E09A4";
createNode transform -n "transform291" -p "polySurface244";
	rename -uid "E914AB2D-F045-635B-5952-C5B8C803F124";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape239" -p "transform291";
	rename -uid "FFFE6305-9D40-B2E4-9116-4EA13AB3F2F8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface245" -p "|polySurface164";
	rename -uid "AAB32B91-9446-7C95-D560-0A8C2B81E115";
createNode transform -n "transform290" -p "polySurface245";
	rename -uid "39687C82-B14B-4F0F-EB95-7A8BEA248950";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape240" -p "transform290";
	rename -uid "4A52CF34-A643-56DE-9FF7-0DB3C535CBC3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface246" -p "|polySurface164";
	rename -uid "9BC47D1D-B545-092B-88B2-5BA1FF92A44F";
createNode transform -n "transform289" -p "polySurface246";
	rename -uid "CB642B01-164F-CA91-30A4-4AA78EB6B8CA";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape241" -p "transform289";
	rename -uid "946DFEBB-4448-1CB5-9DD0-B3BD2182ACCF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface247" -p "|polySurface164";
	rename -uid "096179ED-6A4E-C4F5-9FA2-96BF00FE1AAC";
createNode transform -n "transform288" -p "polySurface247";
	rename -uid "A709A2D4-C64B-926D-D488-92B72AC62452";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape242" -p "transform288";
	rename -uid "E11595AE-E44D-F92F-E471-F58B746F09C2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface248" -p "|polySurface164";
	rename -uid "39A0E73B-1946-3EAA-0DC0-A0A6E51A08CB";
createNode transform -n "transform287" -p "polySurface248";
	rename -uid "6B87FA5B-264C-0E37-3ADB-4996BC8795C5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape243" -p "transform287";
	rename -uid "612AFC20-0B4E-854D-2FBD-9290FD8A7F6B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface249" -p "|polySurface164";
	rename -uid "0338FFAB-6046-42A3-C2C5-1A9B6B5DD893";
createNode transform -n "transform263" -p "polySurface249";
	rename -uid "F8E58C3C-8E45-BAB1-E0E6-9FA10B21B521";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape244" -p "transform263";
	rename -uid "EF1F8239-5948-5349-C9BA-3D83421ABE62";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface250" -p "|polySurface164";
	rename -uid "4EC5389E-5B4F-6739-FC78-208A5EF5D577";
createNode mesh -n "polySurfaceShape245" -p "polySurface250";
	rename -uid "A87745B9-EE49-37D6-1CEE-0CA2D7B3A6AC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.80849620699882507 0.15809903852641582 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface251" -p "|polySurface164";
	rename -uid "36A50703-6042-3041-FFC4-58A69ADDB1D7";
createNode mesh -n "polySurfaceShape246" -p "polySurface251";
	rename -uid "EEA76CBC-A146-A961-585D-DE822A3016B7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.74321126937866211 0.85154128074645996 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface252" -p "|polySurface164";
	rename -uid "EA63000D-6D41-31DB-E828-B6A999F7C430";
createNode transform -n "transform286" -p "|polySurface164|polySurface252";
	rename -uid "92E8EC34-174C-F10F-B927-B1A1F075F073";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape247" -p "transform286";
	rename -uid "DBFAB315-8B41-B89E-828D-F59A38D319E7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface253" -p "|polySurface164";
	rename -uid "372FBEB2-C44A-1B34-13D3-A5B819B51CE2";
createNode transform -n "transform285" -p "polySurface253";
	rename -uid "C093FFF6-F540-AC84-9F9B-5CA43A1DED07";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape248" -p "transform285";
	rename -uid "D3125E45-7544-ABC1-38D2-2E9C48672FC2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface254" -p "|polySurface164";
	rename -uid "3C8EED87-FA49-C3C2-AF24-F1A6A7D0C165";
createNode transform -n "transform284" -p "polySurface254";
	rename -uid "F38ED31E-D948-EEEC-D55B-3E9EEF834256";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape249" -p "transform284";
	rename -uid "05761243-324C-D63D-CF01-F5BD56185278";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface255" -p "|polySurface164";
	rename -uid "41EE91BD-6D4A-0F6C-D411-17A8A40D2FB6";
createNode transform -n "transform256" -p "|polySurface164|polySurface255";
	rename -uid "08924DA0-7940-A699-0047-5DAFF4F8E626";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape250" -p "transform256";
	rename -uid "00620476-6240-8651-ED47-47AE1522247F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface256" -p "|polySurface164";
	rename -uid "0AC0EB5B-FD49-7DC9-92B5-F7ABA1F4B4EA";
createNode transform -n "transform255" -p "polySurface256";
	rename -uid "E2F3A1D2-D642-E6D6-380B-86A541DDF536";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape251" -p "transform255";
	rename -uid "4D20D495-F74C-13EF-CCA1-5AAEFA93D7D0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface257" -p "|polySurface164";
	rename -uid "B7D6553A-534F-287F-11FF-B8A0AEE9F022";
createNode transform -n "transform254" -p "polySurface257";
	rename -uid "6B4ACB50-BF4F-28F7-6746-A495B265C6A8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape252" -p "transform254";
	rename -uid "39D403C1-7F47-80F3-BFBD-729C8CF90758";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface258" -p "|polySurface164";
	rename -uid "F6B2D8AC-C04D-F5A3-440A-7593E0CA4F23";
createNode transform -n "transform253" -p "polySurface258";
	rename -uid "BD347F09-9743-74B0-18C1-3688EA418F76";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape253" -p "transform253";
	rename -uid "8C959055-6B4A-66C7-4B0F-85ACCDBD7C7B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface259" -p "|polySurface164";
	rename -uid "740C9044-C44F-1978-32A9-0081CE65EF9C";
createNode transform -n "transform252" -p "polySurface259";
	rename -uid "8EBD42AC-184A-15ED-FFB3-27A1F724E7AB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape254" -p "transform252";
	rename -uid "D339E742-2447-08C2-1CC0-24938CB71D67";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface260" -p "|polySurface164";
	rename -uid "4068769F-6045-192E-CDF3-E48345F66C96";
createNode transform -n "transform251" -p "polySurface260";
	rename -uid "F04ECEEE-324D-70E9-8564-C5B41F7DDC8B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape255" -p "transform251";
	rename -uid "214FAA07-F04C-923C-4F22-02A5A385F5A5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface261" -p "|polySurface164";
	rename -uid "D3CA81BE-FE4E-7808-E0FE-98A8C23171A7";
createNode transform -n "transform250" -p "polySurface261";
	rename -uid "23D3A31B-2E48-0F96-B4AF-88B651A45CBF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape256" -p "transform250";
	rename -uid "9FCC2724-A74A-8D47-4BEA-DB9AB6C4BB5C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface262" -p "|polySurface164";
	rename -uid "B3D34F7C-3B4C-FE43-F60A-86B470AF8663";
createNode transform -n "transform249" -p "polySurface262";
	rename -uid "385A0955-E348-BA92-D6E4-FEA44AF704A5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape257" -p "transform249";
	rename -uid "036E7558-1A44-CF0C-751C-DEA43F3AAC8F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface263" -p "|polySurface164";
	rename -uid "EFB4CD66-ED40-8ED5-1651-45BA05200A7A";
createNode transform -n "transform248" -p "polySurface263";
	rename -uid "48977ECD-2D42-A2E9-CD2D-B7815285182E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape258" -p "transform248";
	rename -uid "53DC9A3C-BD4B-1697-2541-8BBCC6FD34E4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface264" -p "|polySurface164";
	rename -uid "972AFC4C-D14E-98DC-0DE8-DD9BE2837020";
createNode transform -n "transform247" -p "polySurface264";
	rename -uid "FDD9133E-F445-111B-D167-60B300A3359B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape259" -p "transform247";
	rename -uid "FCFDB168-F44E-DF06-8BEA-5E8867710524";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface265" -p "|polySurface164";
	rename -uid "EB707F52-744A-B4F2-573A-67A90CB82FE8";
createNode transform -n "transform246" -p "polySurface265";
	rename -uid "778A3292-E145-9DBA-F6D3-8D8170D45C66";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape260" -p "transform246";
	rename -uid "DA1F213B-5D44-0521-7A8A-F7B6A3E5E685";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface266" -p "|polySurface164";
	rename -uid "4621E198-4D41-B273-07F2-66A12C47FCD9";
createNode transform -n "transform245" -p "polySurface266";
	rename -uid "5C9DA2F2-3440-3A70-96BE-3CB2212F3E0C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape261" -p "transform245";
	rename -uid "38FE63EB-2B41-2B14-ED4E-EB82FD5E121C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface267" -p "|polySurface164";
	rename -uid "CED24474-8144-8EF0-5E46-1DAECE38DC1B";
createNode transform -n "transform244" -p "polySurface267";
	rename -uid "E26565F4-E94D-5073-B6B3-65B3D6A48BCF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape262" -p "transform244";
	rename -uid "A8B97A37-2C49-E4B0-68DA-B390DFBBCCBD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface268" -p "|polySurface164";
	rename -uid "EBFF88FA-B34A-6886-EC12-D793E83C592E";
createNode transform -n "transform243" -p "polySurface268";
	rename -uid "6B5155A6-AB47-FCC5-4F46-28AC4C828DA7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape263" -p "transform243";
	rename -uid "562416B3-F44B-E5B2-F4AA-E79F39B6883B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface269" -p "|polySurface164";
	rename -uid "C9C3336B-5B49-6055-7044-EE8FB387E74E";
createNode transform -n "transform242" -p "polySurface269";
	rename -uid "02E47FC3-ED4A-30CA-9C2E-CE97C858D950";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape264" -p "transform242";
	rename -uid "D12DB396-6343-334A-9AFC-28BDDFDB7637";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface270" -p "|polySurface164";
	rename -uid "A38D5D49-9F45-7995-7F6C-D9A9F3D41D8A";
createNode transform -n "transform241" -p "polySurface270";
	rename -uid "419ADCC5-294E-38F4-3A6A-6CBB99104513";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape265" -p "transform241";
	rename -uid "4C6920BC-E04E-63C4-B124-33BCFAA26C65";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface271" -p "|polySurface164";
	rename -uid "D8E119B8-9743-8FCA-9493-C7A6B78739F8";
createNode mesh -n "polySurfaceShape266" -p "polySurface271";
	rename -uid "4DFFC40D-5547-9A2C-755E-67AB6F438324";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface272" -p "|polySurface164";
	rename -uid "4E81DE9D-6942-1386-A4BF-F1BD60776001";
createNode mesh -n "polySurfaceShape267" -p "polySurface272";
	rename -uid "6ADEE11D-7F46-D105-D5E2-62B5E2164E22";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface273" -p "|polySurface164";
	rename -uid "124D2C8E-5940-C0B4-27B6-2F8F8281A147";
createNode transform -n "transform264" -p "|polySurface164|polySurface273";
	rename -uid "5AADFF17-AB4E-3450-F2A3-F6870BBEB5D8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape268" -p "transform264";
	rename -uid "6294D520-8840-6D1F-7C19-C890A7A7BE01";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface274" -p "|polySurface164";
	rename -uid "2ADE45E7-9942-B303-4A7D-95ABAD72D826";
createNode mesh -n "polySurfaceShape269" -p "polySurface274";
	rename -uid "1E6784FF-7F4F-56AB-7276-C19182D1F3AF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.14937558770179749 0.72455240786075592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface275" -p "|polySurface164";
	rename -uid "1F19B04C-8E4E-2EA3-9252-4BBFC03D44CB";
createNode transform -n "transform262" -p "|polySurface164|polySurface275";
	rename -uid "668AD327-EA42-DAC1-E7F2-358A80B347E0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape270" -p "transform262";
	rename -uid "F7BC1C77-A642-E392-B8C9-03A810DC8C9E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface276" -p "|polySurface164";
	rename -uid "3402E780-7540-1AD6-E226-2D8359AA5493";
createNode transform -n "transform261" -p "polySurface276";
	rename -uid "CF723753-0A4E-1638-FB40-E5A814AC5ED3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape271" -p "transform261";
	rename -uid "70F7BDE2-5640-2E6D-40C9-1798B3AF4DD5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface277" -p "|polySurface164";
	rename -uid "92B779A8-7C46-1405-9B1F-CD9BAE71FFEC";
createNode transform -n "transform260" -p "polySurface277";
	rename -uid "DBB8B046-6D4F-145B-C400-0FB7F66572E9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape272" -p "transform260";
	rename -uid "5E0BBE09-F24D-0CEF-7106-8C99275E8109";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface278" -p "|polySurface164";
	rename -uid "964EE763-9441-9860-C17F-CDB402BD5C75";
createNode transform -n "transform259" -p "polySurface278";
	rename -uid "E5A4663E-DD45-6091-03B4-AA9BA7A3C98C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape273" -p "transform259";
	rename -uid "DBCC767A-1247-5D38-33E1-DFAF737CDFC4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface279" -p "|polySurface164";
	rename -uid "860BC994-5F4B-FB30-6780-7FA4808A030B";
createNode transform -n "transform258" -p "polySurface279";
	rename -uid "4E843445-CF45-D583-4405-19A039170A87";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape274" -p "transform258";
	rename -uid "C45937F7-9B41-97BB-AA40-5E9F7E960A16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface280" -p "|polySurface164";
	rename -uid "ED74575D-A046-358F-A16B-15ADFE4E52D3";
createNode transform -n "transform257" -p "polySurface280";
	rename -uid "425C202B-0A45-203B-82EE-87B5A848DD12";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape275" -p "transform257";
	rename -uid "57F123DA-0B4D-F564-E42A-FA9258FFCFC9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface281" -p "|polySurface164";
	rename -uid "06C6DC3B-9D47-13E3-F969-A59B7D952E4F";
createNode transform -n "transform283" -p "|polySurface164|polySurface281";
	rename -uid "B72A95E2-754E-D97B-4A63-D0BCDA5C58C7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape276" -p "transform283";
	rename -uid "BAEF4C1C-4947-2B7F-A365-26A819940E93";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface282" -p "|polySurface164";
	rename -uid "3B2696EE-EF48-133F-3822-DD81408761B7";
createNode mesh -n "polySurfaceShape277" -p "polySurface282";
	rename -uid "A7FAFEEA-FF45-EACC-6F87-F4A1C59FD45A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface283" -p "|polySurface164";
	rename -uid "991892F9-134D-F587-0A15-6991C8B1EE34";
createNode mesh -n "polySurfaceShape278" -p "polySurface283";
	rename -uid "F488E359-684B-FA12-C77E-8E84CFBE47E7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface284" -p "|polySurface164";
	rename -uid "16C404F5-2C42-4D28-487E-709A74FD4D01";
createNode mesh -n "polySurfaceShape279" -p "polySurface284";
	rename -uid "B5BF4A50-E74C-44DD-31A6-DC9F0963EE21";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5420268326997757 0.11396276950836182 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface285" -p "|polySurface164";
	rename -uid "E2BB9DCA-A743-C244-97BE-E386EF6AFA74";
createNode transform -n "transform282" -p "polySurface285";
	rename -uid "250F8D0B-9B4C-0BB2-8E03-C184C5C30501";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape280" -p "transform282";
	rename -uid "0DD6FD08-A842-D473-FB42-F8A54BE3C51F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface286" -p "|polySurface164";
	rename -uid "880DF2AA-3C44-2463-20D1-D4B610143323";
createNode transform -n "transform281" -p "polySurface286";
	rename -uid "C7190C7C-9D42-2892-CCE7-2EA4BC2C5E52";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape281" -p "transform281";
	rename -uid "52E51CF4-5C41-2105-7DED-0D8E9003C719";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface287" -p "|polySurface164";
	rename -uid "E03F22D0-CE40-9A3F-448E-5DB6DE6447F8";
createNode transform -n "transform279" -p "polySurface287";
	rename -uid "7976DF43-A347-646A-2258-7288D8230370";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape282" -p "transform279";
	rename -uid "8CCAD05B-9544-FD34-FDD0-C0BC3D8F1000";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface288" -p "|polySurface164";
	rename -uid "3587B717-C344-40FA-25ED-2F8A0DB94ADB";
createNode transform -n "transform280" -p "|polySurface164|polySurface288";
	rename -uid "9BF3CB86-AC4C-5EDE-BF59-E8A1F4DF92A9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape283" -p "transform280";
	rename -uid "C5FB89C9-024B-250A-33A9-FC9DB8D1692E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface289" -p "|polySurface164";
	rename -uid "9899D0B0-BB4C-022F-C222-068D77A723D8";
createNode mesh -n "polySurfaceShape284" -p "polySurface289";
	rename -uid "C46991A5-804B-582A-694C-D2BF302DC140";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.66582918934830615 0.5884422194179354 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface290" -p "|polySurface164";
	rename -uid "EDECDA3D-554D-A52B-1A2C-7093F9DF65B6";
createNode transform -n "transform271" -p "|polySurface164|polySurface290";
	rename -uid "4787BCCB-1D42-FD23-31A6-60882791472A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape285" -p "transform271";
	rename -uid "AD6F8294-CF49-3649-4DB0-10AD8F48850C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface291" -p "|polySurface164";
	rename -uid "AE689C93-A640-40C9-95BE-EDB3C09C78FD";
createNode transform -n "transform270" -p "polySurface291";
	rename -uid "318098E5-714D-2AFF-4819-66B85536D2C4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape286" -p "transform270";
	rename -uid "44A76E87-434C-9459-C92F-7CAB8F67E009";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface292" -p "|polySurface164";
	rename -uid "9595FE3F-EA49-D3F8-8CEF-D88041368B51";
createNode transform -n "transform269" -p "polySurface292";
	rename -uid "B569C7AD-7B4C-8BB2-1B04-55A7A96E4A5A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape287" -p "transform269";
	rename -uid "B9C8E8A5-5A49-90F0-C36E-E59C9C2C33ED";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface293" -p "|polySurface164";
	rename -uid "3D81ADAD-0142-91C4-1EAE-7AA5BE1006EB";
createNode transform -n "transform268" -p "polySurface293";
	rename -uid "CB49EAB7-6E48-CF4D-671C-D4A44E14866B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape288" -p "transform268";
	rename -uid "ADB06AD8-964A-2212-17D0-609E8C5BCA05";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface294" -p "|polySurface164";
	rename -uid "30D88966-6C42-0AFC-E671-B2B6F51AD490";
createNode transform -n "transform267" -p "polySurface294";
	rename -uid "194C141E-AA43-D741-710C-ADA54771028A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape289" -p "transform267";
	rename -uid "8850DAA8-BA4F-3D36-CCEF-3BBB16F71CAB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface295" -p "|polySurface164";
	rename -uid "A8118152-9542-1AD5-EF67-52BF2B307C1F";
createNode transform -n "transform266" -p "polySurface295";
	rename -uid "9C1C610F-5645-498D-4BBA-97A272AFC5A8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape290" -p "transform266";
	rename -uid "2AD212AC-A14A-F6BB-2AF4-95BF30556BDA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface296" -p "|polySurface164";
	rename -uid "0BE58AB9-164F-FCA5-4FB5-C0851074E3F9";
createNode transform -n "transform265" -p "polySurface296";
	rename -uid "C6EE3BDE-3C43-919A-70F2-1A9383AF4C06";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape291" -p "transform265";
	rename -uid "912E8D79-C24C-9A17-7E3F-B7A52B6FBE51";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface297" -p "|polySurface164";
	rename -uid "31DCF9B3-6E4E-B5A9-6D8A-CB9ABDF3EC17";
createNode mesh -n "polySurfaceShape292" -p "polySurface297";
	rename -uid "71B368F1-C448-E388-4624-8E8E51C814BE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41271474051134316 0.11057326688109659 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface298" -p "|polySurface164";
	rename -uid "16C5590E-FE49-2EE6-57EB-5A9E08D3ECDE";
createNode transform -n "transform278" -p "|polySurface164|polySurface298";
	rename -uid "33E97F7C-264A-BDCF-7932-EEBE0722C40F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape293" -p "transform278";
	rename -uid "727354A7-9F4B-17F3-0918-299834B4B5D2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface299" -p "|polySurface164";
	rename -uid "8EBC915F-A94B-D36B-ECB0-06A70ADB793A";
createNode transform -n "transform277" -p "polySurface299";
	rename -uid "7864334C-5448-0DCC-C01D-539C090DCD0A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape294" -p "transform277";
	rename -uid "CCCDA8C9-5B4B-1784-8CAF-258CDB195F02";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface300" -p "|polySurface164";
	rename -uid "25BC1BC3-B34B-D6A5-3DB6-66BB6D9DFB56";
createNode transform -n "transform276" -p "polySurface300";
	rename -uid "5877721B-6044-4CB7-1C42-C3AE2A192B1E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape295" -p "transform276";
	rename -uid "E6833333-3846-1AFF-050C-DDAF7D7145A3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface301" -p "|polySurface164";
	rename -uid "4F684D1A-6245-4051-6113-11A19FB1734F";
createNode transform -n "transform275" -p "polySurface301";
	rename -uid "B822EDEC-6F4F-1925-1A94-40A112527123";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape296" -p "transform275";
	rename -uid "986CE3CC-BD41-8566-D1CE-8781DDCAA6EB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface302" -p "|polySurface164";
	rename -uid "9B9B262A-9341-99E2-5056-D9BF2133F108";
createNode transform -n "transform274" -p "polySurface302";
	rename -uid "9776971A-7840-493E-15E1-46A22D68596E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape297" -p "transform274";
	rename -uid "EA072A5E-F247-7A17-87A5-8E84BC4AB4A0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface303" -p "|polySurface164";
	rename -uid "1F2554C1-F443-3931-D400-50A342FD5587";
createNode transform -n "transform273" -p "polySurface303";
	rename -uid "9F38554B-AB4A-24B7-B9E6-B28E84193691";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape298" -p "transform273";
	rename -uid "37441DB6-9A47-9FC5-F06B-8CB5C0C56A24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface304" -p "|polySurface164";
	rename -uid "F27CBEED-5443-B0DF-DE3A-3E928B3B5ED0";
createNode transform -n "transform272" -p "polySurface304";
	rename -uid "4E085028-4548-EEE6-40A5-C1B56E1DBC6B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape299" -p "transform272";
	rename -uid "E029D458-A446-3815-0CFD-3CB63F53C0C1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface305" -p "|polySurface164";
	rename -uid "FDDE2080-CF4D-C16D-717C-F0B927A2F878";
createNode mesh -n "polySurfaceShape300" -p "polySurface305";
	rename -uid "D065D263-1C49-D4AA-56E2-3A8CE3484907";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.86533348616845718 0.50596935863145132 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface306" -p "|polySurface164";
	rename -uid "BAB316C6-0B45-9E8F-4A31-2498A44BF8D3";
createNode mesh -n "polySurfaceShape301" -p "polySurface306";
	rename -uid "98D64FFC-3A48-D530-403F-D98E249B9FDB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.64880441129207611 0.50000001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface307" -p "|polySurface164";
	rename -uid "D04240CB-A441-C199-B87C-D3A2DCFF6C5A";
createNode mesh -n "polySurfaceShape302" -p "polySurface307";
	rename -uid "91329A55-EA4B-1CFE-DEA1-7B81560762AD";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface308" -p "|polySurface164";
	rename -uid "E10C76D8-6D41-3C24-9941-ACA7497A8098";
createNode transform -n "transform239" -p "polySurface308";
	rename -uid "07997C42-C340-CE10-60B0-BBA7C6796798";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape303" -p "transform239";
	rename -uid "B2E3248C-5548-CE21-509D-E4BE3EF1DC15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface309" -p "|polySurface164";
	rename -uid "2F21A822-E646-4F94-B1EB-5BA0EE43465A";
createNode mesh -n "polySurfaceShape304" -p "polySurface309";
	rename -uid "E8E54186-0C41-8809-31E7-0EAF294F90D2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.80742727537274583 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface310" -p "|polySurface164";
	rename -uid "107E9E13-3D49-313E-8D80-7688EC51A553";
createNode transform -n "transform240" -p "|polySurface164|polySurface310";
	rename -uid "E7A15096-0F4D-1E7B-777B-CFA0E99CC172";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape305" -p "transform240";
	rename -uid "B1D30D4C-DE47-38E3-8A95-64ACD26B8E49";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface311" -p "|polySurface164";
	rename -uid "FE92AB35-ED45-415D-4DB4-82AD2A7C9E91";
createNode mesh -n "polySurfaceShape306" -p "polySurface311";
	rename -uid "E0598B8C-A748-443F-0288-34B0D8A9322E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.30794732272624969 0.40054731070995331 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface312" -p "|polySurface164";
	rename -uid "405E5795-F040-8274-5C75-E195935F36A9";
createNode transform -n "transform237" -p "polySurface312";
	rename -uid "C0D67FC0-144E-31A2-B9E5-0AB9C2CD416C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape307" -p "transform237";
	rename -uid "F67A72CF-734E-848F-EA92-5FBF627295A2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface313" -p "|polySurface164";
	rename -uid "ECBB8CAF-944F-1F77-E41F-A696D9ECA1BD";
createNode transform -n "transform238" -p "|polySurface164|polySurface313";
	rename -uid "BE74169D-E14B-EE7F-7872-29A2481B2BDB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape308" -p "transform238";
	rename -uid "A7D3A488-174E-8FC6-45A4-DA9E276E6200";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface314" -p "|polySurface164";
	rename -uid "624D53F4-6A42-A4A7-1A3B-108579F38EC6";
createNode transform -n "transform236" -p "polySurface314";
	rename -uid "6648112C-0243-E9B2-6AE8-6CA821158681";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape309" -p "transform236";
	rename -uid "873ED2E7-D844-3CDF-B8B5-DCBD9A21D5BC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform235" -p "|polySurface164";
	rename -uid "B67DCFB1-954D-6660-CD7C-9EB78608ED42";
	setAttr ".v" no;
createNode mesh -n "polySurface164Shape" -p "transform235";
	rename -uid "73CE010A-8443-1510-2D15-A48758AFB8E1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".clst[1].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface313";
	rename -uid "A42F928E-A648-0576-1096-34A58BF29DA8";
	setAttr ".rp" -type "double3" 22.75505542755127 25.05164036154747 11.49084198474884 ;
	setAttr ".sp" -type "double3" 22.75505542755127 25.05164036154747 11.49084198474884 ;
createNode mesh -n "polySurface313Shape" -p "|polySurface313";
	rename -uid "CE0FE53F-6943-C9F5-262D-CDAAA6BB3CCA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42920036613941193 0.74484369158744812 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
createNode transform -n "polySurface310";
	rename -uid "17367168-7E46-6021-B3D2-8094ED5F74E7";
	setAttr ".rp" -type "double3" -6.806096076965332 13.165251083672047 -1.5858125686645508 ;
	setAttr ".sp" -type "double3" -6.806096076965332 13.165251083672047 -1.5858125686645508 ;
createNode mesh -n "polySurface310Shape" -p "|polySurface310";
	rename -uid "310733A8-4D4B-326B-5C8B-9F8209774936";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface255";
	rename -uid "84581AD6-644B-373E-A5E1-F0B6FAC9F317";
createNode mesh -n "polySurface255Shape" -p "|polySurface255";
	rename -uid "7B008BD4-EC4B-0BEB-DAEC-748F581A31BC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface275";
	rename -uid "D94F5F4B-0B47-8219-4C0C-3FB7BB338612";
createNode mesh -n "polySurface275Shape" -p "|polySurface275";
	rename -uid "8D85EF06-3345-988D-0961-4EAC3569CC5D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface273";
	rename -uid "5EB6971F-0B42-7313-8AD7-1D9253D52B83";
	setAttr ".rp" -type "double3" -16.421608582139015 8.6173052787780762 17.575905799865723 ;
	setAttr ".sp" -type "double3" -16.421608582139015 8.6173052787780762 17.575905799865723 ;
createNode mesh -n "polySurface273Shape" -p "|polySurface273";
	rename -uid "B9FC2BB3-8E46-0CEA-0359-B7BF09A73036";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface290";
	rename -uid "BA3DE00D-F74B-BC51-8C62-0585BB06B1E0";
createNode mesh -n "polySurface290Shape" -p "|polySurface290";
	rename -uid "CD7EFE35-FB49-854F-5093-CA9E80D6A344";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface298";
	rename -uid "2393ACC8-4E46-9498-2ECA-CFBF14FF9A37";
createNode mesh -n "polySurface298Shape" -p "|polySurface298";
	rename -uid "9288F067-6D42-755B-28D8-5F9E7614714C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface288";
	rename -uid "8BF26934-7B47-BB5C-95B2-CFA57653BD57";
	setAttr ".rp" -type "double3" 53.965862274169922 11.256600618362427 4.7276946306228638 ;
	setAttr ".sp" -type "double3" 53.965862274169922 11.256600618362427 4.7276946306228638 ;
createNode mesh -n "polySurface288Shape" -p "|polySurface288";
	rename -uid "3E9C3599-6C40-D87D-997B-A183DD767391";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface281";
	rename -uid "13B1E228-114D-0101-201E-69BF02EE8BEE";
	setAttr ".rp" -type "double3" 25.823896646499634 14.467930478975177 -15.023833274841309 ;
	setAttr ".sp" -type "double3" 25.823896646499634 14.467930478975177 -15.023833274841309 ;
createNode mesh -n "polySurface281Shape" -p "|polySurface281";
	rename -uid "29BC54DC-9C4D-A054-7111-9E88D6BB706A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface252";
	rename -uid "ACA5F67D-8940-E7B3-A547-DF9915546D14";
	setAttr ".rp" -type "double3" -24.219860553741455 5.9525012485682964 27.099639892578125 ;
	setAttr ".sp" -type "double3" -24.219860553741455 5.9525012485682964 27.099639892578125 ;
createNode mesh -n "polySurface252Shape" -p "|polySurface252";
	rename -uid "7E60986E-3847-539F-1053-6798C03AE8A3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface242";
	rename -uid "2037F68F-AB4D-49A7-953F-1C885F8A750F";
createNode mesh -n "polySurface242Shape" -p "|polySurface242";
	rename -uid "E54052B9-6E42-AD4B-BDBE-D98E18FC0E1D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.14747143007668273 0.17894720881910808 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Colors";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "A958B70A-6040-3208-55FE-03B2455EF5E6";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "9C3E6673-D84A-6926-97E8-E9A391F71682";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "89902521-F74A-03F6-818D-5D86EBA24E03";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 81 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "false";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1 1 1";
	setAttr ".stringOptions[47].type" -type "string" "color";
	setAttr ".stringOptions[48].name" -type "string" "environment lighting caustic photons";
	setAttr ".stringOptions[48].value" -type "string" "0";
	setAttr ".stringOptions[48].type" -type "string" "integer";
	setAttr ".stringOptions[49].name" -type "string" "environment lighting global illum photons";
	setAttr ".stringOptions[49].value" -type "string" "0";
	setAttr ".stringOptions[49].type" -type "string" "integer";
	setAttr ".stringOptions[50].name" -type "string" "light importance sampling";
	setAttr ".stringOptions[50].value" -type "string" "all";
	setAttr ".stringOptions[50].type" -type "string" "string";
	setAttr ".stringOptions[51].name" -type "string" "light importance sampling quality";
	setAttr ".stringOptions[51].value" -type "string" "1.0";
	setAttr ".stringOptions[51].type" -type "string" "scalar";
	setAttr ".stringOptions[52].name" -type "string" "light importance sampling samples";
	setAttr ".stringOptions[52].value" -type "string" "4";
	setAttr ".stringOptions[52].type" -type "string" "integer";
	setAttr ".stringOptions[53].name" -type "string" "light importance sampling resolution";
	setAttr ".stringOptions[53].value" -type "string" "1.0";
	setAttr ".stringOptions[53].type" -type "string" "scalar";
	setAttr ".stringOptions[54].name" -type "string" "light importance sampling precomputed";
	setAttr ".stringOptions[54].value" -type "string" "false";
	setAttr ".stringOptions[54].type" -type "string" "boolean";
	setAttr ".stringOptions[55].name" -type "string" "mila quality";
	setAttr ".stringOptions[55].value" -type "string" "1.0";
	setAttr ".stringOptions[55].type" -type "string" "scalar";
	setAttr ".stringOptions[56].name" -type "string" "mila glossy quality";
	setAttr ".stringOptions[56].value" -type "string" "1.0";
	setAttr ".stringOptions[56].type" -type "string" "scalar";
	setAttr ".stringOptions[57].name" -type "string" "mila scatter quality";
	setAttr ".stringOptions[57].value" -type "string" "1.0";
	setAttr ".stringOptions[57].type" -type "string" "scalar";
	setAttr ".stringOptions[58].name" -type "string" "mila scatter scale";
	setAttr ".stringOptions[58].value" -type "string" "1.0";
	setAttr ".stringOptions[58].type" -type "string" "scalar";
	setAttr ".stringOptions[59].name" -type "string" "mila diffuse quality";
	setAttr ".stringOptions[59].value" -type "string" "1.0";
	setAttr ".stringOptions[59].type" -type "string" "scalar";
	setAttr ".stringOptions[60].name" -type "string" "mila diffuse detail";
	setAttr ".stringOptions[60].value" -type "string" "false";
	setAttr ".stringOptions[60].type" -type "string" "boolean";
	setAttr ".stringOptions[61].name" -type "string" "mila diffuse detail distance";
	setAttr ".stringOptions[61].value" -type "string" "10.0";
	setAttr ".stringOptions[61].type" -type "string" "scalar";
	setAttr ".stringOptions[62].name" -type "string" "mila use max distance inside";
	setAttr ".stringOptions[62].value" -type "string" "true";
	setAttr ".stringOptions[62].type" -type "string" "boolean";
	setAttr ".stringOptions[63].name" -type "string" "mila clamp output";
	setAttr ".stringOptions[63].value" -type "string" "false";
	setAttr ".stringOptions[63].type" -type "string" "boolean";
	setAttr ".stringOptions[64].name" -type "string" "mila clamp level";
	setAttr ".stringOptions[64].value" -type "string" "1.0";
	setAttr ".stringOptions[64].type" -type "string" "scalar";
	setAttr ".stringOptions[65].name" -type "string" "gi gpu";
	setAttr ".stringOptions[65].value" -type "string" "off";
	setAttr ".stringOptions[65].type" -type "string" "string";
	setAttr ".stringOptions[66].name" -type "string" "gi gpu rays";
	setAttr ".stringOptions[66].value" -type "string" "34";
	setAttr ".stringOptions[66].type" -type "string" "integer";
	setAttr ".stringOptions[67].name" -type "string" "gi gpu passes";
	setAttr ".stringOptions[67].value" -type "string" "4";
	setAttr ".stringOptions[67].type" -type "string" "integer";
	setAttr ".stringOptions[68].name" -type "string" "gi gpu presample density";
	setAttr ".stringOptions[68].value" -type "string" "1.0";
	setAttr ".stringOptions[68].type" -type "string" "scalar";
	setAttr ".stringOptions[69].name" -type "string" "gi gpu presample depth";
	setAttr ".stringOptions[69].value" -type "string" "2";
	setAttr ".stringOptions[69].type" -type "string" "integer";
	setAttr ".stringOptions[70].name" -type "string" "gi gpu filter";
	setAttr ".stringOptions[70].value" -type "string" "1.0";
	setAttr ".stringOptions[70].type" -type "string" "integer";
	setAttr ".stringOptions[71].name" -type "string" "gi gpu depth";
	setAttr ".stringOptions[71].value" -type "string" "3";
	setAttr ".stringOptions[71].type" -type "string" "integer";
	setAttr ".stringOptions[72].name" -type "string" "gi gpu devices";
	setAttr ".stringOptions[72].value" -type "string" "0";
	setAttr ".stringOptions[72].type" -type "string" "integer";
	setAttr ".stringOptions[73].name" -type "string" "shutter shape function";
	setAttr ".stringOptions[73].value" -type "string" "none";
	setAttr ".stringOptions[73].type" -type "string" "string";
	setAttr ".stringOptions[74].name" -type "string" "shutter full open";
	setAttr ".stringOptions[74].value" -type "string" "0.2";
	setAttr ".stringOptions[74].type" -type "string" "scalar";
	setAttr ".stringOptions[75].name" -type "string" "shutter full close";
	setAttr ".stringOptions[75].value" -type "string" "0.8";
	setAttr ".stringOptions[75].type" -type "string" "scalar";
	setAttr ".stringOptions[76].name" -type "string" "gi";
	setAttr ".stringOptions[76].value" -type "string" "off";
	setAttr ".stringOptions[76].type" -type "string" "boolean";
	setAttr ".stringOptions[77].name" -type "string" "gi rays";
	setAttr ".stringOptions[77].value" -type "string" "100";
	setAttr ".stringOptions[77].type" -type "string" "integer";
	setAttr ".stringOptions[78].name" -type "string" "gi depth";
	setAttr ".stringOptions[78].value" -type "string" "0";
	setAttr ".stringOptions[78].type" -type "string" "integer";
	setAttr ".stringOptions[79].name" -type "string" "gi freeze";
	setAttr ".stringOptions[79].value" -type "string" "off";
	setAttr ".stringOptions[79].type" -type "string" "boolean";
	setAttr ".stringOptions[80].name" -type "string" "gi filter";
	setAttr ".stringOptions[80].value" -type "string" "1.0";
	setAttr ".stringOptions[80].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "3061298E-5C49-BE27-8FA5-B288CA691066";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "48ABB9B7-8B4E-F7E5-63C1-19B87FF1387B";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "180D9510-CE43-22EF-C7DE-7FB8F05FBF91";
createNode displayLayer -n "defaultLayer";
	rename -uid "A6448C3B-2C4A-0441-5EEC-B6BF019F6203";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5ACC5A43-DA4D-7AF7-B225-DB987159DAC5";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F1B1B6BE-E548-063D-E25A-A0889890423F";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "54FB46C1-F04E-F70C-1136-D18DDBC2CB78";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"flatShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 671\n                -height 537\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"flatShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 671\n            -height 537\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n"
		+ "                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"flatShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 671\\n    -height 537\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"flatShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 671\\n    -height 537\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CD850879-6247-5B78-CC5F-F6ADCF48476A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId87";
	rename -uid "F5720232-6448-265A-616B-0BB549CB4894";
	setAttr ".ihi" 0;
createNode groupId -n "groupId97";
	rename -uid "BCE9AD25-7343-4613-0C79-68B05DDC4955";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	rename -uid "EC04F91A-8C41-4588-B25F-40B9928B5AFB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId99";
	rename -uid "1C8B29E9-0E4C-89A5-62A4-EF9D3CAC350F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId100";
	rename -uid "82A2CC47-5B46-A73D-C295-AA8310A59A41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId101";
	rename -uid "B62C8BB4-CD45-BED7-3BCB-17934D6A3FF0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId102";
	rename -uid "6698408F-9D49-0EB1-78F7-388B90D822C4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId103";
	rename -uid "890B552B-E040-7CBA-6ACE-4AB1512FD28B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId104";
	rename -uid "FF341130-4E43-FD5B-CF88-4DB5BEC4ACAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	rename -uid "2121D7AD-7A44-35EE-47A8-A79C3F95F90F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId108";
	rename -uid "C5FF5A66-E34E-D185-1638-BD85DC107524";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId109";
	rename -uid "3D65F427-1A49-BBEE-7542-0B924A6ECDC1";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId108";
	rename -uid "9A410567-3C48-377D-4273-05A79E2B7DAB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId147";
	rename -uid "D4B5BCC6-9C45-CAE3-B357-EF83344B7152";
	setAttr ".ihi" 0;
createNode groupId -n "groupId148";
	rename -uid "DF1CE86A-744F-D66D-F03D-9BB26D0CADFE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId149";
	rename -uid "D97BB35A-E945-6BDB-ED4B-0DAD6FD61F32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId150";
	rename -uid "DD3A49AB-7847-D5F4-1AC5-999B43B17C04";
	setAttr ".ihi" 0;
createNode groupId -n "groupId151";
	rename -uid "44B494BF-B345-191B-F882-668CEB7B01A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId152";
	rename -uid "F6E83D14-CC48-A0A9-4A74-07AD790B451C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId153";
	rename -uid "13D280CE-ED48-D5DB-76EC-999053B2F9F9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId154";
	rename -uid "47F0540B-6843-DF98-4149-D2A4A924DC8F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId155";
	rename -uid "3FF2794E-C14F-343E-700C-D99C966A3C5B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId156";
	rename -uid "D4BDE6CD-0147-4129-A287-AC8E00DA2901";
	setAttr ".ihi" 0;
createNode groupId -n "groupId157";
	rename -uid "B21AAE9A-AD4D-D213-B7DC-7297B0CBC1E9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId158";
	rename -uid "820ABC31-4D40-870F-6487-B0937C39F9B6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId159";
	rename -uid "21192602-114E-CD0A-E4B7-F69C72F8AD36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId160";
	rename -uid "94F25538-0044-6C7D-1DEB-B08A155BA86A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId161";
	rename -uid "951728B9-6D4E-A751-330A-F597FAF7E87E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId182";
	rename -uid "0385CE1A-3A44-CDFD-44C8-D6803D888042";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId106";
	rename -uid "E781E0C1-F440-3D71-8673-EC9690EF370A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId245";
	rename -uid "30E05215-DB4D-2CC7-C1A3-C78D81CD6E19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId254";
	rename -uid "B61D8BE2-2E4C-5D60-1F1B-C29460DC4BD8";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__groupId215";
	rename -uid "48A77826-2C40-C9DF-C90E-91A99E263BB9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId255";
	rename -uid "BA156C4C-7547-EDDC-5C11-8EA5EB73D979";
	setAttr ".ihi" 0;
createNode groupId -n "groupId257";
	rename -uid "3B1CD3F0-1F40-976A-5CFF-E2BB8102C943";
	setAttr ".ihi" 0;
createNode groupId -n "groupId258";
	rename -uid "621D2C83-EA42-9AFB-1B31-DCB4DF685894";
	setAttr ".ihi" 0;
createNode groupId -n "groupId261";
	rename -uid "D40D3A93-2348-A1EB-C6B8-2798BA7840FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId262";
	rename -uid "9F04E684-3048-21C5-F5EE-ECBA11E42DEC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId263";
	rename -uid "6C1D7959-484B-A2F0-6B50-578D0304B569";
	setAttr ".ihi" 0;
createNode groupId -n "groupId264";
	rename -uid "352D3B23-7C4C-E31A-028A-A6848972041B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId265";
	rename -uid "0D246BC1-0544-147C-3B77-3695DFE5B7B3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId266";
	rename -uid "61147499-C44D-2B19-ED19-CB93B58EC10F";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__groupId216";
	rename -uid "F42886E7-714A-2D3E-951A-E79D27296C94";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId183";
	rename -uid "411D71B7-7544-8BEC-B22D-D991BB88BB99";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__groupId183";
	rename -uid "363B31C3-0A49-0AA9-0467-209897988856";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__groupId109";
	rename -uid "EA1835DC-4A41-30FC-8B39-F695A71F2B6D";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__pasted__groupId215";
	rename -uid "4B790E62-AE40-2292-3AB3-A1B1691554F0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId85";
	rename -uid "FB3A05D2-C041-ADE8-7608-49A20347F614";
	setAttr ".ihi" 0;
createNode groupId -n "groupId280";
	rename -uid "36E1FC69-7540-7C8D-D7E4-F49A89855466";
	setAttr ".ihi" 0;
createNode groupId -n "groupId281";
	rename -uid "418F9B7C-6849-7803-F722-7FAF69A2E535";
	setAttr ".ihi" 0;
createNode groupId -n "groupId282";
	rename -uid "6D36AA4E-A744-E965-88EA-A6B3D9F1C8DC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId283";
	rename -uid "BCBA02D8-2548-D09B-D687-E8ADEDEDCD1E";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite1";
	rename -uid "A3727B4D-D141-C4EC-9922-3C980997D496";
	setAttr -s 57 ".ip";
	setAttr -s 57 ".im";
createNode groupId -n "groupId284";
	rename -uid "FC888393-E24A-D6E7-56A7-038B7C77C573";
	setAttr ".ihi" 0;
createNode groupId -n "groupId285";
	rename -uid "9F56E83C-3D42-03DE-B9C1-4088341195C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId286";
	rename -uid "9267F2CE-CB4D-DB57-3E07-32AEE98F1CD6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId287";
	rename -uid "91D51468-1148-42A4-5F81-A88200DF81D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId288";
	rename -uid "29BFF07A-1D47-5B6A-362A-9586E236AF7F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId289";
	rename -uid "4484BC4F-D149-5A24-2B24-DBB667C8936E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId290";
	rename -uid "4A6AB161-314B-3380-3053-81A6775EBF75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId291";
	rename -uid "85FD21BD-B644-4E71-DB38-A1B3FAB3FA4B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId292";
	rename -uid "0EDB3482-B048-8159-F82E-3E81B42C104A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId293";
	rename -uid "48DB4C28-5E45-120F-8047-E3AD39E41A0F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId294";
	rename -uid "1203EAAF-F048-5608-4FF5-E487D0790C0F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId295";
	rename -uid "D88E86E3-8243-13A6-97E7-95B6976F074D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId296";
	rename -uid "6AB064F2-9840-FFDA-1F1B-0EA752285CD5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId297";
	rename -uid "D2E84B52-C345-8B49-0EE3-64AFE0F0B96F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId298";
	rename -uid "8D28B156-9E44-22FA-2F78-359534A5E87D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId299";
	rename -uid "7CCD5A17-8545-29AC-FA11-D980090788B9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId300";
	rename -uid "D572CB55-D347-AB56-449D-F1AE73779A80";
	setAttr ".ihi" 0;
createNode groupId -n "groupId301";
	rename -uid "EA877190-494E-9590-B0DE-B3B095B043ED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId302";
	rename -uid "8C9D6061-F946-667C-2785-63B6411A02C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId303";
	rename -uid "CF9101C7-4D49-7027-2C37-A19007FC2403";
	setAttr ".ihi" 0;
createNode groupId -n "groupId304";
	rename -uid "5AF944DA-4A4C-9D76-7120-E982E5941F35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId305";
	rename -uid "B8749415-2C4E-441F-AD33-E19A9C373188";
	setAttr ".ihi" 0;
createNode groupId -n "groupId306";
	rename -uid "4CAD9424-C045-61E4-BD77-FABFA7D1CBE4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId307";
	rename -uid "5D3925A6-D342-DCC9-3F69-C9954A3A8B1F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId308";
	rename -uid "642C2DFF-D04E-61E2-0238-8C94451D2EFD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId309";
	rename -uid "4F059AEC-FC47-4350-6007-6E97988C4AAC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId310";
	rename -uid "15D02657-C94E-02A6-7D82-B580E743665F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "0C20B307-2A45-F466-631A-6FACF16D41D1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1007]";
createNode polySeparate -n "polySeparate1";
	rename -uid "BFD469A9-3246-F534-C0B8-1083D6FE6859";
	setAttr ".ic" 74;
	setAttr -s 74 ".out";
createNode groupId -n "groupId311";
	rename -uid "3641F09F-7942-52FE-FA32-3C93F6476F65";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "1381B340-2746-2F82-14B7-1F9B62B26CB2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId312";
	rename -uid "175FA94E-7E49-8537-F44D-938624F34B2A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "A4628AE0-D84F-98C0-71FE-3AB06B97DC9E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId313";
	rename -uid "67A82475-F349-64EC-731F-DAA6094B7024";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "345B7B81-864A-086D-D2DA-14A29D5C22F2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:18]";
createNode groupId -n "groupId314";
	rename -uid "B22A80A2-884D-9C48-E2E5-9E8ECA453307";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "B12AB56C-F747-CB4B-907D-3A9BC54DCB71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId315";
	rename -uid "B1B8B640-7440-1FE1-B9DC-1386A88BC07C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "6F26521A-614A-C233-9FD0-C9BD645A1E66";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId316";
	rename -uid "A6A1BF6B-0849-44AC-E7F4-0EA6D828DED9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "AFC6D17E-8B4D-FA4F-8AFC-BA907986EB4B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId317";
	rename -uid "5BE83FED-2E4B-4C2F-AEF4-7DABCC93D4E8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "090C8CD1-F343-E87A-3810-71BC9DDAD551";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId318";
	rename -uid "829A69D7-6145-5A9C-B446-7D90DAF5DD80";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "24559A15-1540-5C21-C8B1-47A5E9D7D791";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId319";
	rename -uid "361E3F50-AE4A-393D-9402-949B2F8D5118";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "3012F1B8-DB4C-3F81-1A6D-F3B9D933189B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId320";
	rename -uid "F27C9382-FC40-8AE3-0973-B8BF678909FD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "1F17279B-0442-BFF5-1049-72A9EA5BC291";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId321";
	rename -uid "43EA9405-9041-E5F2-8BB9-A4A16C462D88";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "F2F34E63-B549-50D9-BBBA-17803D2EAF22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId322";
	rename -uid "4D2FC948-3E4C-464A-4BF5-9F8A62A4CD25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "282C3B33-994C-01D8-085F-CB8612E4FDA4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId323";
	rename -uid "C386DB8F-0440-DFB8-2C12-F180BE0CA1EA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "09E943FF-414B-7613-82AD-38875A45104A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId324";
	rename -uid "3F2DD8B9-2546-53A7-0595-F49D1B70C810";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "F386C83F-CB43-5E9B-34AC-6BBD55C2AABA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId325";
	rename -uid "BC75EB0C-4246-6919-9DC5-72953CBF2902";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "79CDA4B3-AF4F-EFCB-649F-2A9FC427FC10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId326";
	rename -uid "E0740701-7146-9B9D-1601-929831F52D0A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "4CC2F02A-0045-BBE5-6A62-46B2D8C319F8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId327";
	rename -uid "1EF1C085-BC4A-F6FE-E365-6EABDD4B4603";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "BE27800C-B74B-ABC0-3469-D4B21D56D8E5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId328";
	rename -uid "30DE0AA6-CA44-8EE4-91BD-48BD0A8BAF33";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "69AF91EB-2F45-E97A-C9F0-298F4E65F3E1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId329";
	rename -uid "CBE06C32-054E-3ED0-4D68-C58FE9257AF0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "BB45DDC3-E646-4CFA-1494-1CAFE841F885";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId330";
	rename -uid "65BC1FB9-4C4A-2BAC-7EF2-9E8580E5ABD8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "B7F4E8BF-214E-E024-6959-52BAC63E5407";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId331";
	rename -uid "32B8BD05-A64E-BF05-45EC-A98AB51309D6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "69A6A7ED-C24B-66CA-8399-AF985E60476A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId332";
	rename -uid "18309695-2A48-3D64-4601-77AFCBA19CB9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "413B9C73-6440-B76C-D1DC-BEA6BF3F6020";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId333";
	rename -uid "6F8775FA-7043-39F8-72EE-0F8A7503F54C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "06BC3E0F-4E41-CF66-E53C-06A79761D88E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId334";
	rename -uid "CB79ADE6-3440-8D26-6A65-6594C16630B0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "94A40957-B042-FC58-06E0-46A284692048";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId335";
	rename -uid "1C005A2D-9C4C-3582-DF89-199E8BF6A8BD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "019EC7F7-F646-FD03-2080-818BF26FC245";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId336";
	rename -uid "720BC218-8540-1E37-C188-7790A03D59D2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "EA49BC72-454F-BBB1-D1A5-4E8BDA32B424";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId337";
	rename -uid "043EB51D-C647-21F2-04D3-CEA147521374";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "B83A6E92-D54A-00A1-E635-95B639959E4D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId338";
	rename -uid "7CF067F2-A344-DB6F-FA26-9BB15FA208DA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "E56735BE-4D44-4D88-E1A7-CC8B3F304B01";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId339";
	rename -uid "C3DC3000-0C49-0B05-936A-78B8998D8F0C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "2D896455-D842-0CEE-7114-C093C9519278";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId340";
	rename -uid "B4DB7EA7-CA41-48F7-3996-B7BD758973A2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "FFF23FC5-DB47-CC7F-E87B-DE840ECEA1F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId341";
	rename -uid "825D2426-104E-3B3D-5974-9C961448D943";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "FFFDE5B1-C04B-6000-DE6E-CE929457880D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId342";
	rename -uid "47DF2FE4-A845-6193-1CE3-CA81CF051C6C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "004BE584-FE4E-F097-3974-DEAC408F91F6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId343";
	rename -uid "C8162D1F-EC4E-51A1-16ED-DBBAFA443517";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "F53264B8-B14B-B911-A242-F091F9FEBED9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId344";
	rename -uid "A4CC4E25-F04B-878F-AB2C-CCAA28FFB0CC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "BACEDBDC-E54E-0820-65D0-FEBFD1E127E6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId345";
	rename -uid "ED395EFE-B449-7E31-1676-6298B1542A13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "AE393C81-F048-ABB1-7BDF-37BD1FAED26C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId346";
	rename -uid "316C40A7-CF4A-34E8-0BC6-DBA343E6BAAE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "9304C8E0-0C46-CCCF-CABC-148DF4E3F0CE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId347";
	rename -uid "F6E5BFAB-E34F-E21F-83FD-5D88E56128F4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "557C24EC-4942-775F-1DD1-A4BD75393BD6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId348";
	rename -uid "C6E93586-1842-C582-4696-36943A38486E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "5B99AE74-2E4B-7610-535C-54BE6C576885";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:57]";
createNode groupId -n "groupId349";
	rename -uid "042CD1F9-E441-23EB-19BE-FAA8653D72CF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "D8A593E3-FD40-1E23-E7F7-D59120AB854B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:41]";
createNode groupId -n "groupId350";
	rename -uid "13C82A81-5047-1ECD-B86A-B9AC1735076D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "D5C8FCFC-9043-E07D-2F92-DF8B88C9A34B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:57]";
createNode groupId -n "groupId351";
	rename -uid "9A30C011-A441-12B8-D4E2-1491BEB64539";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "73F45301-5245-539E-7B5A-BDBFF16D52ED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId352";
	rename -uid "770D968C-C046-556E-D999-459D7D725290";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "B04ACDD6-CF4B-4D3B-4B91-C38C7339FA2F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId353";
	rename -uid "40EDEBDF-0D4A-FDE9-82CA-678E42695140";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "C81FB462-0A45-7443-B372-0F93FA12CFA9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId354";
	rename -uid "03342B11-9F45-0D2C-FA00-7392C147ACF4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "CCB3D48E-994C-E92C-C322-1E9456FC7C43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId355";
	rename -uid "ED966F6E-844E-388E-8A80-658F0D4ECBD1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "0A7EAC60-9A47-5A07-43A1-C7B310AFF8B3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId356";
	rename -uid "B9C6FA58-FC4D-8590-6E32-FD88DD4842D7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	rename -uid "DDFE6536-3440-3D9C-38AD-A9AEB38D3D1E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId357";
	rename -uid "A298F0CC-A947-A18A-AC78-94BF0013495F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "14F4A6F2-A540-00E7-95CA-C2B0CB20A546";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId358";
	rename -uid "EF29C2A7-204B-56BA-0A51-5D8C6650DEA8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	rename -uid "654F0A67-D04B-4E06-9AB5-B295DB868A07";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId359";
	rename -uid "B78CA364-9944-030F-FCC8-F7864435567E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "540804AA-894B-7A38-B723-41A21A587F77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId360";
	rename -uid "310F0471-6A46-3DB2-7534-07A7C55B7A03";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	rename -uid "76821ECB-C046-7427-D7F8-D2A956ECC9E0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId361";
	rename -uid "AB359388-0942-A1C8-79D0-5CAFFE6398C8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	rename -uid "0314B581-404E-096F-43DF-C2890EB5FA60";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId362";
	rename -uid "F44B7C05-7944-2468-9E19-9EAEED64ADE8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	rename -uid "C1634FAF-5C43-9852-9A0A-10B0027C93A8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId363";
	rename -uid "373B777B-624E-A630-51B8-B48C1036BAB6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	rename -uid "5B5907DB-CF4B-8EE3-9D23-D59EDAECF8D3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId364";
	rename -uid "FAAD17D1-C140-F0EF-7460-FB8949FDF75A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts55";
	rename -uid "A9833E5B-C247-7502-8052-3BBB76884818";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId365";
	rename -uid "629EF51A-4D47-8A93-139D-16ACE88365C8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	rename -uid "FA50A077-BE4F-64D7-04F5-F49DD96FDB67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId366";
	rename -uid "C2CC6F41-ED43-D536-FD0B-52B9CB04507C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	rename -uid "D14AEE2C-D244-AF88-241D-42AEFE5A22B9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId367";
	rename -uid "6DED22DB-4848-6DFA-C3E0-7C9ABBFEB0DB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	rename -uid "3DED6E06-374E-1EDF-5CBD-06BFF262C4B4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId368";
	rename -uid "B2B35F69-0046-FFFA-C28A-8B8E32454279";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	rename -uid "D4C9223D-CF44-8141-6B17-7F963CA8A88E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId369";
	rename -uid "D8FADF99-8A4B-875F-6795-199E3E47D1DA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	rename -uid "AB50F967-9945-BF26-94C5-84814F5BB243";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId370";
	rename -uid "196184DA-1B48-F68D-A57E-6EB76FD05D04";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	rename -uid "6ED43E43-B244-04BD-66ED-E1A801DFA1C7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId371";
	rename -uid "1C0DBF2D-A740-D351-A530-B6A820E355C2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	rename -uid "09C265BC-AA49-4CFE-4B84-2A90E617A957";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId372";
	rename -uid "C4EAABF8-8343-A23F-077F-98A928CF7CFF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts63";
	rename -uid "AD5832C0-D948-193B-62CE-37A13EC153E1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId373";
	rename -uid "139AC06E-8444-453B-61F6-8C8289FA545F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	rename -uid "7E9A453F-DA4A-0C45-756A-8E9EEFD9958F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId374";
	rename -uid "D834DB1A-FC4E-2C15-0257-59BC0575A395";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts65";
	rename -uid "F9F9DF80-D847-6BC5-733E-BEA91E880A3B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId375";
	rename -uid "A810511E-824A-B8D0-F987-00B834D56D29";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	rename -uid "9F9D3030-A14C-95B1-3D91-C38186C9BD88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId376";
	rename -uid "25B7F21A-1A47-DA35-4BE3-A1BC25B00CD5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts67";
	rename -uid "718E6044-134A-7A95-936B-EAA4A8EB0287";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId377";
	rename -uid "F28A527A-5147-2C1B-0819-119319AB9884";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts68";
	rename -uid "DC3FB5A1-0543-E213-55B3-B49E48265D4E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId378";
	rename -uid "26CA90FB-EA48-C681-182E-898DE2462E2A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts69";
	rename -uid "63782201-E343-401D-CC99-98BBFF7F4B75";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId379";
	rename -uid "D7DD20C5-004E-BE3A-5992-CCB243A66EFC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts70";
	rename -uid "9F631E61-CD43-A544-2A70-D9A84153E030";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId380";
	rename -uid "D43F166C-F14D-BC68-8356-05A665654E84";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts71";
	rename -uid "3CA55918-2949-05D6-5024-B1BFCB1FFD5D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId381";
	rename -uid "26F96B35-4341-2231-E59A-629CC231E40B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts72";
	rename -uid "79101B0B-9947-4033-8D3E-2AB2ED623A5B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId382";
	rename -uid "E6E97906-ED45-FB17-9635-1FB3A46EAD21";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts73";
	rename -uid "752DCA1F-9F4F-3643-E61A-7FA489969179";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId383";
	rename -uid "6979E3B1-7E41-AFC0-69C9-BFA7D0813C86";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts74";
	rename -uid "26DD2A9A-BE4C-1D91-3DBC-75B2E6CED0BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId384";
	rename -uid "E79AEAEE-8645-4ECD-6C4C-D48DE5EFD49B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts75";
	rename -uid "EFFB591C-B741-B418-151F-199736086E97";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyUnite -n "polyUnite2";
	rename -uid "76978DD1-E942-448C-7817-98B1FEE7DE17";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId385";
	rename -uid "A2CD5BF8-E749-A3F5-9666-4FB41E7AC990";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts76";
	rename -uid "5168C601-E942-BDF8-FCF1-4DAAA4C74086";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:26]";
createNode polyCube -n "polyCube1";
	rename -uid "C871B33B-0445-4643-CDB5-0C9CBD07DBAD";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube1";
	rename -uid "AA2CD317-3F4E-D240-4601-D790EF72E9D9";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp1";
	rename -uid "42EA4246-C246-D579-98FD-A8BFB9FE0560";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
	setAttr ".op" 2;
	setAttr ".mg" -type "Int32Array" 3 529 607 -609 ;
createNode groupId -n "groupId386";
	rename -uid "D87A1729-FA4C-A990-A6E7-D6ADF7365764";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts77";
	rename -uid "BC188ED3-DD4D-A5AA-32E7-C1883DDE3F23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId387";
	rename -uid "B90F1A5C-1144-D4FA-3358-828848355879";
	setAttr ".ihi" 0;
createNode groupId -n "groupId388";
	rename -uid "06CC9037-7248-91EC-8C24-7E9D7761566A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts78";
	rename -uid "2761AE9F-4548-79D8-9E52-1A8CEAFE576E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId389";
	rename -uid "2ABE6958-C442-0CDC-5BA7-3CADDCFC097E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId390";
	rename -uid "30C06AA2-6847-CCE3-86B6-DFBD5AF9332C";
	setAttr ".ihi" 0;
createNode polySplit -n "polySplit1";
	rename -uid "7D44A46A-E04E-92E2-AB39-6DA35ADEE5C8";
	setAttr -s 8 ".e[0:7]"  0.30000001 0.30000001 0.69999999 0.69999999
		 0.69999999 0.69999999 0.69999999 0.30000001;
	setAttr -s 8 ".d[0:7]"  -2147483632 -2147483631 -2147483622 -2147483623 -2147483624 -2147483625 
		-2147483621 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "804E0AD2-7648-237B-447A-6E8BDC2CC647";
	setAttr -s 8 ".e[0:7]"  0.69999999 0.69999999 0.69999999 0.69999999
		 0.30000001 0.30000001 0.69999999 0.69999999;
	setAttr -s 8 ".d[0:7]"  -2147483625 -2147483624 -2147483623 -2147483622 -2147483618 -2147483619 
		-2147483621 -2147483625;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "74B22136-D041-73A3-4290-F2B1F80F826D";
	setAttr ".ics" -type "componentList" 2 "f[4]" "f[14]";
	setAttr ".ix" -type "matrix" 2.6402325204150912 0 0 0 0 2.6402325204150912 0 0 0 0 2.6402325204150912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 21.10634 10.5955 32.668484 ;
	setAttr ".rs" 1374958470;
	setAttr ".lt" -type "double3" 7.1054273576010019e-15 -1.3735130781085687 1.1046111157612308 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.236294172135537 0.13764944209765162 28.134945062688043 ;
	setAttr ".cbx" -type "double3" 22.976385212779544 21.053350025144791 37.202019752078748 ;
createNode polyUnite -n "polyUnite3";
	rename -uid "1F3FC834-824C-B752-E07E-1BB1A6B90A0C";
	setAttr -s 72 ".ip";
	setAttr -s 72 ".im";
createNode groupId -n "groupId391";
	rename -uid "EBF637A1-FF42-2D9A-597E-AB944E5C30F9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts79";
	rename -uid "6B6B2E20-BA4A-6E32-F52F-46B45FB67473";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:34]";
createNode groupId -n "groupId392";
	rename -uid "EA32D0DC-BA44-DFAF-B371-DFB91663660D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId393";
	rename -uid "102B070D-734D-091C-3839-E99490882660";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts80";
	rename -uid "EF93D262-EE43-A1DD-3295-349653EB981E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1032]";
createNode polySeparate -n "polySeparate2";
	rename -uid "5B28C04A-A041-BA86-8004-8AA160902F25";
	setAttr ".ic" 74;
	setAttr -s 74 ".out";
createNode groupId -n "groupId405";
	rename -uid "572803A7-A64A-FCD8-6786-5EB0A63E82BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId428";
	rename -uid "8293B3F1-6440-DD90-F3F6-ED882294AE88";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts115";
	rename -uid "29C09D13-9141-A889-E5E7-79A1D16DFCCC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId430";
	rename -uid "3875E9BB-1D45-344E-6F18-EFAE584298D3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts117";
	rename -uid "B84B5856-FB4D-7CFB-511D-F5AC40AB61C8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:57]";
createNode groupId -n "groupId439";
	rename -uid "1EFC2962-AF4F-27F4-E403-5196E9F66B5C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts126";
	rename -uid "CF7B5AF5-4A4B-FD76-08BC-C69B7C353C98";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId464";
	rename -uid "EC2794CE-D642-5A1D-0DBB-63AC237DDFCD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts151";
	rename -uid "745BF47B-7048-7826-B8F2-4F8948DE35A6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId465";
	rename -uid "949FF1D5-994B-A37D-BDFE-3A8D2BEFDB53";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts152";
	rename -uid "083262A7-C944-8659-9619-4E99BDC9100A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId466";
	rename -uid "8746BA6D-9D41-577D-8A0E-C0A03668A81C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts153";
	rename -uid "90CC1E9C-BC44-C515-4B69-509E1F741C07";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId467";
	rename -uid "20D2F381-D747-2FCB-B02B-9ABC8FA756EC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts154";
	rename -uid "289214E2-1B4D-2F83-339E-4DB66408E669";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:34]";
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "A49EABE1-664E-45AA-D8FB-8FB94653DAF1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 2.528587818145752 50.984133243560791 0 ;
	setAttr ".ps" -type "double2" 75.843196482410306 100.48935985565186 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "83B955DA-E345-6032-AC39-F5A9AA69801D";
	setAttr ".uopa" yes;
	setAttr -s 59 ".uvtk[0:58]" -type "float2" 0.3925806 0 0.3925806 0 0.39258057
		 0 0.39258057 0 0.39258057 0 0.39258057 0 0.3925806 0 0.3925806 0 0.39258057 0 0.39258057
		 0 0.39258057 0 0.39258057 0 0.39258057 0 0.39258057 0 0.39258057 0 0.39258057 0 0.3925806
		 0 0.3925806 0 0.3925806 0 0.3925806 0 0.39258057 0 0.39258057 0 0.39258057 0 0.39258057
		 0 0.3925806 0 0.3925806 0 0.39258057 0 0.39258057 0 0.3925806 0 0.3925806 0 0.39258057
		 0 0.39258057 0 0.3925806 0 0.3925806 0 0.39258057 0 0.3925806 0 0.3925806 0 0.3925806
		 0 0.3925806 0 0.39258057 0 0.39258057 0 0.39258057 0 0.39258057 0 0.39258057 0 0.39258057
		 0 0.3925806 0 0.3925806 0 0.3925806 0 0.39258057 0 0.39258057 0 0.3925806 0 0.3925806
		 0 0.3925806 0 0.3925806 0 0.39258057 0 0.39258057 0 0.39258057 0 0.3925806 0 0.39258057
		 0;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "2D3ACA6E-5D4F-C4B1-078B-D58407960231";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 13.890326023101807 54.133829422295094 10.318226099014282 ;
	setAttr ".ps" -type "double2" 8.8757083413671101 108.00809799134731 ;
	setAttr ".is" -type "double2" 0.12231002088500542 1 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "2D780812-B743-CC73-96DF-90AE12AC87ED";
	setAttr ".uopa" yes;
	setAttr -s 56 ".uvtk[0:55]" -type "float2" 0.20183399 0 0.20183399 0
		 0.20183399 0 0.20183399 0 0.20183399 0 0.20183399 0 0.20183399 0 0.2018339 0 0.2018339
		 0 0.20183393 0 0.20183393 0 0.20183396 0 0.20183399 0 0.20183396 0 0.20183396 0 0.20183393
		 0 0.20183399 0 0.20183399 0 0.20183393 0 0.2018339 0 0.20183399 0 0.20183399 0 0.20183399
		 0 0.20183399 0 0.2018339 0 0.20183393 0 0.20183396 0 0.20183393 0 0.20183396 0 0.20183393
		 0 0.20183396 0 0.20183393 0 0.20183399 0 0.20183399 0 0.20183399 0 0.20183399 0 0.20183396
		 0 0.20183393 0 0.20183393 0 0.20183396 0 0.20183393 0 0.20183393 0 0.20183396 0 0.20183399
		 0 0.20183399 0 0.20183393 0 0.20183393 0 0.20183396 0 0.20183393 0 0.20183393 0 0.20183396
		 0 0.20183396 0 0.20183393 0 0.20183393 0 0.20183393 0 0.20183393 0;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "5D341366-A544-683D-B9B0-0FB221A20E2F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:57]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 49.787952423095703 31.884447798132896 -4.966659814119339 ;
	setAttr ".ps" -type "double2" 11.776588439941406 63.198168307542801 ;
	setAttr ".is" -type "double2" 0.22679692316059996 1 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj4";
	rename -uid "22081F39-804F-0D7F-37C2-DC8490617E46";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -9.5226246118545532 27.219101220369339 -15.002379894256592 ;
	setAttr ".ps" -type "double2" 11.169613599777222 55.514335095882416 ;
	setAttr ".is" -type "double2" 0.20589954270548094 1 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "CCE81FE4-FE4D-7C4C-4633-30B4BE61A9B9";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" -0.15668687 0 -0.15668687
		 0 -0.15668687 0 -0.15668687 0 -0.15668687 0 -0.15668687 0 -0.15668687 0 -0.15668687
		 0 -0.15668687 0 -0.15668687 0 -0.15668687 0 -0.15668687 0 -0.15668687 0 -0.15668687
		 0 -0.15668687 0 -0.15668687 0 -0.15668687 0 -0.15668687 0 -0.15668687 0 -0.15668687
		 0 -0.15668687 0 -0.15668687 0 -0.15668687 0 -0.15668687 0;
createNode polyUnite -n "polyUnite4";
	rename -uid "B082CC48-E146-51AF-A451-1090C82107A4";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId468";
	rename -uid "E2787023-9E44-412F-AD3E-6D829DC54C1C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts155";
	rename -uid "39EB910B-3D4E-80BC-4BB8-9FB92501BBA7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:26]";
createNode polyPlanarProj -n "polyPlanarProj5";
	rename -uid "09857A67-BD47-E703-0983-908FE0B7568F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 22.75505542755127 25.05164036154747 11.49084198474884 ;
	setAttr ".ic" -type "double2" 0.4707871849293781 0.5 ;
	setAttr ".ps" -type "double2" 10.932500839233398 49.218641579151154 ;
	setAttr ".is" -type "double2" 0.20589954270548105 1 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "D0EC339D-5F4E-3F7A-68F8-779F74439584";
	setAttr ".uopa" yes;
	setAttr -s 32 ".uvtk[0:31]" -type "float2" -0.35852081 0 -0.35852081
		 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081
		 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081
		 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081
		 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081
		 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081 0 -0.35852081
		 0;
createNode polyCube -n "polyCube2";
	rename -uid "B69520F4-CE49-25DF-3F1E-F586BA1EE418";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp2";
	rename -uid "74FE3C13-F944-11CB-1767-F1B191303F47";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 236 -238 ;
createNode groupId -n "groupId469";
	rename -uid "99B6E41D-7A48-F40D-F494-F1BFF4E16548";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts156";
	rename -uid "E5E1570A-5D40-507A-AF4C-D7AD218F7B2E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId470";
	rename -uid "070C08A1-514E-D614-61E3-E580285AEB9A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId471";
	rename -uid "6CA3B0F4-E341-485E-4DD0-CE8FB331C539";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube3";
	rename -uid "8502BAC7-514E-26EE-DFBC-CBA02E162DAE";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp3";
	rename -uid "F0906568-D04A-0E3C-5DA4-5ABF98A358B0";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 237 -241 ;
createNode groupId -n "groupId472";
	rename -uid "A81247C3-664A-70DC-7A22-578FB917C818";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts157";
	rename -uid "7738BC0E-5048-1294-6FE6-2381169F9586";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId473";
	rename -uid "94A6D6B2-9F43-818B-94A9-62A4A0BE4480";
	setAttr ".ihi" 0;
createNode groupId -n "groupId474";
	rename -uid "97896370-2D43-59FE-DA98-1681DA408325";
	setAttr ".ihi" 0;
createNode polyCube -n "pasted__polyCube3";
	rename -uid "C5D1C283-484D-43B0-4873-43B32489160D";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp4";
	rename -uid "B8ADA28D-3948-9D82-ED31-92ABC466C12D";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 199 -244 ;
createNode groupId -n "groupId475";
	rename -uid "645E0C05-4B44-C40A-F02A-E89851C678AB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts158";
	rename -uid "8C76512C-D248-B4F4-DEBF-6EBFFE40851B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId476";
	rename -uid "C0F0179C-3946-722A-0BD0-A98F460037FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId477";
	rename -uid "8B87EFE1-6149-5EA8-4021-2D85C2CBA941";
	setAttr ".ihi" 0;
createNode polySplit -n "polySplit3";
	rename -uid "D02E3614-864C-57F0-CD91-D89D0BC645F8";
	setAttr -s 8 ".e[0:7]"  0.80000001 0.80000001 0.80000001 0.80000001
		 0.2 0.2 0.80000001 0.80000001;
	setAttr -s 8 ".d[0:7]"  -2147483625 -2147483624 -2147483623 -2147483622 -2147483601 -2147483600 
		-2147483621 -2147483625;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "4FEB5933-B64B-231C-1541-BC8D4C5A482B";
	setAttr -s 8 ".e[0:7]"  0.89999998 0.89999998 0.89999998 0.89999998
		 0.1 0.1 0.89999998 0.89999998;
	setAttr -s 8 ".d[0:7]"  -2147483625 -2147483624 -2147483623 -2147483622 -2147483575 -2147483574 
		-2147483621 -2147483625;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "80F56967-B849-7D4B-F0A0-11AD64B83A2D";
	setAttr ".ics" -type "componentList" 1 "f[40:41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 17.141844 10.595501 32.66848 ;
	setAttr ".rs" 934752591;
	setAttr ".lt" -type "double3" 7.1054273576010019e-15 -0.74813253630465959 0.86909897561016891 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 16.792768478393555 0.13764944672584534 28.134943008422852 ;
	setAttr ".cbx" -type "double3" 17.49091911315918 21.053352355957031 37.202018737792969 ;
createNode polyCube -n "pasted__polyCube4";
	rename -uid "91BB2011-D348-37FD-464D-7796E6413B2C";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp5";
	rename -uid "FB937A9A-3C4F-4D15-2A79-E7BB336C2BEF";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 247 -249 ;
createNode groupId -n "groupId478";
	rename -uid "50DCB566-D948-9874-B5EA-34820BA1CCFC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts159";
	rename -uid "4941B114-A244-ECC7-635C-709E752C314D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:40]";
createNode groupId -n "groupId479";
	rename -uid "884C965D-CD4E-C034-4032-DCB89C5DD025";
	setAttr ".ihi" 0;
createNode groupId -n "groupId480";
	rename -uid "7302C915-E949-34B0-2D07-3295FD4ECECF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts160";
	rename -uid "4411D992-BC42-9F7E-A609-15A0589C90D9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId481";
	rename -uid "F649902F-9E40-07B5-5AAA-FB9DF84EA4BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId482";
	rename -uid "124E4A72-864D-C10C-DF9F-D58FDFBD8B37";
	setAttr ".ihi" 0;
createNode polyCube -n "pasted__polyCube5";
	rename -uid "95AD4560-9646-AABD-361F-85AC92239AAF";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp6";
	rename -uid "09E86F5B-8D4D-3939-9D4B-338D0D09EDBB";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 208 -252 ;
createNode groupId -n "groupId483";
	rename -uid "8E62D9A5-C94B-3B5B-EB7C-DA994FE8F590";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts161";
	rename -uid "2A11DEF3-EA47-F0FF-CEFD-3AB3150EAAE1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId484";
	rename -uid "1309FE00-7A49-8DD6-6FAB-34813742C725";
	setAttr ".ihi" 0;
createNode groupId -n "groupId485";
	rename -uid "3647F9D0-A546-B66F-0AE6-A69AD1566E68";
	setAttr ".ihi" 0;
createNode polyCube -n "pasted__polyCube6";
	rename -uid "0CC04CCF-1C47-1CC0-4576-7D9BBC6B3B74";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp7";
	rename -uid "6ABB5CFD-534C-86E6-14ED-F0A11C59DE8E";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 197 -255 ;
createNode groupId -n "groupId486";
	rename -uid "E6589A14-2248-A9AC-046D-CAB618A7BEF9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts162";
	rename -uid "094531F0-D64C-1F67-C76A-D5B61CEE8178";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId487";
	rename -uid "5E6A7319-EE4D-6110-CC53-62AE1DE1EC9E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId488";
	rename -uid "8D0AE13C-3F4B-5A25-753C-AEAC8F9F4855";
	setAttr ".ihi" 0;
createNode polyCube -n "pasted__polyCube7";
	rename -uid "99750FC2-0241-C844-67BF-4C9AF6EE3F64";
	setAttr ".cuv" 4;
createNode lambert -n "lambert2";
	rename -uid "59F3BED2-5542-CADE-966B-A68E59FA9EAF";
createNode shadingEngine -n "lambert2SG";
	rename -uid "BA81B4F5-2F47-B662-A30B-A7A42DF728DA";
	setAttr ".ihi" 0;
	setAttr -s 248 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 228 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "C012B65D-6047-1AD7-F977-C8A73A87A601";
createNode polyCBoolOp -n "polyCBoolOp8";
	rename -uid "E9ED13A6-5044-CD6C-9AAC-2FA916A8A0D6";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 528 -530 ;
createNode groupId -n "groupId489";
	rename -uid "DA16DCEC-614A-DCF3-0DBC-2ABAD234CA1D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts163";
	rename -uid "DE923346-B44C-EEC7-2E7C-A3B9327E1C55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId490";
	rename -uid "6BBD8732-A84A-E700-442D-51B3D24E3DE4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId491";
	rename -uid "29E0B930-7041-FE9C-6F38-7582C2A8F4BA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts164";
	rename -uid "147D75C7-5940-F3AE-075E-F5B75A7FA3FC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId492";
	rename -uid "03508006-6A47-A70B-862C-01A9F11FC8D4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId493";
	rename -uid "D31AE88B-5744-B048-16CD-86A9A3C58F4F";
	setAttr ".ihi" 0;
createNode polyCube -n "pasted__polyCube8";
	rename -uid "3C134C1D-B64A-B59E-BFC3-F4A144CF0C00";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp9";
	rename -uid "799B463E-0C42-D11A-765F-FD8A1BC70829";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 -535 -533 ;
createNode groupId -n "groupId494";
	rename -uid "E4C9132C-5A49-16ED-ECBB-CD8CF32DA678";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts165";
	rename -uid "C9181A28-7443-B706-62CC-869593665715";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:32]";
createNode groupId -n "groupId495";
	rename -uid "9D11A11C-CA40-EA2D-0A0B-A4B71E0B7200";
	setAttr ".ihi" 0;
createNode groupId -n "groupId496";
	rename -uid "3CE9908A-B641-1E65-F6D3-668B90B97A54";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts166";
	rename -uid "29665116-8449-7BB4-5800-3E810E8B1637";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId497";
	rename -uid "541B25DC-6F4C-449A-34F8-3A9DFA6E00D8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId498";
	rename -uid "A1CCDFBA-784C-4F57-BA13-709F74EB94A1";
	setAttr ".ihi" 0;
createNode polyCube -n "pasted__polyCube9";
	rename -uid "F8683094-DA4B-9778-70B2-2B8146E4BC02";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp10";
	rename -uid "D1D0CCDE-E444-6F2F-2813-33AF0F87A05B";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 -540 -538 ;
createNode groupId -n "groupId499";
	rename -uid "8BFAAA07-ED4B-96AC-7F39-96BDDA9FA563";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts167";
	rename -uid "B5617F6C-BC4C-C598-6843-D1B79F4EB8EC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId500";
	rename -uid "599CB620-BB4E-3530-F245-F4B2A420667B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId501";
	rename -uid "8A969D58-A947-072C-CD9B-FBAD5158E06B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts168";
	rename -uid "40892D3C-FE44-AEF5-968E-52B93B1EFDD7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId502";
	rename -uid "83DD8B7B-504B-8E91-3849-1F9639D5DFF7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId503";
	rename -uid "781E8C03-904A-8120-0B32-84A80F3B2955";
	setAttr ".ihi" 0;
createNode polySplit -n "polySplit5";
	rename -uid "6988A90A-3646-5EC1-0C0C-27B97B9F8507";
	setAttr -s 3 ".v[0:2]" -type "float3"  0.382855 100.48347 4.9058852 
		0.124972 101.22881 4.8889799 0.73854101 101.22881 4.8569479;
	setAttr -s 8 ".e[0:7]"  1 40 0.99860698 0.0119182 0.00039992001 28
		 28 0;
	setAttr -s 8 ".d[0:7]"  -2147483540 0 -2147483540 -2147483550 -2147483566 1 
		2 -2147483565;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "474F8BCE-4941-D781-D0CE-0F9A4563F089";
	setAttr ".dc" -type "componentList" 1 "f[49]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "AD109DD8-1240-AC1E-F5D7-A79F5AC4D726";
	setAttr ".dc" -type "componentList" 1 "f[49]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "A77B2D13-C145-8621-EB89-8B9070887367";
	setAttr ".dc" -type "componentList" 1 "vtx[78]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "5284B50A-9F43-E923-4D1B-D4B77B87D1A5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[91]" -type "float2" 0.00055405055 -0.0036127921 ;
	setAttr ".uvtk[94]" -type "float2" -0.002321189 0.0030003716 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "D8D72AF7-BE47-1579-60B0-6EBD7CAACDDE";
	setAttr ".ics" -type "componentList" 2 "vtx[75]" "vtx[78]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak1";
	rename -uid "7E734185-8F4B-6655-255B-4EA6863E1052";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[64]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[75]" -type "float3" 0 -0.81515628 0 ;
	setAttr ".tk[78]" -type "float3" -0.23715568 -0.12763453 -4.7683716e-07 ;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "BD2DEDF5-9240-9488-DA1B-CE83A2C0A4DE";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[72]" -type "float2" 0.00031441826 0.0020255186 ;
	setAttr ".uvtk[94]" -type "float2" 0.00027336867 -2.3690397e-07 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "D5859659-5B4D-913D-D0D6-E78508B9FFCA";
	setAttr ".ics" -type "componentList" 2 "vtx[64]" "vtx[78]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak2";
	rename -uid "052B6034-1446-F9E2-72CE-C4AF9FB50E50";
	setAttr ".uopa" yes;
	setAttr ".tk[78]" -type "float3"  0.020727277 0 0.016904831;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "9BD02220-A14C-9E75-95CF-CE9C1C3CB620";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[72]" -type "float2" 0.00014743474 0.00094976474 ;
	setAttr ".uvtk[91]" -type "float2" -0.00021530715 0.0072962255 ;
	setAttr ".uvtk[94]" -type "float2" 3.5070263e-07 6.0979551e-07 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "3877B041-F447-B6CD-9256-288501CC732F";
	setAttr ".ics" -type "componentList" 2 "vtx[64]" "vtx[75]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak3";
	rename -uid "2E04A067-0F43-5A44-A82D-9C9D7BFFE764";
	setAttr ".uopa" yes;
	setAttr ".tk[75]" -type "float3"  -1.4901161e-08 0.87297058 0;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "4D5E70CF-644F-80B8-DCA5-BF8F5911CAA5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[73]" -type "float2" 5.8093025e-05 0.00037773768 ;
	setAttr ".uvtk[94]" -type "float2" 0.00011637443 -8.7384116e-08 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "E78D0A3C-E243-391A-132A-C9A484FE2ABC";
	setAttr ".ics" -type "componentList" 2 "vtx[65]" "vtx[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak4";
	rename -uid "4BB9D894-E74E-BC42-866D-A4A5B99545CE";
	setAttr ".uopa" yes;
	setAttr ".tk[77]" -type "float3"  0.0088124871 0 0.048936844;
createNode polyAppend -n "polyAppend1";
	rename -uid "2355D402-9A41-11AE-A176-31846D2CB43B";
	setAttr -s 2 ".d[0:1]"  -2147483569 -2147483592;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend2";
	rename -uid "8DC41EBA-5242-9649-C365-4F8B59928344";
	setAttr -s 2 ".d[0:1]"  -2147483554 -2147483573;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend3";
	rename -uid "3CC95B84-2B46-0095-08F5-D89F27C62E10";
	setAttr -s 3 ".d[0:2]"  -2147483521 -2147483560 -2147483568;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend4";
	rename -uid "BD5BE6DE-8D4E-9C43-C3A3-26A80A79C401";
	setAttr -s 3 ".d[0:2]"  -2147483520 -2147483551 -2147483572;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend5";
	rename -uid "3784C7C9-7D4F-BBB3-6A52-01BBB582097E";
	setAttr -s 3 ".d[0:2]"  -2147483519 -2147483574 -2147483556;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend6";
	rename -uid "127D8611-A445-D7EF-E00D-C5BD355981E6";
	setAttr -s 3 ".d[0:2]"  -2147483522 -2147483570 -2147483552;
	setAttr ".tx" 1;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "A26B5D33-EB44-E73E-F472-CBAB07D013B8";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[63]" -type "float2" 2.0128013e-05 0.00012947414 ;
	setAttr ".uvtk[91]" -type "float2" 9.3740011e-05 0.00060047937 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "63B2756F-C14E-22AB-96FE-EDBE5873ADE6";
	setAttr ".ics" -type "componentList" 2 "vtx[55]" "vtx[75]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak5";
	rename -uid "39E39712-1547-1B5C-71CD-B3A118F2F1C4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[55]" -type "float3" 0 3.5762787e-07 -0.0052219033 ;
	setAttr ".tk[64]" -type "float3" 0 1.1920929e-07 0 ;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "415D9AEC-904F-C2EC-BA82-E79DDD46FAE4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[47]" -type "float2" 0 -5.8369324e-08 ;
	setAttr ".uvtk[76]" -type "float2" -3.8601087e-08 2.5096537e-07 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "70A00A88-C047-DF0B-F099-AFB47F17776E";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[68]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak6";
	rename -uid "3686C0FD-EE4D-9ED9-FC7B-25A26F04DFDE";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[38:39]" -type "float3"  1.77150595 0 0 1.1920929e-07
		 0 -0.013513088;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "6AB54728-FE43-7A37-2505-539D8246F604";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[46]" -type "float2" 3.5749181e-14 1.4128158e-08 ;
	setAttr ".uvtk[75]" -type "float2" -3.4032073e-08 -2.0568172e-07 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "94C69787-B543-C462-CE7D-108F70231B9D";
	setAttr ".ics" -type "componentList" 2 "vtx[38]" "vtx[67]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak7";
	rename -uid "FACB6601-BB40-8CDC-A557-508C932B3038";
	setAttr ".uopa" yes;
	setAttr ".tk[38]" -type "float3"  -1.77150631 0 0.0016531944;
createNode polyCube -n "pasted__polyCube10";
	rename -uid "306702B3-1E49-A5C6-94A5-78B04C812923";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp11";
	rename -uid "719C5C7B-8B4A-60EC-14F3-E59A92E95911";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 -545 -543 ;
createNode groupId -n "groupId504";
	rename -uid "9CA63E51-134D-BC64-327B-F38CD91FD404";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts169";
	rename -uid "9730ED41-EA47-19B7-832E-189046E4D8D8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:41]";
createNode groupId -n "groupId505";
	rename -uid "A8F2DED3-374F-ECED-FB0A-F99F60125202";
	setAttr ".ihi" 0;
createNode groupId -n "groupId506";
	rename -uid "49CABCD3-5947-CA08-2B13-BD95A6DD36DB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts170";
	rename -uid "5B192D19-A642-B012-40B5-3EA20D6C70FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId507";
	rename -uid "A8FB7236-B041-1E1F-689F-2AB2DA2CC5E5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId508";
	rename -uid "C3BB5433-554A-0C89-8BDF-47B1A9C7C674";
	setAttr ".ihi" 0;
createNode polyCube -n "pasted__polyCube11";
	rename -uid "37191C11-DA48-5072-A496-8AA0576248DB";
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp12";
	rename -uid "314728B4-F146-4603-2C9D-87B866C81DA0";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 3 535 -548 -533 ;
createNode groupId -n "groupId509";
	rename -uid "24F8BF1A-0F4C-BAD6-7383-79A086A423A1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts171";
	rename -uid "6033E60B-0449-72EA-F493-C7BBA204610B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId510";
	rename -uid "EB0BB485-6C4D-B551-8D1C-6DB97D7A46E6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId511";
	rename -uid "25B215B4-CA40-D390-54A0-1B91FD122740";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite5";
	rename -uid "D28A0D6D-874D-D09F-58B2-2EBBAA7FF13E";
	setAttr -s 72 ".ip";
	setAttr -s 72 ".im";
createNode groupId -n "groupId512";
	rename -uid "AA13EF9F-C647-60D4-FD42-798043528C79";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts172";
	rename -uid "D0623900-884D-EF2F-5F1F-8A94C4C2C65C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:18]";
createNode groupId -n "groupId513";
	rename -uid "D0D972FC-0445-42B5-2DA2-23BB8E10BAA7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId514";
	rename -uid "A9C46B49-F54D-CD6F-69DF-B5B2C3D84350";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts173";
	rename -uid "E63CAA8D-9444-CCFE-00DC-4FBE4187550D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId515";
	rename -uid "E5E8F442-6049-5B32-C61A-AB91B4DD70A1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId516";
	rename -uid "7A68AA81-6C41-E9A0-751E-58B29AC132AD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts174";
	rename -uid "5ADA101E-A749-1225-C36E-54AA1191A176";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId517";
	rename -uid "7AD4CFFB-4647-7EFC-2C3B-ACA213CA3186";
	setAttr ".ihi" 0;
createNode groupId -n "groupId518";
	rename -uid "55D9F362-7F44-A005-8915-858166525CE0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts175";
	rename -uid "4EFEF9DA-5946-3B2D-1D2D-E2BE78D57BBB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId519";
	rename -uid "50DD3F3E-2348-87CB-EE35-6A9E7002A3E5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId520";
	rename -uid "143A9AC7-1444-6AFF-60C7-52B67C223196";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts176";
	rename -uid "37CB3E2D-B948-7F2C-21A6-4593E5CB4A6C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId521";
	rename -uid "9B126139-F349-9E4D-FF67-D489FE9A1E4E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId522";
	rename -uid "A8BB94C0-C440-3856-7DF9-84BB7838B91F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts177";
	rename -uid "72BC841E-F14E-BB6D-63A6-5BBF71458AFE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId523";
	rename -uid "DB1DD576-844C-1DB5-5834-3F9755E150ED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId524";
	rename -uid "D90402A5-A048-0F34-4FAE-3A9CB6B0968C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts178";
	rename -uid "28B02A9A-9741-AAFF-7943-E3B794EC6110";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId525";
	rename -uid "50636047-DA40-5E9E-CC60-2B9B935D241B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId526";
	rename -uid "F31E4449-0D47-EF17-263E-2CB659F021C4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts179";
	rename -uid "A70A6887-CF48-929D-DFE1-B1A57DC8D7BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId527";
	rename -uid "56976C76-6C49-A385-C580-489A51606851";
	setAttr ".ihi" 0;
createNode groupId -n "groupId528";
	rename -uid "5F482890-BC42-FE82-492E-F3B87584C4AF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts180";
	rename -uid "2B6896E2-1B42-BE9E-47D4-C88DC98429EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId529";
	rename -uid "FD9E374F-2B45-637A-9753-F088A9148ABB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId530";
	rename -uid "05A05761-C34C-0299-5EFD-C28B75798E65";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts181";
	rename -uid "7F76052B-DF4C-D5FB-13E7-82A6534485B0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId531";
	rename -uid "6FC59AA2-7543-0EF3-EE94-2B9379C037D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId532";
	rename -uid "AF262450-A84D-B13E-3436-16ACE294DFA6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts182";
	rename -uid "07CBAB4F-8347-97E0-E334-1D9AC01EB3A4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:54]";
createNode groupId -n "groupId533";
	rename -uid "FB0C52A7-2947-F5C3-CE78-DC936F811B45";
	setAttr ".ihi" 0;
createNode groupId -n "groupId534";
	rename -uid "A5C246BD-E44A-F841-EF6D-2A924CCB1D69";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts183";
	rename -uid "C3EB2603-0642-54E0-A4A4-CBBC02F6DBCB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId535";
	rename -uid "1F86922C-9B40-C3D6-C66D-AA9A555C8FF9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId536";
	rename -uid "F3829A99-294D-66E8-1C8A-77B32C34B267";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts184";
	rename -uid "4137ECF9-574D-1E94-28BA-EE9D10B704A8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId537";
	rename -uid "5CC3BF0A-F445-8CF7-A587-DC9B52FD4C0D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId538";
	rename -uid "F44B0485-8246-33C7-48A6-798C252E1D99";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts185";
	rename -uid "34F9E163-6543-F534-5217-DF95342B277B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId539";
	rename -uid "B2B3A681-4B4C-FA89-B949-F1B30A952192";
	setAttr ".ihi" 0;
createNode groupId -n "groupId540";
	rename -uid "D58D9058-504E-3938-CD99-6B98E37E94D1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts186";
	rename -uid "2C0033B9-424C-90AD-B2BC-91807D662624";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId541";
	rename -uid "DF0F6687-CE49-02E8-B067-C18ECF202CF0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId542";
	rename -uid "1AA80F6E-C745-3223-EE41-F0A2E8776AEE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts187";
	rename -uid "E890C462-1747-51EA-B110-A1B390AAFDE9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId543";
	rename -uid "FCF3BF3D-7641-78C7-171D-069BB7F41BF4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId544";
	rename -uid "871FCB7F-8C42-0940-7525-6D85DABEF292";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts188";
	rename -uid "669BA346-FD43-25B3-593C-D68E5335E92D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId545";
	rename -uid "BB470ABA-FB4D-7219-CABC-5D88B3696B01";
	setAttr ".ihi" 0;
createNode groupId -n "groupId546";
	rename -uid "7B5A9095-BE4C-0284-680E-A1A0E87E4EB7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts189";
	rename -uid "6B92B337-5044-3A5E-4C92-0EBC22A9C94A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId547";
	rename -uid "4C489DD5-E84C-4F8B-552A-0DB826130014";
	setAttr ".ihi" 0;
createNode groupId -n "groupId548";
	rename -uid "30EC9524-2142-D36E-884C-2FB8D30ABA9F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts190";
	rename -uid "2FF12DF4-CE4F-A07B-E71A-70BAB436EC71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId549";
	rename -uid "E9723074-F24B-74FB-B9F4-A0978EF664DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId550";
	rename -uid "FBD4F5D1-CC41-F465-35C8-B28BFEFB63D6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts191";
	rename -uid "CFABC98F-A445-6226-1E87-569B98CF0456";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId551";
	rename -uid "70F56417-C64D-8FA3-E422-85AB215D2327";
	setAttr ".ihi" 0;
createNode groupId -n "groupId552";
	rename -uid "6CA07A06-154E-B72C-0CA7-0A8B8FF6D27E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts192";
	rename -uid "B8B5A6CA-7F42-79A1-54CA-B7970FD3AA3B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId553";
	rename -uid "F042412A-7442-A1BC-BD4E-A587D68B0D52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId554";
	rename -uid "84969068-764F-E2A5-AC11-0EB5B60E2BAA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts193";
	rename -uid "4DB31485-114D-FABB-628A-F1B655D5ADD8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId555";
	rename -uid "A8F5AF29-654C-701C-7480-C3972D102365";
	setAttr ".ihi" 0;
createNode groupId -n "groupId556";
	rename -uid "1A2A2CFA-D642-F728-BA0D-FA83FEF24604";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts194";
	rename -uid "A857904E-484B-C5B7-FB2E-15976E5D87E7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId557";
	rename -uid "DBD9DBEE-0144-61DA-0D71-A8B02B37A724";
	setAttr ".ihi" 0;
createNode groupId -n "groupId558";
	rename -uid "267392F0-0947-EF26-1E5F-0C9E7676AB3A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts195";
	rename -uid "5E2AE858-7E4A-28B8-1D73-C99A1B286744";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId559";
	rename -uid "2D7386FA-0E4C-6241-04AD-02815457D93A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId560";
	rename -uid "0BF29DB0-3945-7DC4-E830-B084A7E7C8F7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts196";
	rename -uid "6CEFCBFB-684B-59ED-9FB0-DD836671A2D8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId561";
	rename -uid "95DD8F69-B54C-8214-7A6A-AE942C512260";
	setAttr ".ihi" 0;
createNode groupId -n "groupId562";
	rename -uid "6045E4CA-D746-F371-B09B-348416BDF56F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts197";
	rename -uid "795B17D1-AC4C-5B25-47A1-94B071E7C791";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId563";
	rename -uid "C36F807D-DD4E-842C-2326-7BA0C543A9F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId564";
	rename -uid "6221CA78-234C-630D-33A4-8DAF4136C9FE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts198";
	rename -uid "F8A1B5DE-E348-24C1-2411-D59AFEAD4F3B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId565";
	rename -uid "D23B4453-B248-6B20-9267-B1B06BA1AB50";
	setAttr ".ihi" 0;
createNode groupId -n "groupId566";
	rename -uid "4CC0366F-524E-A390-09AE-688A5FEA4CBB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts199";
	rename -uid "67094092-114D-2415-62A5-13AA7AA0F778";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId567";
	rename -uid "D4D6C3A8-3C4C-EE44-E724-A4AFE1AB6CDA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId568";
	rename -uid "723D9F57-854A-F9AE-9285-BAB795635831";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts200";
	rename -uid "920271E5-E34C-CE2B-3CCC-018497E2CC3B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId569";
	rename -uid "A012F342-994B-E03D-3B80-3D83D54F5CD6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId570";
	rename -uid "825D8F4E-A84F-C17A-5C26-E8BF4E0B83F8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts201";
	rename -uid "C55ABE5C-D146-E02A-35E3-33B0EF3CE7BA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId571";
	rename -uid "B2E9A5AD-A84A-17DD-8742-309106D9C360";
	setAttr ".ihi" 0;
createNode groupId -n "groupId572";
	rename -uid "025F71CA-6E4A-6766-D262-E899748C8126";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts202";
	rename -uid "61B5E90F-B046-4C8F-AEAB-07A8D3BA734B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId573";
	rename -uid "C036E9B2-8A43-AD7A-CCC9-6EBE39450CF9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId574";
	rename -uid "C25490D7-0040-A7A7-89CA-D3821C4B10F2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts203";
	rename -uid "CDFFD236-3043-FA42-91B1-4C814A29E8B3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId575";
	rename -uid "01673C46-2344-8FBB-C469-1D87674115B6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId576";
	rename -uid "D09BB08D-CA40-8994-0FFE-F08FF231E8BD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts204";
	rename -uid "E882ADC9-2C4A-C14C-B80A-1B874B7A4683";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId577";
	rename -uid "C127081D-9743-7A64-B159-90BC559E6261";
	setAttr ".ihi" 0;
createNode groupId -n "groupId578";
	rename -uid "E6AFF59F-5241-4CEB-62A6-E4901749EAF0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts205";
	rename -uid "88D33BDA-6E4F-5981-0BF4-64B695F428B8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:57]";
createNode groupId -n "groupId579";
	rename -uid "9597EEEB-1A48-7EEC-5E72-EEA5E908608A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId580";
	rename -uid "76980B2C-4547-16C5-C179-31A19C4E2A81";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts206";
	rename -uid "78E81BCD-C94C-AFAE-F7F4-0EB9558CE876";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId581";
	rename -uid "17B174C3-8241-E657-0949-FFA0A8B41581";
	setAttr ".ihi" 0;
createNode groupId -n "groupId582";
	rename -uid "7F7E8D9D-5143-865B-3B97-859BEE5F1307";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts207";
	rename -uid "A1B0BFE3-B54C-B12E-5E1C-158932756DAE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId583";
	rename -uid "5C83E832-6640-BB77-5240-689084053C9F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId584";
	rename -uid "AB65E2AD-9741-BAE4-F0B7-9C9FD1D32057";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts208";
	rename -uid "A3DBF657-E34A-0F73-EB3B-EFA4A5AC858C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId585";
	rename -uid "E55FF96E-7541-670A-0305-3E8CC4DDE4F5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId586";
	rename -uid "C0E8AF7D-0B4D-B538-6F41-C3BAECAD118D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts209";
	rename -uid "BAA89F68-C84B-19D9-BB95-EAB7296D746B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId587";
	rename -uid "00B9ADD7-FD4A-3E93-7B0A-629E5139091D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId588";
	rename -uid "EDF84D9B-764D-E833-7B3C-959F253D8FE9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts210";
	rename -uid "C24BF42D-1D4D-B86E-53E1-7BB557F8E0AC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId589";
	rename -uid "48799D5E-CB43-2279-D0DE-E0BD862EDD40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId590";
	rename -uid "7096CD3A-E141-0DE3-96C9-088ABEC2D8E6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts211";
	rename -uid "A6A1CFC1-E047-721C-22B6-C79D495FC161";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId591";
	rename -uid "82BB1853-074A-84CF-4086-1EACEA86DAF6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId592";
	rename -uid "8A4698EB-B740-0808-972E-9D9383494C75";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts212";
	rename -uid "BC4A3AF4-9C41-1B52-1253-8A825D738267";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId593";
	rename -uid "48D4E99E-444C-4BDE-0E94-6D9D89EE3C49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId594";
	rename -uid "FC24C365-A041-7D4B-F0F3-7F9572D4186C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts213";
	rename -uid "6FEC94EF-4740-413F-57B8-DC82B1583A8D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId595";
	rename -uid "DAD63360-784A-A481-89A1-79B9B9713737";
	setAttr ".ihi" 0;
createNode groupId -n "groupId596";
	rename -uid "551CC80C-FA44-5E61-FCA6-3BB05913775F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts214";
	rename -uid "32B7AC59-5A45-4028-655E-318D33B4C2D7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId597";
	rename -uid "C68E8B25-8440-4A3F-6D0B-63B7936BEF39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId598";
	rename -uid "1D56F32F-2D46-6BA4-FAD3-5183DA9698B4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts215";
	rename -uid "7BD84544-5E4E-A53B-786E-36AFDD81F5A6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId599";
	rename -uid "3F1F3CD8-864F-DC80-7AF7-B4AF4AB63770";
	setAttr ".ihi" 0;
createNode groupId -n "groupId600";
	rename -uid "64B5F3B4-5843-E5B6-4829-CDB37F40A978";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts216";
	rename -uid "5D2CE4CB-B049-E4CD-A5BC-D59D246C10EC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId601";
	rename -uid "A3247C07-9C43-4734-C221-C7B806656E47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId602";
	rename -uid "D6989D77-3F46-DA97-B8A1-89A78D039232";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts217";
	rename -uid "EF90D011-F646-5076-62F6-7FB690F531D6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId603";
	rename -uid "D448DF2A-E845-4DAE-CED3-808C0D641BD2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId604";
	rename -uid "531A442E-8440-CB66-7794-649E5C52C884";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts218";
	rename -uid "10208081-0E4B-A013-2C72-C19F01BA6E8A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId605";
	rename -uid "4B587BED-6342-4399-5721-4EB391556237";
	setAttr ".ihi" 0;
createNode groupId -n "groupId606";
	rename -uid "093B059D-9041-A340-6950-2282628B8576";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts219";
	rename -uid "0C31CC44-0849-6E2D-3B06-938E90C24A0A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId607";
	rename -uid "BC7DCEEE-E74B-0006-F7A4-F0BE9FE678C7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId608";
	rename -uid "A2EB28CB-184B-14CE-3747-8DAB8A79270A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts220";
	rename -uid "A9F5F75B-CF4A-9F40-9666-BCA143CD7FAC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId609";
	rename -uid "29F4FD70-9A43-B591-F840-61B5A97105B0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId610";
	rename -uid "8C3D3A8E-3A47-39D2-C41F-89B85186BB0D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts221";
	rename -uid "FF8294F6-E94A-78F2-59B4-BD8B7C40BE12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId611";
	rename -uid "9D12A994-4E41-3063-370C-378DCA3E0E29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId612";
	rename -uid "4E287279-E649-F80B-BC74-9CBBD5240776";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts222";
	rename -uid "BA9CB352-3745-F03B-7AFA-3A905B021250";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId613";
	rename -uid "1D2EF8C0-5946-AA42-5D78-EBBBD1D428E9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId614";
	rename -uid "966BBC45-5042-2317-D9D0-18A8A8C1F7C9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts223";
	rename -uid "E2901767-BD42-E27D-D512-E7B893B9B622";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId615";
	rename -uid "34F173A0-964B-5853-90FD-4D9CA379E023";
	setAttr ".ihi" 0;
createNode groupId -n "groupId616";
	rename -uid "23F1C812-8446-5049-B427-D4ACFAAA702E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts224";
	rename -uid "3718E625-434E-7A54-280E-6AA2854B7279";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId617";
	rename -uid "985C45C5-4C4F-4028-3384-F68A4D432667";
	setAttr ".ihi" 0;
createNode groupId -n "groupId618";
	rename -uid "7FB122D3-4F48-16C2-3EAF-B8BEA448D5CF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts225";
	rename -uid "D60C3238-754D-4985-1223-019D3EDC15E3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId619";
	rename -uid "4145033C-D745-9E1C-2654-AF8068A0E730";
	setAttr ".ihi" 0;
createNode groupId -n "groupId620";
	rename -uid "6A945C1B-2944-713E-07B8-C3B37CADB773";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts226";
	rename -uid "45C39F45-D441-F042-9E31-08B461C12149";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId621";
	rename -uid "32DF0725-BB4F-D95E-4E31-22BE75EB9DFF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId622";
	rename -uid "E147DA55-6240-A2CA-B0EE-4C9F81B07DF4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts227";
	rename -uid "08D846F6-C645-0830-0696-C189A674EB91";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId623";
	rename -uid "8942A19E-4744-29E9-5618-81B422D961FB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId624";
	rename -uid "5EF6F9D9-E841-9E58-58D1-6BA8B138512E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts228";
	rename -uid "A676E9D8-0A4D-79D8-F171-62BF73F0E21C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId625";
	rename -uid "7A17B56C-BB4B-9F06-4E9C-D194873698B6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId626";
	rename -uid "DA0F726F-7B45-8F1E-950B-A8B481523100";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts229";
	rename -uid "1E65D5C1-EB46-7B5A-8920-CC91756059E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId627";
	rename -uid "7149AF0F-0443-F895-BAFA-74919591EDB3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId628";
	rename -uid "37089ADC-C142-7F6B-D56D-2C88E18C5B6C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts230";
	rename -uid "F2A7C8A7-9844-7ABA-B8BC-29BE45953D76";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId629";
	rename -uid "39BF8AEA-8D4D-C78F-CA35-17A53352BAAC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId630";
	rename -uid "2154D9BC-134E-BC4E-9461-BBAEDB1C7F8D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts231";
	rename -uid "3055337C-3C40-0F71-A98C-97BE3547B5BE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId631";
	rename -uid "014FE441-BA46-BC38-DEB4-53BFB982E529";
	setAttr ".ihi" 0;
createNode groupId -n "groupId632";
	rename -uid "4B9D5112-8A4D-99C1-0103-D3BB4B69B3BD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts232";
	rename -uid "ED37F176-F14C-BFDC-900D-EF919FB75CDD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId633";
	rename -uid "8157BF2B-074C-F2EC-33EB-5C9A9DD1B6EB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId634";
	rename -uid "20E26E54-FF4A-CE34-81FB-2F9E9382BAD4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts233";
	rename -uid "058E3BBE-5A4A-63CE-B28B-E5BFC8EF1481";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId635";
	rename -uid "DA6D1A25-564C-5689-1B0B-8FB3610FE746";
	setAttr ".ihi" 0;
createNode groupId -n "groupId636";
	rename -uid "6891036E-294A-D458-2750-899BD93F46E3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts234";
	rename -uid "16388055-044A-FC0D-5081-C1BC985EAE4E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId637";
	rename -uid "534B49B2-2D4B-68D1-AC03-679051E6BBBF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId638";
	rename -uid "653EA451-4545-78A4-75B7-7E9CA27E38EC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts235";
	rename -uid "621DBE79-A34A-2237-74B4-3DB06A2F9B7D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId639";
	rename -uid "621E8A9A-6F44-00A6-4D3D-AAA0B0492CC8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId640";
	rename -uid "FDBB133F-7E44-B64E-1E7A-FDBDDC37EB24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts236";
	rename -uid "6D6D2C05-594F-8095-984D-2E817AC10E9D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:69]";
createNode groupId -n "groupId641";
	rename -uid "04D0F767-0548-8457-A196-40A13183DF7E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId642";
	rename -uid "86D0B7D3-8F4A-1716-A8F2-FAB9507516C4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts237";
	rename -uid "7200EEC6-294E-3C92-3981-F7BA4765D903";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:51]";
createNode groupId -n "groupId643";
	rename -uid "2DC1351B-B34B-B544-987F-EEBE239969DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId644";
	rename -uid "DDB78390-6140-C695-F08A-39BAABAA54C4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts238";
	rename -uid "A3B31B17-9C47-8AA8-0928-1BACBC39831D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:52]";
createNode groupId -n "groupId645";
	rename -uid "4813C9C2-444E-EA8C-8291-D8AAF6827A0D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId646";
	rename -uid "36986762-7549-8F95-7A0A-21AB94E4863B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts239";
	rename -uid "A3FEB74C-6A4D-1647-5B3D-EB9984AACAF6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
createNode groupId -n "groupId647";
	rename -uid "BF8886F2-234C-FD78-7B10-68A6EBFD1FD2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId648";
	rename -uid "0AC08A7A-4C41-D6CB-DCE5-329CECB84A3A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts240";
	rename -uid "F959690B-A049-298C-0158-7F8AB7E11E87";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:27]";
createNode groupId -n "groupId649";
	rename -uid "C07B5164-7F4B-DF69-6D90-27858457D120";
	setAttr ".ihi" 0;
createNode groupId -n "groupId650";
	rename -uid "C3CE5CCE-5F4C-C1D0-444A-12A5CD56CF02";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts241";
	rename -uid "42E0AD8F-C545-C2A4-C4CA-81BFE73173DB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0:1031]" "f[1037:1079]" "f[1085:1099]" "f[1102:1109]" "f[1113:1117]" "f[1123:1128]";
createNode groupId -n "groupId651";
	rename -uid "DC2C38D1-484D-DF8F-D8AA-8DA79D7EB500";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts242";
	rename -uid "11D2A1F7-B140-5048-9B66-B1A10EF8487E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[1032:1036]" "f[1080:1084]" "f[1100:1101]" "f[1110:1112]";
createNode polySeparate -n "polySeparate3";
	rename -uid "57D19823-5540-4D52-5BA0-11A81A44DF5F";
	setAttr ".ic" 74;
	setAttr -s 74 ".out";
createNode groupId -n "groupId652";
	rename -uid "3FB5D0BE-5740-82E6-13ED-69BC5E4C0535";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts243";
	rename -uid "3B026606-564B-B87E-B89D-3A9D8B478354";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:18]";
createNode groupId -n "groupId653";
	rename -uid "319ED103-764A-90F5-0F0B-C9926AED5674";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts244";
	rename -uid "98A42857-174F-9B01-6EF3-36921960818B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId654";
	rename -uid "F0AD96F3-604B-8C0D-25DD-3797CA836A05";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts245";
	rename -uid "0F68BF76-2043-08CB-0388-50AA207303FD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId655";
	rename -uid "2139CB24-3D41-DFEC-CCC9-E2BA0DEEFA08";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts246";
	rename -uid "9596462E-684C-5BBC-D914-AEB25D709920";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId656";
	rename -uid "0F916FEF-034A-9494-D89B-A1B137B134F1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts247";
	rename -uid "B97FEAA1-234C-75C5-30AA-1AB1AA679DF7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId657";
	rename -uid "D1EF0406-A741-1D4D-A361-558F07A076D0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts248";
	rename -uid "E81D8ADD-4D43-E2EB-ECC1-C390DB43D659";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId658";
	rename -uid "8D8DBC97-2D45-E8E3-FAFD-1FA64696AEE3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts249";
	rename -uid "D105D9B0-034C-E7FC-B2C6-2695C1CE781A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId659";
	rename -uid "36FBEE6C-1F47-33D9-3149-6CBD74716ABB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts250";
	rename -uid "5DA19A6E-4840-8C5E-72D9-D1ADB78474F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId660";
	rename -uid "A337A9FD-334D-E20D-40E2-0FA303C082ED";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts251";
	rename -uid "2D7C3507-694F-2BCD-01A0-58AA2EC8BD1C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId661";
	rename -uid "DD144FC8-DC43-E460-5583-5691340A5A48";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts252";
	rename -uid "E7F591E2-664D-77C1-9660-A9B67A26ECBE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId662";
	rename -uid "D128A2B1-9D48-A439-3C5C-C4A737D6156E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts253";
	rename -uid "5402F3BF-444E-7889-4097-668E57F4CA18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:54]";
createNode groupId -n "groupId663";
	rename -uid "17190610-4343-D781-170C-028DB597615C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts254";
	rename -uid "A9DD324D-CD4C-AC47-60C5-4EBF7B30DEFD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId664";
	rename -uid "E1F554B2-5244-90B8-4EE7-AFAA1471BDC5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts255";
	rename -uid "BCB157E7-2148-5A63-65E9-B5B62D9F3E8D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId665";
	rename -uid "E66EC9D9-A34B-2E73-E88C-6294C7DC307B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts256";
	rename -uid "B5343867-734E-3F54-2A8A-1E817B5275C3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId666";
	rename -uid "3B3EB854-D94A-7249-A2F0-029D46435805";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts257";
	rename -uid "DD780262-C745-7A57-2BF8-849A1276110E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId667";
	rename -uid "6DEF765C-244B-0B33-BB5A-C9B86FF36564";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts258";
	rename -uid "AEE4A738-A84A-5C3A-BC59-4B98A9C6069A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId668";
	rename -uid "1D1FB53E-1E4B-5A8F-E188-4391C6C138B2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts259";
	rename -uid "C95D66CD-504B-3519-FB5E-A1B398C0D84F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId669";
	rename -uid "D914D3A7-6E44-7C14-DDF3-04B2AEC57B27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts260";
	rename -uid "A2727772-1549-DB11-4BDD-03961EFD1C68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId670";
	rename -uid "F088DC8C-E244-F424-3E23-599FE3C831BB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts261";
	rename -uid "440EC0D3-484A-C4DD-0504-EBBFC510005E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId671";
	rename -uid "B4C62228-4541-6520-DCAB-A2923EFC3FB8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts262";
	rename -uid "DE71CC3F-9444-23F9-F8CA-93A92C92E828";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId672";
	rename -uid "05E99AB6-2C47-34E1-34A8-99BEA1C5F29A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts263";
	rename -uid "EB0248BA-ED4A-4073-8864-94A03B295DE1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId673";
	rename -uid "C2E46BD9-6444-2CBD-BB28-F188EAA41EA5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts264";
	rename -uid "F8E4F7E7-9448-74BD-2619-12B2331B9626";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId674";
	rename -uid "F13D4E23-FE48-B971-5C2C-F9A57A4CEFCD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts265";
	rename -uid "57AB205A-064A-049A-4BA2-A98C4C63013E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId675";
	rename -uid "0F89089F-114A-7529-0D51-518CC0C571FD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts266";
	rename -uid "C8959C98-DA48-8D2A-9BDB-39AAB30D412C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId676";
	rename -uid "92DCED7F-8748-7243-03ED-E09384ED4F62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts267";
	rename -uid "E638604A-F34A-72A4-AFC5-28876960432F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId677";
	rename -uid "2E12053B-D94C-3D9A-CD15-8192C896476A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts268";
	rename -uid "2E585D18-AB42-188B-CE9D-25AD360BE806";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId678";
	rename -uid "0E313BAC-F345-E2B9-0423-86A48398AB5A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts269";
	rename -uid "2943FD91-2643-56B7-B2CF-7F84E7EDA6F4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId679";
	rename -uid "E19F4615-9E41-1D59-7B6E-B0A8D3965688";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts270";
	rename -uid "57B28B61-594F-E719-6D6A-B1A52EAA6371";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId680";
	rename -uid "BA5E3502-2D47-4CB7-8C68-82944719775B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts271";
	rename -uid "1CFCEB3A-AE49-46F9-651E-ED8777530421";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId681";
	rename -uid "E22553C1-2949-B03E-2BEB-CEB889049642";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts272";
	rename -uid "3198EF66-BB42-1A6B-9E68-1FA2C75185D4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId682";
	rename -uid "37DE05AF-8742-B7B2-01AB-398A79F8F223";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts273";
	rename -uid "9FA66CC2-4D48-9FFB-52CE-B49287291E6A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId683";
	rename -uid "B79A4FDD-2B47-ADCF-E52E-72B648ED90BE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts274";
	rename -uid "5E280E40-FC46-98BC-FA76-4C8B14001EE3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId684";
	rename -uid "27BD2201-8A4E-B968-DC03-91982EF416CC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts275";
	rename -uid "B249DA24-0A44-161C-B6BE-A5854A71D99B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId685";
	rename -uid "E7E49685-EC43-E2A5-5807-E990963941AE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts276";
	rename -uid "FC0D5DCA-654B-7C83-EB5E-53B970A68760";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:57]";
createNode groupId -n "groupId686";
	rename -uid "E374450B-544A-08F4-5461-84B6E8BEFA71";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts277";
	rename -uid "A844651C-464C-2851-FC26-28A35A3D478B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId687";
	rename -uid "DB128C21-694A-55F0-4E95-37A42294F4E1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts278";
	rename -uid "5EDF8020-E54B-98BA-6B6C-25AB654751B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId688";
	rename -uid "700F111F-3440-D758-C536-E5888C719843";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts279";
	rename -uid "252603BE-DF4E-F2D3-AC30-1B83D86B5DF6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId689";
	rename -uid "4A6D71C3-124B-66C6-9833-A3BD4C94B38F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts280";
	rename -uid "11A50A86-8943-607D-2660-59B04366B83D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId690";
	rename -uid "5EEA9209-FB42-3147-47F0-EA95A03EC7D6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts281";
	rename -uid "644FF734-CA4A-E605-A2F4-01B97DF1C4D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId691";
	rename -uid "C62F13D4-254C-46ED-2BE8-20BA0978B36F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts282";
	rename -uid "4D54DDDD-F547-2396-B01C-17A3910192D0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId692";
	rename -uid "8DD80432-0B4A-AF6A-837E-768E9509B697";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts283";
	rename -uid "CEA8BEFF-B84F-A9E2-E935-D9BA01F1A72A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId693";
	rename -uid "46DD971A-594B-5E7B-B3C8-65863261FFA5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts284";
	rename -uid "2FB4A446-7544-214D-97DD-2A99A2B30F28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId694";
	rename -uid "7578E38D-6F41-4BEE-7C29-E99D8650E73A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts285";
	rename -uid "88A83B66-A94D-3477-0690-B7BBEEEF5AAF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId695";
	rename -uid "CBEEB8D6-854F-9182-7F50-D5B8966D51BF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts286";
	rename -uid "E6FFB74B-3D47-6ED3-C5FE-70931BA8A5C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId696";
	rename -uid "744A898C-294F-CB9F-D565-92ABD7B989E5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts287";
	rename -uid "2EA7A7E1-7547-CB2D-38DB-418071318581";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId697";
	rename -uid "10B7621E-9E40-D8C7-D9A0-BD9EBA1A4FE3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts288";
	rename -uid "85B1405E-EF47-72B6-F506-7496E1C6C64E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId698";
	rename -uid "AB93C1D3-BC4E-EBDA-457A-34A12CAA9A61";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts289";
	rename -uid "001AEF42-2547-8322-39E8-1D8C49C244DB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId699";
	rename -uid "16E967C4-1449-F2E3-DE2D-CB8DEAA140DF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts290";
	rename -uid "C06A2BAC-BD47-50C7-644C-97932F0A7B12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
createNode groupId -n "groupId700";
	rename -uid "EA431D34-9447-98AF-1B9B-47BDD6411DAB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts291";
	rename -uid "8BF71459-F14A-227E-5823-1BAFF94B3608";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId701";
	rename -uid "17670847-534E-3B96-3E35-14A5D3892C32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts292";
	rename -uid "D2DBC7A2-C945-F99F-F6D0-93AFACABBCE1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId702";
	rename -uid "BBCFEBDA-9F42-CA75-CD6B-D7833783F655";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts293";
	rename -uid "C5AE2AA0-9846-0EB0-6DCC-D19749231F91";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId703";
	rename -uid "715B9D61-D24A-84D8-89EB-4FB5CE42DBC6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts294";
	rename -uid "3B5B0157-F84A-77AD-A972-C2ABFA6C8A13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId704";
	rename -uid "6640E447-414A-FEAB-EC1C-B59C6A55CC98";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts295";
	rename -uid "5886C9B7-DF46-2297-9086-D3A2D4BA7EBB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId705";
	rename -uid "306D72EE-AD4E-6FBE-325F-FBA2344AD398";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts296";
	rename -uid "1FAB1A6F-D24D-B37D-D420-9B9E5DD69C0A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId706";
	rename -uid "9DC2E933-7E4D-F3A9-A843-F18DAD5968B7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts297";
	rename -uid "0C6F8482-934B-261C-008E-CBBCCC7A1EF9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId707";
	rename -uid "10126D61-9C42-0D14-8EC9-469D2505D9FB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts298";
	rename -uid "1E4B65D2-9147-D15B-FF88-81A87E305EF4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId708";
	rename -uid "B3AB91BB-5B45-DF31-6195-91BA74EBE0E8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts299";
	rename -uid "4865BE5B-C548-A4F4-D131-0F925AA01574";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId709";
	rename -uid "065212F8-FB4C-1779-03FA-7791AD064653";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts300";
	rename -uid "B15E7658-034E-95EC-7028-37905D5AA8F8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId710";
	rename -uid "68110E3D-6E47-B447-E8D5-E48FD6603092";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts301";
	rename -uid "6A016BDB-6749-A0A3-853E-24B25F0F971B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId711";
	rename -uid "2885C29C-5246-0903-A484-FFB3210F9157";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts302";
	rename -uid "4EA1F3AC-1E43-04EF-4DE2-51B38E06B854";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId712";
	rename -uid "4165D290-C04D-9564-C3C3-BEACF9D1FA94";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts303";
	rename -uid "FA92E290-514A-C37F-EF4C-CBB3D9923BB1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId713";
	rename -uid "B926AA7C-C44A-77C7-7576-9CB7F9581F6F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts304";
	rename -uid "B230C0FE-F74F-8E02-010B-9C9CF54722D2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId714";
	rename -uid "C5C72EF2-2040-7FBC-D93F-E585125B2B90";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts305";
	rename -uid "582CBCF1-6F44-4CE6-DACD-1594F3815F64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId715";
	rename -uid "030DC501-FA4A-5850-68BD-41BADB8F923E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts306";
	rename -uid "CD75184D-7E47-80F7-3A68-CCA6D3123A0E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId716";
	rename -uid "78403A50-774F-B6F4-AA4B-5197105E4C8A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts307";
	rename -uid "3B22B75A-5245-42A4-EA64-B2A5D98C311B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:69]";
createNode groupId -n "groupId717";
	rename -uid "A0C32246-B145-C777-2E76-80AC5BE2B378";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts308";
	rename -uid "23616E99-7247-DF86-80AD-EEAEDC2AD44B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:51]";
createNode groupId -n "groupId718";
	rename -uid "7B0B05AD-5D49-DC39-B568-AD8A3964D45F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts309";
	rename -uid "06C26B5D-6744-BD75-F21F-649E519113FE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:52]";
createNode groupId -n "groupId719";
	rename -uid "7F400B67-5348-3127-6C21-40B754043E66";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts310";
	rename -uid "3C8061DB-2A4D-6866-F82D-6084DEB8BDC4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
createNode groupId -n "groupId720";
	rename -uid "ECA0BBBD-DA4F-AD9D-FD58-C9924922F935";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts311";
	rename -uid "91CF3AD1-FB46-CD61-0F98-A2B8E1DADE1C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:27]";
createNode groupId -n "groupId721";
	rename -uid "8FFB0C77-F547-46F2-2725-1682C9D725D5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts312";
	rename -uid "0EDA6AFB-5B41-ED7F-D863-2685BAB6E1FA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:15]";
createNode groupId -n "groupId722";
	rename -uid "A9F6E6D0-BE4A-ED55-52D2-8295D4E08FE1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts313";
	rename -uid "8D595A1B-5142-1168-65F3-84985D37BCF5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[16:20]";
createNode groupId -n "groupId723";
	rename -uid "4CA95E86-9743-1980-1643-83BF2AFC4821";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts314";
	rename -uid "0BD615AD-2847-1740-FEAD-8CBB2CC8D7EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:42]";
createNode groupId -n "groupId724";
	rename -uid "41C116BF-A348-9B0A-42BB-5DAD08E1132D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts315";
	rename -uid "19860730-924A-1841-C848-D1AA2B243619";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[43:47]";
createNode groupId -n "groupId725";
	rename -uid "6020A2DC-E74E-64CF-5969-B4980BA3C117";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts316";
	rename -uid "41F3B973-2549-F12A-B8BA-40AC029BAFC5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId726";
	rename -uid "B63C7646-D443-EFFD-0762-0A9FB31FDA14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts317";
	rename -uid "E6F93663-9C4D-1522-1E7D-AA87C95B154E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:8]" "f[11:18]" "f[22:26]";
createNode groupId -n "groupId727";
	rename -uid "A62AC6FD-D84A-B2E3-B0BC-0CB0C0EB2B9D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts318";
	rename -uid "6EB25F76-D745-4A36-A8A5-82B370F8EAC0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[9:10]" "f[19:21]";
createNode groupId -n "groupId728";
	rename -uid "F25EB4D5-9F44-1D7E-6051-259E792DFC06";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts319";
	rename -uid "25D8FE6B-B947-14D2-85CD-F3A87948174C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyPlanarProj -n "polyPlanarProj6";
	rename -uid "6B2C167F-8645-876F-206A-B49AA253BFC2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 13.890326023101807 55.040670700371265 10.318226099014282 ;
	setAttr ".ps" -type "double2" 6.7751493453979492 109.82178054749966 ;
	setAttr ".is" -type "double2" 0.093241163008424888 1 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "6FA73575-5F4D-DCE0-76A0-C79C9DDDD740";
	setAttr ".uopa" yes;
	setAttr -s 64 ".uvtk[0:63]" -type "float2" 0.2625584 0 0.2625584 0 0.2625584
		 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.26255846 0 0.26255846 0 0.2625584
		 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.26255846 0 0.2625584 0 0.2625584
		 0 0.2625584 0 0.2625584 0 0.26255846 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584
		 0 0.26255846 0 0.2625584 0 0.26255846 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584
		 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584
		 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584
		 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584
		 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584
		 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0 0.2625584 0;
createNode polySphProj -n "polySphProj1";
	rename -uid "A1A131AA-DA4E-AF01-38F2-44BE3DB0D787";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 2.528587818145752 50.984133243560791 0 ;
	setAttr ".r" 100.48935985565186;
createNode polyPlanarProj -n "polyPlanarProj7";
	rename -uid "DA602743-F34B-E279-A1D5-F291E2E48A0C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 2.528587818145752 50.984133243560791 0 ;
	setAttr ".ps" -type "double2" 15.885922431945801 100.48935985565186 ;
	setAttr ".is" -type "double2" 0.16784790276089634 1 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyCylProj -n "polyCylProj1";
	rename -uid "FB10F8BB-8B4F-2FEB-3DAF-93B2FE887427";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 2.528587818145752 50.984133243560791 0 ;
	setAttr ".ps" -type "double2" 180 100.48935985565186 ;
	setAttr ".is" -type "double2" 0.17045562133209347 1 ;
	setAttr ".r" 15.885922431945801;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "BD26E776-D34B-EFC8-6A7F-C4BCA3DCC59E";
	setAttr ".uopa" yes;
	setAttr -s 94 ".uvtk[0:93]" -type "float2" 0.012458766 0.0077035427
		 0.011359358 0.05087617 0.011491502 0.022370666 0.011491502 0.020421535 0.011359358
		 0.0077035427 0.011426711 0.020421535 0.011426711 0.022370666 0.011354649 0.0079677105
		 0.012496555 0.0077035427 0.012737896 0.022883207 0.012737896 0.025134623 0.012844976
		 0.025134623 0.013124134 0.05087617 0.010693933 0.05087617 0.010698582 0.0079677105
		 0.012844976 0.022883207 0.013124134 0.0077035427 0.012733992 0.022883207 0.012733992
		 0.025134623 0.01284888 0.025134623 0.013115015 0.0077035427 0.011354649 0.0063240826
		 0.010698582 0.0063240528 0.012496555 0.0060599148 0.01284888 0.022883207 0.013115015
		 0.0060599148 0.010693933 0.0060599148 0.011359358 0.0060599148 0.012458766 0.0060599148
		 0.013124134 0.0060599148 0.011359358 -0.050876141 0.011359358 -0.0098822117 0.011337424
		 -0.0098822117 0.011337424 -0.0088485479 0.011359358 -0.0088485479 0.010693933 -0.0098822117
		 0.012318488 0.0060599148 0.012327459 0.0061163604 0.012398178 0.006093204 0.012414807
		 0.0060864091 0.012402141 0.0060885847 0.012335982 0.0061149299 0.012356963 0.0061081648
		 0.012347396 0.0061097443 0.012386406 0.0060952008 0.012458766 -0.050876141 0.013124134
		 -0.050876141 0.012397641 -0.050876141 0.012414807 -0.050876141 0.012398178 -0.050876141
		 0.012380833 -0.050876141 0.012339469 -0.050876141 0.012356963 -0.050876141 0.012335982
		 -0.050876141 0.012318488 -0.050876141 0.01214483 -0.050876141 0.0086149871 -0.050876141
		 0.012163039 -0.050876141 0.012104657 -0.050876141 0.012089755 -0.050876141 0.012089755
		 -0.0098822117 0.012144651 -0.0088485479 0.012397641 0.0060599148 0.012380833 0.0060599148
		 0.012339469 0.0060599148 0.012104657 -0.0098822117 0.012163039 -0.0088485479 0.011404479
		 0.020421535 0.011404479 0.022370666 0.011468852 0.022370666 0.011468852 0.020421535
		 0.012458766 0.05087617 0.009594474 0.05087617 0.010693933 0.0077035427 0.009594474
		 0.0077035427 0.0095853545 0.0077035427 0.0095853545 0.0060599148 0.009594474 -0.050876141
		 0.009594474 0.0060599148 0.010693933 -0.050876141 0.0089291073 -0.050876141 0.0088680722
		 -0.050876141 0.0088851191 -0.050876141 0.008868549 -0.050876141 0.0088512041 -0.050876141
		 0.0088098384 -0.050876141 0.0088273622 -0.050876141 0.0088063814 -0.050876141 0.0087888576
		 -0.050876141 0.0086152852 -0.050876141 0.0086334646 -0.050876141 0.0085751116 -0.050876141
		 0.0085600913 -0.050876141 0.0078296363 -0.050876141;
createNode polyCylProj -n "polyCylProj2";
	rename -uid "1360144D-864E-50F6-AA31-0AB9A8ED4404";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 13.890326023101807 55.040670700371265 10.318226099014282 ;
	setAttr ".ps" -type "double2" 180 109.82178054749966 ;
	setAttr ".is" -type "double2" 0.17458678172447095 1 ;
	setAttr ".r" 6.7751493453979492;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "71F87402-0E42-2D0F-F01D-9D9AA4360CE1";
	setAttr ".uopa" yes;
	setAttr -s 80 ".uvtk[0:79]" -type "float2" -0.34890702 -0.026125669
		 -0.35498041 -0.026125669 -0.35498041 -0.033917427 -0.35447001 -0.033917427 -0.35447001
		 -0.027287841 -0.3524304 -0.027287841 -0.3524304 -0.033917427 -0.35166678 -0.033917427
		 -0.35166678 -0.027287841 -0.34955126 -0.027287841 -0.34955126 -0.033917427 -0.34890702
		 -0.033917427 -0.34313732 -0.026125669 -0.34313732 -0.033917427 -0.34890702 -0.026103795
		 -0.35498041 -0.026103795 -0.34927556 -0.033917427 -0.35162205 -0.033917427 -0.35250825
		 -0.033917427 -0.35474959 -0.033917427 -0.35474959 -0.027287841 -0.35250825 -0.027287841
		 -0.35162205 -0.027287841 -0.34927556 -0.027287841 -0.34313732 -0.026103795 -0.34890702
		 -0.025723219 -0.35498041 -0.025723219 -0.34313732 -0.025723219 -0.34890702 -0.025701284
		 -0.35498041 -0.025701284 -0.34313732 -0.025701284 -0.34890702 0.033917457 -0.34956911
		 0.0028248131 -0.34956911 -0.024440348 -0.3516275 -0.024440348 -0.35244399 -0.024463236
		 -0.35443711 -0.024463236 -0.34313732 0.033917457 -0.34530097 0.016142607 -0.34530097
		 0.014953613 -0.34670627 0.014953613 -0.34670627 0.016142607 -0.35443711 0.0028018951
		 -0.35244399 0.0028018951 -0.3516275 0.0028248131 -0.34944528 0.0028248131 -0.34944528
		 -0.024440348 -0.35160524 -0.024440348 -0.35247892 -0.024463236 -0.35456294 -0.024463236
		 -0.35456294 0.0028018951 -0.35247892 0.0028018951 -0.35160524 0.0028248131 -0.34687826
		 0.014953613 -0.34687826 0.016142607 -0.34512028 0.016142607 -0.34512028 0.014953613
		 -0.36075011 -0.033917427 -0.37259316 -0.033917427 -0.3732374 -0.033917427 -0.3729617
		 -0.033917427 -0.37530822 -0.033917427 -0.37535292 -0.033917427 -0.37611657 -0.033917427
		 -0.37619442 -0.033917427 -0.37843567 -0.033917427 -0.37815619 -0.033917427 -0.37866658
		 -0.033917427 -0.36682349 -0.033917427 -0.36682349 -0.026125669 -0.36075011 -0.026125669
		 -0.36682349 -0.026103795 -0.36075011 -0.026103795 -0.36682349 -0.025723219 -0.36682349
		 -0.025701284 -0.36075011 -0.025723219 -0.36075011 -0.025701284 -0.36075011 0.033917457
		 -0.36682349 0.033917457 -0.35498041 0.033917457;
createNode polyCylProj -n "polyCylProj3";
	rename -uid "18527E79-054F-9733-4282-6BA8D206C942";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -9.5226246118545532 27.219101220369339 -14.03815746307373 ;
	setAttr ".ps" -type "double2" 180 55.514335095882416 ;
	setAttr ".is" -type "double2" 0.1235980102098434 1 ;
	setAttr ".r" 11.169613599777222;
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "9994E538-8E4F-EFD9-86D5-4CB43F6E2A69";
	setAttr ".uopa" yes;
	setAttr -s 40 ".uvtk[0:39]" -type "float2" 0.19958603 0 0.19958603 0
		 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586
		 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586
		 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586
		 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586
		 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0 0.199586 0;
createNode polyFlipUV -n "polyFlipUV1";
	rename -uid "C2727C03-8742-EC94-EB4E-DBB8BCCC553D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "F40A3E52-544A-F23B-31AA-E782138CF577";
	setAttr ".uopa" yes;
	setAttr -s 40 ".uvtk[0:39]" -type "float2" 0.010692096 0.00036591291
		 0.010692096 -0.00022208691 0.010692096 -0.00022208691 0.010692096 -0.0010014772 0.010692096
		 -0.0010014772 0.010692096 0.00036591291 0.010692096 0.0084793568 0.010692096 0.0084793568
		 0.010692096 -0.0010014772 0.010692096 0.0084793568 0.010692096 -0.0010014772 0.010692096
		 -0.00095742941 0.010692096 -0.0010014772 0.010692096 -0.0010014772 0.010692096 -0.00095742941
		 0.010692096 -0.0012754202 0.010692096 -0.0012754202 0.010692096 -0.0012313724 0.010692096
		 -0.0012313724 0.010692096 -0.0012754202 0.010692096 -0.0012754202 0.010692096 -0.0012754202
		 0.010692096 -0.0012754202 0.010692096 -0.0084793568 0.010692096 -0.0084793568 0.010692096
		 -0.0084793568 0.010692096 -0.00022208691 0.010692096 0.00036591291 0.010692096 0.00036591291
		 0.010692096 -0.00022208691 0.010692096 0.0084793568 0.010692096 0.0084793568 0.010692096
		 -0.0010014772 0.010692096 -0.0010014772 0.010692096 -0.0012754202 0.010692096 -0.0012754202
		 0.010692096 -0.0084793568 0.010692096 -0.0084793568 0.010692096 -0.0084793568 0.010692096
		 -0.0084793568;
createNode polyCylProj -n "polyCylProj4";
	rename -uid "8827E7C2-244C-DAD1-E763-97B94E22B057";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:57]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 49.787952423095703 31.884447798132896 -4.966659814119339 ;
	setAttr ".ps" -type "double2" 180 63.198168307542801 ;
	setAttr ".is" -type "double2" 0.22175503306634126 1 ;
	setAttr ".r" 11.776588439941406;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "32EC9E52-CC46-3F85-A1B3-9BBA7114DACC";
	setAttr ".uopa" yes;
	setAttr -s 98 ".uvtk[0:97]" -type "float2" -0.34973902 -0.014899973
		 -0.40697914 -0.014899973 -0.40697914 -0.030665401 -0.34973902 -0.030665401 -0.2937876
		 -0.014899973 -0.2937876 -0.030665401 -0.36198968 0.090503223 -0.40697914 0.090503223
		 -0.40697914 0.071421579 -0.34973902 0.071421579 -0.28153694 0.090503223 -0.34721452
		 0.071421579 -0.34844029 0.073852673 -0.34534615 0.073852673 -0.34416413 0.071421579
		 -0.34094542 0.071421579 -0.34204358 0.073852673 -0.33801901 0.073852673 -0.33707017
		 0.071421579 -0.33308524 0.071421579 -0.33383191 0.073852673 -0.32893151 0.073852673
		 -0.32846761 0.071421579 -0.32395381 0.071421579 -0.32410884 0.073852673 -0.31884176
		 0.073852673 -0.31903464 0.071421579 -0.3145383 0.071421579 -0.31404042 0.073852673
		 -0.30918086 0.073852673 -0.30995452 0.071421579 -0.30601013 0.071421579 -0.30504155
		 0.073852673 -0.30107182 0.073852673 -0.30218244 0.071421579 -0.29900771 0.071421579
		 -0.29781878 0.073852673 -0.29477328 0.073852673 -0.29600155 0.071421579 -0.2937876
		 0.071421579 -0.30218244 0.00098466128 -0.30107182 0.00098466128 -0.30601013 0.00098466128
		 -0.30504155 0.00098466128 -0.30995452 0.00098466128 -0.30918086 0.00098466128 -0.3145383
		 0.00098466128 -0.31404042 0.00098466128 -0.31903464 0.00098466128 -0.31884176 0.00098466128
		 -0.32395381 0.00098466128 -0.32410884 0.00098466128 -0.32846761 0.00098466128 -0.32893151
		 0.00098466128 -0.33308524 0.00098466128 -0.33383191 0.00098466128 -0.33707017 0.00098466128
		 -0.33801901 0.00098466128 -0.34094542 0.00098466128 -0.34204358 0.00098466128 -0.34416413
		 0.00098466128 -0.34534615 0.00098466128 -0.34721452 0.00098466128 -0.34844029 0.00098466128
		 -0.40697914 0.47977018 -0.28153694 0.47977018 -0.46293068 0.47977018 -0.29900771
		 0.00098466128 -0.29781878 0.00098466128 -0.29477328 0.00098466128 -0.29600155 0.00098466128
		 -0.40728986 -0.011268858 -0.40728986 -0.014899973 -0.29389185 -0.014899973 -0.29389185
		 -0.011268858 -0.348867 -0.011268858 -0.348867 -0.014899973 -0.46293068 -0.011268858
		 -0.40697914 -0.011268858 -0.2937876 -0.011268858 -0.34973902 -0.011268858 -0.62334323
		 -0.030665401 -0.72962058 -0.030665401 -0.52017081 -0.030665401 -0.46293068 -0.030665401
		 -0.52017081 -0.014899973 -0.46293068 0.071421579 -0.50792027 0.090503223 -0.50792027
		 0.47977018 -0.36198968 0.47977018 -0.46293068 0.090503223 -0.46338856 -0.011268858
		 -0.52027512 -0.011268858 -0.52017081 0.071421579 -0.46293068 -0.014899973 -0.46338856
		 -0.014899973 -0.52027512 -0.014899973 -0.52017081 -0.011268858;
createNode polyCBoolOp -n "polyCBoolOp13";
	rename -uid "A62BD9BA-F14F-1502-C26B-1D85295AE269";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 4 -998 997 996 -999 ;
createNode groupId -n "groupId729";
	rename -uid "66D10B28-9F4E-EA12-49B9-2A99020A2F75";
	setAttr ".ihi" 0;
createNode polyCylProj -n "polyCylProj5";
	rename -uid "25BA5830-A149-886A-61EB-9691799C4640";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 22.75505542755127 25.05164036154747 11.49084198474884 ;
	setAttr ".ps" -type "double2" 180 49.218641579151154 ;
	setAttr ".is" -type "double2" 0.25865688044946167 1 ;
	setAttr ".r" 18.972963094711304;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "3B933E36-0B42-C78C-E719-F89A55A52815";
	setAttr ".uopa" yes;
	setAttr -s 71 ".uvtk[0:70]" -type "float2" 0.012692023 0.15177572 -0.00047837943
		 0.15177572 -0.00047837943 0.030179072 0.00050843507 0.030179072 0.00050843507 0.030881215
		 0.0042900816 0.030881215 0.0042900816 0.030179072 0.012692023 0.030179072 0.037050243
		 0.15177572 0.015038855 0.030179072 0.015038855 0.037963443 0.023308489 0.037963443
		 0.023308489 0.030179072 0.026107915 0.030179072 0.026107915 0.037963443 0.034457233
		 0.037963443 0.034457233 0.030179072 0.037050243 0.030179072 0.050220605 0.15177572
		 -0.02381647 0.15177572 -0.020431403 0.049903654 -0.018377606 0.049903654 -0.018377606
		 0.041072421 0.0042900816 0.022050008 0.00050843507 0.022050008 -0.00047837943 -0.040828891
		 0.00091708452 0.022050008 0.00091708452 0.030881215 0.0049395487 0.030881215 0.0049395487
		 0.022050008 0.039624061 0.048736684 0.039624061 0.057567947 0.042109605 0.057567947
		 0.050220605 -0.040828891 0.044953104 -0.028871953 0.028898057 -0.028871953 0.019825079
		 -0.028871953 0.0045544431 -0.028871953 0.073558807 0.15177572 -0.020431403 0.041072421
		 -0.021325532 0.049903654 -0.019291703 0.049903654 -0.019291703 0.041072421 0.050220605
		 0.030179072 0.042109605 0.048736684 0.039000537 0.048736684 0.039000537 0.057567947
		 0.041505542 0.057567947 0.073558807 -0.040828891 0.073558807 0.030179072 -0.021325532
		 0.041072421 0.041505542 0.048736684 0.023697916 0.037963443 0.017191343 0.037963443
		 0.017191343 -0.074029908 0.023697916 -0.074029908 0.019825079 -0.074029908 0.0045544431
		 -0.074029908 0.032343712 0.037963443 0.025799312 0.037963443 0.025799312 -0.074029908
		 0.032343712 -0.074029908 0.044953104 -0.074029908 0.028898057 -0.074029908 -0.02381647
		 -0.040828891 -0.043253507 -0.040828891 -0.066591769 -0.040828891 -0.11729066 -0.040828891
		 -0.043253507 0.15177572 -0.02381647 0.030179072 -0.043253507 0.030179072;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "3966BE40-1845-267A-BDA7-389745B02801";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[14:16]" "e[44:46]";
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "F8A0E312-894B-2422-CDC2-17BFD00ED341";
	setAttr ".uopa" yes;
	setAttr -s 77 ".uvtk[0:76]" -type "float2" 0.045086414 0.094820447 0.024410278
		 0.094820447 0.024410278 -0.096074291 0.025959462 -0.096074291 0.025959462 -0.094971962
		 0.031896263 -0.094971962 0.031896263 -0.096074291 0.045086414 -0.096074291 0.083326489
		 0.094820447 0.048770696 -0.096074291 0.048770696 -0.083853729 0.061753184 -0.083853729
		 0.061753184 -0.096074291 0.066148072 -0.096074291 -0.14788711 -0.020902187 -0.13477945
		 -0.020902187 -0.13477945 -0.03312277 0.083326489 -0.096074291 0.10400271 0.094820447
		 -0.01222837 0.094820447 -0.0069140196 -0.065108463 -0.0036899447 -0.065108463 -0.0036899447
		 -0.078972705 0.031896263 -0.10883638 0.025959462 -0.10883638 0.024410278 -0.2075496
		 0.026600987 -0.10883638 0.026600987 -0.094971962 0.032915741 -0.094971962 0.032915741
		 -0.10883638 0.087367207 -0.066940494 0.087367207 -0.053076319 0.091269165 -0.053076319
		 0.10400271 -0.2075496 -0.11830194 -0.1258269 -0.14350682 -0.1258269 0.056284636 -0.1887784
		 0.03231135 -0.1887784 0.14064124 0.094820447 -0.0069140196 -0.078972705 -0.008317709
		 -0.065108463 -0.005124867 -0.065108463 -0.005124867 -0.078972705 0.10400271 -0.096074291
		 0.091269165 -0.066940494 0.08638823 -0.066940494 0.08638823 -0.053076319 0.090320796
		 -0.053076319 0.14064124 -0.2075496 0.14064124 -0.096074291 -0.008317709 -0.078972705
		 0.090320796 -0.066940494 0.062364608 -0.083853729 0.0521501 -0.083853729 0.0521501
		 -0.2596719 0.062364608 -0.2596719 0.056284636 -0.2596719 0.03231135 -0.2596719 -0.13809767
		 -0.020902187 -0.14837158 -0.020902187 -0.14837158 -0.19672039 -0.13809767 -0.19672039
		 -0.11830194 -0.19672039 -0.14350682 -0.19672039 -0.01222837 -0.2075496 -0.04274261
		 -0.2075496 -0.1137782 -0.2075496 -0.27632767 -0.2075496 -0.04274261 0.094820447 -0.01222837
		 -0.096074291 -0.04274261 -0.096074291 0.070528358 -0.1887784 -0.14788711 -0.03312277
		 0.095733255 -0.1887784 0.07925573 -0.096074291 0.07925573 -0.083853729 0.066148072
		 -0.083853729;
createNode polyCBoolOp -n "polyCBoolOp14";
	rename -uid "A3919993-174D-DDD8-7A81-278D70A0330D";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 3 -993 992 -990 ;
createNode groupId -n "groupId730";
	rename -uid "D953B1E6-7841-55B1-C625-89A62E3D339F";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite6";
	rename -uid "FF1AA9D4-5843-6AA9-3393-A89212137D69";
	setAttr -s 16 ".ip";
	setAttr -s 16 ".im";
createNode groupId -n "groupId731";
	rename -uid "124D0F50-BB42-25CC-2204-69951D7A87CF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts320";
	rename -uid "8E71FA39-C545-B2A6-B790-0E9B4E540D56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:87]";
createNode polyUnite -n "polyUnite7";
	rename -uid "1A9A62A1-3C46-3F5A-697F-D583ECF95433";
	setAttr -s 6 ".ip";
	setAttr -s 6 ".im";
createNode groupId -n "groupId732";
	rename -uid "0AD50C89-6746-7217-51B2-B282D5F10674";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts321";
	rename -uid "4FFBDBC9-CF47-996A-DAA7-E3A67B4FCF7B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:31]";
createNode polyCBoolOp -n "polyCBoolOp15";
	rename -uid "6137E800-C54D-A2B5-6EA9-0B80989B5437";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 955 -931 ;
createNode groupId -n "groupId733";
	rename -uid "280F2ECC-BD44-6DEB-F9A3-EF85C601BD4B";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite8";
	rename -uid "1AAA8CF3-0840-988C-E984-FB88E6381E0A";
	setAttr -s 7 ".ip";
	setAttr -s 7 ".im";
createNode groupId -n "groupId734";
	rename -uid "A56C2F00-B548-5F2D-02E1-DFB26AF14D26";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts322";
	rename -uid "CBC7322D-7642-43BD-611B-D09A5A010FCA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:37]";
createNode polyUnite -n "polyUnite9";
	rename -uid "FADD6A84-9D44-E09A-A326-49B288AC5565";
	setAttr -s 7 ".ip";
	setAttr -s 7 ".im";
createNode groupId -n "groupId735";
	rename -uid "50D26B48-8F42-33B8-BC0D-2FA9B0451111";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts323";
	rename -uid "60F98C23-1C4B-AB00-6857-F7947123B27D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:37]";
createNode polyCBoolOp -n "polyCBoolOp16";
	rename -uid "F17990C3-5945-45D9-D6E4-0995046643BC";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 970 -969 ;
createNode groupId -n "groupId736";
	rename -uid "5FF75ECD-BF45-DCFB-4839-899014B46CBD";
	setAttr ".ihi" 0;
createNode polyCBoolOp -n "polyCBoolOp17";
	rename -uid "6DE1EC6A-EA4D-3A6B-A87B-C5A448AAF87E";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 3 963 967 -968 ;
createNode groupId -n "groupId737";
	rename -uid "AFEA83D2-284A-6479-D3BF-6AB4D508D26A";
	setAttr ".ihi" 0;
createNode polyCBoolOp -n "polyCBoolOp18";
	rename -uid "D7047425-B349-C484-AEDA-71958E485F61";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 3 934 935 -936 ;
createNode groupId -n "groupId738";
	rename -uid "C52A57EB-244E-1F49-1752-4B8013689266";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite10";
	rename -uid "3641E61A-6B49-B6C4-94C7-D49ACD8A1A75";
	setAttr -s 7 ".ip";
	setAttr -s 7 ".im";
createNode groupId -n "groupId739";
	rename -uid "8F5E445E-5348-5FD7-3D75-648912ACCCE6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts324";
	rename -uid "1B620196-2B43-2CEF-45CC-FDB6BC794887";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:37]";
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "353F318A-DD48-90D7-C64A-22A3A12213E9";
	setAttr ".uopa" yes;
	setAttr -s 90 ".uvtk[0:89]" -type "float2" 0.047704026 0.29013231 -0.15251593
		 0.29013231 -0.15251593 0.089912385 0.047704026 0.089912385 -0.15251593 -0.11030761
		 0.047704026 -0.11030761 -0.15251593 -0.31052756 0.047704026 -0.31052756 -0.15251593
		 -0.51074755 0.047704026 -0.51074755 0.24792401 0.29013231 0.24792401 0.089912385
		 0.047704026 0.29013231 -0.15251593 0.29013231 -0.15251593 0.089912385 0.047704026
		 0.089912385 -0.15251593 -0.11030761 0.047704026 -0.11030761 -0.15251593 -0.31052756
		 0.047704026 -0.31052756 -0.15251593 -0.51074755 0.047704026 -0.51074755 -0.35273594
		 0.29013231 -0.35273594 0.089912385 0.24792401 0.29013231 0.24792401 0.089912385 0.047704026
		 0.29013231 -0.15251593 0.29013231 -0.15251593 0.089912385 0.047704026 0.089912385
		 -0.15251593 -0.11030761 0.047704026 -0.11030761 -0.15251593 -0.31052756 0.047704026
		 -0.31052756 -0.15251593 -0.51074755 0.047704026 -0.51074755 0.24792401 0.29013231
		 0.24792401 0.089912385 0.047704026 0.29013231 -0.15251593 0.29013231 -0.15251593
		 0.089912385 0.047704026 0.089912385 -0.15251593 -0.11030761 0.047704026 -0.11030761
		 -0.15251593 -0.31052756 0.047704026 -0.31052756 -0.15251593 -0.51074755 0.047704026
		 -0.51074755 -0.35273594 0.29013231 -0.35273594 0.089912385 0.24792401 0.29013231
		 0.24792401 0.089912385 0.047704026 0.29013231 -0.15251593 0.29013231 -0.15251593
		 0.089912385 0.047704026 0.089912385 -0.15251593 -0.11030761 0.047704026 -0.11030761
		 -0.15251593 -0.31052756 0.047704026 -0.31052756 0.24792401 0.29013231 0.24792401
		 0.089912385 0.047704026 0.29013231 -0.15251593 0.29013231 -0.15251593 0.089912385
		 0.047704026 0.089912385 -0.15251593 -0.11030761 0.047704026 -0.11030761 -0.15251593
		 -0.31052756 0.047704026 -0.31052756 -0.15251593 -0.51074755 0.047704026 -0.51074755
		 -0.35273594 0.29013231 -0.35273594 0.089912385 0.24792401 0.29013231 0.24792401 0.089912385
		 0.047704026 0.29013231 -0.15251593 0.29013231 -0.15251593 0.089912385 0.047704026
		 0.089912385 -0.15251593 -0.11030761 0.047704026 -0.11030761 -0.15251593 -0.31052756
		 0.047704026 -0.31052756 -0.15251593 -0.51074755 0.047704026 -0.51074755 -0.35273594
		 0.29013231 -0.35273594 0.089912385 0.24792401 0.29013231 0.24792401 0.089912385;
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "09546061-764F-63F1-7E93-74B0C1C69532";
	setAttr ".uopa" yes;
	setAttr -s 208 ".uvtk[0:207]" -type "float2" -0.26296434 0.11830393 -0.43255159
		 0.11830393 -0.43255159 -0.051283345 -0.26296434 -0.051283345 -0.43255159 -0.22087064
		 -0.26296434 -0.22087064 -0.43255159 -0.3904579 -0.26296434 -0.3904579 -0.43255159
		 -0.56004518 -0.26296434 -0.56004518 -0.093377054 0.11830393 -0.093377054 -0.051283345
		 -0.26296434 0.11830393 -0.43255159 0.11830393 -0.43255159 -0.051283345 -0.26296434
		 -0.051283345 -0.43255159 -0.22087064 -0.26296434 -0.22087064 -0.43255159 -0.3904579
		 -0.26296434 -0.3904579 -0.43255159 -0.56004518 -0.26296434 -0.56004518 -0.60213894
		 0.11830393 -0.60213894 -0.051283345 -0.093377054 0.11830393 -0.093377054 -0.051283345
		 -0.26296434 0.11830393 -0.43255159 0.11830393 -0.43255159 -0.051283345 -0.26296434
		 -0.051283345 -0.43255159 -0.22087064 -0.26296434 -0.22087064 -0.43255159 -0.3904579
		 -0.26296434 -0.3904579 -0.43255159 -0.56004518 -0.26296434 -0.56004518 -0.093377054
		 0.11830393 -0.093377054 -0.051283345 -0.26296434 0.11830393 -0.43255159 0.11830393
		 -0.43255159 -0.051283345 -0.26296434 -0.051283345 -0.43255159 -0.22087064 -0.26296434
		 -0.22087064 -0.43255159 -0.3904579 -0.26296434 -0.3904579 -0.43255159 -0.56004518
		 -0.26296434 -0.56004518 -0.60213894 0.11830393 -0.60213894 -0.051283345 -0.093377054
		 0.11830393 -0.093377054 -0.051283345 -0.26296434 0.11830393 -0.43255159 0.11830393
		 -0.43255159 -0.051283345 -0.26296434 -0.051283345 -0.43255159 -0.22087064 -0.26296434
		 -0.22087064 -0.43255159 -0.3904579 -0.26296434 -0.3904579 -0.093377054 0.11830393
		 -0.093377054 -0.051283345 -0.26296434 0.11830393 -0.43255159 0.11830393 -0.43255159
		 -0.051283345 -0.26296434 -0.051283345 -0.43255159 -0.22087064 -0.26296434 -0.22087064
		 -0.43255159 -0.3904579 -0.26296434 -0.3904579 -0.43255159 -0.56004518 -0.26296434
		 -0.56004518 -0.60213894 0.11830393 -0.60213894 -0.051283345 -0.093377054 0.11830393
		 -0.093377054 -0.051283345 -0.26296434 0.11830393 -0.43255159 0.11830393 -0.43255159
		 -0.051283345 -0.26296434 -0.051283345 -0.43255159 -0.22087064 -0.26296434 -0.22087064
		 -0.43255159 -0.3904579 -0.26296434 -0.3904579 -0.43255159 -0.56004518 -0.26296434
		 -0.56004518 -0.60213894 0.11830393 -0.60213894 -0.051283345 -0.093377054 0.11830393
		 -0.093377054 -0.051283345 -0.26296434 0.11830393 -0.43255159 0.11830393 -0.43255159
		 -0.051283345 -0.26296434 -0.051283345 -0.43255159 -0.22087064 -0.26296434 -0.22087064
		 -0.43255159 -0.3904579 -0.26296434 -0.3904579 -0.43255159 -0.56004518 -0.26296434
		 -0.56004518 -0.093377054 0.11830393 -0.093377054 -0.051283345 -0.26296434 0.11830393
		 -0.43255159 0.11830393 -0.43255159 -0.051283345 -0.26296434 -0.051283345 -0.43255159
		 -0.22087064 -0.26296434 -0.22087064 -0.43255159 -0.3904579 -0.26296434 -0.3904579
		 -0.43255159 -0.56004518 -0.26296434 -0.56004518 -0.60213894 0.11830393 -0.60213894
		 -0.051283345 -0.093377054 0.11830393 -0.093377054 -0.051283345 -0.26296434 0.11830393
		 -0.43255159 0.11830393 -0.43255159 -0.051283345 -0.26296434 -0.051283345 -0.43255159
		 -0.22087064 -0.26296434 -0.22087064 -0.43255159 -0.3904579 -0.26296434 -0.3904579
		 -0.43255159 -0.56004518 -0.26296434 -0.56004518 -0.093377054 0.11830393 -0.093377054
		 -0.051283345 -0.26296434 0.11830393 -0.43255159 0.11830393 -0.43255159 -0.051283345
		 -0.26296434 -0.051283345 -0.43255159 -0.22087064 -0.26296434 -0.22087064 -0.43255159
		 -0.3904579 -0.26296434 -0.3904579 -0.43255159 -0.56004518 -0.26296434 -0.56004518
		 -0.60213894 0.11830393 -0.60213894 -0.051283345 -0.093377054 0.11830393 -0.093377054
		 -0.051283345 -0.26296434 0.11830393 -0.43255159 0.11830393 -0.43255159 -0.051283345
		 -0.26296434 -0.051283345 -0.43255159 -0.22087064 -0.26296434 -0.22087064 -0.43255159
		 -0.3904579 -0.26296434 -0.3904579 -0.093377054 0.11830393 -0.093377054 -0.051283345
		 -0.26296434 0.11830393 -0.43255159 0.11830393 -0.43255159 -0.051283345 -0.26296434
		 -0.051283345 -0.43255159 -0.22087064 -0.26296434 -0.22087064 -0.43255159 -0.3904579
		 -0.26296434 -0.3904579 -0.43255159 -0.56004518 -0.26296434 -0.56004518 -0.60213894
		 0.11830393 -0.60213894 -0.051283345 -0.093377054 0.11830393 -0.093377054 -0.051283345
		 -0.26296434 0.11830393 -0.43255159 0.11830393 -0.43255159 -0.051283345 -0.26296434
		 -0.051283345 -0.43255159 -0.22087064 -0.26296434 -0.22087064 -0.43255159 -0.3904579
		 -0.26296434 -0.3904579 -0.43255159 -0.56004518 -0.26296434 -0.56004518 -0.60213894
		 0.11830393 -0.60213894 -0.051283345 -0.093377054 0.11830393 -0.093377054 -0.051283345
		 -0.26296434 0.11830393 -0.43255159 0.11830393 -0.43255159 -0.051283345 -0.26296434
		 -0.051283345 -0.43255159 -0.22087064 -0.26296434 -0.22087064 -0.43255159 -0.3904579
		 -0.26296434 -0.3904579 -0.43255159 -0.56004518 -0.26296434 -0.56004518 -0.60213894
		 0.11830393 -0.60213894 -0.051283345 -0.093377054 0.11830393 -0.093377054 -0.051283345
		 -0.26296434 0.11830393 -0.43255159 0.11830393 -0.43255159 -0.051283345 -0.26296434
		 -0.051283345 -0.43255159 -0.22087064 -0.26296434 -0.22087064 -0.43255159 -0.3904579
		 -0.26296434 -0.3904579 -0.43255159 -0.56004518 -0.26296434 -0.56004518 -0.60213894
		 0.11830393 -0.60213894 -0.051283345 -0.093377054 0.11830393 -0.093377054 -0.051283345;
createNode polyTweakUV -n "polyTweakUV22";
	rename -uid "2ABFA79A-4047-57F8-692F-EA997D71536A";
	setAttr ".uopa" yes;
	setAttr -s 80 ".uvtk[0:79]" -type "float2" -0.26773492 0.018121779 -0.43732217
		 0.018121779 -0.43732217 -0.15146551 -0.26773492 -0.15146551 -0.43732217 -0.32105279
		 -0.26773492 -0.32105279 -0.43732217 -0.49064004 -0.26773492 -0.49064004 -0.43732217
		 -0.66022736 -0.26773492 -0.66022736 -0.098147631 0.018121779 -0.098147631 -0.15146551
		 -0.26773492 0.018121779 -0.43732217 0.018121779 -0.43732217 -0.15146551 -0.26773492
		 -0.15146551 -0.43732217 -0.32105279 -0.26773492 -0.32105279 -0.43732217 -0.49064004
		 -0.26773492 -0.49064004 -0.43732217 -0.66022736 -0.26773492 -0.66022736 -0.098147631
		 0.018121779 -0.098147631 -0.15146551 -0.26773492 0.018121779 -0.43732217 0.018121779
		 -0.43732217 -0.15146551 -0.26773492 -0.15146551 -0.43732217 -0.32105279 -0.26773492
		 -0.32105279 -0.43732217 -0.49064004 -0.26773492 -0.49064004 -0.43732217 -0.66022736
		 -0.26773492 -0.66022736 -0.60690951 0.018121779 -0.60690951 -0.15146551 -0.098147631
		 0.018121779 -0.098147631 -0.15146551 -0.26773492 0.018121779 -0.43732217 0.018121779
		 -0.43732217 -0.15146551 -0.26773492 -0.15146551 -0.43732217 -0.32105279 -0.26773492
		 -0.32105279 -0.43732217 -0.49064004 -0.26773492 -0.49064004 -0.43732217 -0.66022736
		 -0.26773492 -0.66022736 -0.60690951 0.018121779 -0.60690951 -0.15146551 -0.098147631
		 0.018121779 -0.098147631 -0.15146551 -0.26773492 0.018121779 -0.43732217 0.018121779
		 -0.43732217 -0.15146551 -0.26773492 -0.15146551 -0.43732217 -0.32105279 -0.26773492
		 -0.32105279 -0.43732217 -0.49064004 -0.26773492 -0.49064004 -0.43732217 -0.66022736
		 -0.26773492 -0.66022736 -0.60690951 0.018121779 -0.60690951 -0.15146551 -0.098147631
		 0.018121779 -0.098147631 -0.15146551 -0.26773492 0.018121779 -0.43732217 0.018121779
		 -0.43732217 -0.15146551 -0.26773492 -0.15146551 -0.098147631 0.018121779 -0.098147631
		 -0.15146551 -0.43732217 -0.15699211 -0.3064104 -0.15699211 -0.30641037 -0.2422328
		 -0.43732217 -0.2422328 -0.43732217 -0.32105279 -0.26773492 -0.32105279 -0.43732217
		 -0.49064004 -0.26773492 -0.49064004;
createNode polyTweakUV -n "polyTweakUV23";
	rename -uid "A77B4925-344A-5079-19DD-42A0D47E6F5B";
	setAttr ".uopa" yes;
	setAttr -s 90 ".uvtk[0:89]" -type "float2" -0.26773492 0.018121779 -0.43732217
		 0.018121779 -0.43732217 -0.15146551 -0.26773492 -0.15146551 -0.43732217 -0.32105279
		 -0.26773492 -0.32105279 -0.43732217 -0.49064004 -0.26773492 -0.49064004 -0.43732217
		 -0.66022736 -0.26773492 -0.66022736 -0.098147631 0.018121779 -0.098147631 -0.15146551
		 -0.26773492 0.018121779 -0.43732217 0.018121779 -0.43732217 -0.15146551 -0.26773492
		 -0.15146551 -0.43732217 -0.32105279 -0.26773492 -0.32105279 -0.43732217 -0.49064004
		 -0.26773492 -0.49064004 -0.43732217 -0.66022736 -0.26773492 -0.66022736 -0.60690951
		 0.018121779 -0.60690951 -0.15146551 -0.098147631 0.018121779 -0.098147631 -0.15146551
		 -0.26773492 0.018121779 -0.43732217 0.018121779 -0.43732217 -0.15146551 -0.26773492
		 -0.15146551 -0.43732217 -0.32105279 -0.26773492 -0.32105279 -0.43732217 -0.49064004
		 -0.26773492 -0.49064004 -0.43732217 -0.66022736 -0.26773492 -0.66022736 -0.098147631
		 0.018121779 -0.098147631 -0.15146551 -0.26773492 0.018121779 -0.43732217 0.018121779
		 -0.43732217 -0.15146551 -0.26773492 -0.15146551 -0.43732217 -0.32105279 -0.26773492
		 -0.32105279 -0.43732217 -0.49064004 -0.26773492 -0.49064004 -0.43732217 -0.66022736
		 -0.26773492 -0.66022736 -0.60690951 0.018121779 -0.60690951 -0.15146551 -0.098147631
		 0.018121779 -0.098147631 -0.15146551 -0.26773492 0.018121779 -0.43732217 0.018121779
		 -0.43732217 -0.15146551 -0.26773492 -0.15146551 -0.43732217 -0.32105279 -0.26773492
		 -0.32105279 -0.43732217 -0.49064004 -0.26773492 -0.49064004 -0.098147631 0.018121779
		 -0.098147631 -0.15146551 -0.26773492 0.018121779 -0.43732217 0.018121779 -0.43732217
		 -0.15146551 -0.26773492 -0.15146551 -0.43732217 -0.32105279 -0.26773492 -0.32105279
		 -0.43732217 -0.49064004 -0.26773492 -0.49064004 -0.43732217 -0.66022736 -0.26773492
		 -0.66022736 -0.60690951 0.018121779 -0.60690951 -0.15146551 -0.098147631 0.018121779
		 -0.098147631 -0.15146551 -0.26773492 0.018121779 -0.43732217 0.018121779 -0.43732217
		 -0.15146551 -0.26773492 -0.15146551 -0.43732217 -0.32105279 -0.26773492 -0.32105279
		 -0.43732217 -0.49064004 -0.26773492 -0.49064004 -0.43732217 -0.66022736 -0.26773492
		 -0.66022736 -0.60690951 0.018121779 -0.60690951 -0.15146551 -0.098147631 0.018121779
		 -0.098147631 -0.15146551;
createNode polyTweakUV -n "polyTweakUV24";
	rename -uid "3D65E053-0444-82FA-8517-D3A86A4E7297";
	setAttr ".uopa" yes;
	setAttr -s 90 ".uvtk[0:89]" -type "float2" 0.047704026 0.29013231 -0.15251593
		 0.29013231 -0.15251593 0.089912385 0.047704026 0.089912385 -0.15251593 -0.11030761
		 0.047704026 -0.11030761 -0.15251593 -0.31052756 0.047704026 -0.31052756 -0.15251593
		 -0.51074755 0.047704026 -0.51074755 0.24792401 0.29013231 0.24792401 0.089912385
		 0.047704026 0.29013231 -0.15251593 0.29013231 -0.15251593 0.089912385 0.047704026
		 0.089912385 -0.15251593 -0.11030761 0.047704026 -0.11030761 -0.15251593 -0.31052756
		 0.047704026 -0.31052756 -0.15251593 -0.51074755 0.047704026 -0.51074755 -0.35273594
		 0.29013231 -0.35273594 0.089912385 0.24792401 0.29013231 0.24792401 0.089912385 0.047704026
		 0.29013231 -0.15251593 0.29013231 -0.15251593 0.089912385 0.047704026 0.089912385
		 -0.15251593 -0.11030761 0.047704026 -0.11030761 -0.15251593 -0.31052756 0.047704026
		 -0.31052756 -0.15251593 -0.51074755 0.047704026 -0.51074755 0.24792401 0.29013231
		 0.24792401 0.089912385 0.047704026 0.29013231 -0.15251593 0.29013231 -0.15251593
		 0.089912385 0.047704026 0.089912385 -0.15251593 -0.11030761 0.047704026 -0.11030761
		 -0.15251593 -0.31052756 0.047704026 -0.31052756 -0.15251593 -0.51074755 0.047704026
		 -0.51074755 -0.35273594 0.29013231 -0.35273594 0.089912385 0.24792401 0.29013231
		 0.24792401 0.089912385 0.047704026 0.29013231 -0.15251593 0.29013231 -0.15251593
		 0.089912385 0.047704026 0.089912385 -0.15251593 -0.11030761 0.047704026 -0.11030761
		 -0.15251593 -0.31052756 0.047704026 -0.31052756 0.24792401 0.29013231 0.24792401
		 0.089912385 0.047704026 0.29013231 -0.15251593 0.29013231 -0.15251593 0.089912385
		 0.047704026 0.089912385 -0.15251593 -0.11030761 0.047704026 -0.11030761 -0.15251593
		 -0.31052756 0.047704026 -0.31052756 -0.15251593 -0.51074755 0.047704026 -0.51074755
		 -0.35273594 0.29013231 -0.35273594 0.089912385 0.24792401 0.29013231 0.24792401 0.089912385
		 0.047704026 0.29013231 -0.15251593 0.29013231 -0.15251593 0.089912385 0.047704026
		 0.089912385 -0.15251593 -0.11030761 0.047704026 -0.11030761 -0.15251593 -0.31052756
		 0.047704026 -0.31052756 -0.15251593 -0.51074755 0.047704026 -0.51074755 -0.35273594
		 0.29013231 -0.35273594 0.089912385 0.24792401 0.29013231 0.24792401 0.089912385;
createNode polyMapCut -n "polyMapCut2";
	rename -uid "7A571E36-9943-58EA-FF41-7C8047EE9F1B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[10:12]" "e[47:49]";
createNode polyTweakUV -n "polyTweakUV25";
	rename -uid "DB0DFAD9-FA47-41EB-2F83-8C97697CE87A";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[10]" -type "float2" -0.18044914 0.070809133 ;
	setAttr ".uvtk[11]" -type "float2" -0.18044914 0.070809133 ;
	setAttr ".uvtk[12]" -type "float2" -0.18044914 0.070809193 ;
	setAttr ".uvtk[36]" -type "float2" -0.18044914 0.070809133 ;
	setAttr ".uvtk[37]" -type "float2" -0.18044914 0.070809133 ;
	setAttr ".uvtk[52]" -type "float2" -0.18044914 0.070809133 ;
	setAttr ".uvtk[53]" -type "float2" -0.18044914 0.070809133 ;
	setAttr ".uvtk[54]" -type "float2" -0.18044914 0.070809193 ;
	setAttr ".uvtk[55]" -type "float2" -0.18044914 0.070809193 ;
	setAttr ".uvtk[56]" -type "float2" -0.18044914 0.070809193 ;
	setAttr ".uvtk[57]" -type "float2" -0.18044914 0.070809193 ;
	setAttr ".uvtk[78]" -type "float2" -0.18044914 0.070809193 ;
createNode polyFlipUV -n "polyFlipUV2";
	rename -uid "EBC2D06F-544A-CBB8-C8E1-ED86D7EAE5EF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[32:37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV26";
	rename -uid "8E236162-864F-4BE3-C5A0-EFAB8753DDA3";
	setAttr ".uopa" yes;
	setAttr -s 83 ".uvtk[0:82]" -type "float2" -0.18911457 0.28586081 -0.18454799
		 0.28586081 -0.18454799 0.32802215 -0.18489012 0.32802215 -0.18489012 0.32777873 -0.18620133
		 0.32777873 -0.18620133 0.32802215 -0.18911457 0.32802215 -0.19756031 0.28586081 -0.18992826
		 0.32802215 0.51392078 0.059207316 0.51392078 0.059207316 0.51392078 0.059207316 -0.19376624
		 0.32802215 0.47936881 0.063864589 0.47936887 0.063864589 0.47936887 0.063864529 -0.19756031
		 0.32802215 -0.20212686 0.28586081 -0.17645591 0.28586081 -0.17762968 0.321183 -0.17834175
		 0.321183 -0.17834175 0.32424501 -0.18620133 0.33084068 -0.18489012 0.33084068 -0.18454799
		 0.35264269 -0.18503183 0.33084068 -0.18503183 0.32777873 -0.18642652 0.32777873 -0.18642652
		 0.33084068 -0.19845274 0.32158747 -0.19845274 0.3185254 -0.19931453 0.3185254 -0.20212686
		 0.35264269 0.47936887 0.063864589 0.47936881 0.063864589 0.51392078 0.059207316 0.51392078
		 0.059207316 -0.21021888 0.28586081 -0.17762968 0.32424501 -0.17731965 0.321183 -0.17802483
		 0.321183 -0.17802483 0.32424501 -0.20212686 0.32802215 -0.19931453 0.32158747 -0.19823653
		 0.32158747 -0.19823653 0.3185254 -0.19910505 0.3185254 -0.21021888 0.35264269 -0.21021888
		 0.32802215 -0.17731965 0.32424501 -0.19910505 0.32158747 0.51392078 0.059207316 0.51392078
		 0.059207316 0.51392078 0.059207316 0.51392078 0.059207316 0.51392078 0.059207316
		 0.51392078 0.059207316 0.47936887 0.063864589 0.47936881 0.063864589 0.47936881 0.063864589
		 0.47936887 0.063864589 0.47936887 0.063864589 0.47936881 0.063864589 -0.17645591
		 0.35264269 -0.16971654 0.35264269 -0.16804105 0.35264269 -0.16593739 0.35264269 -0.16971654
		 0.28586081 -0.17645591 0.32802215 -0.16971654 0.32802215 -0.19473368 0.34849682 0.47936881
		 0.063864529 -0.20030046 0.34849682 -0.1966612 0.32802215 -0.1966612 0.32532296 -0.19376624
		 0.32532296 -0.18629304 0.34849682 0.51392078 0.059207316 -0.19158781 0.34849682 -0.1927956
		 0.32802215 -0.1927956 0.32532296 -0.18992826 0.32532296;
createNode polyFlipUV -n "polyFlipUV3";
	rename -uid "534DEF72-4948-91BE-2E70-E1B18543C527";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyFlipUV -n "polyFlipUV4";
	rename -uid "9BCB49F2-0F4A-BB82-21AC-C58125BE46F1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyFlipUV -n "polyFlipUV5";
	rename -uid "90E8C198-3A49-AA80-6F6A-E8A856A9B967";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyFlipUV -n "polyFlipUV6";
	rename -uid "4EC8133A-9942-B66B-F1AC-D6A3FE35C0F3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ft" 1;
createNode polyTweakUV -n "polyTweakUV27";
	rename -uid "23F408EF-D54C-3A8F-5242-6D8B2C717B61";
	setAttr ".uopa" yes;
	setAttr -s 208 ".uvtk[0:207]" -type "float2" -0.1088429 0.17260161 -0.18925565
		 0.09218888 -0.10884293 0.011776149 -0.028430209 0.092188865 -0.028430223 -0.068636566
		 0.051982522 0.011776179 0.051982507 -0.14904931 0.13239525 -0.068636596 0.13239524
		 -0.22946203 0.21280798 -0.14904928 -0.028430171 0.25301433 0.051982522 0.17260161
		 -0.1088429 0.17260161 -0.18925565 0.09218888 -0.10884293 0.011776149 -0.028430209
		 0.092188865 -0.028430223 -0.068636566 0.051982522 0.011776179 0.051982507 -0.14904931
		 0.13239525 -0.068636596 0.13239524 -0.22946203 0.21280798 -0.14904928 -0.26966828
		 0.011776209 -0.18925558 -0.068636507 -0.028430171 0.25301433 0.051982522 0.17260161
		 -0.1088429 0.17260161 -0.18925565 0.09218888 -0.10884293 0.011776149 -0.028430209
		 0.092188865 -0.028430223 -0.068636566 0.051982522 0.011776179 0.051982507 -0.14904931
		 0.13239525 -0.068636596 0.13239524 -0.22946203 0.21280798 -0.14904928 -0.028430171
		 0.25301433 0.051982522 0.17260161 -0.1088429 0.17260161 -0.18925565 0.09218888 -0.10884293
		 0.011776149 -0.028430209 0.092188865 -0.028430223 -0.068636566 0.051982522 0.011776179
		 0.051982507 -0.14904931 0.13239525 -0.068636596 0.13239524 -0.22946203 0.21280798
		 -0.14904928 -0.26966828 0.011776209 -0.18925558 -0.068636507 -0.028430171 0.25301433
		 0.051982522 0.17260161 -0.1088429 0.17260161 -0.18925565 0.09218888 -0.10884293 0.011776149
		 -0.028430209 0.092188865 -0.028430223 -0.068636566 0.051982522 0.011776179 0.051982507
		 -0.14904931 0.13239525 -0.068636596 -0.028430171 0.25301433 0.051982522 0.17260161
		 -0.1088429 0.17260161 -0.18925565 0.09218888 -0.10884293 0.011776149 -0.028430209
		 0.092188865 -0.028430223 -0.068636566 0.051982522 0.011776179 0.051982507 -0.14904931
		 0.13239525 -0.068636596 0.13239524 -0.22946203 0.21280798 -0.14904928 -0.26966828
		 0.011776209 -0.18925558 -0.068636507 -0.028430171 0.25301433 0.051982522 0.17260161
		 -0.1088429 0.17260161 -0.18925565 0.09218888 -0.10884293 0.011776149 -0.028430209
		 0.092188865 -0.028430223 -0.068636566 0.051982522 0.011776179 0.051982507 -0.14904931
		 0.13239525 -0.068636596 0.13239524 -0.22946203 0.21280798 -0.14904928 -0.26966828
		 0.011776209 -0.18925558 -0.068636507 -0.028430171 0.25301433 0.051982522 0.17260161
		 -0.1088429 0.17260161 -0.18925565 0.09218888 -0.10884293 0.011776149 -0.028430209
		 0.092188865 -0.028430223 -0.068636566 0.051982522 0.011776179 0.051982507 -0.14904931
		 0.13239525 -0.068636596 0.13239524 -0.22946203 0.21280798 -0.14904928 -0.028430171
		 0.25301433 0.051982522 0.17260161 -0.1088429 0.17260161 -0.18925565 0.09218888 -0.10884293
		 0.011776149 -0.028430209 0.092188865 -0.028430223 -0.068636566 0.051982522 0.011776179
		 0.051982507 -0.14904931 0.13239525 -0.068636596 0.13239524 -0.22946203 0.21280798
		 -0.14904928 -0.26966828 0.011776209 -0.18925558 -0.068636507 -0.028430171 0.25301433
		 0.051982522 0.17260161 -0.1088429 0.17260161 -0.18925565 0.09218888 -0.10884293 0.011776149
		 -0.028430209 0.092188865 -0.028430223 -0.068636566 0.051982522 0.011776179 0.051982507
		 -0.14904931 0.13239525 -0.068636596 0.13239524 -0.22946203 0.21280798 -0.14904928
		 -0.028430171 0.25301433 0.051982522 0.17260161 -0.1088429 0.17260161 -0.18925565
		 0.09218888 -0.10884293 0.011776149 -0.028430209 0.092188865 -0.028430223 -0.068636566
		 0.051982522 0.011776179 0.051982507 -0.14904931 0.13239525 -0.068636596 0.13239524
		 -0.22946203 0.21280798 -0.14904928 -0.26966828 0.011776209 -0.18925558 -0.068636507
		 -0.028430171 0.25301433 0.051982522 0.17260161 -0.1088429 0.17260161 -0.18925565
		 0.09218888 -0.10884293 0.011776149 -0.028430209 0.092188865 -0.028430223 -0.068636566
		 0.051982522 0.011776179 0.051982507 -0.14904931 0.13239525 -0.068636596 -0.028430171
		 0.25301433 0.051982522 0.17260161 -0.1088429 0.17260161 -0.18925565 0.09218888 -0.10884293
		 0.011776149 -0.028430209 0.092188865 -0.028430223 -0.068636566 0.051982522 0.011776179
		 0.051982507 -0.14904931 0.13239525 -0.068636596 0.13239524 -0.22946203 0.21280798
		 -0.14904928 -0.26966828 0.011776209 -0.18925558 -0.068636507 -0.028430171 0.25301433
		 0.051982522 0.17260161 -0.1088429 0.17260161 -0.18925565 0.09218888 -0.10884293 0.011776149
		 -0.028430209 0.092188865 -0.028430223 -0.068636566 0.051982522 0.011776179 0.051982507
		 -0.14904931 0.13239525 -0.068636596 0.13239524 -0.22946203 0.21280798 -0.14904928
		 -0.26966828 0.011776209 -0.18925558 -0.068636507 -0.028430171 0.25301433 0.051982522
		 0.17260161 -0.1088429 0.17260161 -0.18925565 0.09218888 -0.10884293 0.011776149 -0.028430209
		 0.092188865 -0.028430223 -0.068636566 0.051982522 0.011776179 0.051982507 -0.14904931
		 0.13239525 -0.068636596 0.13239524 -0.22946203 0.21280798 -0.14904928 -0.26966828
		 0.011776209 -0.18925558 -0.068636507 -0.028430171 0.25301433 0.051982522 0.17260161
		 -0.1088429 0.17260161 -0.18925565 0.09218888 -0.10884293 0.011776149 -0.028430209
		 0.092188865 -0.028430223 -0.068636566 0.051982522 0.011776179 0.051982507 -0.14904931
		 0.13239525 -0.068636596 0.13239524 -0.22946203 0.21280798 -0.14904928 -0.26966828
		 0.011776209 -0.18925558 -0.068636507 -0.028430171 0.25301433 0.051982522 0.17260161;
createNode polyTweakUV -n "polyTweakUV28";
	rename -uid "D3E46287-FF4B-FBE6-714E-F2975CCAC551";
	setAttr ".uopa" yes;
	setAttr -s 140 ".uvtk[0:139]" -type "float2" 0.17967452 0.18367811 0.21344711
		 0.18367811 0.21344711 0.19537447 0.19017555 0.19537447 0.17967452 0.088442236 0.21344711
		 0.088442236 0.30868298 0.18367811 0.30868298 0.19537447 0.19017555 0.076745898 0.21344711
		 0.076745898 0.21344711 0.27891397 0.16582917 0.27891397 0.16582917 0.23129602 0.21344401
		 0.23129858 0.30868298 0.27891397 0.30867815 0.23130552 0.21344711 -0.006793648 0.16582917
		 -0.006793648 0.16582917 -0.10202954 0.21344711 -0.10202954 0.11821128 0.27891397
		 0.11821128 0.23129602 0.16582917 0.18367811 0.21343999 0.04082194 0.16582917 0.040824324
		 0.16582917 0.088442236 0.21343754 0.088446975 0.19561793 0.095452487 0.18761073 0.095451891
		 0.1870424 0.095451832 0.18217872 0.095451534 0.17982294 0.095451325 0.17102541 0.09545064
		 0.17102559 0.10372069 0.16840838 0.10372066 0.16840862 0.13304704 0.17102616 0.13304687
		 0.17102619 0.13379019 0.16677125 0.13379061 0.16677134 0.17525391 0.21345659 0.1836638
		 0.17102693 0.17525287 0.17102702 0.1779411 0.17982773 0.17793854 0.18218429 0.17793797
		 0.18704967 0.17793657 0.18761824 0.17793639 0.1956283 0.17793415 0.19562264 0.13304472
		 0.20343475 0.13304403 0.20344181 0.17793204 0.2082143 0.17793067 0.20819946 0.095453411
		 0.11821128 -0.006793648 0.11821128 -0.10202954 0.0229754 0.27891397 0.0229754 0.23129602
		 0.11821128 0.18367811 0.11821128 0.040824324 0.11821128 0.088442236 0.19561897 0.10372168
		 0.20342885 0.095453054 0.20343016 0.10372198 0.18131797 0.085902065 0.21344711 0.050115615
		 0.21344711 0.088442236 0.18131797 0.088442236 0.17903738 0.088442236 0.21344711 0.088442236
		 0.19165118 0.088442236 0.21116652 0.066705436 0.21344711 0.066705436 0.21344711 0.049123555
		 0.21344711 0.088442236 0.17814671 0.088442236 0.21344711 0.18367811 0.17814671 0.18367811
		 0.17814671 0.18057449 0.19172795 0.18057449 0.19172795 0.13270554 0.17814671 0.13270557
		 0.17814671 0.13184741 0.2014183 0.13184741 0.2014183 0.097990066 0.17814671 0.097990096
		 0.21344711 0.088442236 0.18279575 0.088442236 0.19986583 0.069428951 0.21344711 0.06942901
		 0.21344711 0.18367811 0.18279575 0.18367811 0.21344711 0.2026913 0.19986583 0.2026913
		 0.21344711 0.22299679 0.30868298 0.18367811 0.30868298 0.22299679 0.21344711 0.18367811
		 0.19165118 0.18367811 0.21344711 0.20541485 0.21116652 0.20541485 0.18131797 0.18621831
		 0.17903738 0.18367811 0.18131797 0.18367811 0.21344711 0.18367811 0.21344711 0.22200476
		 0.30868298 0.18367811 0.30868298 0.22200476 0.29913509 0.22200476 0.29913509 0.22144391
		 0.2652778 0.22144391 0.2652778 0.22200476 0.1793377 0.18367811 0.21344711 0.18367811
		 0.21344711 0.21914755 0.21067877 0.21914755 0.1793377 0.18423887 0.19430454 0.088442236
		 0.21344711 0.088442236 0.21344711 0.18367811 0.19430454 0.18367811 0.19430454 0.13184741
		 0.19707288 0.13184741 0.19707291 0.097990096 0.19430454 0.097990096 0.21344711 0.20499967
		 0.30868298 0.18367811 0.30868298 0.20499967 0.0229754 0.18367811 0.21344711 0.088442236
		 0.1793377 0.088442236 0.1793377 0.087881476 0.21067877 0.052972764 0.21344711 0.052972764
		 0.21344711 0.067120641 0.30868298 0.18367811 0.30868298 0.20541485 0.30868298 0.18367811
		 0.30868298 0.2026913 0.30868298 0.18367811 0.30868298 0.21914755;
createNode polyTweakUV -n "polyTweakUV29";
	rename -uid "C332B746-7F46-BC3B-4E64-999C33B0E450";
	setAttr ".uopa" yes;
	setAttr -s 26 ".uvtk[0:25]" -type "float2" 0.21344711 0.27891397 0.16582917
		 0.27891397 0.16582917 0.23129602 0.21344401 0.23129858 0.11821128 0.27891397 0.11821128
		 0.23129602 0.16582917 0.18367811 0.11821128 0.18367811 0.21345659 0.1836638 0.16582917
		 0.088442236 0.21343754 0.088446975 0.11821128 0.088442236 0.21343999 0.04082194 0.16582917
		 0.040824324 0.11821128 0.040824324 0.16582917 -0.006793648 0.21344711 -0.006793648
		 0.11821128 -0.006793648 0.16582917 -0.10202954 0.21344711 -0.10202954 0.11821128
		 -0.10202954 0.0229754 0.27891397 0.0229754 0.23129602 0.0229754 0.18367811 0.30868298
		 0.27891397 0.30867815 0.23130552;
createNode polyTweakUV -n "polyTweakUV30";
	rename -uid "3C271B55-894F-13D2-6825-0CA3A42229EA";
	setAttr ".uopa" yes;
	setAttr -s 70 ".uvtk[0:69]" -type "float2" 0.21344711 0.27891397 0.16582917
		 0.27891397 0.16582917 0.27851689 0.21298946 0.27851695 0.21298833 0.26131392 0.20131628
		 0.23129795 0.21344401 0.23129858 0.30868298 0.27891397 0.30867815 0.23130552 0.21344711
		 -0.006793648 0.16582917 -0.006793648 0.16582917 -0.10202954 0.21344711 -0.10202954
		 0.11821128 0.27891397 0.11821128 0.27851689 0.1653675 0.27851689 0.16582917 0.19580664
		 0.16582917 0.18367811 0.21343999 0.04082194 0.16582917 0.040824324 0.21345659 0.1836638
		 0.16582917 0.088442236 0.21343754 0.088446975 0.11821128 -0.006793648 0.11821128
		 -0.10202954 0.0229754 0.27891397 0.0229754 0.23129602 0.10377099 0.23129602 0.10377099
		 0.26131302 0.10377099 0.27851689 0.11821128 0.19534893 0.11821128 0.18367811 0.16536756
		 0.19534893 0.11821128 0.040824324 0.11821128 0.088442236 0.0229754 0.18367811 0.10377099
		 0.19534893 0.21344711 0.27891397 0.16582917 0.27891397 0.16582917 0.23129602 0.21344401
		 0.23129858 0.26644558 0.27891397 0.26644152 0.23130243 0.16582917 -0.049031049 0.16582917
		 -0.10202954 0.21344711 -0.10202954 0.21344711 -0.049031049 0.16628684 -0.049031049
		 0.11821128 0.27891397 0.11821128 0.23129602 0.16582917 0.18367811 0.21345659 0.1836638
		 0.16582917 0.13067967 0.16628684 0.13067961 0.20177539 0.1306769 0.21344601 0.13067597
		 0.14254536 -0.006793648 0.11821128 -0.006793648 0.11821128 -0.10202954 0.14254536
		 -0.049031049 0.0229754 0.27891397 0.0229754 0.23129602 0.11821128 0.18367811 0.11821128
		 0.088442236 0.14254536 0.088442236 0.14254542 0.13067961 0.14254536 0.040824324 0.11821128
		 0.040824324 0.0229754 0.18367811 0.14254542 0.052495152;
createNode polyTweakUV -n "polyTweakUV31";
	rename -uid "02BC158E-1B44-9248-6C08-F6985FA42D74";
	setAttr ".uopa" yes;
	setAttr -s 104 ".uvtk[0:103]" -type "float2" 0.21344711 0.27891397 0.2097915
		 0.27891397 0.2097912 0.27245083 0.19508256 0.23129763 0.21344401 0.23129858 0.30868298
		 0.27891397 0.30867815 0.23130552 0.21344711 -0.006793648 0.16582917 -0.006793648
		 0.16582917 -0.095575899 0.2097915 -0.095575899 0.2097915 -0.10202954 0.21344711 -0.10202954
		 0.16582917 0.19946624 0.16582917 0.18367811 0.21343999 0.04082194 0.16582917 0.040824324
		 0.21345659 0.1836638 0.16582917 0.088442236 0.21343754 0.088446975 0.11821128 -0.006793648
		 0.11821128 -0.10202954 0.1251439 -0.10202954 0.1251439 -0.095575899 0.16276415 -0.095575899
		 0.1251439 0.23129602 0.11821128 0.23129602 0.11821128 0.18367811 0.16276415 0.19011222
		 0.12514384 0.19011222 0.11821128 0.040824324 0.11821128 0.088442236 0.11821128 0.27891397
		 0.0229754 0.27891397 0.0229754 0.23129602 0.1251439 0.27891397 0.12514384 0.27245054
		 0.0229754 0.18367811 0.12352474 0.047535866 0.12352474 0.042649478 0.12234093 0.042649478
		 0.12234099 0.047535926 0.1686561 -0.006793648 0.1686561 0.088442236 0.21344711 0.088442236
		 0.21344711 -0.006793648 0.1686561 -0.10202954 0.21344711 -0.10202954 0.1686561 0.18367811
		 0.1686561 0.27891397 0.21344711 0.27891397 0.21344711 0.18367811 0.30868298 0.27891397
		 0.30868298 0.18367811 0.21344711 0.27891397 0.16582917 0.27891397 0.16582917 0.23129602
		 0.21344401 0.23129858 0.30868298 0.27891397 0.26297051 0.23130219 0.2629742 0.2760241
		 0.30868262 0.27602428 0.21344711 -0.006793648 0.16582917 -0.006793648 0.16582917
		 -0.10202954 0.21344711 -0.10202954 0.11821128 0.27891397 0.11821128 0.23129602 0.16582917
		 0.18367811 0.16582917 -0.0039033592 0.21344663 -0.003903538 0.17361818 -0.0039034188
		 0.21345659 0.1836638 0.16582917 0.13415077 0.17361818 0.13415006 0.20012255 0.13414761
		 0.21344669 0.13414639 0.11821128 -0.006793648 0.11821128 -0.10202954 0.0229754 0.27891397
		 0.0229754 0.27602369 0.068683937 0.27602369 0.068683937 0.23129602 0.16050585 0.1941099
		 0.16050585 0.19817884 0.16200425 0.19817884 0.16200419 0.1941099 0.11821128 0.18367811
		 0.11821122 -0.0039033592 0.11821128 0.13415077 0.068683937 0.21797176 0.068683937
		 0.18367811 0.16518117 0.27891397 0.16518117 0.18367811 0.11821128 0.18367811 0.11821128
		 0.27891397 0.16518117 -0.006793648 0.16518117 -0.10202954 0.11821128 -0.10202954
		 0.11821128 -0.006793648 0.16518117 0.088442236 0.11821128 0.088442236 0.0229754 0.18367811
		 0.0229754 0.27891397;
createNode polyTweakUV -n "polyTweakUV32";
	rename -uid "1A43E5EF-E941-C068-19E9-53A911E3906F";
	setAttr ".uopa" yes;
	setAttr -s 86 ".uvtk[0:85]" -type "float2" 0.21344711 0.27891397 0.16582917
		 0.27891397 0.16582917 0.23129602 0.21344401 0.23129858 0.11821128 0.27891397 0.11821128
		 0.23129602 0.16582917 0.18367811 0.11821128 0.18367811 0.21345086 0.15509875 0.16582917
		 0.15510733 0.16582917 0.13510776 0.21344693 0.13510326 0.16582917 0.15510733 0.11821128
		 0.15510733 0.11821128 0.13510776 0.16582917 0.13510776 0.21343999 0.04082194 0.16582917
		 0.088442236 0.16582917 0.040824324 0.11821128 0.088442236 0.11821128 0.040824324
		 0.16582917 -0.006793648 0.21344711 -0.006793648 0.11821128 -0.006793648 0.21344711
		 -0.053459138 0.16582917 -0.053459138 0.16582917 -0.073458701 0.21344711 -0.073458701
		 0.11821128 -0.053459138 0.11821128 -0.073458701 0.089640513 0.23129602 0.089640513
		 0.27891397 0.069640949 0.27891397 0.069640949 0.23129602 0.089640513 0.18367811 0.069640949
		 0.18367811 0.26201344 0.23130213 0.26201737 0.27891397 0.24201791 0.27891397 0.2420143
		 0.2313007 0.11821128 -0.10202954 0.16582917 -0.10202954 0.21344711 -0.10202954 0.2420143
		 0.2313007 0.24201791 0.27891397 0.21345659 0.1836638 0.21345086 0.15509875 0.21344711
		 -0.044126064 0.16582917 -0.044126064 0.11821128 -0.044126064 0.060307875 0.27891397
		 0.060307875 0.23129602 0.060307875 0.18367811 0.11821128 0.12577471 0.16582917 0.12577471
		 0.21344693 0.13510326 0.21344502 0.12577203 0.27134639 0.23130281 0.2713505 0.27891397
		 0.26201737 0.27891397 0.26201344 0.23130213 0.21344711 -0.040392846 0.16582917 -0.040392846
		 0.11821128 -0.040392846 0.056574658 0.27891397 0.056574658 0.23129602 0.056574598
		 0.18367811 0.11821128 0.12204146 0.16582917 0.12204146 0.21344502 0.12577203 0.16582917
		 0.12577471 0.16582917 0.12204146 0.21344428 0.1220395 0.27507961 0.23130308 0.27508378
		 0.27891397 0.2713505 0.27891397 0.27134639 0.23130281 0.0229754 0.27891397 0.0229754
		 0.23129602 0.0229754 0.18367811 0.21344428 0.1220395 0.21343754 0.088446975 0.30868298
		 0.27891397 0.27508378 0.27891397 0.27507961 0.23130308 0.30867815 0.23130552;
createNode polyTweakUV -n "polyTweakUV33";
	rename -uid "BDA7DB8C-394D-F348-407A-81952F51D1AC";
	setAttr ".uopa" yes;
	setAttr -s 156 ".uvtk[0:155]" -type "float2" 0.19017561 0.19537447 0.17967458
		 0.18367811 0.21344711 0.18367811 0.21344711 0.19537447 0.19561793 0.095452547 0.1876107
		 0.095451921 0.18704237 0.095451832 0.18217872 0.095451534 0.17982291 0.095451325
		 0.17102541 0.09545064 0.17102559 0.10372069 0.16840838 0.10372064 0.16840862 0.13304704
		 0.17102616 0.13304684 0.17102619 0.13379017 0.16677122 0.13379061 0.16677134 0.17525394
		 0.16582917 0.18367811 0.16582917 0.088442236 0.21343754 0.088446975 0.17967458 0.088442236
		 0.21344711 0.088442236 0.17814679 0.088442236 0.21344711 0.088442236 0.21344711 0.18367811
		 0.17814679 0.18367811 0.17814679 0.18057449 0.19172795 0.18057449 0.19172795 0.13270557
		 0.17814679 0.13270557 0.17814682 0.13184741 0.2014183 0.13184744 0.2014183 0.097990096
		 0.17814679 0.097990096 0.19017561 0.076745838 0.21344711 0.076745898 0.30868298 0.18367811
		 0.30868298 0.19537447 0.21344711 0.049123615 0.21344711 0.22299673 0.30868298 0.18367811
		 0.30868298 0.22299673 0.18279578 0.18367811 0.21344711 0.18367811 0.21344711 0.2026913
		 0.19986592 0.2026913 0.30868298 0.18367811 0.30868298 0.2026913 0.21344711 0.088442236
		 0.18279578 0.088442236 0.19986595 0.069428951 0.21344711 0.06942901 0.19165124 0.088442236
		 0.21344711 0.088442236 0.21344711 0.18367811 0.19165124 0.18367811 0.11821128 0.18367811
		 0.11821128 0.088442236 0.21116658 0.066705436 0.21344711 0.066705436 0.21344711 0.20541485
		 0.30868298 0.18367811 0.30868298 0.20541485 0.21116658 0.20541485 0.16582917 0.23129602
		 0.11821128 0.23129602 0.13339014 0.20930158 0.13893218 0.20930164 0.13893218 0.20438547
		 0.1333902 0.20438547 0.0229754 0.23129602 0.0229754 0.18367811 0.11821128 0.040824324
		 0.16582917 0.040824324 0.18131791 0.088442236 0.17903735 0.088442236 0.18131791 0.085902065
		 0.21344711 0.088442236 0.21344711 0.18367811 0.18131791 0.18367811 0.18131791 0.18621825
		 0.17903735 0.18367811 0.21344401 0.23129858 0.16582917 0.27891397 0.11821128 0.27891397
		 0.0229754 0.27891397 0.21343999 0.04082194 0.11821128 -0.006793648 0.16582917 -0.006793648
		 0.21344711 0.050115556 0.21344711 0.22200476 0.30868298 0.18367811 0.30868298 0.22200476
		 0.29913509 0.22200473 0.29913509 0.22144391 0.2652778 0.22144391 0.2652778 0.22200476
		 0.21344711 0.27891397 0.11821128 -0.10202954 0.16582917 -0.10202954 0.21344711 -0.006793648
		 0.21345656 0.1836638 0.17102693 0.17525287 0.17102702 0.1779411 0.17982773 0.17793854
		 0.18218429 0.17793797 0.18704967 0.17793657 0.18761821 0.17793642 0.1956283 0.17793415
		 0.19562264 0.13304475 0.20343475 0.13304406 0.20344184 0.17793201 0.20821421 0.17793064
		 0.20819943 0.095453441 0.20343016 0.10372195 0.19561897 0.10372171 0.20342882 0.095453024
		 0.21344711 0.088442236 0.17933781 0.088442236 0.17933784 0.087881476 0.21067886 0.052972764
		 0.21344711 0.052972764 0.21344711 0.18367811 0.17933781 0.18367811 0.21344711 0.21914755
		 0.21067886 0.21914755 0.17933781 0.1842389 0.30868298 0.27891397 0.30867815 0.23130552
		 0.21344711 -0.10202954 0.30868298 0.18367811 0.30868298 0.21914755 0.19430466 0.088442236
		 0.21344711 0.088442236 0.21344711 0.18367811 0.19430466 0.18367811 0.19430466 0.13184741
		 0.19707288 0.13184741 0.19707291 0.097990096 0.19430466 0.097990096 0.21344714 0.20499955
		 0.30868298 0.18367811 0.30868298 0.20499955 0.21344714 0.067120761 0.16527851 0.18367811
		 0.16527851 0.27891397 0.21344711 0.27891397 0.21344711 0.18367811 0.16527857 0.088442236
		 0.21344711 0.088442236 0.30868298 0.27891397 0.30868298 0.18367811 0.16527851 -0.10202954
		 0.16527857 -0.006793648 0.21344711 -0.006793648 0.21344711 -0.10202954;
createNode polyTweakUV -n "polyTweakUV34";
	rename -uid "2914A50E-F84B-CE0E-06B8-ECB790920A34";
	setAttr ".uopa" yes;
	setAttr -s 26 ".uvtk[0:25]" -type "float2" 0.21344711 0.27891397 0.16582917
		 0.27891397 0.16582917 0.23129602 0.21344401 0.23129858 0.11821128 0.27891397 0.11821128
		 0.23129602 0.16582917 0.18367811 0.11821128 0.18367811 0.21345659 0.1836638 0.16582917
		 0.088442236 0.21343754 0.088446975 0.11821128 0.088442236 0.21343999 0.04082194 0.16582917
		 0.040824324 0.11821128 0.040824324 0.16582917 -0.006793648 0.21344711 -0.006793648
		 0.11821128 -0.006793648 0.16582917 -0.10202954 0.21344711 -0.10202954 0.11821128
		 -0.10202954 0.0229754 0.27891397 0.0229754 0.23129602 0.0229754 0.18367811 0.30868298
		 0.27891397 0.30867815 0.23130552;
createNode polyTweakUV -n "polyTweakUV35";
	rename -uid "0FA18C65-524D-A477-9190-8EA152F41888";
	setAttr ".uopa" yes;
	setAttr -s 185 ".uvtk[0:184]" -type "float2" 0.17967452 0.18367811 0.21344711
		 0.18367811 0.21344711 0.19537447 0.19017555 0.19537447 0.17102616 0.13304687 0.17102616
		 0.13379017 0.16840865 0.13304713 0.17967452 0.088442236 0.21344711 0.088442236 0.30868298
		 0.18367811 0.30868298 0.19537447 0.17814671 0.088442236 0.21344711 0.088442236 0.21344711
		 0.18367811 0.17814671 0.18367811 0.17814671 0.18057449 0.19172795 0.18057449 0.19172795
		 0.13270551 0.17814671 0.13270551 0.17814671 0.13184738 0.2014183 0.13184738 0.2014183
		 0.097990096 0.17814671 0.097990096 0.16677125 0.13379058 0.16840835 0.10372066 0.19017555
		 0.076745898 0.21344711 0.076745898 0.17102556 0.10372069 0.17102541 0.09545064 0.21344711
		 0.049123555 0.21344711 0.22299679 0.30868298 0.18367811 0.30868298 0.22299679 0.17102693
		 0.17525287 0.17102699 0.1779411 0.16677134 0.17525394 0.18279575 0.18367811 0.21344711
		 0.18367811 0.21344711 0.2026913 0.19986583 0.2026913 0.30868298 0.18367811 0.30868298
		 0.2026913 0.21344711 0.088442236 0.18279575 0.088442236 0.19986583 0.069428951 0.21344711
		 0.06942901 0.16582917 0.088442236 0.17982294 0.095451355 0.18217872 0.095451534 0.17982773
		 0.17793857 0.16582917 0.18367811 0.18218429 0.17793794 0.1870424 0.095451891 0.19165118
		 0.088442236 0.21344711 0.088442236 0.21344711 0.18367811 0.19165118 0.18367811 0.18704967
		 0.17793657 0.11821128 0.18367811 0.11821128 0.088442236 0.18761073 0.095451921 0.21116652
		 0.066705436 0.21344711 0.066705436 0.21344711 0.20541485 0.30868298 0.18367811 0.30868298
		 0.20541485 0.21116652 0.20541485 0.18761821 0.17793639 0.11821128 0.18875505 0.16582917
		 0.19886909 0.15550853 0.18875508 0.1172203 0.23129602 0.0229754 0.23129602 0.0229754
		 0.18367811 0.1172203 0.18875508 0.11821128 0.040824324 0.16582917 0.040824324 0.19561793
		 0.095452547 0.18131797 0.088442236 0.17903738 0.088442236 0.18131797 0.085902065
		 0.21344711 0.088442236 0.21344711 0.18367811 0.18131797 0.18367811 0.18131797 0.18621831
		 0.17903738 0.18367811 0.1956283 0.17793415 0.21344401 0.23129858 0.1986296 0.23129781
		 0.1172203 0.27891397 0.0229754 0.27891397 0.1172203 0.2388842 0.21343999 0.04082194
		 0.11821128 -0.006793648 0.16582917 -0.006793648 0.21343754 0.088446975 0.21344711
		 0.050115615 0.21344711 0.22200476 0.30868298 0.18367811 0.30868298 0.22200476 0.29913509
		 0.22200476 0.29913509 0.22144391 0.2652778 0.22144391 0.2652778 0.22200476 0.20344184
		 0.17793204 0.21345656 0.1836638 0.20821427 0.17793067 0.21344711 0.27891397 0.20323171
		 0.27891397 0.20322965 0.23888592 0.11821122 -0.10103861 0.15550853 -0.10103855 0.16582917
		 -0.10103861 0.21344711 -0.006793648 0.20342882 0.095453084 0.19562264 0.13304472
		 0.20343472 0.13304406 0.19561897 0.10372171 0.20343013 0.10372198 0.21344711 0.088442236
		 0.1793377 0.088442236 0.1793377 0.087881476 0.21067877 0.052972764 0.21344711 0.052972764
		 0.21344711 0.18367811 0.1793377 0.18367811 0.21344711 0.21914755 0.21067877 0.21914755
		 0.1793377 0.18423887 0.20819949 0.095453441 0.30868298 0.27891397 0.30867815 0.23130552
		 0.20323171 -0.10103855 0.20323171 -0.10202954 0.21344711 -0.10202954 0.30868298 0.18367811
		 0.30868298 0.21914755 0.19430454 0.088442236 0.21344711 0.088442236 0.21344711 0.18367811
		 0.19430454 0.18367811 0.19430454 0.13184738 0.19707288 0.13184738 0.19707291 0.097990096
		 0.19430454 0.097990096 0.21344711 0.20499967 0.30868298 0.18367811 0.30868298 0.20499967
		 0.21344711 0.067120641 0.21344711 0.27891397 0.16582917 0.27891397 0.16582917 0.23129602
		 0.21344401 0.23129858 0.30868298 0.27891397 0.30005842 0.23130487 0.30006289 0.27716631
		 0.30868274 0.27716637 0.21344711 -0.006793648 0.16582917 -0.006793648 0.16582917
		 -0.10202954 0.21344711 -0.10202954 0.11821128 0.27891397 0.11821128 0.23129602 0.16582917
		 0.18367811 0.16582917 -0.0050457418 0.21344681 -0.0050458014 0.17605688 -0.0050456822
		 0.21345659 0.1836638 0.16582917 0.097062141 0.1760553 0.097062826 0.20884158 0.097064883
		 0.2134393 0.09706521 0.11821128 -0.006793648 0.11821128 -0.10202954 0.0229754 0.27891397
		 0.0229754 0.23129602 0.11821128 0.18367811 0.12164439 0.040824324 0.11821128 0.040824324
		 0.12164439 -0.0050457418 0.11821128 0.088442236 0.12164439 0.088442236 0.12164439
		 0.097062141 0.0229754 0.18367811 0.12164439 0.045422763;
createNode polyTweakUV -n "polyTweakUV36";
	rename -uid "981233A7-544B-687D-B163-E0881B5F2739";
	setAttr ".uopa" yes;
	setAttr -s 140 ".uvtk[0:139]" -type "float2" 0.17967452 0.18367811 0.21344711
		 0.18367811 0.21344711 0.19537447 0.19017555 0.19537447 0.17967452 0.088442236 0.21344711
		 0.088442236 0.30868298 0.18367811 0.30868298 0.19537447 0.19017555 0.076745898 0.21344711
		 0.076745898 0.21344711 0.27891397 0.16582917 0.27891397 0.16582917 0.23129602 0.21344401
		 0.23129858 0.30868298 0.27891397 0.30867815 0.23130552 0.21344711 -0.006793648 0.16582917
		 -0.006793648 0.16582917 -0.10202954 0.21344711 -0.10202954 0.11821128 0.27891397
		 0.11821128 0.23129602 0.16582917 0.18367811 0.21343999 0.04082194 0.16582917 0.040824324
		 0.16582917 0.088442236 0.21343754 0.088446975 0.19561793 0.095452487 0.18761073 0.095451891
		 0.1870424 0.095451832 0.18217872 0.095451534 0.17982294 0.095451325 0.17102541 0.09545064
		 0.17102559 0.10372069 0.16840838 0.10372066 0.16840862 0.13304704 0.17102616 0.13304687
		 0.17102619 0.13379019 0.16677125 0.13379061 0.16677134 0.17525391 0.21345659 0.1836638
		 0.17102693 0.17525287 0.17102702 0.1779411 0.17982773 0.17793854 0.18218429 0.17793797
		 0.18704967 0.17793657 0.18761824 0.17793639 0.1956283 0.17793415 0.19562264 0.13304472
		 0.20343475 0.13304403 0.20344181 0.17793204 0.2082143 0.17793067 0.20819946 0.095453411
		 0.11821128 -0.006793648 0.11821128 -0.10202954 0.0229754 0.27891397 0.0229754 0.23129602
		 0.11821128 0.18367811 0.11821128 0.040824324 0.11821128 0.088442236 0.19561897 0.10372168
		 0.20342885 0.095453054 0.20343016 0.10372198 0.18131797 0.085902065 0.21344711 0.050115615
		 0.21344711 0.088442236 0.18131797 0.088442236 0.17903738 0.088442236 0.21344711 0.088442236
		 0.19165118 0.088442236 0.21116652 0.066705436 0.21344711 0.066705436 0.21344711 0.049123555
		 0.21344711 0.088442236 0.17814671 0.088442236 0.21344711 0.18367811 0.17814671 0.18367811
		 0.17814671 0.18057449 0.19172795 0.18057449 0.19172795 0.13270554 0.17814671 0.13270557
		 0.17814671 0.13184741 0.2014183 0.13184741 0.2014183 0.097990066 0.17814671 0.097990096
		 0.21344711 0.088442236 0.18279575 0.088442236 0.19986583 0.069428951 0.21344711 0.06942901
		 0.21344711 0.18367811 0.18279575 0.18367811 0.21344711 0.2026913 0.19986583 0.2026913
		 0.21344711 0.22299679 0.30868298 0.18367811 0.30868298 0.22299679 0.21344711 0.18367811
		 0.19165118 0.18367811 0.21344711 0.20541485 0.21116652 0.20541485 0.18131797 0.18621831
		 0.17903738 0.18367811 0.18131797 0.18367811 0.21344711 0.18367811 0.21344711 0.22200476
		 0.30868298 0.18367811 0.30868298 0.22200476 0.29913509 0.22200476 0.29913509 0.22144391
		 0.2652778 0.22144391 0.2652778 0.22200476 0.1793377 0.18367811 0.21344711 0.18367811
		 0.21344711 0.21914755 0.21067877 0.21914755 0.1793377 0.18423887 0.19430454 0.088442236
		 0.21344711 0.088442236 0.21344711 0.18367811 0.19430454 0.18367811 0.19430454 0.13184741
		 0.19707288 0.13184741 0.19707291 0.097990096 0.19430454 0.097990096 0.21344711 0.20499967
		 0.30868298 0.18367811 0.30868298 0.20499967 0.0229754 0.18367811 0.21344711 0.088442236
		 0.1793377 0.088442236 0.1793377 0.087881476 0.21067877 0.052972764 0.21344711 0.052972764
		 0.21344711 0.067120641 0.30868298 0.18367811 0.30868298 0.20541485 0.30868298 0.18367811
		 0.30868298 0.2026913 0.30868298 0.18367811 0.30868298 0.21914755;
createNode polyTweakUV -n "polyTweakUV37";
	rename -uid "F9A58B06-2349-B567-47F4-FBA6D45A673D";
	setAttr ".uopa" yes;
	setAttr -s 140 ".uvtk[0:139]" -type "float2" 0.17967452 0.18367811 0.21344711
		 0.18367811 0.21344711 0.19537447 0.19017555 0.19537447 0.17967452 0.088442236 0.21344711
		 0.088442236 0.30868298 0.18367811 0.30868298 0.19537447 0.19017555 0.076745898 0.21344711
		 0.076745898 0.21344711 0.27891397 0.16582917 0.27891397 0.16582917 0.23129602 0.21344401
		 0.23129858 0.30868298 0.27891397 0.30867815 0.23130552 0.21344711 -0.006793648 0.16582917
		 -0.006793648 0.16582917 -0.10202954 0.21344711 -0.10202954 0.11821128 0.27891397
		 0.11821128 0.23129602 0.16582917 0.18367811 0.21343999 0.04082194 0.16582917 0.040824324
		 0.16582917 0.088442236 0.21343754 0.088446975 0.19561793 0.095452487 0.18761073 0.095451891
		 0.1870424 0.095451832 0.18217872 0.095451534 0.17982294 0.095451325 0.17102541 0.09545064
		 0.17102559 0.10372069 0.16840838 0.10372066 0.16840862 0.13304704 0.17102616 0.13304687
		 0.17102619 0.13379019 0.16677125 0.13379061 0.16677134 0.17525391 0.21345659 0.1836638
		 0.17102693 0.17525287 0.17102702 0.1779411 0.17982773 0.17793854 0.18218429 0.17793797
		 0.18704967 0.17793657 0.18761824 0.17793639 0.1956283 0.17793415 0.19562264 0.13304472
		 0.20343475 0.13304403 0.20344181 0.17793204 0.2082143 0.17793067 0.20819946 0.095453411
		 0.11821128 -0.006793648 0.11821128 -0.10202954 0.0229754 0.27891397 0.0229754 0.23129602
		 0.11821128 0.18367811 0.11821128 0.040824324 0.11821128 0.088442236 0.19561897 0.10372168
		 0.20342885 0.095453054 0.20343016 0.10372198 0.18131797 0.085902065 0.21344711 0.050115615
		 0.21344711 0.088442236 0.18131797 0.088442236 0.17903738 0.088442236 0.21344711 0.088442236
		 0.19165118 0.088442236 0.21116652 0.066705436 0.21344711 0.066705436 0.21344711 0.049123555
		 0.21344711 0.088442236 0.17814671 0.088442236 0.21344711 0.18367811 0.17814671 0.18367811
		 0.17814671 0.18057449 0.19172795 0.18057449 0.19172795 0.13270554 0.17814671 0.13270557
		 0.17814671 0.13184741 0.2014183 0.13184741 0.2014183 0.097990066 0.17814671 0.097990096
		 0.21344711 0.088442236 0.18279575 0.088442236 0.19986583 0.069428951 0.21344711 0.06942901
		 0.21344711 0.18367811 0.18279575 0.18367811 0.21344711 0.2026913 0.19986583 0.2026913
		 0.21344711 0.22299679 0.30868298 0.18367811 0.30868298 0.22299679 0.21344711 0.18367811
		 0.19165118 0.18367811 0.21344711 0.20541485 0.21116652 0.20541485 0.18131797 0.18621831
		 0.17903738 0.18367811 0.18131797 0.18367811 0.21344711 0.18367811 0.21344711 0.22200476
		 0.30868298 0.18367811 0.30868298 0.22200476 0.29913509 0.22200476 0.29913509 0.22144391
		 0.2652778 0.22144391 0.2652778 0.22200476 0.1793377 0.18367811 0.21344711 0.18367811
		 0.21344711 0.21914755 0.21067877 0.21914755 0.1793377 0.18423887 0.19430454 0.088442236
		 0.21344711 0.088442236 0.21344711 0.18367811 0.19430454 0.18367811 0.19430454 0.13184741
		 0.19707288 0.13184741 0.19707291 0.097990096 0.19430454 0.097990096 0.21344711 0.20499967
		 0.30868298 0.18367811 0.30868298 0.20499967 0.0229754 0.18367811 0.21344711 0.088442236
		 0.1793377 0.088442236 0.1793377 0.087881476 0.21067877 0.052972764 0.21344711 0.052972764
		 0.21344711 0.067120641 0.30868298 0.18367811 0.30868298 0.20541485 0.30868298 0.18367811
		 0.30868298 0.2026913 0.30868298 0.18367811 0.30868298 0.21914755;
createNode polyTweakUV -n "polyTweakUV38";
	rename -uid "C705F6FD-5B45-C92A-3975-FC8D8DE65F0A";
	setAttr ".uopa" yes;
	setAttr -s 306 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.17967452 0.18367811 0.21344711 0.18367811
		 0.21344711 0.19537447 0.19017555 0.19537447 0.17102616 0.13304687 0.17102616 0.13379017
		 0.16840865 0.13304707 0.17967452 0.088442236 0.21344711 0.088442236 0.30868298 0.18367811
		 0.30868298 0.19537447 0.17814671 0.088442236 0.21344711 0.088442236 0.21344711 0.18367811
		 0.17814671 0.18367811 0.17814671 0.18057449 0.19172795 0.18057449 0.19172795 0.13270551
		 0.17814671 0.13270551 0.17814671 0.13184738 0.2014183 0.13184738 0.2014183 0.097990096
		 0.17814671 0.097990096 0.16677125 0.13379055 0.16840838 0.10372066 0.19017555 0.076745898
		 0.21344711 0.076745898 0.17102556 0.10372069 0.17102541 0.09545064 0.21344711 0.049123496
		 0.21344711 0.22299682 0.30868298 0.18367811 0.30868298 0.22299682 0.17102693 0.17525287
		 0.17102699 0.1779411 0.16677134 0.17525394 0.18279575 0.18367811 0.21344711 0.18367811
		 0.21344711 0.2026913 0.19986586 0.2026913 0.30868298 0.18367811 0.30868298 0.2026913
		 0.21344711 0.088442236 0.18279575 0.088442236 0.19986586 0.06942901 0.21344711 0.06942901
		 0.16582917 0.088442236 0.17982291 0.095451355 0.18217872 0.095451534 0.17982773 0.17793854
		 0.16582917 0.18367811 0.18218429 0.17793794 0.1870424 0.095451891 0.19165118 0.088442236
		 0.21344711 0.088442236 0.21344711 0.18367811 0.19165118 0.18367811 0.18704967 0.17793657
		 0.11821128 0.18367811 0.11821128 0.088442236 0.18761076 0.095451921 0.21116652 0.066705436
		 0.21344711 0.066705436 0.21344711 0.20541485 0.30868298 0.18367811 0.30868298 0.20541485
		 0.21116655 0.20541485 0.18761824 0.17793639 0.16582917 0.23129602 0.11821128 0.23129602
		 0.0229754 0.23129602 0.0229754 0.18367811 0.11821128 0.040824324 0.16582917 0.040824324
		 0.19561793 0.095452547 0.181318 0.088442236 0.17903741 0.088442236 0.18131803 0.085902065
		 0.21344711 0.088442236 0.21344711 0.18367811 0.181318 0.18367811 0.18131803 0.18621828
		 0.17903741 0.18367811 0.1956283 0.17793415 0.21344401 0.23129858 0.16582917 0.27891397
		 0.11821128 0.27891397 0.0229754 0.27891397 0.21343999 0.04082194 0.11821128 -0.006793648
		 0.16582917 -0.006793648 0.21343754 0.088446975 0.21344711 0.050115615 0.21344711
		 0.22200473 0.30868298 0.18367811 0.30868298 0.22200473 0.29913509 0.22200473 0.29913509
		 0.22144391 0.26527786 0.22144391 0.2652778 0.22200473 0.20344184 0.17793204 0.21345656
		 0.1836638 0.20821427 0.17793067 0.21344711 0.27891397 0.11821128 -0.10202954 0.16582917
		 -0.10202954 0.21344711 -0.006793648 0.20342882 0.095453024 0.19562264 0.13304472
		 0.20343475 0.13304403 0.19561897 0.10372171 0.20343013 0.10372195 0.21344711 0.088442236
		 0.17933767 0.088442236 0.17933767 0.087881476 0.21067877 0.052972764 0.21344711 0.052972764
		 0.21344711 0.18367811 0.17933767 0.18367811 0.21344711 0.21914755 0.21067877 0.21914752
		 0.17933767 0.18423884 0.20819949 0.095453441 0.30868298 0.27891397 0.21390073 0.23129858
		 0.21390368 0.27733502 0.30804801 0.27733523 0.30804348 0.23130549 0.30867815 0.23130552
		 0.21344711 -0.10202954 0.30868298 0.18367811 0.30868298 0.21914755 0.19430457 0.088442236
		 0.21344711 0.088442236 0.21344711 0.18367811 0.19430457 0.18367811 0.19430457 0.13184738
		 0.19707291 0.13184738 0.19707291 0.097990066 0.19430457 0.097990096 0.21344711 0.20499967
		 0.30868298 0.18367811 0.30868298 0.20499967 0.21343772 0.089081675 0.21343331 0.089081675
		 0.21345209 0.1832072 0.21345653 0.1832072 0.21344711 0.067120701 0.21343078 0.27891397
		 0.11821128 0.27891397 0.11821128 0.18367811 0.21344711 0.18367811 0.21344711 0.18556528
		 0.21343075 0.18558829 0.21343078 -0.006793648 0.11821128 -0.006793648 0.11821128
		 -0.10202954 0.21343078 -0.10202954 0.0229754 0.27891397 0.0229754 0.18367811 0.11821128
		 0.088442236 0.21344711 0.088442236 0.30868298 0.18367811 0.30868298 0.18556528 0.21343078
		 0.086532027 0.21344711 0.086555034 0.17967458 0.18367811 0.21344711 0.18367811 0.19017561
		 0.19537447 0.17102616 0.13304684 0.17102619 0.13379017 0.16840862 0.13304704 0.17967458
		 0.088442236 0.21344711 0.088442236 0.21344711 0.19537447 0.17814679 0.088442236 0.21344711
		 0.088442236 0.21344711 0.18367811 0.17814679 0.18367811 0.17814679 0.18057449 0.19172795
		 0.18057449 0.19172795 0.13270557 0.17814679 0.13270557 0.17814682 0.13184741 0.2014183
		 0.13184744 0.2014183 0.097990096 0.17814679 0.097990096 0.16677122 0.13379061 0.16840838
		 0.10372064 0.19017561 0.076745838 0.21344711 0.076745898 0.30868298 0.18367811 0.30868298
		 0.19537447 0.17102559 0.10372069 0.17102541 0.09545064 0.21344711 0.049123615 0.21344711
		 0.22299673 0.30868298 0.18367811 0.30868298 0.22299673 0.17102693 0.17525287 0.17102702
		 0.1779411 0.16677134 0.17525394 0.18279578 0.18367811 0.21344711 0.18367811 0.21344711
		 0.2026913 0.19986592 0.2026913 0.30868298 0.18367811 0.30868298 0.2026913 0.21344711
		 0.088442236 0.18279578 0.088442236 0.19986595 0.069428951 0.21344711 0.06942901 0.16582917
		 0.088442236 0.17982291 0.095451325 0.18217872 0.095451534 0.17982773 0.17793854 0.16582917
		 0.18367811 0.18218429 0.17793797 0.18704237 0.095451832 0.19165124 0.088442236 0.21344711
		 0.088442236 0.21344711 0.18367811 0.19165124 0.18367811 0.18704967 0.17793657 0.11821128
		 0.18367811 0.11821128 0.088442236 0.1876107 0.095451921 0.21116658 0.066705436 0.21344711
		 0.066705436 0.21344711 0.20541485 0.30868298 0.18367811 0.30868298 0.20541485 0.21116658
		 0.20541485 0.18761821 0.17793642 0.16582917 0.23129602 0.11821128 0.23129602 0.0229754
		 0.23129602 0.0229754 0.18367811 0.11821128 0.040824324 0.16582917 0.040824324 0.19561793
		 0.095452547 0.18131791 0.088442236 0.17903735 0.088442236 0.18131791 0.085902065
		 0.21344711 0.088442236 0.21344711 0.18367811 0.18131791 0.18367811 0.18131791 0.18621825
		 0.17903735 0.18367811 0.1956283 0.17793415;
	setAttr ".uvtk[250:305]" 0.21344401 0.23129858 0.16582917 0.27891397 0.11821128
		 0.27891397 0.0229754 0.27891397 0.21343999 0.04082194 0.11821128 -0.006793648 0.16582917
		 -0.006793648 0.21343754 0.088446975 0.21344711 0.050115556 0.21344711 0.22200476
		 0.30868298 0.18367811 0.30868298 0.22200476 0.29913509 0.22200473 0.29913509 0.22144391
		 0.2652778 0.22144391 0.2652778 0.22200476 0.20344184 0.17793201 0.21345656 0.1836638
		 0.20821421 0.17793064 0.21344711 0.27891397 0.11821128 -0.10202954 0.16582917 -0.10202954
		 0.21344711 -0.006793648 0.20342882 0.095453024 0.19562264 0.13304475 0.20343475 0.13304406
		 0.19561897 0.10372171 0.20343016 0.10372195 0.21344711 0.088442236 0.17933781 0.088442236
		 0.17933784 0.087881476 0.21067886 0.052972764 0.21344711 0.052972764 0.21344711 0.18367811
		 0.17933781 0.18367811 0.21344711 0.21914755 0.21067886 0.21914755 0.17933781 0.1842389
		 0.20819943 0.095453441 0.30868298 0.27891397 0.30867815 0.23130552 0.21344711 -0.10202954
		 0.30868298 0.18367811 0.30868298 0.21914755 0.19430466 0.088442236 0.21344711 0.088442236
		 0.21344711 0.18367811 0.19430466 0.18367811 0.19430466 0.13184741 0.19707288 0.13184741
		 0.19707291 0.097990096 0.19430466 0.097990096 0.21344714 0.20499955 0.30868298 0.18367811
		 0.30868298 0.20499955 0.21344714 0.067120761;
createNode polyTweakUV -n "polyTweakUV39";
	rename -uid "DB1DD41D-6A46-AE5E-14DA-AF8AB7EB7901";
	setAttr ".uopa" yes;
	setAttr -s 139 ".uvtk[0:138]" -type "float2" 0.21344711 0.27891397 0.16582917
		 0.27891397 0.16582917 0.23129602 0.20623069 0.2335213 0.21328466 0.23135318 0.21344711
		 0.27891397 0.21344711 -0.006793648 0.16582917 -0.006793648 0.16582917 -0.10202954
		 0.21344711 -0.10202954 0.17116587 0.19602989 0.17587347 0.20225357 0.18125753 0.20854725
		 0.18728007 0.21469654 0.19391404 0.22064202 0.20108826 0.22625567 0.16001292 0.18710019
		 0.16711451 0.19004057 0.30868298 0.27891397 0.30868298 0.27891397 0.23162378 0.23300417
		 0.25701702 0.23248704 0.2824102 0.23196982 0.30780339 0.23145266 0.30867815 0.23130552
		 0.21335514 0.03899315 0.16582917 0.040824324 0.17157389 0.1592253 0.17344849 0.15986867
		 0.17344852 0.12341583 0.17157395 0.12318444 0.17157401 0.087143511 0.17157395 0.12318444
		 0.17157401 0.087143511 0.17157407 0.051102608 0.17157404 0.051102608 0.17344864 0.016657624
		 0.17157407 0.015061591 0.17344858 0.05083397 0.20583369 0.044405133 0.17335333 0.041497797
		 0.173328 0.040699095 0.17057858 0.040804952 0.17059271 0.041250676 0.11821128 0.040824324
		 0.11821128 -0.006793648 0.17535301 0.12359983 0.17535301 0.15986894 0.17344855 0.1234158
		 0.17344858 0.05083403 0.19781508 0.048348397 0.17329066 0.042579442 0.17055304 0.041935533
		 0.16143258 0.088709533 0.11821128 0.088442236 0.86436909 0.89925551 -0.11632326 0.81634092
		 0.92197657 0.042622387 0.79072988 0.53869826 -0.0849372 0.54146206 -0.060062766 -0.26482475
		 0.81836808 -0.26758862 0.17535298 0.050619394 0.17725773 0.12371689 0.1772577 0.15986879
		 0.17535295 0.016657505 0.19025148 0.053292662 0.17317276 0.044573456 0.17047839 0.04319784
		 0.11821128 0.18367811 0.16107763 0.11330718 0.16072269 0.13790482 0.16036786 0.16250248
		 0.11821128 0.23129602 0.0229754 0.23129602 0.0229754 0.18367811 0.1772577 0.12371692
		 0.17535301 0.12359983 0.1791624 0.12376443 0.17916243 0.15986882 0.17725767 0.050483614
		 0.1772577 0.016657624 0.18328546 0.059143633 0.17204113 0.047343403 0.1730126 0.04736492
		 0.17034282 0.045561105 0.18684848 0.051103443 0.18684854 0.015062246 0.18487655 0.016657744
		 0.18487655 0.05076918 0.1868483 0.15922718 0.18684839 0.12318596 0.18487655 0.12347215
		 0.18487655 0.15986876 0.18684842 0.087144703 0.17535298 0.050619394 0.1772577 0.050483614
		 0.17916243 0.05042842 0.18106709 0.15986891 0.18106709 0.12374195 0.17916243 0.016657565
		 0.17024626 0.047291249 0.17703424 0.065782934 0.17156602 0.073083431 0.16688572 0.080916673
		 0.18297182 0.016657565 0.18297182 0.050561816 0.18297182 0.15986885 0.18297182 0.12364984
		 0.18106709 0.12374192 0.1791624 0.12376446 0.18106709 0.050454527 0.18106709 0.016657565
		 0.18487655 0.05076918 0.18487658 0.12347218 0.17916243 0.05042842 0.18106712 0.050454527
		 0.18297185 0.050561816 0.18297182 0.12364984 0.16597162 0.27891397 0.16416945 0.27213296
		 0.16364779 0.25600332 0.16286959 0.22599702 0.16193976 0.18367811 0.11821128 0.18367811
		 0.11821128 0.27891397 0.16597162 -0.006793648 0.16597162 -0.10202954 0.11821128 -0.10202954
		 0.11821128 -0.006793648 0.0229754 0.18367811 0.0229754 0.27891397 0.16223277 0.15027596
		 0.16284616 0.088442236 0.11821128 0.088442236 0.16335578 0.062025636 0.16414304 0.026199132
		 0.16463573 0.0072020628 0.16496594 -0.0030096471;
createNode polyTweakUV -n "polyTweakUV40";
	rename -uid "CBB8B9C1-CC4F-E274-7FFE-D3B8EBA851DF";
	setAttr ".uopa" yes;
	setAttr -s 83 ".uvtk[0:82]" -type "float2" 0.21344711 0.27891397 0.11821128
		 0.27891397 0.21344711 0.18367811 0.25893015 0.23343097 0.25893009 0.18367811 0.21344711
		 -0.006793648 0.11821128 -0.006793648 0.11821128 -0.10202954 0.21344711 -0.10202954
		 0.21344711 -0.056546479 0.21284939 -0.056546479 0.21284942 -0.016937941 0.21344711
		 -0.016937882 0.11821128 0.18367811 0.25893015 0.27891397 0.25893015 0.25342751 0.11821128
		 0.088442236 0.21344711 0.088442236 0.21344711 0.098586559 0.21284939 0.098586559
		 0.16823651 0.097712398 0.11898966 0.097712398 0.11898966 0.13006392 0.16823648 0.13006392
		 0.21284939 0.1381951 0.21344711 0.1381951 0.30868298 0.27891397 0.29853868 0.27891397
		 0.29853868 0.25342751 0.29853868 0.1938224 0.30868298 0.18367811 0.0229754 0.27891397
		 0.0229754 0.18367811 0.29853868 0.18367811 0.21344711 0.27891397 0.16582917 0.27891397
		 0.16582917 0.23129602 0.21344401 0.23129858 0.30868298 0.27891397 0.30867815 0.23130552
		 0.21344711 -0.006793648 0.16582917 -0.006793648 0.16582917 -0.10202954 0.21344711
		 -0.10202954 0.11821128 0.27891397 0.11821128 0.27574205 0.11885293 0.27574205 0.11885293
		 0.23129602 0.16582917 0.18367811 0.21343999 0.04082194 0.16582917 0.040824324 0.21345659
		 0.1836638 0.16582917 0.088442236 0.21343754 0.088446975 0.11821128 -0.006793648 0.11821128
		 -0.10202954 0.0229754 0.27891397 0.0229754 0.27574205 0.11885293 0.21773733 0.11885293
		 0.18400244 0.11821128 0.18400244 0.11821128 0.18367811 0.11885293 0.040824324 0.11885293
		 -0.0036217272 0.11821128 -0.0036217272 0.11821128 0.088442236 0.02297534 0.18400244
		 0.0229754 0.18367811 0.11821128 0.088117868 0.11885293 0.088117868 0.11885287 0.081239551
		 0.11821128 0.26281324 0.11821128 0.18367811 0.21344711 0.18367811 0.21344711 0.26281324
		 0.0229754 0.26281324 0.0229754 0.18367811 0.11821128 0.088442236 0.21344711 0.088442236
		 0.30868298 0.18367811 0.30868298 0.26281324 0.21344711 0.00930712 0.11821128 0.00930712;
createNode polyTweakUV -n "polyTweakUV41";
	rename -uid "6DBA93E1-FE46-B1E4-CFDA-6FA7D819C9AF";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" 0.56510592 0.12519662 0.31510597
		 0.19100152 0.24930114 -0.058998521 0.49930114 -0.12480335 0.18349618 -0.30899847
		 0.43349618 -0.37480342 0.11769123 -0.55899853 0.36769122 -0.62480336 0.051886395
		 -0.80899858 0.30188638 -0.87480336 0.06510599 0.2568064 -0.00069887377 0.0068063941
		 0.81510603 0.059391674 0.74930108 -0.19060831;
createNode polyTweakUV -n "polyTweakUV42";
	rename -uid "078C612B-5E4C-8209-C873-87B8B390094C";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk[0:29]" -type "float2" 0.56510592 0.12519662 0.44010597
		 0.15809903 0.4072035 0.033099014 0.53219712 0.00020545907 0.44010597 0.15809903 0.31510597
		 0.19100152 0.2822035 0.06600152 0.4072035 0.033099014 0.53219712 0.00020545907 0.37430114
		 -0.091900975 0.24930114 -0.058998521 0.49931598 -0.12484744 0.30849618 -0.341901
		 0.43347448 -0.37478429 0.18349618 -0.30899847 0.40057337 -0.49980476 0.27559382 -0.46690094
		 0.15059374 -0.43399853 0.24269134 -0.59190089 0.36769122 -0.62480336 0.11769123 -0.55899853
		 0.17688635 -0.841901 0.30188638 -0.87480336 0.051886395 -0.80899858 0.06510599 0.2568064
		 0.03220354 0.13180633 -0.00069887377 0.0068063941 0.81510603 0.059391674 0.56510592
		 0.12519662 0.78219759 -0.06558004;
createNode polyTweakUV -n "polyTweakUV43";
	rename -uid "64EB9CD0-2341-BF78-81E1-67890C2C0E2C";
	setAttr ".uopa" yes;
	setAttr -s 26 ".uvtk[0:25]" -type "float2" 0.18952465 0.20395347 0.04202681
		 0.20395349 0.04202687 0.056455757 0.18951488 0.056463722 -0.10547101 0.20395356 -0.10547101
		 0.056455743 0.04202681 -0.091041982 -0.10547104 -0.091041982 0.18955398 -0.091086105
		 0.04202681 -0.38603735 0.18949482 -0.38602254 -0.10547104 -0.38603729 0.18950239
		 -0.53354245 0.04202681 -0.53353506 -0.10547104 -0.533535 0.04202681 -0.6810329 0.18952465
		 -0.68103284 -0.10547104 -0.6810329 0.042026758 -0.97602803 0.18952465 -0.97602803
		 -0.10547098 -0.97602803 -0.40046629 0.20395349 -0.40046623 0.056455761 -0.40046623
		 -0.091042012 0.48451996 0.20395349 0.48450524 0.056485161;
createNode polyTweakUV -n "polyTweakUV44";
	rename -uid "C40F6BD0-164B-0C24-8342-96A69A770F5F";
	setAttr ".uopa" yes;
	setAttr -s 26 ".uvtk[0:25]" -type "float2" 0.016495943 0.025697887 -0.087285221
		 0.025697887 -0.087285221 -0.078083277 0.016489208 -0.078077652 -0.19106638 0.025697887
		 -0.19106638 -0.078083277 -0.087285221 -0.18186438 -0.19106638 -0.18186438 0.016516566
		 -0.18189552 -0.087285221 -0.38942671 0.016475171 -0.38941637 -0.19106638 -0.38942671
		 0.016480356 -0.49321306 -0.087285221 -0.49320787 -0.19106638 -0.49320787 -0.087285221
		 -0.59698904 0.016495943 -0.59698904 -0.19106638 -0.59698904 -0.087285221 -0.80455136
		 0.016495943 -0.80455136 -0.19106638 -0.80455136 -0.39862871 0.025697887 -0.39862871
		 -0.078083277 -0.39862871 -0.18186438 0.22405821 0.025697887 0.22404785 -0.078062519;
select -ne :time1;
	setAttr ".o" 20;
	setAttr ".unw" 20;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :initialShadingGroup;
	setAttr -s 204 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 187 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId255.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupId87.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId97.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupId98.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupId99.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupId100.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupId101.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupId102.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupId103.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupId104.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupId106.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupId108.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "groupId85.id" "pasted__polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__polySurfaceShape3.iog.og[0].gco"
		;
connectAttr "groupId284.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId285.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "pasted__groupId109.id" "pasted__polySurfaceShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__polySurfaceShape25.iog.og[0].gco"
		;
connectAttr "pasted__groupId108.id" "pasted__polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__polySurfaceShape24.iog.og[0].gco"
		;
connectAttr "groupId147.id" "polySurfaceShape48.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape48.iog.og[0].gco";
connectAttr "groupId148.id" "polySurfaceShape49.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape49.iog.og[0].gco";
connectAttr "groupId149.id" "polySurfaceShape50.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape50.iog.og[0].gco";
connectAttr "groupId150.id" "polySurfaceShape51.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape51.iog.og[0].gco";
connectAttr "groupId151.id" "polySurfaceShape52.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape52.iog.og[0].gco";
connectAttr "groupId152.id" "polySurfaceShape53.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape53.iog.og[0].gco";
connectAttr "groupId153.id" "polySurfaceShape54.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape54.iog.og[0].gco";
connectAttr "groupId154.id" "polySurfaceShape41.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape41.iog.og[0].gco";
connectAttr "groupId155.id" "polySurfaceShape42.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape42.iog.og[0].gco";
connectAttr "groupId156.id" "polySurfaceShape43.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape43.iog.og[0].gco";
connectAttr "groupId157.id" "polySurfaceShape44.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape44.iog.og[0].gco";
connectAttr "groupId158.id" "polySurfaceShape45.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape45.iog.og[0].gco";
connectAttr "groupId159.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupId160.id" "polySurfaceShape47.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape47.iog.og[0].gco";
connectAttr "groupId286.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId287.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId161.id" "pasted__polySurfaceShape53.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__polySurfaceShape53.iog.og[0].gco"
		;
connectAttr "groupId288.id" "pasted__pasted__pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId289.id" "pasted__pasted__pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupId182.id" "polySurface64Shape.ciog.cog[0].cgid";
connectAttr "groupId291.id" "polySurface64Shape.ciog.cog[1].cgid";
connectAttr "groupId290.id" "polySurface64Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface64Shape.iog.og[0].gco";
connectAttr "groupId257.id" "polySurfaceShape79.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape79.iog.og[0].gco";
connectAttr "pasted__groupId106.id" "pasted__polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__polySurfaceShape22.iog.og[0].gco"
		;
connectAttr "groupId258.id" "pasted__polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__polySurfaceShape2.iog.og[0].gco"
		;
connectAttr "groupId261.id" "pasted__polySurface12Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__polySurface12Shape.iog.og[0].gco"
		;
connectAttr "groupId292.id" "polySurface81Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface81Shape.iog.og[0].gco";
connectAttr "groupId293.id" "polySurface81Shape.ciog.cog[0].cgid";
connectAttr "groupId245.id" "pCube20Shape.ciog.cog[0].cgid";
connectAttr "groupId295.id" "pCube20Shape.ciog.cog[1].cgid";
connectAttr "groupId294.id" "pCube20Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube20Shape.iog.og[0].gco";
connectAttr "groupId262.id" "polySurfaceShape81.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape81.iog.og[0].gco";
connectAttr "groupId263.id" "polySurfaceShape84.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape84.iog.og[0].gco";
connectAttr "groupId264.id" "polySurfaceShape85.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape85.iog.og[0].gco";
connectAttr "groupId265.id" "polySurfaceShape86.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape86.iog.og[0].gco";
connectAttr "groupId266.id" "polySurfaceShape87.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape87.iog.og[0].gco";
connectAttr "groupId254.id" "polySurface83Shape.ciog.cog[0].cgid";
connectAttr "groupId297.id" "polySurface83Shape.ciog.cog[1].cgid";
connectAttr "groupId296.id" "polySurface83Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface83Shape.iog.og[0].gco";
connectAttr "pasted__pasted__groupId215.id" "|group40|pasted__group39|pasted__pasted__polySurface64|transform11|pasted__pasted__polySurface64Shape.ciog.cog[0].cgid"
		;
connectAttr "groupId299.id" "|group40|pasted__group39|pasted__pasted__polySurface64|transform11|pasted__pasted__polySurface64Shape.ciog.cog[1].cgid"
		;
connectAttr "groupId298.id" "|group40|pasted__group39|pasted__pasted__polySurface64|transform11|pasted__pasted__polySurface64Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group40|pasted__group39|pasted__pasted__polySurface64|transform11|pasted__pasted__polySurface64Shape.iog.og[0].gco"
		;
connectAttr "groupId280.id" "group18_pasted__group2_pasted__pasted__pCube2Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "group18_pasted__group2_pasted__pasted__pCube2Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__groupId216.id" "|group45|pasted__group39|pasted__pasted__polySurface64|transform9|pasted__pasted__polySurface64Shape.ciog.cog[0].cgid"
		;
connectAttr "groupId301.id" "|group45|pasted__group39|pasted__pasted__polySurface64|transform9|pasted__pasted__polySurface64Shape.ciog.cog[1].cgid"
		;
connectAttr "groupId300.id" "|group45|pasted__group39|pasted__pasted__polySurface64|transform9|pasted__pasted__polySurface64Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group45|pasted__group39|pasted__pasted__polySurface64|transform9|pasted__pasted__polySurface64Shape.iog.og[0].gco"
		;
connectAttr "pasted__groupId183.id" "pasted__polySurface64Shape.ciog.cog[0].cgid"
		;
connectAttr "groupId303.id" "pasted__polySurface64Shape.ciog.cog[1].cgid";
connectAttr "groupId302.id" "pasted__polySurface64Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__polySurface64Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__groupId183.id" "|group48|pasted__group47|pasted__pasted__polySurface64|transform7|pasted__pasted__polySurface64Shape.ciog.cog[0].cgid"
		;
connectAttr "groupId305.id" "|group48|pasted__group47|pasted__pasted__polySurface64|transform7|pasted__pasted__polySurface64Shape.ciog.cog[1].cgid"
		;
connectAttr "groupId304.id" "|group48|pasted__group47|pasted__pasted__polySurface64|transform7|pasted__pasted__polySurface64Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group48|pasted__group47|pasted__pasted__polySurface64|transform7|pasted__pasted__polySurface64Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__groupId109.id" "pasted__pasted__polySurfaceShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "pasted__pasted__polySurfaceShape25.iog.og[0].gco"
		;
connectAttr "pasted__pasted__pasted__groupId215.id" "pasted__pasted__pasted__polySurface64Shape.ciog.cog[0].cgid"
		;
connectAttr "groupId307.id" "pasted__pasted__pasted__polySurface64Shape.ciog.cog[1].cgid"
		;
connectAttr "groupId306.id" "pasted__pasted__pasted__polySurface64Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "pasted__pasted__pasted__polySurface64Shape.iog.og[0].gco"
		;
connectAttr "groupId308.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupId309.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId281.id" "pasted__pasted__pasted__pasted__pCube2Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "pasted__pasted__pasted__pasted__pCube2Shape.iog.og[0].gco"
		;
connectAttr "groupId282.id" "polySurface33Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface33Shape.iog.og[0].gco";
connectAttr "groupId283.id" "pasted__polySurface33Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__polySurface33Shape.iog.og[0].gco"
		;
connectAttr "groupParts2.og" "polySurfaceShape88.i";
connectAttr "groupId311.id" "polySurfaceShape88.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape88.iog.og[0].gco";
connectAttr "groupParts3.og" "polySurfaceShape89.i";
connectAttr "groupId312.id" "polySurfaceShape89.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape89.iog.og[0].gco";
connectAttr "groupParts4.og" "polySurfaceShape90.i";
connectAttr "groupId313.id" "polySurfaceShape90.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape90.iog.og[0].gco";
connectAttr "groupParts5.og" "polySurfaceShape91.i";
connectAttr "groupId314.id" "polySurfaceShape91.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape91.iog.og[0].gco";
connectAttr "groupParts6.og" "polySurfaceShape92.i";
connectAttr "groupId315.id" "polySurfaceShape92.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape92.iog.og[0].gco";
connectAttr "groupParts7.og" "polySurfaceShape93.i";
connectAttr "groupId316.id" "polySurfaceShape93.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape93.iog.og[0].gco";
connectAttr "groupParts8.og" "polySurfaceShape94.i";
connectAttr "groupId317.id" "polySurfaceShape94.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape94.iog.og[0].gco";
connectAttr "groupParts9.og" "polySurfaceShape95.i";
connectAttr "groupId318.id" "polySurfaceShape95.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape95.iog.og[0].gco";
connectAttr "groupParts10.og" "polySurfaceShape96.i";
connectAttr "groupId319.id" "polySurfaceShape96.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape96.iog.og[0].gco";
connectAttr "groupParts11.og" "polySurfaceShape97.i";
connectAttr "groupId320.id" "polySurfaceShape97.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape97.iog.og[0].gco";
connectAttr "groupParts12.og" "polySurfaceShape98.i";
connectAttr "groupId321.id" "polySurfaceShape98.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape98.iog.og[0].gco";
connectAttr "groupParts13.og" "polySurfaceShape99.i";
connectAttr "groupId322.id" "polySurfaceShape99.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape99.iog.og[0].gco";
connectAttr "polyExtrudeFace1.out" "polySurfaceShape100.i";
connectAttr "groupId323.id" "polySurfaceShape100.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape100.iog.og[0].gco";
connectAttr "groupParts15.og" "polySurfaceShape101.i";
connectAttr "groupId324.id" "polySurfaceShape101.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape101.iog.og[0].gco";
connectAttr "groupParts16.og" "polySurfaceShape102.i";
connectAttr "groupId325.id" "polySurfaceShape102.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape102.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurfaceShape103.i";
connectAttr "groupId326.id" "polySurfaceShape103.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape103.iog.og[0].gco";
connectAttr "groupParts18.og" "polySurfaceShape104.i";
connectAttr "groupId327.id" "polySurfaceShape104.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape104.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape105.i";
connectAttr "groupId328.id" "polySurfaceShape105.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape105.iog.og[0].gco";
connectAttr "groupParts20.og" "polySurfaceShape106.i";
connectAttr "groupId329.id" "polySurfaceShape106.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape106.iog.og[0].gco";
connectAttr "groupParts21.og" "polySurfaceShape107.i";
connectAttr "groupId330.id" "polySurfaceShape107.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape107.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape108.i";
connectAttr "groupId331.id" "polySurfaceShape108.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape108.iog.og[0].gco";
connectAttr "groupParts23.og" "polySurfaceShape109.i";
connectAttr "groupId332.id" "polySurfaceShape109.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape109.iog.og[0].gco";
connectAttr "groupParts24.og" "polySurfaceShape110.i";
connectAttr "groupId333.id" "polySurfaceShape110.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape110.iog.og[0].gco";
connectAttr "groupParts25.og" "polySurfaceShape111.i";
connectAttr "groupId334.id" "polySurfaceShape111.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape111.iog.og[0].gco";
connectAttr "groupParts26.og" "polySurfaceShape112.i";
connectAttr "groupId335.id" "polySurfaceShape112.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape112.iog.og[0].gco";
connectAttr "groupParts27.og" "polySurfaceShape113.i";
connectAttr "groupId336.id" "polySurfaceShape113.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape113.iog.og[0].gco";
connectAttr "groupParts28.og" "polySurfaceShape114.i";
connectAttr "groupId337.id" "polySurfaceShape114.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape114.iog.og[0].gco";
connectAttr "groupParts29.og" "polySurfaceShape115.i";
connectAttr "groupId338.id" "polySurfaceShape115.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape115.iog.og[0].gco";
connectAttr "groupParts30.og" "polySurfaceShape116.i";
connectAttr "groupId339.id" "polySurfaceShape116.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape116.iog.og[0].gco";
connectAttr "groupParts31.og" "polySurfaceShape117.i";
connectAttr "groupId340.id" "polySurfaceShape117.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape117.iog.og[0].gco";
connectAttr "groupParts32.og" "polySurfaceShape118.i";
connectAttr "groupId341.id" "polySurfaceShape118.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape118.iog.og[0].gco";
connectAttr "groupParts33.og" "polySurfaceShape119.i";
connectAttr "groupId342.id" "polySurfaceShape119.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape119.iog.og[0].gco";
connectAttr "groupParts34.og" "polySurfaceShape120.i";
connectAttr "groupId343.id" "polySurfaceShape120.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape120.iog.og[0].gco";
connectAttr "groupParts35.og" "polySurfaceShape121.i";
connectAttr "groupId344.id" "polySurfaceShape121.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape121.iog.og[0].gco";
connectAttr "groupParts36.og" "polySurfaceShape122.i";
connectAttr "groupId345.id" "polySurfaceShape122.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape122.iog.og[0].gco";
connectAttr "groupParts37.og" "polySurfaceShape123.i";
connectAttr "groupId346.id" "polySurfaceShape123.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape123.iog.og[0].gco";
connectAttr "groupParts38.og" "polySurfaceShape124.i";
connectAttr "groupId347.id" "polySurfaceShape124.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape124.iog.og[0].gco";
connectAttr "groupParts39.og" "polySurfaceShape125.i";
connectAttr "groupId348.id" "polySurfaceShape125.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape125.iog.og[0].gco";
connectAttr "groupParts40.og" "polySurfaceShape126.i";
connectAttr "groupId349.id" "polySurfaceShape126.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape126.iog.og[0].gco";
connectAttr "groupParts41.og" "polySurfaceShape127.i";
connectAttr "groupId350.id" "polySurfaceShape127.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape127.iog.og[0].gco";
connectAttr "groupParts42.og" "polySurfaceShape128.i";
connectAttr "groupId351.id" "polySurfaceShape128.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape128.iog.og[0].gco";
connectAttr "groupParts43.og" "polySurfaceShape129.i";
connectAttr "groupId352.id" "polySurfaceShape129.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape129.iog.og[0].gco";
connectAttr "groupParts44.og" "polySurfaceShape130.i";
connectAttr "groupId353.id" "polySurfaceShape130.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape130.iog.og[0].gco";
connectAttr "groupParts45.og" "polySurfaceShape131.i";
connectAttr "groupId354.id" "polySurfaceShape131.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape131.iog.og[0].gco";
connectAttr "groupParts46.og" "polySurfaceShape132.i";
connectAttr "groupId355.id" "polySurfaceShape132.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape132.iog.og[0].gco";
connectAttr "groupParts47.og" "polySurfaceShape133.i";
connectAttr "groupId356.id" "polySurfaceShape133.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape133.iog.og[0].gco";
connectAttr "groupParts48.og" "polySurfaceShape134.i";
connectAttr "groupId357.id" "polySurfaceShape134.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape134.iog.og[0].gco";
connectAttr "groupParts49.og" "polySurfaceShape135.i";
connectAttr "groupId358.id" "polySurfaceShape135.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape135.iog.og[0].gco";
connectAttr "groupParts50.og" "polySurfaceShape136.i";
connectAttr "groupId359.id" "polySurfaceShape136.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape136.iog.og[0].gco";
connectAttr "groupParts51.og" "polySurfaceShape137.i";
connectAttr "groupId360.id" "polySurfaceShape137.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape137.iog.og[0].gco";
connectAttr "groupParts52.og" "polySurfaceShape138.i";
connectAttr "groupId361.id" "polySurfaceShape138.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape138.iog.og[0].gco";
connectAttr "groupParts53.og" "polySurfaceShape139.i";
connectAttr "groupId362.id" "polySurfaceShape139.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape139.iog.og[0].gco";
connectAttr "groupParts54.og" "polySurfaceShape140.i";
connectAttr "groupId363.id" "polySurfaceShape140.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape140.iog.og[0].gco";
connectAttr "groupParts55.og" "polySurfaceShape141.i";
connectAttr "groupId364.id" "polySurfaceShape141.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape141.iog.og[0].gco";
connectAttr "groupParts56.og" "polySurfaceShape142.i";
connectAttr "groupId365.id" "polySurfaceShape142.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape142.iog.og[0].gco";
connectAttr "groupParts57.og" "polySurfaceShape143.i";
connectAttr "groupId366.id" "polySurfaceShape143.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape143.iog.og[0].gco";
connectAttr "groupParts58.og" "polySurfaceShape144.i";
connectAttr "groupId367.id" "polySurfaceShape144.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape144.iog.og[0].gco";
connectAttr "groupParts59.og" "polySurfaceShape145.i";
connectAttr "groupId368.id" "polySurfaceShape145.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape145.iog.og[0].gco";
connectAttr "groupParts60.og" "polySurfaceShape146.i";
connectAttr "groupId369.id" "polySurfaceShape146.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape146.iog.og[0].gco";
connectAttr "groupParts61.og" "polySurfaceShape147.i";
connectAttr "groupId370.id" "polySurfaceShape147.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape147.iog.og[0].gco";
connectAttr "groupParts62.og" "polySurfaceShape148.i";
connectAttr "groupId371.id" "polySurfaceShape148.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape148.iog.og[0].gco";
connectAttr "groupParts63.og" "polySurfaceShape149.i";
connectAttr "groupId372.id" "polySurfaceShape149.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape149.iog.og[0].gco";
connectAttr "groupParts64.og" "polySurfaceShape150.i";
connectAttr "groupId373.id" "polySurfaceShape150.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape150.iog.og[0].gco";
connectAttr "groupParts65.og" "polySurfaceShape151.i";
connectAttr "groupId374.id" "polySurfaceShape151.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape151.iog.og[0].gco";
connectAttr "groupParts66.og" "polySurfaceShape152.i";
connectAttr "groupId375.id" "polySurfaceShape152.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape152.iog.og[0].gco";
connectAttr "groupParts67.og" "polySurfaceShape153.i";
connectAttr "groupId376.id" "polySurfaceShape153.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape153.iog.og[0].gco";
connectAttr "groupParts68.og" "polySurfaceShape154.i";
connectAttr "groupId377.id" "polySurfaceShape154.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape154.iog.og[0].gco";
connectAttr "groupParts69.og" "polySurfaceShape155.i";
connectAttr "groupId378.id" "polySurfaceShape155.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape155.iog.og[0].gco";
connectAttr "groupParts70.og" "polySurfaceShape156.i";
connectAttr "groupId379.id" "polySurfaceShape156.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape156.iog.og[0].gco";
connectAttr "groupParts71.og" "polySurfaceShape157.i";
connectAttr "groupId380.id" "polySurfaceShape157.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape157.iog.og[0].gco";
connectAttr "groupParts72.og" "polySurfaceShape158.i";
connectAttr "groupId381.id" "polySurfaceShape158.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape158.iog.og[0].gco";
connectAttr "groupParts73.og" "polySurfaceShape159.i";
connectAttr "groupId382.id" "polySurfaceShape159.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape159.iog.og[0].gco";
connectAttr "groupParts74.og" "polySurfaceShape160.i";
connectAttr "groupId383.id" "polySurfaceShape160.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape160.iog.og[0].gco";
connectAttr "groupParts75.og" "polySurfaceShape161.i";
connectAttr "groupId384.id" "polySurfaceShape161.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape161.iog.og[0].gco";
connectAttr "groupParts1.og" "polySurface2Shape.i";
connectAttr "groupId310.id" "polySurface2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface2Shape.iog.og[0].gco";
connectAttr "groupParts76.og" "polySurface138Shape.i";
connectAttr "groupId385.id" "polySurface138Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface138Shape.iog.og[0].gco";
connectAttr "groupId386.id" "pCubeShape5.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape5.iog.og[1].gco";
connectAttr "groupParts77.og" "pCubeShape5.i";
connectAttr "groupId387.id" "pCubeShape5.ciog.cog[1].cgid";
connectAttr "groupParts78.og" "pasted__pCubeShape23.i";
connectAttr "groupId388.id" "pasted__pCubeShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__pCubeShape23.iog.og[0].gco";
connectAttr "groupId389.id" "pasted__pCubeShape23.ciog.cog[0].cgid";
connectAttr "groupParts79.og" "polySurface89Shape.i";
connectAttr "groupId391.id" "polySurface89Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface89Shape.iog.og[0].gco";
connectAttr "groupId390.id" "polySurface89Shape.ciog.cog[0].cgid";
connectAttr "groupId392.id" "polySurface89Shape.ciog.cog[1].cgid";
connectAttr "groupParts167.og" "polySurfaceShape162.i";
connectAttr "groupId499.id" "polySurfaceShape162.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape162.iog.og[1].gco";
connectAttr "groupId500.id" "polySurfaceShape162.ciog.cog[0].cgid";
connectAttr "groupParts172.og" "polySurfaceShape163.i";
connectAttr "groupId512.id" "polySurfaceShape163.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape163.iog.og[0].gco";
connectAttr "groupId513.id" "polySurfaceShape163.ciog.cog[0].cgid";
connectAttr "groupParts173.og" "polySurfaceShape164.i";
connectAttr "groupId514.id" "polySurfaceShape164.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape164.iog.og[0].gco";
connectAttr "groupId515.id" "polySurfaceShape164.ciog.cog[0].cgid";
connectAttr "groupParts174.og" "polySurfaceShape165.i";
connectAttr "groupId516.id" "polySurfaceShape165.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape165.iog.og[0].gco";
connectAttr "groupId517.id" "polySurfaceShape165.ciog.cog[0].cgid";
connectAttr "groupParts175.og" "polySurfaceShape166.i";
connectAttr "groupId518.id" "polySurfaceShape166.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape166.iog.og[0].gco";
connectAttr "groupId519.id" "polySurfaceShape166.ciog.cog[0].cgid";
connectAttr "groupParts176.og" "polySurfaceShape167.i";
connectAttr "groupId520.id" "polySurfaceShape167.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape167.iog.og[0].gco";
connectAttr "groupId521.id" "polySurfaceShape167.ciog.cog[0].cgid";
connectAttr "groupParts177.og" "polySurfaceShape168.i";
connectAttr "groupId522.id" "polySurfaceShape168.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape168.iog.og[0].gco";
connectAttr "groupId523.id" "polySurfaceShape168.ciog.cog[0].cgid";
connectAttr "groupParts178.og" "polySurfaceShape169.i";
connectAttr "groupId524.id" "polySurfaceShape169.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape169.iog.og[0].gco";
connectAttr "groupId525.id" "polySurfaceShape169.ciog.cog[0].cgid";
connectAttr "groupParts179.og" "polySurfaceShape170.i";
connectAttr "groupId526.id" "polySurfaceShape170.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape170.iog.og[0].gco";
connectAttr "groupId527.id" "polySurfaceShape170.ciog.cog[0].cgid";
connectAttr "groupParts180.og" "polySurfaceShape171.i";
connectAttr "groupId528.id" "polySurfaceShape171.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape171.iog.og[0].gco";
connectAttr "groupId529.id" "polySurfaceShape171.ciog.cog[0].cgid";
connectAttr "groupParts181.og" "polySurfaceShape172.i";
connectAttr "groupId530.id" "polySurfaceShape172.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape172.iog.og[0].gco";
connectAttr "groupId531.id" "polySurfaceShape172.ciog.cog[0].cgid";
connectAttr "groupParts182.og" "polySurfaceShape173.i";
connectAttr "groupId532.id" "polySurfaceShape173.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape173.iog.og[0].gco";
connectAttr "groupId533.id" "polySurfaceShape173.ciog.cog[0].cgid";
connectAttr "groupParts183.og" "polySurfaceShape174.i";
connectAttr "groupId534.id" "polySurfaceShape174.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape174.iog.og[0].gco";
connectAttr "groupId535.id" "polySurfaceShape174.ciog.cog[0].cgid";
connectAttr "groupParts184.og" "polySurfaceShape175.i";
connectAttr "groupId536.id" "polySurfaceShape175.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape175.iog.og[0].gco";
connectAttr "groupId537.id" "polySurfaceShape175.ciog.cog[0].cgid";
connectAttr "groupParts185.og" "polySurfaceShape176.i";
connectAttr "groupId538.id" "polySurfaceShape176.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape176.iog.og[0].gco";
connectAttr "groupId539.id" "polySurfaceShape176.ciog.cog[0].cgid";
connectAttr "groupParts186.og" "polySurfaceShape177.i";
connectAttr "groupId540.id" "polySurfaceShape177.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape177.iog.og[0].gco";
connectAttr "groupId541.id" "polySurfaceShape177.ciog.cog[0].cgid";
connectAttr "groupParts187.og" "polySurfaceShape178.i";
connectAttr "groupId542.id" "polySurfaceShape178.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape178.iog.og[0].gco";
connectAttr "groupId543.id" "polySurfaceShape178.ciog.cog[0].cgid";
connectAttr "groupParts188.og" "polySurfaceShape179.i";
connectAttr "groupId544.id" "polySurfaceShape179.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape179.iog.og[0].gco";
connectAttr "groupId545.id" "polySurfaceShape179.ciog.cog[0].cgid";
connectAttr "groupParts189.og" "polySurfaceShape180.i";
connectAttr "groupId546.id" "polySurfaceShape180.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape180.iog.og[0].gco";
connectAttr "groupId547.id" "polySurfaceShape180.ciog.cog[0].cgid";
connectAttr "groupParts190.og" "polySurfaceShape181.i";
connectAttr "groupId548.id" "polySurfaceShape181.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape181.iog.og[0].gco";
connectAttr "groupId549.id" "polySurfaceShape181.ciog.cog[0].cgid";
connectAttr "groupParts191.og" "polySurfaceShape182.i";
connectAttr "groupId550.id" "polySurfaceShape182.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape182.iog.og[0].gco";
connectAttr "groupId551.id" "polySurfaceShape182.ciog.cog[0].cgid";
connectAttr "groupParts192.og" "polySurfaceShape183.i";
connectAttr "groupId552.id" "polySurfaceShape183.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape183.iog.og[0].gco";
connectAttr "groupId553.id" "polySurfaceShape183.ciog.cog[0].cgid";
connectAttr "groupParts193.og" "polySurfaceShape184.i";
connectAttr "groupId554.id" "polySurfaceShape184.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape184.iog.og[0].gco";
connectAttr "groupId555.id" "polySurfaceShape184.ciog.cog[0].cgid";
connectAttr "groupParts194.og" "polySurfaceShape185.i";
connectAttr "groupId556.id" "polySurfaceShape185.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape185.iog.og[0].gco";
connectAttr "groupId557.id" "polySurfaceShape185.ciog.cog[0].cgid";
connectAttr "groupParts195.og" "polySurfaceShape186.i";
connectAttr "groupId558.id" "polySurfaceShape186.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape186.iog.og[0].gco";
connectAttr "groupId559.id" "polySurfaceShape186.ciog.cog[0].cgid";
connectAttr "groupParts196.og" "polySurfaceShape187.i";
connectAttr "groupId560.id" "polySurfaceShape187.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape187.iog.og[0].gco";
connectAttr "groupId561.id" "polySurfaceShape187.ciog.cog[0].cgid";
connectAttr "groupParts197.og" "polySurfaceShape188.i";
connectAttr "groupId562.id" "polySurfaceShape188.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape188.iog.og[0].gco";
connectAttr "groupId563.id" "polySurfaceShape188.ciog.cog[0].cgid";
connectAttr "groupParts198.og" "polySurfaceShape189.i";
connectAttr "groupId564.id" "polySurfaceShape189.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape189.iog.og[0].gco";
connectAttr "groupId565.id" "polySurfaceShape189.ciog.cog[0].cgid";
connectAttr "groupParts199.og" "polySurfaceShape190.i";
connectAttr "groupId566.id" "polySurfaceShape190.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape190.iog.og[0].gco";
connectAttr "groupId567.id" "polySurfaceShape190.ciog.cog[0].cgid";
connectAttr "groupParts200.og" "polySurfaceShape191.i";
connectAttr "groupId568.id" "polySurfaceShape191.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape191.iog.og[0].gco";
connectAttr "groupId569.id" "polySurfaceShape191.ciog.cog[0].cgid";
connectAttr "groupParts201.og" "polySurfaceShape192.i";
connectAttr "groupId570.id" "polySurfaceShape192.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape192.iog.og[0].gco";
connectAttr "groupId571.id" "polySurfaceShape192.ciog.cog[0].cgid";
connectAttr "groupParts202.og" "polySurfaceShape193.i";
connectAttr "groupId572.id" "polySurfaceShape193.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape193.iog.og[0].gco";
connectAttr "groupId573.id" "polySurfaceShape193.ciog.cog[0].cgid";
connectAttr "groupParts203.og" "polySurfaceShape194.i";
connectAttr "groupId574.id" "polySurfaceShape194.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape194.iog.og[0].gco";
connectAttr "groupId575.id" "polySurfaceShape194.ciog.cog[0].cgid";
connectAttr "groupParts204.og" "polySurfaceShape195.i";
connectAttr "groupId576.id" "polySurfaceShape195.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape195.iog.og[0].gco";
connectAttr "groupId577.id" "polySurfaceShape195.ciog.cog[0].cgid";
connectAttr "groupParts115.og" "polySurfaceShape196.i";
connectAttr "groupId428.id" "polySurfaceShape196.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape196.iog.og[0].gco";
connectAttr "groupParts163.og" "polySurfaceShape197.i";
connectAttr "groupId489.id" "polySurfaceShape197.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape197.iog.og[1].gco";
connectAttr "polyTweakUV3.uvtk[0]" "polySurfaceShape197.uvst[0].uvtw";
connectAttr "groupId490.id" "polySurfaceShape197.ciog.cog[0].cgid";
connectAttr "groupParts117.og" "polySurfaceShape198.i";
connectAttr "groupId430.id" "polySurfaceShape198.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape198.iog.og[0].gco";
connectAttr "groupParts169.og" "polySurfaceShape199.i";
connectAttr "groupId504.id" "polySurfaceShape199.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape199.iog.og[1].gco";
connectAttr "polyTweakUV2.uvtk[0]" "polySurfaceShape199.uvst[0].uvtw";
connectAttr "groupId505.id" "polySurfaceShape199.ciog.cog[0].cgid";
connectAttr "groupParts205.og" "polySurfaceShape200.i";
connectAttr "groupId578.id" "polySurfaceShape200.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape200.iog.og[0].gco";
connectAttr "groupId579.id" "polySurfaceShape200.ciog.cog[0].cgid";
connectAttr "groupParts206.og" "polySurfaceShape201.i";
connectAttr "groupId580.id" "polySurfaceShape201.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape201.iog.og[0].gco";
connectAttr "groupId581.id" "polySurfaceShape201.ciog.cog[0].cgid";
connectAttr "groupParts207.og" "polySurfaceShape202.i";
connectAttr "groupId582.id" "polySurfaceShape202.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape202.iog.og[0].gco";
connectAttr "groupId583.id" "polySurfaceShape202.ciog.cog[0].cgid";
connectAttr "groupParts208.og" "polySurfaceShape203.i";
connectAttr "groupId584.id" "polySurfaceShape203.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape203.iog.og[0].gco";
connectAttr "groupId585.id" "polySurfaceShape203.ciog.cog[0].cgid";
connectAttr "groupParts209.og" "polySurfaceShape204.i";
connectAttr "groupId586.id" "polySurfaceShape204.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape204.iog.og[0].gco";
connectAttr "groupId587.id" "polySurfaceShape204.ciog.cog[0].cgid";
connectAttr "groupParts210.og" "polySurfaceShape205.i";
connectAttr "groupId588.id" "polySurfaceShape205.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape205.iog.og[0].gco";
connectAttr "groupId589.id" "polySurfaceShape205.ciog.cog[0].cgid";
connectAttr "groupParts211.og" "polySurfaceShape206.i";
connectAttr "groupId590.id" "polySurfaceShape206.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape206.iog.og[0].gco";
connectAttr "groupId591.id" "polySurfaceShape206.ciog.cog[0].cgid";
connectAttr "groupParts126.og" "polySurfaceShape207.i";
connectAttr "groupId439.id" "polySurfaceShape207.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape207.iog.og[0].gco";
connectAttr "groupParts212.og" "polySurfaceShape208.i";
connectAttr "groupId592.id" "polySurfaceShape208.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape208.iog.og[0].gco";
connectAttr "groupId593.id" "polySurfaceShape208.ciog.cog[0].cgid";
connectAttr "groupParts213.og" "polySurfaceShape209.i";
connectAttr "groupId594.id" "polySurfaceShape209.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape209.iog.og[0].gco";
connectAttr "groupId595.id" "polySurfaceShape209.ciog.cog[0].cgid";
connectAttr "groupParts214.og" "polySurfaceShape210.i";
connectAttr "groupId596.id" "polySurfaceShape210.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape210.iog.og[0].gco";
connectAttr "groupId597.id" "polySurfaceShape210.ciog.cog[0].cgid";
connectAttr "groupParts215.og" "polySurfaceShape211.i";
connectAttr "groupId598.id" "polySurfaceShape211.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape211.iog.og[0].gco";
connectAttr "groupId599.id" "polySurfaceShape211.ciog.cog[0].cgid";
connectAttr "groupParts216.og" "polySurfaceShape212.i";
connectAttr "groupId600.id" "polySurfaceShape212.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape212.iog.og[0].gco";
connectAttr "groupId601.id" "polySurfaceShape212.ciog.cog[0].cgid";
connectAttr "groupParts217.og" "polySurfaceShape213.i";
connectAttr "groupId602.id" "polySurfaceShape213.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape213.iog.og[0].gco";
connectAttr "groupId603.id" "polySurfaceShape213.ciog.cog[0].cgid";
connectAttr "groupParts218.og" "polySurfaceShape214.i";
connectAttr "groupId604.id" "polySurfaceShape214.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape214.iog.og[0].gco";
connectAttr "groupId605.id" "polySurfaceShape214.ciog.cog[0].cgid";
connectAttr "groupParts219.og" "polySurfaceShape215.i";
connectAttr "groupId606.id" "polySurfaceShape215.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape215.iog.og[0].gco";
connectAttr "groupId607.id" "polySurfaceShape215.ciog.cog[0].cgid";
connectAttr "groupParts220.og" "polySurfaceShape216.i";
connectAttr "groupId608.id" "polySurfaceShape216.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape216.iog.og[0].gco";
connectAttr "groupId609.id" "polySurfaceShape216.ciog.cog[0].cgid";
connectAttr "groupParts221.og" "polySurfaceShape217.i";
connectAttr "groupId610.id" "polySurfaceShape217.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape217.iog.og[0].gco";
connectAttr "groupId611.id" "polySurfaceShape217.ciog.cog[0].cgid";
connectAttr "groupParts222.og" "polySurfaceShape218.i";
connectAttr "groupId612.id" "polySurfaceShape218.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape218.iog.og[0].gco";
connectAttr "groupId613.id" "polySurfaceShape218.ciog.cog[0].cgid";
connectAttr "groupParts223.og" "polySurfaceShape219.i";
connectAttr "groupId614.id" "polySurfaceShape219.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape219.iog.og[0].gco";
connectAttr "groupId615.id" "polySurfaceShape219.ciog.cog[0].cgid";
connectAttr "groupParts224.og" "polySurfaceShape220.i";
connectAttr "groupId616.id" "polySurfaceShape220.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape220.iog.og[0].gco";
connectAttr "groupId617.id" "polySurfaceShape220.ciog.cog[0].cgid";
connectAttr "groupParts225.og" "polySurfaceShape221.i";
connectAttr "groupId618.id" "polySurfaceShape221.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape221.iog.og[0].gco";
connectAttr "groupId619.id" "polySurfaceShape221.ciog.cog[0].cgid";
connectAttr "groupParts226.og" "polySurfaceShape222.i";
connectAttr "groupId620.id" "polySurfaceShape222.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape222.iog.og[0].gco";
connectAttr "groupId621.id" "polySurfaceShape222.ciog.cog[0].cgid";
connectAttr "groupParts227.og" "polySurfaceShape223.i";
connectAttr "groupId622.id" "polySurfaceShape223.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape223.iog.og[0].gco";
connectAttr "groupId623.id" "polySurfaceShape223.ciog.cog[0].cgid";
connectAttr "groupParts228.og" "polySurfaceShape224.i";
connectAttr "groupId624.id" "polySurfaceShape224.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape224.iog.og[0].gco";
connectAttr "groupId625.id" "polySurfaceShape224.ciog.cog[0].cgid";
connectAttr "groupParts229.og" "polySurfaceShape225.i";
connectAttr "groupId626.id" "polySurfaceShape225.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape225.iog.og[0].gco";
connectAttr "groupId627.id" "polySurfaceShape225.ciog.cog[0].cgid";
connectAttr "groupParts230.og" "polySurfaceShape226.i";
connectAttr "groupId628.id" "polySurfaceShape226.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape226.iog.og[0].gco";
connectAttr "groupId629.id" "polySurfaceShape226.ciog.cog[0].cgid";
connectAttr "groupParts231.og" "polySurfaceShape227.i";
connectAttr "groupId630.id" "polySurfaceShape227.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape227.iog.og[0].gco";
connectAttr "groupId631.id" "polySurfaceShape227.ciog.cog[0].cgid";
connectAttr "groupParts232.og" "polySurfaceShape228.i";
connectAttr "groupId632.id" "polySurfaceShape228.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape228.iog.og[0].gco";
connectAttr "groupId633.id" "polySurfaceShape228.ciog.cog[0].cgid";
connectAttr "groupParts233.og" "polySurfaceShape229.i";
connectAttr "groupId634.id" "polySurfaceShape229.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape229.iog.og[0].gco";
connectAttr "groupId635.id" "polySurfaceShape229.ciog.cog[0].cgid";
connectAttr "groupParts234.og" "polySurfaceShape230.i";
connectAttr "groupId636.id" "polySurfaceShape230.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape230.iog.og[0].gco";
connectAttr "groupId637.id" "polySurfaceShape230.ciog.cog[0].cgid";
connectAttr "groupParts235.og" "polySurfaceShape231.i";
connectAttr "groupId638.id" "polySurfaceShape231.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape231.iog.og[0].gco";
connectAttr "groupId639.id" "polySurfaceShape231.ciog.cog[0].cgid";
connectAttr "groupParts151.og" "polySurfaceShape232.i";
connectAttr "groupId464.id" "polySurfaceShape232.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape232.iog.og[0].gco";
connectAttr "groupParts152.og" "polySurfaceShape233.i";
connectAttr "groupId465.id" "polySurfaceShape233.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape233.iog.og[0].gco";
connectAttr "groupParts153.og" "polySurfaceShape234.i";
connectAttr "groupId466.id" "polySurfaceShape234.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape234.iog.og[0].gco";
connectAttr "polyTweakUV1.out" "polySurfaceShape235.i";
connectAttr "groupId467.id" "polySurfaceShape235.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape235.iog.og[0].gco";
connectAttr "polyTweakUV1.uvtk[0]" "polySurfaceShape235.uvst[0].uvtw";
connectAttr "groupParts80.og" "polySurface90Shape.i";
connectAttr "groupId393.id" "polySurface90Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface90Shape.iog.og[0].gco";
connectAttr "polyTweakUV4.out" "|polySurface233|transform144|polySurface233Shape.i"
		;
connectAttr "groupId468.id" "|polySurface233|transform144|polySurface233Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface233|transform144|polySurface233Shape.iog.og[0].gco"
		;
connectAttr "polyTweakUV4.uvtk[0]" "|polySurface233|transform144|polySurface233Shape.uvst[0].uvtw"
		;
connectAttr "groupId469.id" "pCubeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupParts156.og" "pCubeShape6.i";
connectAttr "groupId470.id" "pCubeShape6.ciog.cog[0].cgid";
connectAttr "groupParts159.og" "|polySurface236|transform148|polySurface236Shape.i"
		;
connectAttr "groupId478.id" "|polySurface236|transform148|polySurface236Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface236|transform148|polySurface236Shape.iog.og[0].gco"
		;
connectAttr "groupId471.id" "|polySurface236|transform148|polySurface236Shape.ciog.cog[0].cgid"
		;
connectAttr "groupId479.id" "|polySurface236|transform148|polySurface236Shape.ciog.cog[1].cgid"
		;
connectAttr "groupId472.id" "pCubeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupParts157.og" "pCubeShape7.i";
connectAttr "groupId473.id" "pCubeShape7.ciog.cog[0].cgid";
connectAttr "groupParts165.og" "|polySurface237|transform156|polySurface233Shape.i"
		;
connectAttr "groupId495.id" "|polySurface237|transform156|polySurface233Shape.ciog.cog[1].cgid"
		;
connectAttr "groupId494.id" "|polySurface237|transform156|polySurface233Shape.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|polySurface237|transform156|polySurface233Shape.iog.og[0].gco"
		;
connectAttr "groupParts158.og" "|group53|pasted__pCube25|transform145|pasted__pCubeShape25.i"
		;
connectAttr "groupId475.id" "|group53|pasted__pCube25|transform145|pasted__pCubeShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group53|pasted__pCube25|transform145|pasted__pCubeShape25.iog.og[0].gco"
		;
connectAttr "groupId476.id" "|group53|pasted__pCube25|transform145|pasted__pCubeShape25.ciog.cog[0].cgid"
		;
connectAttr "groupParts236.og" "polySurface199Shape.i";
connectAttr "groupId640.id" "polySurface199Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface199Shape.iog.og[0].gco";
connectAttr "groupId641.id" "polySurface199Shape.ciog.cog[0].cgid";
connectAttr "groupParts160.og" "|group54|pasted__pCube25|transform147|pasted__pCubeShape25.i"
		;
connectAttr "groupId480.id" "|group54|pasted__pCube25|transform147|pasted__pCubeShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group54|pasted__pCube25|transform147|pasted__pCubeShape25.iog.og[0].gco"
		;
connectAttr "groupId481.id" "|group54|pasted__pCube25|transform147|pasted__pCubeShape25.ciog.cog[0].cgid"
		;
connectAttr "groupParts237.og" "|polySurface238|transform169|polySurface236Shape.i"
		;
connectAttr "polyTweakUV11.uvtk[0]" "|polySurface238|transform169|polySurface236Shape.uvst[0].uvtw"
		;
connectAttr "groupId642.id" "|polySurface238|transform169|polySurface236Shape.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|polySurface238|transform169|polySurface236Shape.iog.og[0].gco"
		;
connectAttr "groupId643.id" "|polySurface238|transform169|polySurface236Shape.ciog.cog[0].cgid"
		;
connectAttr "groupParts161.og" "|group55|pasted__pCube25|transform149|pasted__pCubeShape25.i"
		;
connectAttr "groupId483.id" "|group55|pasted__pCube25|transform149|pasted__pCubeShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group55|pasted__pCube25|transform149|pasted__pCubeShape25.iog.og[0].gco"
		;
connectAttr "groupId484.id" "|group55|pasted__pCube25|transform149|pasted__pCubeShape25.ciog.cog[0].cgid"
		;
connectAttr "groupParts238.og" "polySurface208Shape.i";
connectAttr "groupId644.id" "polySurface208Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface208Shape.iog.og[0].gco";
connectAttr "groupId645.id" "polySurface208Shape.ciog.cog[0].cgid";
connectAttr "groupParts162.og" "|group56|pasted__pCube25|transform151|pasted__pCubeShape25.i"
		;
connectAttr "groupId486.id" "|group56|pasted__pCube25|transform151|pasted__pCubeShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group56|pasted__pCube25|transform151|pasted__pCubeShape25.iog.og[0].gco"
		;
connectAttr "groupId487.id" "|group56|pasted__pCube25|transform151|pasted__pCubeShape25.ciog.cog[0].cgid"
		;
connectAttr "groupParts239.og" "polySurface197Shape.i";
connectAttr "groupId646.id" "polySurface197Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface197Shape.iog.og[0].gco";
connectAttr "groupId647.id" "polySurface197Shape.ciog.cog[0].cgid";
connectAttr "groupParts164.og" "|group57|pasted__pCube25|transform153|pasted__pCubeShape25.i"
		;
connectAttr "groupId491.id" "|group57|pasted__pCube25|transform153|pasted__pCubeShape25.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|group57|pasted__pCube25|transform153|pasted__pCubeShape25.iog.og[0].gco"
		;
connectAttr "groupId492.id" "|group57|pasted__pCube25|transform153|pasted__pCubeShape25.ciog.cog[0].cgid"
		;
connectAttr "groupParts240.og" "polySurface198Shape.i";
connectAttr "groupId493.id" "polySurface198Shape.ciog.cog[0].cgid";
connectAttr "groupId649.id" "polySurface198Shape.ciog.cog[1].cgid";
connectAttr "groupId648.id" "polySurface198Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface198Shape.iog.og[0].gco";
connectAttr "groupParts166.og" "|group58|pasted__pCube25|transform155|pasted__pCubeShape25.i"
		;
connectAttr "groupId496.id" "|group58|pasted__pCube25|transform155|pasted__pCubeShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group58|pasted__pCube25|transform155|pasted__pCubeShape25.iog.og[0].gco"
		;
connectAttr "groupId497.id" "|group58|pasted__pCube25|transform155|pasted__pCubeShape25.ciog.cog[0].cgid"
		;
connectAttr "polyCBoolOp9.out" "polySurface239Shape.i";
connectAttr "groupId496.id" "polySurface239Shape.iog.og[0].gid";
connectAttr "groupId494.id" "polySurface239Shape.iog.og[1].gid";
connectAttr "groupId498.id" "polySurface239Shape.ciog.cog[0].cgid";
connectAttr "groupParts168.og" "|group59|pasted__pCube25|transform157|pasted__pCubeShape25.i"
		;
connectAttr "groupId501.id" "|group59|pasted__pCube25|transform157|pasted__pCubeShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group59|pasted__pCube25|transform157|pasted__pCubeShape25.iog.og[0].gco"
		;
connectAttr "groupId502.id" "|group59|pasted__pCube25|transform157|pasted__pCubeShape25.ciog.cog[0].cgid"
		;
connectAttr "polyCBoolOp10.out" "polySurface163Shape.i";
connectAttr "groupId501.id" "polySurface163Shape.iog.og[0].gid";
connectAttr "groupId499.id" "polySurface163Shape.iog.og[1].gid";
connectAttr "groupId503.id" "polySurface163Shape.ciog.cog[0].cgid";
connectAttr "groupParts170.og" "|group60|pasted__pCube25|transform159|pasted__pCubeShape25.i"
		;
connectAttr "groupId506.id" "|group60|pasted__pCube25|transform159|pasted__pCubeShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group60|pasted__pCube25|transform159|pasted__pCubeShape25.iog.og[0].gco"
		;
connectAttr "groupId507.id" "|group60|pasted__pCube25|transform159|pasted__pCubeShape25.ciog.cog[0].cgid"
		;
connectAttr "polyCBoolOp11.out" "polySurface200Shape.i";
connectAttr "groupId506.id" "polySurface200Shape.iog.og[0].gid";
connectAttr "groupId504.id" "polySurface200Shape.iog.og[1].gid";
connectAttr "groupId508.id" "polySurface200Shape.ciog.cog[0].cgid";
connectAttr "groupParts171.og" "|group61|pasted__pCube25|transform161|pasted__pCubeShape25.i"
		;
connectAttr "groupId509.id" "|group61|pasted__pCube25|transform161|pasted__pCubeShape25.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group61|pasted__pCube25|transform161|pasted__pCubeShape25.iog.og[0].gco"
		;
connectAttr "groupId510.id" "|group61|pasted__pCube25|transform161|pasted__pCubeShape25.ciog.cog[0].cgid"
		;
connectAttr "polyCBoolOp12.out" "polySurface240Shape.i";
connectAttr "groupId496.id" "polySurface240Shape.iog.og[0].gid";
connectAttr "groupId494.id" "polySurface240Shape.iog.og[1].gid";
connectAttr "groupId511.id" "polySurface240Shape.ciog.cog[0].cgid";
connectAttr "polyTweakUV42.out" "polySurfaceShape236.i";
connectAttr "groupId652.id" "polySurfaceShape236.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape236.iog.og[0].gco";
connectAttr "polyTweakUV42.uvtk[0]" "polySurfaceShape236.uvst[0].uvtw";
connectAttr "groupParts244.og" "polySurfaceShape237.i";
connectAttr "groupId653.id" "polySurfaceShape237.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape237.iog.og[0].gco";
connectAttr "groupParts245.og" "polySurfaceShape238.i";
connectAttr "groupId654.id" "polySurfaceShape238.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape238.iog.og[0].gco";
connectAttr "groupParts246.og" "polySurfaceShape239.i";
connectAttr "groupId655.id" "polySurfaceShape239.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape239.iog.og[0].gco";
connectAttr "groupParts247.og" "polySurfaceShape240.i";
connectAttr "groupId656.id" "polySurfaceShape240.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape240.iog.og[0].gco";
connectAttr "groupParts248.og" "polySurfaceShape241.i";
connectAttr "groupId657.id" "polySurfaceShape241.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape241.iog.og[0].gco";
connectAttr "groupParts249.og" "polySurfaceShape242.i";
connectAttr "groupId658.id" "polySurfaceShape242.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape242.iog.og[0].gco";
connectAttr "groupParts250.og" "polySurfaceShape243.i";
connectAttr "groupId659.id" "polySurfaceShape243.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape243.iog.og[0].gco";
connectAttr "groupParts251.og" "polySurfaceShape244.i";
connectAttr "groupId660.id" "polySurfaceShape244.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape244.iog.og[0].gco";
connectAttr "polyTweakUV41.out" "polySurfaceShape245.i";
connectAttr "groupId661.id" "polySurfaceShape245.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape245.iog.og[0].gco";
connectAttr "polyTweakUV41.uvtk[0]" "polySurfaceShape245.uvst[0].uvtw";
connectAttr "polyTweakUV32.out" "polySurfaceShape246.i";
connectAttr "groupId662.id" "polySurfaceShape246.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape246.iog.og[0].gco";
connectAttr "polyTweakUV32.uvtk[0]" "polySurfaceShape246.uvst[0].uvtw";
connectAttr "groupParts254.og" "polySurfaceShape247.i";
connectAttr "groupId663.id" "polySurfaceShape247.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape247.iog.og[0].gco";
connectAttr "groupParts255.og" "polySurfaceShape248.i";
connectAttr "groupId664.id" "polySurfaceShape248.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape248.iog.og[0].gco";
connectAttr "groupParts256.og" "polySurfaceShape249.i";
connectAttr "groupId665.id" "polySurfaceShape249.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape249.iog.og[0].gco";
connectAttr "groupParts257.og" "polySurfaceShape250.i";
connectAttr "groupId666.id" "polySurfaceShape250.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape250.iog.og[0].gco";
connectAttr "groupParts258.og" "polySurfaceShape251.i";
connectAttr "groupId667.id" "polySurfaceShape251.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape251.iog.og[0].gco";
connectAttr "groupParts259.og" "polySurfaceShape252.i";
connectAttr "groupId668.id" "polySurfaceShape252.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape252.iog.og[0].gco";
connectAttr "groupParts260.og" "polySurfaceShape253.i";
connectAttr "groupId669.id" "polySurfaceShape253.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape253.iog.og[0].gco";
connectAttr "groupParts261.og" "polySurfaceShape254.i";
connectAttr "groupId670.id" "polySurfaceShape254.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape254.iog.og[0].gco";
connectAttr "groupParts262.og" "polySurfaceShape255.i";
connectAttr "groupId671.id" "polySurfaceShape255.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape255.iog.og[0].gco";
connectAttr "groupParts263.og" "polySurfaceShape256.i";
connectAttr "groupId672.id" "polySurfaceShape256.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape256.iog.og[0].gco";
connectAttr "groupParts264.og" "polySurfaceShape257.i";
connectAttr "groupId673.id" "polySurfaceShape257.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape257.iog.og[0].gco";
connectAttr "groupParts265.og" "polySurfaceShape258.i";
connectAttr "groupId674.id" "polySurfaceShape258.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape258.iog.og[0].gco";
connectAttr "groupParts266.og" "polySurfaceShape259.i";
connectAttr "groupId675.id" "polySurfaceShape259.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape259.iog.og[0].gco";
connectAttr "groupParts267.og" "polySurfaceShape260.i";
connectAttr "groupId676.id" "polySurfaceShape260.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape260.iog.og[0].gco";
connectAttr "groupParts268.og" "polySurfaceShape261.i";
connectAttr "groupId677.id" "polySurfaceShape261.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape261.iog.og[0].gco";
connectAttr "groupParts269.og" "polySurfaceShape262.i";
connectAttr "groupId678.id" "polySurfaceShape262.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape262.iog.og[0].gco";
connectAttr "groupParts270.og" "polySurfaceShape263.i";
connectAttr "groupId679.id" "polySurfaceShape263.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape263.iog.og[0].gco";
connectAttr "groupParts271.og" "polySurfaceShape264.i";
connectAttr "groupId680.id" "polySurfaceShape264.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape264.iog.og[0].gco";
connectAttr "groupParts272.og" "polySurfaceShape265.i";
connectAttr "groupId681.id" "polySurfaceShape265.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape265.iog.og[0].gco";
connectAttr "polyTweakUV34.out" "polySurfaceShape266.i";
connectAttr "groupId682.id" "polySurfaceShape266.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape266.iog.og[0].gco";
connectAttr "polyTweakUV34.uvtk[0]" "polySurfaceShape266.uvst[0].uvtw";
connectAttr "polyTweakUV28.out" "polySurfaceShape267.i";
connectAttr "groupId683.id" "polySurfaceShape267.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape267.iog.og[0].gco";
connectAttr "polyTweakUV28.uvtk[0]" "polySurfaceShape267.uvst[0].uvtw";
connectAttr "groupParts275.og" "polySurfaceShape268.i";
connectAttr "groupId684.id" "polySurfaceShape268.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape268.iog.og[0].gco";
connectAttr "polyTweakUV17.out" "polySurfaceShape269.i";
connectAttr "groupId685.id" "polySurfaceShape269.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape269.iog.og[0].gco";
connectAttr "polyTweakUV17.uvtk[0]" "polySurfaceShape269.uvst[0].uvtw";
connectAttr "groupParts277.og" "polySurfaceShape270.i";
connectAttr "groupId686.id" "polySurfaceShape270.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape270.iog.og[0].gco";
connectAttr "groupParts278.og" "polySurfaceShape271.i";
connectAttr "groupId687.id" "polySurfaceShape271.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape271.iog.og[0].gco";
connectAttr "groupParts279.og" "polySurfaceShape272.i";
connectAttr "groupId688.id" "polySurfaceShape272.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape272.iog.og[0].gco";
connectAttr "groupParts280.og" "polySurfaceShape273.i";
connectAttr "groupId689.id" "polySurfaceShape273.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape273.iog.og[0].gco";
connectAttr "groupParts281.og" "polySurfaceShape274.i";
connectAttr "groupId690.id" "polySurfaceShape274.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape274.iog.og[0].gco";
connectAttr "groupParts282.og" "polySurfaceShape275.i";
connectAttr "groupId691.id" "polySurfaceShape275.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape275.iog.og[0].gco";
connectAttr "groupParts283.og" "polySurfaceShape276.i";
connectAttr "groupId692.id" "polySurfaceShape276.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape276.iog.og[0].gco";
connectAttr "polyTweakUV37.out" "polySurfaceShape277.i";
connectAttr "groupId693.id" "polySurfaceShape277.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape277.iog.og[0].gco";
connectAttr "polyTweakUV37.uvtk[0]" "polySurfaceShape277.uvst[0].uvtw";
connectAttr "polyTweakUV36.out" "polySurfaceShape278.i";
connectAttr "groupId694.id" "polySurfaceShape278.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape278.iog.og[0].gco";
connectAttr "polyTweakUV36.uvtk[0]" "polySurfaceShape278.uvst[0].uvtw";
connectAttr "polyTweakUV43.out" "polySurfaceShape279.i";
connectAttr "groupId695.id" "polySurfaceShape279.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape279.iog.og[0].gco";
connectAttr "polyTweakUV43.uvtk[0]" "polySurfaceShape279.uvst[0].uvtw";
connectAttr "groupParts287.og" "polySurfaceShape280.i";
connectAttr "groupId696.id" "polySurfaceShape280.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape280.iog.og[0].gco";
connectAttr "groupParts288.og" "polySurfaceShape281.i";
connectAttr "groupId697.id" "polySurfaceShape281.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape281.iog.og[0].gco";
connectAttr "groupParts289.og" "polySurfaceShape282.i";
connectAttr "groupId698.id" "polySurfaceShape282.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape282.iog.og[0].gco";
connectAttr "groupParts290.og" "polySurfaceShape283.i";
connectAttr "groupId699.id" "polySurfaceShape283.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape283.iog.og[0].gco";
connectAttr "polyTweakUV29.out" "polySurfaceShape284.i";
connectAttr "groupId700.id" "polySurfaceShape284.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape284.iog.og[0].gco";
connectAttr "polyTweakUV29.uvtk[0]" "polySurfaceShape284.uvst[0].uvtw";
connectAttr "groupParts292.og" "polySurfaceShape285.i";
connectAttr "groupId701.id" "polySurfaceShape285.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape285.iog.og[0].gco";
connectAttr "groupParts293.og" "polySurfaceShape286.i";
connectAttr "groupId702.id" "polySurfaceShape286.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape286.iog.og[0].gco";
connectAttr "groupParts294.og" "polySurfaceShape287.i";
connectAttr "groupId703.id" "polySurfaceShape287.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape287.iog.og[0].gco";
connectAttr "groupParts295.og" "polySurfaceShape288.i";
connectAttr "groupId704.id" "polySurfaceShape288.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape288.iog.og[0].gco";
connectAttr "groupParts296.og" "polySurfaceShape289.i";
connectAttr "groupId705.id" "polySurfaceShape289.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape289.iog.og[0].gco";
connectAttr "groupParts297.og" "polySurfaceShape290.i";
connectAttr "groupId706.id" "polySurfaceShape290.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape290.iog.og[0].gco";
connectAttr "groupParts298.og" "polySurfaceShape291.i";
connectAttr "groupId707.id" "polySurfaceShape291.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape291.iog.og[0].gco";
connectAttr "polyTweakUV44.out" "polySurfaceShape292.i";
connectAttr "groupId708.id" "polySurfaceShape292.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape292.iog.og[0].gco";
connectAttr "polyTweakUV44.uvtk[0]" "polySurfaceShape292.uvst[0].uvtw";
connectAttr "groupParts300.og" "polySurfaceShape293.i";
connectAttr "groupId709.id" "polySurfaceShape293.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape293.iog.og[0].gco";
connectAttr "groupParts301.og" "polySurfaceShape294.i";
connectAttr "groupId710.id" "polySurfaceShape294.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape294.iog.og[0].gco";
connectAttr "groupParts302.og" "polySurfaceShape295.i";
connectAttr "groupId711.id" "polySurfaceShape295.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape295.iog.og[0].gco";
connectAttr "groupParts303.og" "polySurfaceShape296.i";
connectAttr "groupId712.id" "polySurfaceShape296.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape296.iog.og[0].gco";
connectAttr "groupParts304.og" "polySurfaceShape297.i";
connectAttr "groupId713.id" "polySurfaceShape297.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape297.iog.og[0].gco";
connectAttr "groupParts305.og" "polySurfaceShape298.i";
connectAttr "groupId714.id" "polySurfaceShape298.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape298.iog.og[0].gco";
connectAttr "groupParts306.og" "polySurfaceShape299.i";
connectAttr "groupId715.id" "polySurfaceShape299.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape299.iog.og[0].gco";
connectAttr "polyTweakUV39.out" "polySurfaceShape300.i";
connectAttr "groupId716.id" "polySurfaceShape300.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape300.iog.og[0].gco";
connectAttr "polyTweakUV39.uvtk[0]" "polySurfaceShape300.uvst[0].uvtw";
connectAttr "polyTweakUV13.out" "polySurfaceShape301.i";
connectAttr "groupId717.id" "polySurfaceShape301.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape301.iog.og[0].gco";
connectAttr "polyTweakUV13.uvtk[0]" "polySurfaceShape301.uvst[0].uvtw";
connectAttr "polyTweakUV33.out" "polySurfaceShape302.i";
connectAttr "groupId718.id" "polySurfaceShape302.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape302.iog.og[0].gco";
connectAttr "polyTweakUV33.uvtk[0]" "polySurfaceShape302.uvst[0].uvtw";
connectAttr "groupParts310.og" "polySurfaceShape303.i";
connectAttr "groupId719.id" "polySurfaceShape303.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape303.iog.og[0].gco";
connectAttr "polyTweakUV16.out" "polySurfaceShape304.i";
connectAttr "groupId720.id" "polySurfaceShape304.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape304.iog.og[0].gco";
connectAttr "polyTweakUV16.uvtk[0]" "polySurfaceShape304.uvst[0].uvtw";
connectAttr "groupParts313.og" "polySurfaceShape305.i";
connectAttr "groupId721.id" "polySurfaceShape305.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape305.iog.og[0].gco";
connectAttr "groupId722.id" "polySurfaceShape305.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape305.iog.og[1].gco";
connectAttr "polyTweakUV14.out" "polySurfaceShape306.i";
connectAttr "groupId723.id" "polySurfaceShape306.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape306.iog.og[0].gco";
connectAttr "groupId724.id" "polySurfaceShape306.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape306.iog.og[1].gco";
connectAttr "polyTweakUV14.uvtk[0]" "polySurfaceShape306.uvst[0].uvtw";
connectAttr "groupParts316.og" "polySurfaceShape307.i";
connectAttr "groupId725.id" "polySurfaceShape307.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape307.iog.og[0].gco";
connectAttr "groupParts318.og" "polySurfaceShape308.i";
connectAttr "groupId726.id" "polySurfaceShape308.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape308.iog.og[0].gco";
connectAttr "groupId727.id" "polySurfaceShape308.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape308.iog.og[1].gco";
connectAttr "groupParts319.og" "polySurfaceShape309.i";
connectAttr "groupId728.id" "polySurfaceShape309.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape309.iog.og[0].gco";
connectAttr "groupParts242.og" "polySurface164Shape.i";
connectAttr "groupId650.id" "polySurface164Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface164Shape.iog.og[0].gco";
connectAttr "groupId651.id" "polySurface164Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface164Shape.iog.og[1].gco";
connectAttr "polyTweakUV26.out" "polySurface313Shape.i";
connectAttr "groupId727.id" "polySurface313Shape.iog.og[0].gid";
connectAttr "groupId726.id" "polySurface313Shape.iog.og[1].gid";
connectAttr "groupId729.id" "polySurface313Shape.ciog.cog[0].cgid";
connectAttr "polyTweakUV26.uvtk[0]" "polySurface313Shape.uvst[0].uvtw";
connectAttr "polyTweakUV31.out" "polySurface310Shape.i";
connectAttr "groupId722.id" "polySurface310Shape.iog.og[0].gid";
connectAttr "groupId721.id" "polySurface310Shape.iog.og[1].gid";
connectAttr "groupId730.id" "polySurface310Shape.ciog.cog[0].cgid";
connectAttr "polyTweakUV31.uvtk[0]" "polySurface310Shape.uvst[0].uvtw";
connectAttr "polyTweakUV27.out" "polySurface255Shape.i";
connectAttr "groupId731.id" "polySurface255Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface255Shape.iog.og[0].gco";
connectAttr "polyTweakUV27.uvtk[0]" "polySurface255Shape.uvst[0].uvtw";
connectAttr "polyTweakUV22.out" "polySurface275Shape.i";
connectAttr "groupId732.id" "polySurface275Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface275Shape.iog.og[0].gco";
connectAttr "polyTweakUV22.uvtk[0]" "polySurface275Shape.uvst[0].uvtw";
connectAttr "polyTweakUV30.out" "polySurface273Shape.i";
connectAttr "groupId733.id" "polySurface273Shape.ciog.cog[0].cgid";
connectAttr "polyTweakUV30.uvtk[0]" "polySurface273Shape.uvst[0].uvtw";
connectAttr "polyTweakUV23.out" "polySurface290Shape.i";
connectAttr "groupId734.id" "polySurface290Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface290Shape.iog.og[0].gco";
connectAttr "polyTweakUV23.uvtk[0]" "polySurface290Shape.uvst[0].uvtw";
connectAttr "polyTweakUV24.out" "polySurface298Shape.i";
connectAttr "groupId735.id" "polySurface298Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface298Shape.iog.og[0].gco";
connectAttr "polyTweakUV24.uvtk[0]" "polySurface298Shape.uvst[0].uvtw";
connectAttr "polyTweakUV35.out" "polySurface288Shape.i";
connectAttr "groupId736.id" "polySurface288Shape.ciog.cog[0].cgid";
connectAttr "polyTweakUV35.uvtk[0]" "polySurface288Shape.uvst[0].uvtw";
connectAttr "polyTweakUV38.out" "polySurface281Shape.i";
connectAttr "groupId737.id" "polySurface281Shape.ciog.cog[0].cgid";
connectAttr "polyTweakUV38.uvtk[0]" "polySurface281Shape.uvst[0].uvtw";
connectAttr "polyTweakUV40.out" "polySurface252Shape.i";
connectAttr "groupId738.id" "polySurface252Shape.ciog.cog[0].cgid";
connectAttr "polyTweakUV40.uvtk[0]" "polySurface252Shape.uvst[0].uvtw";
connectAttr "polyTweakUV20.out" "polySurface242Shape.i";
connectAttr "groupId739.id" "polySurface242Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface242Shape.iog.og[0].gco";
connectAttr "polyTweakUV20.uvtk[0]" "polySurface242Shape.uvst[0].uvtw";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape2.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape12.o" "polyUnite1.ip[2]";
connectAttr "polySurfaceShape13.o" "polyUnite1.ip[3]";
connectAttr "polySurfaceShape14.o" "polyUnite1.ip[4]";
connectAttr "polySurfaceShape15.o" "polyUnite1.ip[5]";
connectAttr "polySurfaceShape16.o" "polyUnite1.ip[6]";
connectAttr "polySurfaceShape17.o" "polyUnite1.ip[7]";
connectAttr "polySurfaceShape18.o" "polyUnite1.ip[8]";
connectAttr "polySurfaceShape19.o" "polyUnite1.ip[9]";
connectAttr "polySurfaceShape21.o" "polyUnite1.ip[10]";
connectAttr "polySurfaceShape23.o" "polyUnite1.ip[11]";
connectAttr "pasted__polySurfaceShape3.o" "polyUnite1.ip[12]";
connectAttr "pCubeShape1.o" "polyUnite1.ip[13]";
connectAttr "pasted__polySurfaceShape25.o" "polyUnite1.ip[14]";
connectAttr "pasted__polySurfaceShape24.o" "polyUnite1.ip[15]";
connectAttr "polySurfaceShape48.o" "polyUnite1.ip[16]";
connectAttr "polySurfaceShape49.o" "polyUnite1.ip[17]";
connectAttr "polySurfaceShape50.o" "polyUnite1.ip[18]";
connectAttr "polySurfaceShape51.o" "polyUnite1.ip[19]";
connectAttr "polySurfaceShape52.o" "polyUnite1.ip[20]";
connectAttr "polySurfaceShape53.o" "polyUnite1.ip[21]";
connectAttr "polySurfaceShape54.o" "polyUnite1.ip[22]";
connectAttr "polySurfaceShape41.o" "polyUnite1.ip[23]";
connectAttr "polySurfaceShape42.o" "polyUnite1.ip[24]";
connectAttr "polySurfaceShape43.o" "polyUnite1.ip[25]";
connectAttr "polySurfaceShape44.o" "polyUnite1.ip[26]";
connectAttr "polySurfaceShape45.o" "polyUnite1.ip[27]";
connectAttr "polySurfaceShape46.o" "polyUnite1.ip[28]";
connectAttr "polySurfaceShape47.o" "polyUnite1.ip[29]";
connectAttr "pCubeShape2.o" "polyUnite1.ip[30]";
connectAttr "pasted__polySurfaceShape53.o" "polyUnite1.ip[31]";
connectAttr "pasted__pasted__pCubeShape2.o" "polyUnite1.ip[32]";
connectAttr "polySurface64Shape.o" "polyUnite1.ip[33]";
connectAttr "polySurfaceShape79.o" "polyUnite1.ip[34]";
connectAttr "pasted__polySurfaceShape22.o" "polyUnite1.ip[35]";
connectAttr "pasted__polySurfaceShape2.o" "polyUnite1.ip[36]";
connectAttr "pasted__polySurface12Shape.o" "polyUnite1.ip[37]";
connectAttr "polySurface81Shape.o" "polyUnite1.ip[38]";
connectAttr "pCube20Shape.o" "polyUnite1.ip[39]";
connectAttr "polySurfaceShape81.o" "polyUnite1.ip[40]";
connectAttr "polySurfaceShape84.o" "polyUnite1.ip[41]";
connectAttr "polySurfaceShape85.o" "polyUnite1.ip[42]";
connectAttr "polySurfaceShape86.o" "polyUnite1.ip[43]";
connectAttr "polySurfaceShape87.o" "polyUnite1.ip[44]";
connectAttr "polySurface83Shape.o" "polyUnite1.ip[45]";
connectAttr "|group40|pasted__group39|pasted__pasted__polySurface64|transform11|pasted__pasted__polySurface64Shape.o" "polyUnite1.ip[46]"
		;
connectAttr "group18_pasted__group2_pasted__pasted__pCube2Shape.o" "polyUnite1.ip[47]"
		;
connectAttr "|group45|pasted__group39|pasted__pasted__polySurface64|transform9|pasted__pasted__polySurface64Shape.o" "polyUnite1.ip[48]"
		;
connectAttr "pasted__polySurface64Shape.o" "polyUnite1.ip[49]";
connectAttr "|group48|pasted__group47|pasted__pasted__polySurface64|transform7|pasted__pasted__polySurface64Shape.o" "polyUnite1.ip[50]"
		;
connectAttr "pasted__pasted__polySurfaceShape25.o" "polyUnite1.ip[51]";
connectAttr "pasted__pasted__pasted__polySurface64Shape.o" "polyUnite1.ip[52]";
connectAttr "pCubeShape4.o" "polyUnite1.ip[53]";
connectAttr "pasted__pasted__pasted__pasted__pCube2Shape.o" "polyUnite1.ip[54]";
connectAttr "polySurface33Shape.o" "polyUnite1.ip[55]";
connectAttr "pasted__polySurface33Shape.o" "polyUnite1.ip[56]";
connectAttr "polySurfaceShape1.wm" "polyUnite1.im[0]";
connectAttr "polySurfaceShape2.wm" "polyUnite1.im[1]";
connectAttr "polySurfaceShape12.wm" "polyUnite1.im[2]";
connectAttr "polySurfaceShape13.wm" "polyUnite1.im[3]";
connectAttr "polySurfaceShape14.wm" "polyUnite1.im[4]";
connectAttr "polySurfaceShape15.wm" "polyUnite1.im[5]";
connectAttr "polySurfaceShape16.wm" "polyUnite1.im[6]";
connectAttr "polySurfaceShape17.wm" "polyUnite1.im[7]";
connectAttr "polySurfaceShape18.wm" "polyUnite1.im[8]";
connectAttr "polySurfaceShape19.wm" "polyUnite1.im[9]";
connectAttr "polySurfaceShape21.wm" "polyUnite1.im[10]";
connectAttr "polySurfaceShape23.wm" "polyUnite1.im[11]";
connectAttr "pasted__polySurfaceShape3.wm" "polyUnite1.im[12]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[13]";
connectAttr "pasted__polySurfaceShape25.wm" "polyUnite1.im[14]";
connectAttr "pasted__polySurfaceShape24.wm" "polyUnite1.im[15]";
connectAttr "polySurfaceShape48.wm" "polyUnite1.im[16]";
connectAttr "polySurfaceShape49.wm" "polyUnite1.im[17]";
connectAttr "polySurfaceShape50.wm" "polyUnite1.im[18]";
connectAttr "polySurfaceShape51.wm" "polyUnite1.im[19]";
connectAttr "polySurfaceShape52.wm" "polyUnite1.im[20]";
connectAttr "polySurfaceShape53.wm" "polyUnite1.im[21]";
connectAttr "polySurfaceShape54.wm" "polyUnite1.im[22]";
connectAttr "polySurfaceShape41.wm" "polyUnite1.im[23]";
connectAttr "polySurfaceShape42.wm" "polyUnite1.im[24]";
connectAttr "polySurfaceShape43.wm" "polyUnite1.im[25]";
connectAttr "polySurfaceShape44.wm" "polyUnite1.im[26]";
connectAttr "polySurfaceShape45.wm" "polyUnite1.im[27]";
connectAttr "polySurfaceShape46.wm" "polyUnite1.im[28]";
connectAttr "polySurfaceShape47.wm" "polyUnite1.im[29]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[30]";
connectAttr "pasted__polySurfaceShape53.wm" "polyUnite1.im[31]";
connectAttr "pasted__pasted__pCubeShape2.wm" "polyUnite1.im[32]";
connectAttr "polySurface64Shape.wm" "polyUnite1.im[33]";
connectAttr "polySurfaceShape79.wm" "polyUnite1.im[34]";
connectAttr "pasted__polySurfaceShape22.wm" "polyUnite1.im[35]";
connectAttr "pasted__polySurfaceShape2.wm" "polyUnite1.im[36]";
connectAttr "pasted__polySurface12Shape.wm" "polyUnite1.im[37]";
connectAttr "polySurface81Shape.wm" "polyUnite1.im[38]";
connectAttr "pCube20Shape.wm" "polyUnite1.im[39]";
connectAttr "polySurfaceShape81.wm" "polyUnite1.im[40]";
connectAttr "polySurfaceShape84.wm" "polyUnite1.im[41]";
connectAttr "polySurfaceShape85.wm" "polyUnite1.im[42]";
connectAttr "polySurfaceShape86.wm" "polyUnite1.im[43]";
connectAttr "polySurfaceShape87.wm" "polyUnite1.im[44]";
connectAttr "polySurface83Shape.wm" "polyUnite1.im[45]";
connectAttr "|group40|pasted__group39|pasted__pasted__polySurface64|transform11|pasted__pasted__polySurface64Shape.wm" "polyUnite1.im[46]"
		;
connectAttr "group18_pasted__group2_pasted__pasted__pCube2Shape.wm" "polyUnite1.im[47]"
		;
connectAttr "|group45|pasted__group39|pasted__pasted__polySurface64|transform9|pasted__pasted__polySurface64Shape.wm" "polyUnite1.im[48]"
		;
connectAttr "pasted__polySurface64Shape.wm" "polyUnite1.im[49]";
connectAttr "|group48|pasted__group47|pasted__pasted__polySurface64|transform7|pasted__pasted__polySurface64Shape.wm" "polyUnite1.im[50]"
		;
connectAttr "pasted__pasted__polySurfaceShape25.wm" "polyUnite1.im[51]";
connectAttr "pasted__pasted__pasted__polySurface64Shape.wm" "polyUnite1.im[52]";
connectAttr "pCubeShape4.wm" "polyUnite1.im[53]";
connectAttr "pasted__pasted__pasted__pasted__pCube2Shape.wm" "polyUnite1.im[54]"
		;
connectAttr "polySurface33Shape.wm" "polyUnite1.im[55]";
connectAttr "pasted__polySurface33Shape.wm" "polyUnite1.im[56]";
connectAttr "polyUnite1.out" "groupParts1.ig";
connectAttr "groupId310.id" "groupParts1.gi";
connectAttr "polySurface2Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupId311.id" "groupParts2.gi";
connectAttr "polySeparate1.out[1]" "groupParts3.ig";
connectAttr "groupId312.id" "groupParts3.gi";
connectAttr "polySeparate1.out[2]" "groupParts4.ig";
connectAttr "groupId313.id" "groupParts4.gi";
connectAttr "polySeparate1.out[3]" "groupParts5.ig";
connectAttr "groupId314.id" "groupParts5.gi";
connectAttr "polySeparate1.out[4]" "groupParts6.ig";
connectAttr "groupId315.id" "groupParts6.gi";
connectAttr "polySeparate1.out[5]" "groupParts7.ig";
connectAttr "groupId316.id" "groupParts7.gi";
connectAttr "polySeparate1.out[6]" "groupParts8.ig";
connectAttr "groupId317.id" "groupParts8.gi";
connectAttr "polySeparate1.out[7]" "groupParts9.ig";
connectAttr "groupId318.id" "groupParts9.gi";
connectAttr "polySeparate1.out[8]" "groupParts10.ig";
connectAttr "groupId319.id" "groupParts10.gi";
connectAttr "polySeparate1.out[9]" "groupParts11.ig";
connectAttr "groupId320.id" "groupParts11.gi";
connectAttr "polySeparate1.out[10]" "groupParts12.ig";
connectAttr "groupId321.id" "groupParts12.gi";
connectAttr "polySeparate1.out[11]" "groupParts13.ig";
connectAttr "groupId322.id" "groupParts13.gi";
connectAttr "polySeparate1.out[12]" "groupParts14.ig";
connectAttr "groupId323.id" "groupParts14.gi";
connectAttr "polySeparate1.out[13]" "groupParts15.ig";
connectAttr "groupId324.id" "groupParts15.gi";
connectAttr "polySeparate1.out[14]" "groupParts16.ig";
connectAttr "groupId325.id" "groupParts16.gi";
connectAttr "polySeparate1.out[15]" "groupParts17.ig";
connectAttr "groupId326.id" "groupParts17.gi";
connectAttr "polySeparate1.out[16]" "groupParts18.ig";
connectAttr "groupId327.id" "groupParts18.gi";
connectAttr "polySeparate1.out[17]" "groupParts19.ig";
connectAttr "groupId328.id" "groupParts19.gi";
connectAttr "polySeparate1.out[18]" "groupParts20.ig";
connectAttr "groupId329.id" "groupParts20.gi";
connectAttr "polySeparate1.out[19]" "groupParts21.ig";
connectAttr "groupId330.id" "groupParts21.gi";
connectAttr "polySeparate1.out[20]" "groupParts22.ig";
connectAttr "groupId331.id" "groupParts22.gi";
connectAttr "polySeparate1.out[21]" "groupParts23.ig";
connectAttr "groupId332.id" "groupParts23.gi";
connectAttr "polySeparate1.out[22]" "groupParts24.ig";
connectAttr "groupId333.id" "groupParts24.gi";
connectAttr "polySeparate1.out[23]" "groupParts25.ig";
connectAttr "groupId334.id" "groupParts25.gi";
connectAttr "polySeparate1.out[24]" "groupParts26.ig";
connectAttr "groupId335.id" "groupParts26.gi";
connectAttr "polySeparate1.out[25]" "groupParts27.ig";
connectAttr "groupId336.id" "groupParts27.gi";
connectAttr "polySeparate1.out[26]" "groupParts28.ig";
connectAttr "groupId337.id" "groupParts28.gi";
connectAttr "polySeparate1.out[27]" "groupParts29.ig";
connectAttr "groupId338.id" "groupParts29.gi";
connectAttr "polySeparate1.out[28]" "groupParts30.ig";
connectAttr "groupId339.id" "groupParts30.gi";
connectAttr "polySeparate1.out[29]" "groupParts31.ig";
connectAttr "groupId340.id" "groupParts31.gi";
connectAttr "polySeparate1.out[30]" "groupParts32.ig";
connectAttr "groupId341.id" "groupParts32.gi";
connectAttr "polySeparate1.out[31]" "groupParts33.ig";
connectAttr "groupId342.id" "groupParts33.gi";
connectAttr "polySeparate1.out[32]" "groupParts34.ig";
connectAttr "groupId343.id" "groupParts34.gi";
connectAttr "polySeparate1.out[33]" "groupParts35.ig";
connectAttr "groupId344.id" "groupParts35.gi";
connectAttr "polySeparate1.out[34]" "groupParts36.ig";
connectAttr "groupId345.id" "groupParts36.gi";
connectAttr "polySeparate1.out[35]" "groupParts37.ig";
connectAttr "groupId346.id" "groupParts37.gi";
connectAttr "polySeparate1.out[36]" "groupParts38.ig";
connectAttr "groupId347.id" "groupParts38.gi";
connectAttr "polySeparate1.out[37]" "groupParts39.ig";
connectAttr "groupId348.id" "groupParts39.gi";
connectAttr "polySeparate1.out[38]" "groupParts40.ig";
connectAttr "groupId349.id" "groupParts40.gi";
connectAttr "polySeparate1.out[39]" "groupParts41.ig";
connectAttr "groupId350.id" "groupParts41.gi";
connectAttr "polySeparate1.out[40]" "groupParts42.ig";
connectAttr "groupId351.id" "groupParts42.gi";
connectAttr "polySeparate1.out[41]" "groupParts43.ig";
connectAttr "groupId352.id" "groupParts43.gi";
connectAttr "polySeparate1.out[42]" "groupParts44.ig";
connectAttr "groupId353.id" "groupParts44.gi";
connectAttr "polySeparate1.out[43]" "groupParts45.ig";
connectAttr "groupId354.id" "groupParts45.gi";
connectAttr "polySeparate1.out[44]" "groupParts46.ig";
connectAttr "groupId355.id" "groupParts46.gi";
connectAttr "polySeparate1.out[45]" "groupParts47.ig";
connectAttr "groupId356.id" "groupParts47.gi";
connectAttr "polySeparate1.out[46]" "groupParts48.ig";
connectAttr "groupId357.id" "groupParts48.gi";
connectAttr "polySeparate1.out[47]" "groupParts49.ig";
connectAttr "groupId358.id" "groupParts49.gi";
connectAttr "polySeparate1.out[48]" "groupParts50.ig";
connectAttr "groupId359.id" "groupParts50.gi";
connectAttr "polySeparate1.out[49]" "groupParts51.ig";
connectAttr "groupId360.id" "groupParts51.gi";
connectAttr "polySeparate1.out[50]" "groupParts52.ig";
connectAttr "groupId361.id" "groupParts52.gi";
connectAttr "polySeparate1.out[51]" "groupParts53.ig";
connectAttr "groupId362.id" "groupParts53.gi";
connectAttr "polySeparate1.out[52]" "groupParts54.ig";
connectAttr "groupId363.id" "groupParts54.gi";
connectAttr "polySeparate1.out[53]" "groupParts55.ig";
connectAttr "groupId364.id" "groupParts55.gi";
connectAttr "polySeparate1.out[54]" "groupParts56.ig";
connectAttr "groupId365.id" "groupParts56.gi";
connectAttr "polySeparate1.out[55]" "groupParts57.ig";
connectAttr "groupId366.id" "groupParts57.gi";
connectAttr "polySeparate1.out[56]" "groupParts58.ig";
connectAttr "groupId367.id" "groupParts58.gi";
connectAttr "polySeparate1.out[57]" "groupParts59.ig";
connectAttr "groupId368.id" "groupParts59.gi";
connectAttr "polySeparate1.out[58]" "groupParts60.ig";
connectAttr "groupId369.id" "groupParts60.gi";
connectAttr "polySeparate1.out[59]" "groupParts61.ig";
connectAttr "groupId370.id" "groupParts61.gi";
connectAttr "polySeparate1.out[60]" "groupParts62.ig";
connectAttr "groupId371.id" "groupParts62.gi";
connectAttr "polySeparate1.out[61]" "groupParts63.ig";
connectAttr "groupId372.id" "groupParts63.gi";
connectAttr "polySeparate1.out[62]" "groupParts64.ig";
connectAttr "groupId373.id" "groupParts64.gi";
connectAttr "polySeparate1.out[63]" "groupParts65.ig";
connectAttr "groupId374.id" "groupParts65.gi";
connectAttr "polySeparate1.out[64]" "groupParts66.ig";
connectAttr "groupId375.id" "groupParts66.gi";
connectAttr "polySeparate1.out[65]" "groupParts67.ig";
connectAttr "groupId376.id" "groupParts67.gi";
connectAttr "polySeparate1.out[66]" "groupParts68.ig";
connectAttr "groupId377.id" "groupParts68.gi";
connectAttr "polySeparate1.out[67]" "groupParts69.ig";
connectAttr "groupId378.id" "groupParts69.gi";
connectAttr "polySeparate1.out[68]" "groupParts70.ig";
connectAttr "groupId379.id" "groupParts70.gi";
connectAttr "polySeparate1.out[69]" "groupParts71.ig";
connectAttr "groupId380.id" "groupParts71.gi";
connectAttr "polySeparate1.out[70]" "groupParts72.ig";
connectAttr "groupId381.id" "groupParts72.gi";
connectAttr "polySeparate1.out[71]" "groupParts73.ig";
connectAttr "groupId382.id" "groupParts73.gi";
connectAttr "polySeparate1.out[72]" "groupParts74.ig";
connectAttr "groupId383.id" "groupParts74.gi";
connectAttr "polySeparate1.out[73]" "groupParts75.ig";
connectAttr "groupId384.id" "groupParts75.gi";
connectAttr "polySurfaceShape137.o" "polyUnite2.ip[0]";
connectAttr "polySurfaceShape135.o" "polyUnite2.ip[1]";
connectAttr "polySurfaceShape136.o" "polyUnite2.ip[2]";
connectAttr "polySurfaceShape137.wm" "polyUnite2.im[0]";
connectAttr "polySurfaceShape135.wm" "polyUnite2.im[1]";
connectAttr "polySurfaceShape136.wm" "polyUnite2.im[2]";
connectAttr "polyUnite2.out" "groupParts76.ig";
connectAttr "groupId385.id" "groupParts76.gi";
connectAttr "polySurfaceShape88.o" "polyCBoolOp1.ip[0]";
connectAttr "pCubeShape5.o" "polyCBoolOp1.ip[1]";
connectAttr "pasted__pCubeShape23.o" "polyCBoolOp1.ip[2]";
connectAttr "polySurfaceShape88.wm" "polyCBoolOp1.im[0]";
connectAttr "pCubeShape5.wm" "polyCBoolOp1.im[1]";
connectAttr "pasted__pCubeShape23.wm" "polyCBoolOp1.im[2]";
connectAttr "polyCube1.out" "groupParts77.ig";
connectAttr "groupId386.id" "groupParts77.gi";
connectAttr "pasted__polyCube1.out" "groupParts78.ig";
connectAttr "groupId388.id" "groupParts78.gi";
connectAttr "groupParts14.og" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyExtrudeFace1.ip";
connectAttr "polySurfaceShape100.wm" "polyExtrudeFace1.mp";
connectAttr "polySurfaceShape89.o" "polyUnite3.ip[0]";
connectAttr "polySurfaceShape90.o" "polyUnite3.ip[1]";
connectAttr "polySurfaceShape91.o" "polyUnite3.ip[2]";
connectAttr "polySurfaceShape92.o" "polyUnite3.ip[3]";
connectAttr "polySurfaceShape93.o" "polyUnite3.ip[4]";
connectAttr "polySurfaceShape94.o" "polyUnite3.ip[5]";
connectAttr "polySurfaceShape95.o" "polyUnite3.ip[6]";
connectAttr "polySurfaceShape96.o" "polyUnite3.ip[7]";
connectAttr "polySurfaceShape97.o" "polyUnite3.ip[8]";
connectAttr "polySurfaceShape98.o" "polyUnite3.ip[9]";
connectAttr "polySurfaceShape99.o" "polyUnite3.ip[10]";
connectAttr "polySurfaceShape100.o" "polyUnite3.ip[11]";
connectAttr "polySurfaceShape101.o" "polyUnite3.ip[12]";
connectAttr "polySurfaceShape102.o" "polyUnite3.ip[13]";
connectAttr "polySurfaceShape103.o" "polyUnite3.ip[14]";
connectAttr "polySurfaceShape104.o" "polyUnite3.ip[15]";
connectAttr "polySurfaceShape105.o" "polyUnite3.ip[16]";
connectAttr "polySurfaceShape106.o" "polyUnite3.ip[17]";
connectAttr "polySurfaceShape107.o" "polyUnite3.ip[18]";
connectAttr "polySurfaceShape108.o" "polyUnite3.ip[19]";
connectAttr "polySurfaceShape109.o" "polyUnite3.ip[20]";
connectAttr "polySurfaceShape110.o" "polyUnite3.ip[21]";
connectAttr "polySurfaceShape111.o" "polyUnite3.ip[22]";
connectAttr "polySurfaceShape112.o" "polyUnite3.ip[23]";
connectAttr "polySurfaceShape113.o" "polyUnite3.ip[24]";
connectAttr "polySurfaceShape114.o" "polyUnite3.ip[25]";
connectAttr "polySurfaceShape115.o" "polyUnite3.ip[26]";
connectAttr "polySurfaceShape116.o" "polyUnite3.ip[27]";
connectAttr "polySurfaceShape117.o" "polyUnite3.ip[28]";
connectAttr "polySurfaceShape118.o" "polyUnite3.ip[29]";
connectAttr "polySurfaceShape119.o" "polyUnite3.ip[30]";
connectAttr "polySurfaceShape120.o" "polyUnite3.ip[31]";
connectAttr "polySurfaceShape121.o" "polyUnite3.ip[32]";
connectAttr "polySurfaceShape122.o" "polyUnite3.ip[33]";
connectAttr "polySurfaceShape123.o" "polyUnite3.ip[34]";
connectAttr "polySurfaceShape124.o" "polyUnite3.ip[35]";
connectAttr "polySurfaceShape125.o" "polyUnite3.ip[36]";
connectAttr "polySurfaceShape126.o" "polyUnite3.ip[37]";
connectAttr "polySurfaceShape127.o" "polyUnite3.ip[38]";
connectAttr "polySurfaceShape128.o" "polyUnite3.ip[39]";
connectAttr "polySurfaceShape129.o" "polyUnite3.ip[40]";
connectAttr "polySurfaceShape130.o" "polyUnite3.ip[41]";
connectAttr "polySurfaceShape131.o" "polyUnite3.ip[42]";
connectAttr "polySurfaceShape132.o" "polyUnite3.ip[43]";
connectAttr "polySurfaceShape133.o" "polyUnite3.ip[44]";
connectAttr "polySurfaceShape134.o" "polyUnite3.ip[45]";
connectAttr "polySurfaceShape138.o" "polyUnite3.ip[46]";
connectAttr "polySurfaceShape139.o" "polyUnite3.ip[47]";
connectAttr "polySurfaceShape140.o" "polyUnite3.ip[48]";
connectAttr "polySurfaceShape141.o" "polyUnite3.ip[49]";
connectAttr "polySurfaceShape142.o" "polyUnite3.ip[50]";
connectAttr "polySurfaceShape143.o" "polyUnite3.ip[51]";
connectAttr "polySurfaceShape144.o" "polyUnite3.ip[52]";
connectAttr "polySurfaceShape145.o" "polyUnite3.ip[53]";
connectAttr "polySurfaceShape146.o" "polyUnite3.ip[54]";
connectAttr "polySurfaceShape147.o" "polyUnite3.ip[55]";
connectAttr "polySurfaceShape148.o" "polyUnite3.ip[56]";
connectAttr "polySurfaceShape149.o" "polyUnite3.ip[57]";
connectAttr "polySurfaceShape150.o" "polyUnite3.ip[58]";
connectAttr "polySurfaceShape151.o" "polyUnite3.ip[59]";
connectAttr "polySurfaceShape152.o" "polyUnite3.ip[60]";
connectAttr "polySurfaceShape153.o" "polyUnite3.ip[61]";
connectAttr "polySurfaceShape154.o" "polyUnite3.ip[62]";
connectAttr "polySurfaceShape155.o" "polyUnite3.ip[63]";
connectAttr "polySurfaceShape156.o" "polyUnite3.ip[64]";
connectAttr "polySurfaceShape157.o" "polyUnite3.ip[65]";
connectAttr "polySurfaceShape158.o" "polyUnite3.ip[66]";
connectAttr "polySurfaceShape159.o" "polyUnite3.ip[67]";
connectAttr "polySurfaceShape160.o" "polyUnite3.ip[68]";
connectAttr "polySurfaceShape161.o" "polyUnite3.ip[69]";
connectAttr "polySurface138Shape.o" "polyUnite3.ip[70]";
connectAttr "polySurface89Shape.o" "polyUnite3.ip[71]";
connectAttr "polySurfaceShape89.wm" "polyUnite3.im[0]";
connectAttr "polySurfaceShape90.wm" "polyUnite3.im[1]";
connectAttr "polySurfaceShape91.wm" "polyUnite3.im[2]";
connectAttr "polySurfaceShape92.wm" "polyUnite3.im[3]";
connectAttr "polySurfaceShape93.wm" "polyUnite3.im[4]";
connectAttr "polySurfaceShape94.wm" "polyUnite3.im[5]";
connectAttr "polySurfaceShape95.wm" "polyUnite3.im[6]";
connectAttr "polySurfaceShape96.wm" "polyUnite3.im[7]";
connectAttr "polySurfaceShape97.wm" "polyUnite3.im[8]";
connectAttr "polySurfaceShape98.wm" "polyUnite3.im[9]";
connectAttr "polySurfaceShape99.wm" "polyUnite3.im[10]";
connectAttr "polySurfaceShape100.wm" "polyUnite3.im[11]";
connectAttr "polySurfaceShape101.wm" "polyUnite3.im[12]";
connectAttr "polySurfaceShape102.wm" "polyUnite3.im[13]";
connectAttr "polySurfaceShape103.wm" "polyUnite3.im[14]";
connectAttr "polySurfaceShape104.wm" "polyUnite3.im[15]";
connectAttr "polySurfaceShape105.wm" "polyUnite3.im[16]";
connectAttr "polySurfaceShape106.wm" "polyUnite3.im[17]";
connectAttr "polySurfaceShape107.wm" "polyUnite3.im[18]";
connectAttr "polySurfaceShape108.wm" "polyUnite3.im[19]";
connectAttr "polySurfaceShape109.wm" "polyUnite3.im[20]";
connectAttr "polySurfaceShape110.wm" "polyUnite3.im[21]";
connectAttr "polySurfaceShape111.wm" "polyUnite3.im[22]";
connectAttr "polySurfaceShape112.wm" "polyUnite3.im[23]";
connectAttr "polySurfaceShape113.wm" "polyUnite3.im[24]";
connectAttr "polySurfaceShape114.wm" "polyUnite3.im[25]";
connectAttr "polySurfaceShape115.wm" "polyUnite3.im[26]";
connectAttr "polySurfaceShape116.wm" "polyUnite3.im[27]";
connectAttr "polySurfaceShape117.wm" "polyUnite3.im[28]";
connectAttr "polySurfaceShape118.wm" "polyUnite3.im[29]";
connectAttr "polySurfaceShape119.wm" "polyUnite3.im[30]";
connectAttr "polySurfaceShape120.wm" "polyUnite3.im[31]";
connectAttr "polySurfaceShape121.wm" "polyUnite3.im[32]";
connectAttr "polySurfaceShape122.wm" "polyUnite3.im[33]";
connectAttr "polySurfaceShape123.wm" "polyUnite3.im[34]";
connectAttr "polySurfaceShape124.wm" "polyUnite3.im[35]";
connectAttr "polySurfaceShape125.wm" "polyUnite3.im[36]";
connectAttr "polySurfaceShape126.wm" "polyUnite3.im[37]";
connectAttr "polySurfaceShape127.wm" "polyUnite3.im[38]";
connectAttr "polySurfaceShape128.wm" "polyUnite3.im[39]";
connectAttr "polySurfaceShape129.wm" "polyUnite3.im[40]";
connectAttr "polySurfaceShape130.wm" "polyUnite3.im[41]";
connectAttr "polySurfaceShape131.wm" "polyUnite3.im[42]";
connectAttr "polySurfaceShape132.wm" "polyUnite3.im[43]";
connectAttr "polySurfaceShape133.wm" "polyUnite3.im[44]";
connectAttr "polySurfaceShape134.wm" "polyUnite3.im[45]";
connectAttr "polySurfaceShape138.wm" "polyUnite3.im[46]";
connectAttr "polySurfaceShape139.wm" "polyUnite3.im[47]";
connectAttr "polySurfaceShape140.wm" "polyUnite3.im[48]";
connectAttr "polySurfaceShape141.wm" "polyUnite3.im[49]";
connectAttr "polySurfaceShape142.wm" "polyUnite3.im[50]";
connectAttr "polySurfaceShape143.wm" "polyUnite3.im[51]";
connectAttr "polySurfaceShape144.wm" "polyUnite3.im[52]";
connectAttr "polySurfaceShape145.wm" "polyUnite3.im[53]";
connectAttr "polySurfaceShape146.wm" "polyUnite3.im[54]";
connectAttr "polySurfaceShape147.wm" "polyUnite3.im[55]";
connectAttr "polySurfaceShape148.wm" "polyUnite3.im[56]";
connectAttr "polySurfaceShape149.wm" "polyUnite3.im[57]";
connectAttr "polySurfaceShape150.wm" "polyUnite3.im[58]";
connectAttr "polySurfaceShape151.wm" "polyUnite3.im[59]";
connectAttr "polySurfaceShape152.wm" "polyUnite3.im[60]";
connectAttr "polySurfaceShape153.wm" "polyUnite3.im[61]";
connectAttr "polySurfaceShape154.wm" "polyUnite3.im[62]";
connectAttr "polySurfaceShape155.wm" "polyUnite3.im[63]";
connectAttr "polySurfaceShape156.wm" "polyUnite3.im[64]";
connectAttr "polySurfaceShape157.wm" "polyUnite3.im[65]";
connectAttr "polySurfaceShape158.wm" "polyUnite3.im[66]";
connectAttr "polySurfaceShape159.wm" "polyUnite3.im[67]";
connectAttr "polySurfaceShape160.wm" "polyUnite3.im[68]";
connectAttr "polySurfaceShape161.wm" "polyUnite3.im[69]";
connectAttr "polySurface138Shape.wm" "polyUnite3.im[70]";
connectAttr "polySurface89Shape.wm" "polyUnite3.im[71]";
connectAttr "polyCBoolOp1.out" "groupParts79.ig";
connectAttr "groupId391.id" "groupParts79.gi";
connectAttr "polyUnite3.out" "groupParts80.ig";
connectAttr "groupId393.id" "groupParts80.gi";
connectAttr "polySurface90Shape.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[34]" "groupParts115.ig";
connectAttr "groupId428.id" "groupParts115.gi";
connectAttr "polySeparate2.out[36]" "groupParts117.ig";
connectAttr "groupId430.id" "groupParts117.gi";
connectAttr "polySeparate2.out[45]" "groupParts126.ig";
connectAttr "groupId439.id" "groupParts126.gi";
connectAttr "polySeparate2.out[70]" "groupParts151.ig";
connectAttr "groupId464.id" "groupParts151.gi";
connectAttr "polySeparate2.out[71]" "groupParts152.ig";
connectAttr "groupId465.id" "groupParts152.gi";
connectAttr "polySeparate2.out[72]" "groupParts153.ig";
connectAttr "groupId466.id" "groupParts153.gi";
connectAttr "polySeparate2.out[73]" "groupParts154.ig";
connectAttr "groupId467.id" "groupParts154.gi";
connectAttr "groupParts154.og" "polyPlanarProj1.ip";
connectAttr "polySurfaceShape235.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyTweakUV1.ip";
connectAttr "polySeparate2.out[37]" "polyPlanarProj2.ip";
connectAttr "polySurfaceShape199.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyTweakUV2.ip";
connectAttr "polySeparate2.out[38]" "polyPlanarProj3.ip";
connectAttr "polySurfaceShape200.wm" "polyPlanarProj3.mp";
connectAttr "polySeparate2.out[35]" "polyPlanarProj4.ip";
connectAttr "polySurfaceShape197.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "polyTweakUV3.ip";
connectAttr "polySurfaceShape232.o" "polyUnite4.ip[0]";
connectAttr "polySurfaceShape233.o" "polyUnite4.ip[1]";
connectAttr "polySurfaceShape234.o" "polyUnite4.ip[2]";
connectAttr "polySurfaceShape232.wm" "polyUnite4.im[0]";
connectAttr "polySurfaceShape233.wm" "polyUnite4.im[1]";
connectAttr "polySurfaceShape234.wm" "polyUnite4.im[2]";
connectAttr "polyUnite4.out" "groupParts155.ig";
connectAttr "groupId468.id" "groupParts155.gi";
connectAttr "groupParts155.og" "polyPlanarProj5.ip";
connectAttr "|polySurface233|transform144|polySurface233Shape.wm" "polyPlanarProj5.mp"
		;
connectAttr "polyPlanarProj5.out" "polyTweakUV4.ip";
connectAttr "polySurfaceShape235.o" "polyCBoolOp2.ip[0]";
connectAttr "pCubeShape6.o" "polyCBoolOp2.ip[1]";
connectAttr "polySurfaceShape235.wm" "polyCBoolOp2.im[0]";
connectAttr "pCubeShape6.wm" "polyCBoolOp2.im[1]";
connectAttr "polyCube2.out" "groupParts156.ig";
connectAttr "groupId469.id" "groupParts156.gi";
connectAttr "|polySurface233|transform144|polySurface233Shape.o" "polyCBoolOp3.ip[0]"
		;
connectAttr "pCubeShape7.o" "polyCBoolOp3.ip[1]";
connectAttr "|polySurface233|transform144|polySurface233Shape.wm" "polyCBoolOp3.im[0]"
		;
connectAttr "pCubeShape7.wm" "polyCBoolOp3.im[1]";
connectAttr "polyCube3.out" "groupParts157.ig";
connectAttr "groupId472.id" "groupParts157.gi";
connectAttr "polySurfaceShape198.o" "polyCBoolOp4.ip[0]";
connectAttr "|group53|pasted__pCube25|transform145|pasted__pCubeShape25.o" "polyCBoolOp4.ip[1]"
		;
connectAttr "polySurfaceShape198.wm" "polyCBoolOp4.im[0]";
connectAttr "|group53|pasted__pCube25|transform145|pasted__pCubeShape25.wm" "polyCBoolOp4.im[1]"
		;
connectAttr "pasted__polyCube3.out" "groupParts158.ig";
connectAttr "groupId475.id" "groupParts158.gi";
connectAttr "polySeparate2.out[11]" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyExtrudeFace2.ip";
connectAttr "polySurfaceShape173.wm" "polyExtrudeFace2.mp";
connectAttr "|polySurface236|transform148|polySurface236Shape.o" "polyCBoolOp5.ip[0]"
		;
connectAttr "|group54|pasted__pCube25|transform147|pasted__pCubeShape25.o" "polyCBoolOp5.ip[1]"
		;
connectAttr "|polySurface236|transform148|polySurface236Shape.wm" "polyCBoolOp5.im[0]"
		;
connectAttr "|group54|pasted__pCube25|transform147|pasted__pCubeShape25.wm" "polyCBoolOp5.im[1]"
		;
connectAttr "polyCBoolOp2.out" "groupParts159.ig";
connectAttr "groupId478.id" "groupParts159.gi";
connectAttr "pasted__polyCube4.out" "groupParts160.ig";
connectAttr "groupId480.id" "groupParts160.gi";
connectAttr "polySurfaceShape207.o" "polyCBoolOp6.ip[0]";
connectAttr "|group55|pasted__pCube25|transform149|pasted__pCubeShape25.o" "polyCBoolOp6.ip[1]"
		;
connectAttr "polySurfaceShape207.wm" "polyCBoolOp6.im[0]";
connectAttr "|group55|pasted__pCube25|transform149|pasted__pCubeShape25.wm" "polyCBoolOp6.im[1]"
		;
connectAttr "pasted__polyCube5.out" "groupParts161.ig";
connectAttr "groupId483.id" "groupParts161.gi";
connectAttr "polySurfaceShape196.o" "polyCBoolOp7.ip[0]";
connectAttr "|group56|pasted__pCube25|transform151|pasted__pCubeShape25.o" "polyCBoolOp7.ip[1]"
		;
connectAttr "polySurfaceShape196.wm" "polyCBoolOp7.im[0]";
connectAttr "|group56|pasted__pCube25|transform151|pasted__pCubeShape25.wm" "polyCBoolOp7.im[1]"
		;
connectAttr "pasted__polyCube6.out" "groupParts162.ig";
connectAttr "groupId486.id" "groupParts162.gi";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "polySurfaceShape197.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape197.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "|group57|pasted__pCube25|transform153|pasted__pCubeShape25.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group57|pasted__pCube25|transform153|pasted__pCubeShape25.ciog.cog[0]" "lambert2SG.dsm"
		 -na;
connectAttr "polySurface198Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "|polySurface237|transform156|polySurface233Shape.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|polySurface237|transform156|polySurface233Shape.ciog.cog[1]" "lambert2SG.dsm"
		 -na;
connectAttr "polySurface239Shape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "polySurface239Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape162.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape162.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface163Shape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "polySurface163Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape199.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape199.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface200Shape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "polySurface200Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface240Shape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape163.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape163.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape164.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape164.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape165.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape165.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape166.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape166.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape167.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape167.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape168.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape168.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape169.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape169.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape170.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape170.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape171.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape171.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape172.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape172.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape173.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape173.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape174.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape174.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape175.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape175.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape176.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape176.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape177.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape177.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape178.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape178.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape179.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape179.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape180.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape180.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape181.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape181.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape182.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape182.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape183.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape183.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape184.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape184.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape185.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape185.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape186.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape186.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape187.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape187.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape188.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape188.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape189.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape189.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape190.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape190.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape191.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape191.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape192.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape192.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape193.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape193.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape194.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape194.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape195.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape195.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape200.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape200.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape201.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape201.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape202.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape202.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape203.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape203.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape204.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape204.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape205.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape205.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape206.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape206.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape208.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape208.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape209.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape209.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape210.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape210.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape211.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape211.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape212.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape212.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape213.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape213.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape214.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape214.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape215.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape215.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape216.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape216.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape217.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape217.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape218.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape218.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape219.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape219.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape220.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape220.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape221.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape221.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape222.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape222.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape223.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape223.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape224.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape224.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape225.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape225.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape226.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape226.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape227.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape227.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape228.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape228.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape229.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape229.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape230.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape230.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape231.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape231.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface199Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface199Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "|polySurface238|transform169|polySurface236Shape.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|polySurface238|transform169|polySurface236Shape.ciog.cog[0]" "lambert2SG.dsm"
		 -na;
connectAttr "polySurface208Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface208Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface197Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface197Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface198Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface198Shape.ciog.cog[1]" "lambert2SG.dsm" -na;
connectAttr "polySurface164Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape236.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape237.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape238.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape239.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape240.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape241.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape242.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape243.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape244.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape245.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape246.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape247.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape248.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape249.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape250.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape251.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape252.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape253.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape254.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape255.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape256.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape257.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape258.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape259.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape260.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape261.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape262.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape263.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape264.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape265.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape266.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape267.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape268.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape269.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape270.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape271.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape272.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape273.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape274.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape275.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape276.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape277.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape278.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape279.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape280.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape281.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape282.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape283.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape284.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape285.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape286.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape287.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape288.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape289.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape290.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape291.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape292.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape293.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape294.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape295.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape296.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape297.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape298.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape299.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape300.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape301.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape302.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape303.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape304.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape305.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape306.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape307.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape308.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape309.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface313Shape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "polySurface313Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface310Shape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "polySurface310Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface255Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface275Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface273Shape.iog" "lambert2SG.dsm" -na;
connectAttr "polySurface273Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface290Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface298Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface288Shape.iog" "lambert2SG.dsm" -na;
connectAttr "polySurface288Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface281Shape.iog" "lambert2SG.dsm" -na;
connectAttr "polySurface281Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface252Shape.iog" "lambert2SG.dsm" -na;
connectAttr "polySurface252Shape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface242Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId489.msg" "lambert2SG.gn" -na;
connectAttr "groupId490.msg" "lambert2SG.gn" -na;
connectAttr "groupId491.msg" "lambert2SG.gn" -na;
connectAttr "groupId492.msg" "lambert2SG.gn" -na;
connectAttr "groupId494.msg" "lambert2SG.gn" -na;
connectAttr "groupId495.msg" "lambert2SG.gn" -na;
connectAttr "groupId499.msg" "lambert2SG.gn" -na;
connectAttr "groupId500.msg" "lambert2SG.gn" -na;
connectAttr "groupId504.msg" "lambert2SG.gn" -na;
connectAttr "groupId505.msg" "lambert2SG.gn" -na;
connectAttr "groupId512.msg" "lambert2SG.gn" -na;
connectAttr "groupId513.msg" "lambert2SG.gn" -na;
connectAttr "groupId514.msg" "lambert2SG.gn" -na;
connectAttr "groupId515.msg" "lambert2SG.gn" -na;
connectAttr "groupId516.msg" "lambert2SG.gn" -na;
connectAttr "groupId517.msg" "lambert2SG.gn" -na;
connectAttr "groupId518.msg" "lambert2SG.gn" -na;
connectAttr "groupId519.msg" "lambert2SG.gn" -na;
connectAttr "groupId520.msg" "lambert2SG.gn" -na;
connectAttr "groupId521.msg" "lambert2SG.gn" -na;
connectAttr "groupId522.msg" "lambert2SG.gn" -na;
connectAttr "groupId523.msg" "lambert2SG.gn" -na;
connectAttr "groupId524.msg" "lambert2SG.gn" -na;
connectAttr "groupId525.msg" "lambert2SG.gn" -na;
connectAttr "groupId526.msg" "lambert2SG.gn" -na;
connectAttr "groupId527.msg" "lambert2SG.gn" -na;
connectAttr "groupId528.msg" "lambert2SG.gn" -na;
connectAttr "groupId529.msg" "lambert2SG.gn" -na;
connectAttr "groupId530.msg" "lambert2SG.gn" -na;
connectAttr "groupId531.msg" "lambert2SG.gn" -na;
connectAttr "groupId532.msg" "lambert2SG.gn" -na;
connectAttr "groupId533.msg" "lambert2SG.gn" -na;
connectAttr "groupId534.msg" "lambert2SG.gn" -na;
connectAttr "groupId535.msg" "lambert2SG.gn" -na;
connectAttr "groupId536.msg" "lambert2SG.gn" -na;
connectAttr "groupId537.msg" "lambert2SG.gn" -na;
connectAttr "groupId538.msg" "lambert2SG.gn" -na;
connectAttr "groupId539.msg" "lambert2SG.gn" -na;
connectAttr "groupId540.msg" "lambert2SG.gn" -na;
connectAttr "groupId541.msg" "lambert2SG.gn" -na;
connectAttr "groupId542.msg" "lambert2SG.gn" -na;
connectAttr "groupId543.msg" "lambert2SG.gn" -na;
connectAttr "groupId544.msg" "lambert2SG.gn" -na;
connectAttr "groupId545.msg" "lambert2SG.gn" -na;
connectAttr "groupId546.msg" "lambert2SG.gn" -na;
connectAttr "groupId547.msg" "lambert2SG.gn" -na;
connectAttr "groupId548.msg" "lambert2SG.gn" -na;
connectAttr "groupId549.msg" "lambert2SG.gn" -na;
connectAttr "groupId550.msg" "lambert2SG.gn" -na;
connectAttr "groupId551.msg" "lambert2SG.gn" -na;
connectAttr "groupId552.msg" "lambert2SG.gn" -na;
connectAttr "groupId553.msg" "lambert2SG.gn" -na;
connectAttr "groupId554.msg" "lambert2SG.gn" -na;
connectAttr "groupId555.msg" "lambert2SG.gn" -na;
connectAttr "groupId556.msg" "lambert2SG.gn" -na;
connectAttr "groupId557.msg" "lambert2SG.gn" -na;
connectAttr "groupId558.msg" "lambert2SG.gn" -na;
connectAttr "groupId559.msg" "lambert2SG.gn" -na;
connectAttr "groupId560.msg" "lambert2SG.gn" -na;
connectAttr "groupId561.msg" "lambert2SG.gn" -na;
connectAttr "groupId562.msg" "lambert2SG.gn" -na;
connectAttr "groupId563.msg" "lambert2SG.gn" -na;
connectAttr "groupId564.msg" "lambert2SG.gn" -na;
connectAttr "groupId565.msg" "lambert2SG.gn" -na;
connectAttr "groupId566.msg" "lambert2SG.gn" -na;
connectAttr "groupId567.msg" "lambert2SG.gn" -na;
connectAttr "groupId568.msg" "lambert2SG.gn" -na;
connectAttr "groupId569.msg" "lambert2SG.gn" -na;
connectAttr "groupId570.msg" "lambert2SG.gn" -na;
connectAttr "groupId571.msg" "lambert2SG.gn" -na;
connectAttr "groupId572.msg" "lambert2SG.gn" -na;
connectAttr "groupId573.msg" "lambert2SG.gn" -na;
connectAttr "groupId574.msg" "lambert2SG.gn" -na;
connectAttr "groupId575.msg" "lambert2SG.gn" -na;
connectAttr "groupId576.msg" "lambert2SG.gn" -na;
connectAttr "groupId577.msg" "lambert2SG.gn" -na;
connectAttr "groupId578.msg" "lambert2SG.gn" -na;
connectAttr "groupId579.msg" "lambert2SG.gn" -na;
connectAttr "groupId580.msg" "lambert2SG.gn" -na;
connectAttr "groupId581.msg" "lambert2SG.gn" -na;
connectAttr "groupId582.msg" "lambert2SG.gn" -na;
connectAttr "groupId583.msg" "lambert2SG.gn" -na;
connectAttr "groupId584.msg" "lambert2SG.gn" -na;
connectAttr "groupId585.msg" "lambert2SG.gn" -na;
connectAttr "groupId586.msg" "lambert2SG.gn" -na;
connectAttr "groupId587.msg" "lambert2SG.gn" -na;
connectAttr "groupId588.msg" "lambert2SG.gn" -na;
connectAttr "groupId589.msg" "lambert2SG.gn" -na;
connectAttr "groupId590.msg" "lambert2SG.gn" -na;
connectAttr "groupId591.msg" "lambert2SG.gn" -na;
connectAttr "groupId592.msg" "lambert2SG.gn" -na;
connectAttr "groupId593.msg" "lambert2SG.gn" -na;
connectAttr "groupId594.msg" "lambert2SG.gn" -na;
connectAttr "groupId595.msg" "lambert2SG.gn" -na;
connectAttr "groupId596.msg" "lambert2SG.gn" -na;
connectAttr "groupId597.msg" "lambert2SG.gn" -na;
connectAttr "groupId598.msg" "lambert2SG.gn" -na;
connectAttr "groupId599.msg" "lambert2SG.gn" -na;
connectAttr "groupId600.msg" "lambert2SG.gn" -na;
connectAttr "groupId601.msg" "lambert2SG.gn" -na;
connectAttr "groupId602.msg" "lambert2SG.gn" -na;
connectAttr "groupId603.msg" "lambert2SG.gn" -na;
connectAttr "groupId604.msg" "lambert2SG.gn" -na;
connectAttr "groupId605.msg" "lambert2SG.gn" -na;
connectAttr "groupId606.msg" "lambert2SG.gn" -na;
connectAttr "groupId607.msg" "lambert2SG.gn" -na;
connectAttr "groupId608.msg" "lambert2SG.gn" -na;
connectAttr "groupId609.msg" "lambert2SG.gn" -na;
connectAttr "groupId610.msg" "lambert2SG.gn" -na;
connectAttr "groupId611.msg" "lambert2SG.gn" -na;
connectAttr "groupId612.msg" "lambert2SG.gn" -na;
connectAttr "groupId613.msg" "lambert2SG.gn" -na;
connectAttr "groupId614.msg" "lambert2SG.gn" -na;
connectAttr "groupId615.msg" "lambert2SG.gn" -na;
connectAttr "groupId616.msg" "lambert2SG.gn" -na;
connectAttr "groupId617.msg" "lambert2SG.gn" -na;
connectAttr "groupId618.msg" "lambert2SG.gn" -na;
connectAttr "groupId619.msg" "lambert2SG.gn" -na;
connectAttr "groupId620.msg" "lambert2SG.gn" -na;
connectAttr "groupId621.msg" "lambert2SG.gn" -na;
connectAttr "groupId622.msg" "lambert2SG.gn" -na;
connectAttr "groupId623.msg" "lambert2SG.gn" -na;
connectAttr "groupId624.msg" "lambert2SG.gn" -na;
connectAttr "groupId625.msg" "lambert2SG.gn" -na;
connectAttr "groupId626.msg" "lambert2SG.gn" -na;
connectAttr "groupId627.msg" "lambert2SG.gn" -na;
connectAttr "groupId628.msg" "lambert2SG.gn" -na;
connectAttr "groupId629.msg" "lambert2SG.gn" -na;
connectAttr "groupId630.msg" "lambert2SG.gn" -na;
connectAttr "groupId631.msg" "lambert2SG.gn" -na;
connectAttr "groupId632.msg" "lambert2SG.gn" -na;
connectAttr "groupId633.msg" "lambert2SG.gn" -na;
connectAttr "groupId634.msg" "lambert2SG.gn" -na;
connectAttr "groupId635.msg" "lambert2SG.gn" -na;
connectAttr "groupId636.msg" "lambert2SG.gn" -na;
connectAttr "groupId637.msg" "lambert2SG.gn" -na;
connectAttr "groupId638.msg" "lambert2SG.gn" -na;
connectAttr "groupId639.msg" "lambert2SG.gn" -na;
connectAttr "groupId640.msg" "lambert2SG.gn" -na;
connectAttr "groupId641.msg" "lambert2SG.gn" -na;
connectAttr "groupId642.msg" "lambert2SG.gn" -na;
connectAttr "groupId643.msg" "lambert2SG.gn" -na;
connectAttr "groupId644.msg" "lambert2SG.gn" -na;
connectAttr "groupId645.msg" "lambert2SG.gn" -na;
connectAttr "groupId646.msg" "lambert2SG.gn" -na;
connectAttr "groupId647.msg" "lambert2SG.gn" -na;
connectAttr "groupId648.msg" "lambert2SG.gn" -na;
connectAttr "groupId649.msg" "lambert2SG.gn" -na;
connectAttr "groupId650.msg" "lambert2SG.gn" -na;
connectAttr "groupId652.msg" "lambert2SG.gn" -na;
connectAttr "groupId653.msg" "lambert2SG.gn" -na;
connectAttr "groupId654.msg" "lambert2SG.gn" -na;
connectAttr "groupId655.msg" "lambert2SG.gn" -na;
connectAttr "groupId656.msg" "lambert2SG.gn" -na;
connectAttr "groupId657.msg" "lambert2SG.gn" -na;
connectAttr "groupId658.msg" "lambert2SG.gn" -na;
connectAttr "groupId659.msg" "lambert2SG.gn" -na;
connectAttr "groupId660.msg" "lambert2SG.gn" -na;
connectAttr "groupId661.msg" "lambert2SG.gn" -na;
connectAttr "groupId662.msg" "lambert2SG.gn" -na;
connectAttr "groupId663.msg" "lambert2SG.gn" -na;
connectAttr "groupId664.msg" "lambert2SG.gn" -na;
connectAttr "groupId665.msg" "lambert2SG.gn" -na;
connectAttr "groupId666.msg" "lambert2SG.gn" -na;
connectAttr "groupId667.msg" "lambert2SG.gn" -na;
connectAttr "groupId668.msg" "lambert2SG.gn" -na;
connectAttr "groupId669.msg" "lambert2SG.gn" -na;
connectAttr "groupId670.msg" "lambert2SG.gn" -na;
connectAttr "groupId671.msg" "lambert2SG.gn" -na;
connectAttr "groupId672.msg" "lambert2SG.gn" -na;
connectAttr "groupId673.msg" "lambert2SG.gn" -na;
connectAttr "groupId674.msg" "lambert2SG.gn" -na;
connectAttr "groupId675.msg" "lambert2SG.gn" -na;
connectAttr "groupId676.msg" "lambert2SG.gn" -na;
connectAttr "groupId677.msg" "lambert2SG.gn" -na;
connectAttr "groupId678.msg" "lambert2SG.gn" -na;
connectAttr "groupId679.msg" "lambert2SG.gn" -na;
connectAttr "groupId680.msg" "lambert2SG.gn" -na;
connectAttr "groupId681.msg" "lambert2SG.gn" -na;
connectAttr "groupId682.msg" "lambert2SG.gn" -na;
connectAttr "groupId683.msg" "lambert2SG.gn" -na;
connectAttr "groupId684.msg" "lambert2SG.gn" -na;
connectAttr "groupId685.msg" "lambert2SG.gn" -na;
connectAttr "groupId686.msg" "lambert2SG.gn" -na;
connectAttr "groupId687.msg" "lambert2SG.gn" -na;
connectAttr "groupId688.msg" "lambert2SG.gn" -na;
connectAttr "groupId689.msg" "lambert2SG.gn" -na;
connectAttr "groupId690.msg" "lambert2SG.gn" -na;
connectAttr "groupId691.msg" "lambert2SG.gn" -na;
connectAttr "groupId692.msg" "lambert2SG.gn" -na;
connectAttr "groupId693.msg" "lambert2SG.gn" -na;
connectAttr "groupId694.msg" "lambert2SG.gn" -na;
connectAttr "groupId695.msg" "lambert2SG.gn" -na;
connectAttr "groupId696.msg" "lambert2SG.gn" -na;
connectAttr "groupId697.msg" "lambert2SG.gn" -na;
connectAttr "groupId698.msg" "lambert2SG.gn" -na;
connectAttr "groupId699.msg" "lambert2SG.gn" -na;
connectAttr "groupId700.msg" "lambert2SG.gn" -na;
connectAttr "groupId701.msg" "lambert2SG.gn" -na;
connectAttr "groupId702.msg" "lambert2SG.gn" -na;
connectAttr "groupId703.msg" "lambert2SG.gn" -na;
connectAttr "groupId704.msg" "lambert2SG.gn" -na;
connectAttr "groupId705.msg" "lambert2SG.gn" -na;
connectAttr "groupId706.msg" "lambert2SG.gn" -na;
connectAttr "groupId707.msg" "lambert2SG.gn" -na;
connectAttr "groupId708.msg" "lambert2SG.gn" -na;
connectAttr "groupId709.msg" "lambert2SG.gn" -na;
connectAttr "groupId710.msg" "lambert2SG.gn" -na;
connectAttr "groupId711.msg" "lambert2SG.gn" -na;
connectAttr "groupId712.msg" "lambert2SG.gn" -na;
connectAttr "groupId713.msg" "lambert2SG.gn" -na;
connectAttr "groupId714.msg" "lambert2SG.gn" -na;
connectAttr "groupId715.msg" "lambert2SG.gn" -na;
connectAttr "groupId716.msg" "lambert2SG.gn" -na;
connectAttr "groupId717.msg" "lambert2SG.gn" -na;
connectAttr "groupId718.msg" "lambert2SG.gn" -na;
connectAttr "groupId719.msg" "lambert2SG.gn" -na;
connectAttr "groupId720.msg" "lambert2SG.gn" -na;
connectAttr "groupId721.msg" "lambert2SG.gn" -na;
connectAttr "groupId723.msg" "lambert2SG.gn" -na;
connectAttr "groupId725.msg" "lambert2SG.gn" -na;
connectAttr "groupId726.msg" "lambert2SG.gn" -na;
connectAttr "groupId728.msg" "lambert2SG.gn" -na;
connectAttr "groupId731.msg" "lambert2SG.gn" -na;
connectAttr "groupId732.msg" "lambert2SG.gn" -na;
connectAttr "groupId734.msg" "lambert2SG.gn" -na;
connectAttr "groupId735.msg" "lambert2SG.gn" -na;
connectAttr "groupId739.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "polySurfaceShape197.o" "polyCBoolOp8.ip[0]";
connectAttr "|group57|pasted__pCube25|transform153|pasted__pCubeShape25.o" "polyCBoolOp8.ip[1]"
		;
connectAttr "polySurfaceShape197.wm" "polyCBoolOp8.im[0]";
connectAttr "|group57|pasted__pCube25|transform153|pasted__pCubeShape25.wm" "polyCBoolOp8.im[1]"
		;
connectAttr "polyTweakUV3.out" "groupParts163.ig";
connectAttr "groupId489.id" "groupParts163.gi";
connectAttr "pasted__polyCube7.out" "groupParts164.ig";
connectAttr "groupId491.id" "groupParts164.gi";
connectAttr "|polySurface237|transform156|polySurface233Shape.o" "polyCBoolOp9.ip[0]"
		;
connectAttr "|group58|pasted__pCube25|transform155|pasted__pCubeShape25.o" "polyCBoolOp9.ip[1]"
		;
connectAttr "|polySurface237|transform156|polySurface233Shape.wm" "polyCBoolOp9.im[0]"
		;
connectAttr "|group58|pasted__pCube25|transform155|pasted__pCubeShape25.wm" "polyCBoolOp9.im[1]"
		;
connectAttr "polyCBoolOp3.out" "groupParts165.ig";
connectAttr "groupId494.id" "groupParts165.gi";
connectAttr "pasted__polyCube8.out" "groupParts166.ig";
connectAttr "groupId496.id" "groupParts166.gi";
connectAttr "polySurfaceShape162.o" "polyCBoolOp10.ip[0]";
connectAttr "|group59|pasted__pCube25|transform157|pasted__pCubeShape25.o" "polyCBoolOp10.ip[1]"
		;
connectAttr "polySurfaceShape162.wm" "polyCBoolOp10.im[0]";
connectAttr "|group59|pasted__pCube25|transform157|pasted__pCubeShape25.wm" "polyCBoolOp10.im[1]"
		;
connectAttr "polySeparate2.out[0]" "groupParts167.ig";
connectAttr "groupId499.id" "groupParts167.gi";
connectAttr "pasted__polyCube9.out" "groupParts168.ig";
connectAttr "groupId501.id" "groupParts168.gi";
connectAttr "polyCBoolOp5.out" "polySplit5.ip";
connectAttr "polySplit5.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyTweakUV5.ip";
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "|polySurface238|transform169|polySurface236Shape.wm" "polyMergeVert1.mp"
		;
connectAttr "polyTweakUV5.out" "polyTweak1.ip";
connectAttr "polyMergeVert1.out" "polyTweakUV6.ip";
connectAttr "polyTweak2.out" "polyMergeVert2.ip";
connectAttr "|polySurface238|transform169|polySurface236Shape.wm" "polyMergeVert2.mp"
		;
connectAttr "polyTweakUV6.out" "polyTweak2.ip";
connectAttr "polyMergeVert2.out" "polyTweakUV7.ip";
connectAttr "polyTweak3.out" "polyMergeVert3.ip";
connectAttr "|polySurface238|transform169|polySurface236Shape.wm" "polyMergeVert3.mp"
		;
connectAttr "polyTweakUV7.out" "polyTweak3.ip";
connectAttr "polyMergeVert3.out" "polyTweakUV8.ip";
connectAttr "polyTweak4.out" "polyMergeVert4.ip";
connectAttr "|polySurface238|transform169|polySurface236Shape.wm" "polyMergeVert4.mp"
		;
connectAttr "polyTweakUV8.out" "polyTweak4.ip";
connectAttr "polyMergeVert4.out" "polyAppend1.ip";
connectAttr "polyAppend1.out" "polyAppend2.ip";
connectAttr "polyAppend2.out" "polyAppend3.ip";
connectAttr "polyAppend3.out" "polyAppend4.ip";
connectAttr "polyAppend4.out" "polyAppend5.ip";
connectAttr "polyAppend5.out" "polyAppend6.ip";
connectAttr "polyAppend6.out" "polyTweakUV9.ip";
connectAttr "polyTweak5.out" "polyMergeVert5.ip";
connectAttr "|polySurface238|transform169|polySurface236Shape.wm" "polyMergeVert5.mp"
		;
connectAttr "polyTweakUV9.out" "polyTweak5.ip";
connectAttr "polyMergeVert5.out" "polyTweakUV10.ip";
connectAttr "polyTweak6.out" "polyMergeVert6.ip";
connectAttr "|polySurface238|transform169|polySurface236Shape.wm" "polyMergeVert6.mp"
		;
connectAttr "polyTweakUV10.out" "polyTweak6.ip";
connectAttr "polyMergeVert6.out" "polyTweakUV11.ip";
connectAttr "polyTweak7.out" "polyMergeVert7.ip";
connectAttr "|polySurface238|transform169|polySurface236Shape.wm" "polyMergeVert7.mp"
		;
connectAttr "polyTweakUV11.out" "polyTweak7.ip";
connectAttr "polySurfaceShape199.o" "polyCBoolOp11.ip[0]";
connectAttr "|group60|pasted__pCube25|transform159|pasted__pCubeShape25.o" "polyCBoolOp11.ip[1]"
		;
connectAttr "polySurfaceShape199.wm" "polyCBoolOp11.im[0]";
connectAttr "|group60|pasted__pCube25|transform159|pasted__pCubeShape25.wm" "polyCBoolOp11.im[1]"
		;
connectAttr "polyTweakUV2.out" "groupParts169.ig";
connectAttr "groupId504.id" "groupParts169.gi";
connectAttr "pasted__polyCube10.out" "groupParts170.ig";
connectAttr "groupId506.id" "groupParts170.gi";
connectAttr "polySurface239Shape.o" "polyCBoolOp12.ip[0]";
connectAttr "|group61|pasted__pCube25|transform161|pasted__pCubeShape25.o" "polyCBoolOp12.ip[1]"
		;
connectAttr "polySurface239Shape.wm" "polyCBoolOp12.im[0]";
connectAttr "|group61|pasted__pCube25|transform161|pasted__pCubeShape25.wm" "polyCBoolOp12.im[1]"
		;
connectAttr "pasted__polyCube11.out" "groupParts171.ig";
connectAttr "groupId509.id" "groupParts171.gi";
connectAttr "polySurfaceShape163.o" "polyUnite5.ip[0]";
connectAttr "polySurfaceShape164.o" "polyUnite5.ip[1]";
connectAttr "polySurfaceShape165.o" "polyUnite5.ip[2]";
connectAttr "polySurfaceShape166.o" "polyUnite5.ip[3]";
connectAttr "polySurfaceShape167.o" "polyUnite5.ip[4]";
connectAttr "polySurfaceShape168.o" "polyUnite5.ip[5]";
connectAttr "polySurfaceShape169.o" "polyUnite5.ip[6]";
connectAttr "polySurfaceShape170.o" "polyUnite5.ip[7]";
connectAttr "polySurfaceShape171.o" "polyUnite5.ip[8]";
connectAttr "polySurfaceShape172.o" "polyUnite5.ip[9]";
connectAttr "polySurfaceShape173.o" "polyUnite5.ip[10]";
connectAttr "polySurfaceShape174.o" "polyUnite5.ip[11]";
connectAttr "polySurfaceShape175.o" "polyUnite5.ip[12]";
connectAttr "polySurfaceShape176.o" "polyUnite5.ip[13]";
connectAttr "polySurfaceShape177.o" "polyUnite5.ip[14]";
connectAttr "polySurfaceShape178.o" "polyUnite5.ip[15]";
connectAttr "polySurfaceShape179.o" "polyUnite5.ip[16]";
connectAttr "polySurfaceShape180.o" "polyUnite5.ip[17]";
connectAttr "polySurfaceShape181.o" "polyUnite5.ip[18]";
connectAttr "polySurfaceShape182.o" "polyUnite5.ip[19]";
connectAttr "polySurfaceShape183.o" "polyUnite5.ip[20]";
connectAttr "polySurfaceShape184.o" "polyUnite5.ip[21]";
connectAttr "polySurfaceShape185.o" "polyUnite5.ip[22]";
connectAttr "polySurfaceShape186.o" "polyUnite5.ip[23]";
connectAttr "polySurfaceShape187.o" "polyUnite5.ip[24]";
connectAttr "polySurfaceShape188.o" "polyUnite5.ip[25]";
connectAttr "polySurfaceShape189.o" "polyUnite5.ip[26]";
connectAttr "polySurfaceShape190.o" "polyUnite5.ip[27]";
connectAttr "polySurfaceShape191.o" "polyUnite5.ip[28]";
connectAttr "polySurfaceShape192.o" "polyUnite5.ip[29]";
connectAttr "polySurfaceShape193.o" "polyUnite5.ip[30]";
connectAttr "polySurfaceShape194.o" "polyUnite5.ip[31]";
connectAttr "polySurfaceShape195.o" "polyUnite5.ip[32]";
connectAttr "polySurfaceShape200.o" "polyUnite5.ip[33]";
connectAttr "polySurfaceShape201.o" "polyUnite5.ip[34]";
connectAttr "polySurfaceShape202.o" "polyUnite5.ip[35]";
connectAttr "polySurfaceShape203.o" "polyUnite5.ip[36]";
connectAttr "polySurfaceShape204.o" "polyUnite5.ip[37]";
connectAttr "polySurfaceShape205.o" "polyUnite5.ip[38]";
connectAttr "polySurfaceShape206.o" "polyUnite5.ip[39]";
connectAttr "polySurfaceShape208.o" "polyUnite5.ip[40]";
connectAttr "polySurfaceShape209.o" "polyUnite5.ip[41]";
connectAttr "polySurfaceShape210.o" "polyUnite5.ip[42]";
connectAttr "polySurfaceShape211.o" "polyUnite5.ip[43]";
connectAttr "polySurfaceShape212.o" "polyUnite5.ip[44]";
connectAttr "polySurfaceShape213.o" "polyUnite5.ip[45]";
connectAttr "polySurfaceShape214.o" "polyUnite5.ip[46]";
connectAttr "polySurfaceShape215.o" "polyUnite5.ip[47]";
connectAttr "polySurfaceShape216.o" "polyUnite5.ip[48]";
connectAttr "polySurfaceShape217.o" "polyUnite5.ip[49]";
connectAttr "polySurfaceShape218.o" "polyUnite5.ip[50]";
connectAttr "polySurfaceShape219.o" "polyUnite5.ip[51]";
connectAttr "polySurfaceShape220.o" "polyUnite5.ip[52]";
connectAttr "polySurfaceShape221.o" "polyUnite5.ip[53]";
connectAttr "polySurfaceShape222.o" "polyUnite5.ip[54]";
connectAttr "polySurfaceShape223.o" "polyUnite5.ip[55]";
connectAttr "polySurfaceShape224.o" "polyUnite5.ip[56]";
connectAttr "polySurfaceShape225.o" "polyUnite5.ip[57]";
connectAttr "polySurfaceShape226.o" "polyUnite5.ip[58]";
connectAttr "polySurfaceShape227.o" "polyUnite5.ip[59]";
connectAttr "polySurfaceShape228.o" "polyUnite5.ip[60]";
connectAttr "polySurfaceShape229.o" "polyUnite5.ip[61]";
connectAttr "polySurfaceShape230.o" "polyUnite5.ip[62]";
connectAttr "polySurfaceShape231.o" "polyUnite5.ip[63]";
connectAttr "polySurface199Shape.o" "polyUnite5.ip[64]";
connectAttr "|polySurface238|transform169|polySurface236Shape.o" "polyUnite5.ip[65]"
		;
connectAttr "polySurface208Shape.o" "polyUnite5.ip[66]";
connectAttr "polySurface197Shape.o" "polyUnite5.ip[67]";
connectAttr "polySurface198Shape.o" "polyUnite5.ip[68]";
connectAttr "polySurface163Shape.o" "polyUnite5.ip[69]";
connectAttr "polySurface200Shape.o" "polyUnite5.ip[70]";
connectAttr "polySurface240Shape.o" "polyUnite5.ip[71]";
connectAttr "polySurfaceShape163.wm" "polyUnite5.im[0]";
connectAttr "polySurfaceShape164.wm" "polyUnite5.im[1]";
connectAttr "polySurfaceShape165.wm" "polyUnite5.im[2]";
connectAttr "polySurfaceShape166.wm" "polyUnite5.im[3]";
connectAttr "polySurfaceShape167.wm" "polyUnite5.im[4]";
connectAttr "polySurfaceShape168.wm" "polyUnite5.im[5]";
connectAttr "polySurfaceShape169.wm" "polyUnite5.im[6]";
connectAttr "polySurfaceShape170.wm" "polyUnite5.im[7]";
connectAttr "polySurfaceShape171.wm" "polyUnite5.im[8]";
connectAttr "polySurfaceShape172.wm" "polyUnite5.im[9]";
connectAttr "polySurfaceShape173.wm" "polyUnite5.im[10]";
connectAttr "polySurfaceShape174.wm" "polyUnite5.im[11]";
connectAttr "polySurfaceShape175.wm" "polyUnite5.im[12]";
connectAttr "polySurfaceShape176.wm" "polyUnite5.im[13]";
connectAttr "polySurfaceShape177.wm" "polyUnite5.im[14]";
connectAttr "polySurfaceShape178.wm" "polyUnite5.im[15]";
connectAttr "polySurfaceShape179.wm" "polyUnite5.im[16]";
connectAttr "polySurfaceShape180.wm" "polyUnite5.im[17]";
connectAttr "polySurfaceShape181.wm" "polyUnite5.im[18]";
connectAttr "polySurfaceShape182.wm" "polyUnite5.im[19]";
connectAttr "polySurfaceShape183.wm" "polyUnite5.im[20]";
connectAttr "polySurfaceShape184.wm" "polyUnite5.im[21]";
connectAttr "polySurfaceShape185.wm" "polyUnite5.im[22]";
connectAttr "polySurfaceShape186.wm" "polyUnite5.im[23]";
connectAttr "polySurfaceShape187.wm" "polyUnite5.im[24]";
connectAttr "polySurfaceShape188.wm" "polyUnite5.im[25]";
connectAttr "polySurfaceShape189.wm" "polyUnite5.im[26]";
connectAttr "polySurfaceShape190.wm" "polyUnite5.im[27]";
connectAttr "polySurfaceShape191.wm" "polyUnite5.im[28]";
connectAttr "polySurfaceShape192.wm" "polyUnite5.im[29]";
connectAttr "polySurfaceShape193.wm" "polyUnite5.im[30]";
connectAttr "polySurfaceShape194.wm" "polyUnite5.im[31]";
connectAttr "polySurfaceShape195.wm" "polyUnite5.im[32]";
connectAttr "polySurfaceShape200.wm" "polyUnite5.im[33]";
connectAttr "polySurfaceShape201.wm" "polyUnite5.im[34]";
connectAttr "polySurfaceShape202.wm" "polyUnite5.im[35]";
connectAttr "polySurfaceShape203.wm" "polyUnite5.im[36]";
connectAttr "polySurfaceShape204.wm" "polyUnite5.im[37]";
connectAttr "polySurfaceShape205.wm" "polyUnite5.im[38]";
connectAttr "polySurfaceShape206.wm" "polyUnite5.im[39]";
connectAttr "polySurfaceShape208.wm" "polyUnite5.im[40]";
connectAttr "polySurfaceShape209.wm" "polyUnite5.im[41]";
connectAttr "polySurfaceShape210.wm" "polyUnite5.im[42]";
connectAttr "polySurfaceShape211.wm" "polyUnite5.im[43]";
connectAttr "polySurfaceShape212.wm" "polyUnite5.im[44]";
connectAttr "polySurfaceShape213.wm" "polyUnite5.im[45]";
connectAttr "polySurfaceShape214.wm" "polyUnite5.im[46]";
connectAttr "polySurfaceShape215.wm" "polyUnite5.im[47]";
connectAttr "polySurfaceShape216.wm" "polyUnite5.im[48]";
connectAttr "polySurfaceShape217.wm" "polyUnite5.im[49]";
connectAttr "polySurfaceShape218.wm" "polyUnite5.im[50]";
connectAttr "polySurfaceShape219.wm" "polyUnite5.im[51]";
connectAttr "polySurfaceShape220.wm" "polyUnite5.im[52]";
connectAttr "polySurfaceShape221.wm" "polyUnite5.im[53]";
connectAttr "polySurfaceShape222.wm" "polyUnite5.im[54]";
connectAttr "polySurfaceShape223.wm" "polyUnite5.im[55]";
connectAttr "polySurfaceShape224.wm" "polyUnite5.im[56]";
connectAttr "polySurfaceShape225.wm" "polyUnite5.im[57]";
connectAttr "polySurfaceShape226.wm" "polyUnite5.im[58]";
connectAttr "polySurfaceShape227.wm" "polyUnite5.im[59]";
connectAttr "polySurfaceShape228.wm" "polyUnite5.im[60]";
connectAttr "polySurfaceShape229.wm" "polyUnite5.im[61]";
connectAttr "polySurfaceShape230.wm" "polyUnite5.im[62]";
connectAttr "polySurfaceShape231.wm" "polyUnite5.im[63]";
connectAttr "polySurface199Shape.wm" "polyUnite5.im[64]";
connectAttr "|polySurface238|transform169|polySurface236Shape.wm" "polyUnite5.im[65]"
		;
connectAttr "polySurface208Shape.wm" "polyUnite5.im[66]";
connectAttr "polySurface197Shape.wm" "polyUnite5.im[67]";
connectAttr "polySurface198Shape.wm" "polyUnite5.im[68]";
connectAttr "polySurface163Shape.wm" "polyUnite5.im[69]";
connectAttr "polySurface200Shape.wm" "polyUnite5.im[70]";
connectAttr "polySurface240Shape.wm" "polyUnite5.im[71]";
connectAttr "polySeparate2.out[1]" "groupParts172.ig";
connectAttr "groupId512.id" "groupParts172.gi";
connectAttr "polySeparate2.out[2]" "groupParts173.ig";
connectAttr "groupId514.id" "groupParts173.gi";
connectAttr "polySeparate2.out[3]" "groupParts174.ig";
connectAttr "groupId516.id" "groupParts174.gi";
connectAttr "polySeparate2.out[4]" "groupParts175.ig";
connectAttr "groupId518.id" "groupParts175.gi";
connectAttr "polySeparate2.out[5]" "groupParts176.ig";
connectAttr "groupId520.id" "groupParts176.gi";
connectAttr "polySeparate2.out[6]" "groupParts177.ig";
connectAttr "groupId522.id" "groupParts177.gi";
connectAttr "polySeparate2.out[7]" "groupParts178.ig";
connectAttr "groupId524.id" "groupParts178.gi";
connectAttr "polySeparate2.out[8]" "groupParts179.ig";
connectAttr "groupId526.id" "groupParts179.gi";
connectAttr "polySeparate2.out[9]" "groupParts180.ig";
connectAttr "groupId528.id" "groupParts180.gi";
connectAttr "polySeparate2.out[10]" "groupParts181.ig";
connectAttr "groupId530.id" "groupParts181.gi";
connectAttr "polyExtrudeFace2.out" "groupParts182.ig";
connectAttr "groupId532.id" "groupParts182.gi";
connectAttr "polySeparate2.out[12]" "groupParts183.ig";
connectAttr "groupId534.id" "groupParts183.gi";
connectAttr "polySeparate2.out[13]" "groupParts184.ig";
connectAttr "groupId536.id" "groupParts184.gi";
connectAttr "polySeparate2.out[14]" "groupParts185.ig";
connectAttr "groupId538.id" "groupParts185.gi";
connectAttr "polySeparate2.out[15]" "groupParts186.ig";
connectAttr "groupId540.id" "groupParts186.gi";
connectAttr "polySeparate2.out[16]" "groupParts187.ig";
connectAttr "groupId542.id" "groupParts187.gi";
connectAttr "polySeparate2.out[17]" "groupParts188.ig";
connectAttr "groupId544.id" "groupParts188.gi";
connectAttr "polySeparate2.out[18]" "groupParts189.ig";
connectAttr "groupId546.id" "groupParts189.gi";
connectAttr "polySeparate2.out[19]" "groupParts190.ig";
connectAttr "groupId548.id" "groupParts190.gi";
connectAttr "polySeparate2.out[20]" "groupParts191.ig";
connectAttr "groupId550.id" "groupParts191.gi";
connectAttr "polySeparate2.out[21]" "groupParts192.ig";
connectAttr "groupId552.id" "groupParts192.gi";
connectAttr "polySeparate2.out[22]" "groupParts193.ig";
connectAttr "groupId554.id" "groupParts193.gi";
connectAttr "polySeparate2.out[23]" "groupParts194.ig";
connectAttr "groupId556.id" "groupParts194.gi";
connectAttr "polySeparate2.out[24]" "groupParts195.ig";
connectAttr "groupId558.id" "groupParts195.gi";
connectAttr "polySeparate2.out[25]" "groupParts196.ig";
connectAttr "groupId560.id" "groupParts196.gi";
connectAttr "polySeparate2.out[26]" "groupParts197.ig";
connectAttr "groupId562.id" "groupParts197.gi";
connectAttr "polySeparate2.out[27]" "groupParts198.ig";
connectAttr "groupId564.id" "groupParts198.gi";
connectAttr "polySeparate2.out[28]" "groupParts199.ig";
connectAttr "groupId566.id" "groupParts199.gi";
connectAttr "polySeparate2.out[29]" "groupParts200.ig";
connectAttr "groupId568.id" "groupParts200.gi";
connectAttr "polySeparate2.out[30]" "groupParts201.ig";
connectAttr "groupId570.id" "groupParts201.gi";
connectAttr "polySeparate2.out[31]" "groupParts202.ig";
connectAttr "groupId572.id" "groupParts202.gi";
connectAttr "polySeparate2.out[32]" "groupParts203.ig";
connectAttr "groupId574.id" "groupParts203.gi";
connectAttr "polySeparate2.out[33]" "groupParts204.ig";
connectAttr "groupId576.id" "groupParts204.gi";
connectAttr "polyPlanarProj3.out" "groupParts205.ig";
connectAttr "groupId578.id" "groupParts205.gi";
connectAttr "polySeparate2.out[39]" "groupParts206.ig";
connectAttr "groupId580.id" "groupParts206.gi";
connectAttr "polySeparate2.out[40]" "groupParts207.ig";
connectAttr "groupId582.id" "groupParts207.gi";
connectAttr "polySeparate2.out[41]" "groupParts208.ig";
connectAttr "groupId584.id" "groupParts208.gi";
connectAttr "polySeparate2.out[42]" "groupParts209.ig";
connectAttr "groupId586.id" "groupParts209.gi";
connectAttr "polySeparate2.out[43]" "groupParts210.ig";
connectAttr "groupId588.id" "groupParts210.gi";
connectAttr "polySeparate2.out[44]" "groupParts211.ig";
connectAttr "groupId590.id" "groupParts211.gi";
connectAttr "polySeparate2.out[46]" "groupParts212.ig";
connectAttr "groupId592.id" "groupParts212.gi";
connectAttr "polySeparate2.out[47]" "groupParts213.ig";
connectAttr "groupId594.id" "groupParts213.gi";
connectAttr "polySeparate2.out[48]" "groupParts214.ig";
connectAttr "groupId596.id" "groupParts214.gi";
connectAttr "polySeparate2.out[49]" "groupParts215.ig";
connectAttr "groupId598.id" "groupParts215.gi";
connectAttr "polySeparate2.out[50]" "groupParts216.ig";
connectAttr "groupId600.id" "groupParts216.gi";
connectAttr "polySeparate2.out[51]" "groupParts217.ig";
connectAttr "groupId602.id" "groupParts217.gi";
connectAttr "polySeparate2.out[52]" "groupParts218.ig";
connectAttr "groupId604.id" "groupParts218.gi";
connectAttr "polySeparate2.out[53]" "groupParts219.ig";
connectAttr "groupId606.id" "groupParts219.gi";
connectAttr "polySeparate2.out[54]" "groupParts220.ig";
connectAttr "groupId608.id" "groupParts220.gi";
connectAttr "polySeparate2.out[55]" "groupParts221.ig";
connectAttr "groupId610.id" "groupParts221.gi";
connectAttr "polySeparate2.out[56]" "groupParts222.ig";
connectAttr "groupId612.id" "groupParts222.gi";
connectAttr "polySeparate2.out[57]" "groupParts223.ig";
connectAttr "groupId614.id" "groupParts223.gi";
connectAttr "polySeparate2.out[58]" "groupParts224.ig";
connectAttr "groupId616.id" "groupParts224.gi";
connectAttr "polySeparate2.out[59]" "groupParts225.ig";
connectAttr "groupId618.id" "groupParts225.gi";
connectAttr "polySeparate2.out[60]" "groupParts226.ig";
connectAttr "groupId620.id" "groupParts226.gi";
connectAttr "polySeparate2.out[61]" "groupParts227.ig";
connectAttr "groupId622.id" "groupParts227.gi";
connectAttr "polySeparate2.out[62]" "groupParts228.ig";
connectAttr "groupId624.id" "groupParts228.gi";
connectAttr "polySeparate2.out[63]" "groupParts229.ig";
connectAttr "groupId626.id" "groupParts229.gi";
connectAttr "polySeparate2.out[64]" "groupParts230.ig";
connectAttr "groupId628.id" "groupParts230.gi";
connectAttr "polySeparate2.out[65]" "groupParts231.ig";
connectAttr "groupId630.id" "groupParts231.gi";
connectAttr "polySeparate2.out[66]" "groupParts232.ig";
connectAttr "groupId632.id" "groupParts232.gi";
connectAttr "polySeparate2.out[67]" "groupParts233.ig";
connectAttr "groupId634.id" "groupParts233.gi";
connectAttr "polySeparate2.out[68]" "groupParts234.ig";
connectAttr "groupId636.id" "groupParts234.gi";
connectAttr "polySeparate2.out[69]" "groupParts235.ig";
connectAttr "groupId638.id" "groupParts235.gi";
connectAttr "polyCBoolOp4.out" "groupParts236.ig";
connectAttr "groupId640.id" "groupParts236.gi";
connectAttr "polyMergeVert7.out" "groupParts237.ig";
connectAttr "groupId642.id" "groupParts237.gi";
connectAttr "polyCBoolOp6.out" "groupParts238.ig";
connectAttr "groupId644.id" "groupParts238.gi";
connectAttr "polyCBoolOp7.out" "groupParts239.ig";
connectAttr "groupId646.id" "groupParts239.gi";
connectAttr "polyCBoolOp8.out" "groupParts240.ig";
connectAttr "groupId648.id" "groupParts240.gi";
connectAttr "polyUnite5.out" "groupParts241.ig";
connectAttr "groupId650.id" "groupParts241.gi";
connectAttr "groupParts241.og" "groupParts242.ig";
connectAttr "groupId651.id" "groupParts242.gi";
connectAttr "polySurface164Shape.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[0]" "groupParts243.ig";
connectAttr "groupId652.id" "groupParts243.gi";
connectAttr "polySeparate3.out[1]" "groupParts244.ig";
connectAttr "groupId653.id" "groupParts244.gi";
connectAttr "polySeparate3.out[2]" "groupParts245.ig";
connectAttr "groupId654.id" "groupParts245.gi";
connectAttr "polySeparate3.out[3]" "groupParts246.ig";
connectAttr "groupId655.id" "groupParts246.gi";
connectAttr "polySeparate3.out[4]" "groupParts247.ig";
connectAttr "groupId656.id" "groupParts247.gi";
connectAttr "polySeparate3.out[5]" "groupParts248.ig";
connectAttr "groupId657.id" "groupParts248.gi";
connectAttr "polySeparate3.out[6]" "groupParts249.ig";
connectAttr "groupId658.id" "groupParts249.gi";
connectAttr "polySeparate3.out[7]" "groupParts250.ig";
connectAttr "groupId659.id" "groupParts250.gi";
connectAttr "polySeparate3.out[8]" "groupParts251.ig";
connectAttr "groupId660.id" "groupParts251.gi";
connectAttr "polySeparate3.out[9]" "groupParts252.ig";
connectAttr "groupId661.id" "groupParts252.gi";
connectAttr "polySeparate3.out[10]" "groupParts253.ig";
connectAttr "groupId662.id" "groupParts253.gi";
connectAttr "polySeparate3.out[11]" "groupParts254.ig";
connectAttr "groupId663.id" "groupParts254.gi";
connectAttr "polySeparate3.out[12]" "groupParts255.ig";
connectAttr "groupId664.id" "groupParts255.gi";
connectAttr "polySeparate3.out[13]" "groupParts256.ig";
connectAttr "groupId665.id" "groupParts256.gi";
connectAttr "polySeparate3.out[14]" "groupParts257.ig";
connectAttr "groupId666.id" "groupParts257.gi";
connectAttr "polySeparate3.out[15]" "groupParts258.ig";
connectAttr "groupId667.id" "groupParts258.gi";
connectAttr "polySeparate3.out[16]" "groupParts259.ig";
connectAttr "groupId668.id" "groupParts259.gi";
connectAttr "polySeparate3.out[17]" "groupParts260.ig";
connectAttr "groupId669.id" "groupParts260.gi";
connectAttr "polySeparate3.out[18]" "groupParts261.ig";
connectAttr "groupId670.id" "groupParts261.gi";
connectAttr "polySeparate3.out[19]" "groupParts262.ig";
connectAttr "groupId671.id" "groupParts262.gi";
connectAttr "polySeparate3.out[20]" "groupParts263.ig";
connectAttr "groupId672.id" "groupParts263.gi";
connectAttr "polySeparate3.out[21]" "groupParts264.ig";
connectAttr "groupId673.id" "groupParts264.gi";
connectAttr "polySeparate3.out[22]" "groupParts265.ig";
connectAttr "groupId674.id" "groupParts265.gi";
connectAttr "polySeparate3.out[23]" "groupParts266.ig";
connectAttr "groupId675.id" "groupParts266.gi";
connectAttr "polySeparate3.out[24]" "groupParts267.ig";
connectAttr "groupId676.id" "groupParts267.gi";
connectAttr "polySeparate3.out[25]" "groupParts268.ig";
connectAttr "groupId677.id" "groupParts268.gi";
connectAttr "polySeparate3.out[26]" "groupParts269.ig";
connectAttr "groupId678.id" "groupParts269.gi";
connectAttr "polySeparate3.out[27]" "groupParts270.ig";
connectAttr "groupId679.id" "groupParts270.gi";
connectAttr "polySeparate3.out[28]" "groupParts271.ig";
connectAttr "groupId680.id" "groupParts271.gi";
connectAttr "polySeparate3.out[29]" "groupParts272.ig";
connectAttr "groupId681.id" "groupParts272.gi";
connectAttr "polySeparate3.out[30]" "groupParts273.ig";
connectAttr "groupId682.id" "groupParts273.gi";
connectAttr "polySeparate3.out[31]" "groupParts274.ig";
connectAttr "groupId683.id" "groupParts274.gi";
connectAttr "polySeparate3.out[32]" "groupParts275.ig";
connectAttr "groupId684.id" "groupParts275.gi";
connectAttr "polySeparate3.out[33]" "groupParts276.ig";
connectAttr "groupId685.id" "groupParts276.gi";
connectAttr "polySeparate3.out[34]" "groupParts277.ig";
connectAttr "groupId686.id" "groupParts277.gi";
connectAttr "polySeparate3.out[35]" "groupParts278.ig";
connectAttr "groupId687.id" "groupParts278.gi";
connectAttr "polySeparate3.out[36]" "groupParts279.ig";
connectAttr "groupId688.id" "groupParts279.gi";
connectAttr "polySeparate3.out[37]" "groupParts280.ig";
connectAttr "groupId689.id" "groupParts280.gi";
connectAttr "polySeparate3.out[38]" "groupParts281.ig";
connectAttr "groupId690.id" "groupParts281.gi";
connectAttr "polySeparate3.out[39]" "groupParts282.ig";
connectAttr "groupId691.id" "groupParts282.gi";
connectAttr "polySeparate3.out[40]" "groupParts283.ig";
connectAttr "groupId692.id" "groupParts283.gi";
connectAttr "polySeparate3.out[41]" "groupParts284.ig";
connectAttr "groupId693.id" "groupParts284.gi";
connectAttr "polySeparate3.out[42]" "groupParts285.ig";
connectAttr "groupId694.id" "groupParts285.gi";
connectAttr "polySeparate3.out[43]" "groupParts286.ig";
connectAttr "groupId695.id" "groupParts286.gi";
connectAttr "polySeparate3.out[44]" "groupParts287.ig";
connectAttr "groupId696.id" "groupParts287.gi";
connectAttr "polySeparate3.out[45]" "groupParts288.ig";
connectAttr "groupId697.id" "groupParts288.gi";
connectAttr "polySeparate3.out[46]" "groupParts289.ig";
connectAttr "groupId698.id" "groupParts289.gi";
connectAttr "polySeparate3.out[47]" "groupParts290.ig";
connectAttr "groupId699.id" "groupParts290.gi";
connectAttr "polySeparate3.out[48]" "groupParts291.ig";
connectAttr "groupId700.id" "groupParts291.gi";
connectAttr "polySeparate3.out[49]" "groupParts292.ig";
connectAttr "groupId701.id" "groupParts292.gi";
connectAttr "polySeparate3.out[50]" "groupParts293.ig";
connectAttr "groupId702.id" "groupParts293.gi";
connectAttr "polySeparate3.out[51]" "groupParts294.ig";
connectAttr "groupId703.id" "groupParts294.gi";
connectAttr "polySeparate3.out[52]" "groupParts295.ig";
connectAttr "groupId704.id" "groupParts295.gi";
connectAttr "polySeparate3.out[53]" "groupParts296.ig";
connectAttr "groupId705.id" "groupParts296.gi";
connectAttr "polySeparate3.out[54]" "groupParts297.ig";
connectAttr "groupId706.id" "groupParts297.gi";
connectAttr "polySeparate3.out[55]" "groupParts298.ig";
connectAttr "groupId707.id" "groupParts298.gi";
connectAttr "polySeparate3.out[56]" "groupParts299.ig";
connectAttr "groupId708.id" "groupParts299.gi";
connectAttr "polySeparate3.out[57]" "groupParts300.ig";
connectAttr "groupId709.id" "groupParts300.gi";
connectAttr "polySeparate3.out[58]" "groupParts301.ig";
connectAttr "groupId710.id" "groupParts301.gi";
connectAttr "polySeparate3.out[59]" "groupParts302.ig";
connectAttr "groupId711.id" "groupParts302.gi";
connectAttr "polySeparate3.out[60]" "groupParts303.ig";
connectAttr "groupId712.id" "groupParts303.gi";
connectAttr "polySeparate3.out[61]" "groupParts304.ig";
connectAttr "groupId713.id" "groupParts304.gi";
connectAttr "polySeparate3.out[62]" "groupParts305.ig";
connectAttr "groupId714.id" "groupParts305.gi";
connectAttr "polySeparate3.out[63]" "groupParts306.ig";
connectAttr "groupId715.id" "groupParts306.gi";
connectAttr "polySeparate3.out[64]" "groupParts307.ig";
connectAttr "groupId716.id" "groupParts307.gi";
connectAttr "polySeparate3.out[65]" "groupParts308.ig";
connectAttr "groupId717.id" "groupParts308.gi";
connectAttr "polySeparate3.out[66]" "groupParts309.ig";
connectAttr "groupId718.id" "groupParts309.gi";
connectAttr "polySeparate3.out[67]" "groupParts310.ig";
connectAttr "groupId719.id" "groupParts310.gi";
connectAttr "polySeparate3.out[68]" "groupParts311.ig";
connectAttr "groupId720.id" "groupParts311.gi";
connectAttr "polySeparate3.out[69]" "groupParts312.ig";
connectAttr "groupId721.id" "groupParts312.gi";
connectAttr "groupParts312.og" "groupParts313.ig";
connectAttr "groupId722.id" "groupParts313.gi";
connectAttr "polySeparate3.out[70]" "groupParts314.ig";
connectAttr "groupId723.id" "groupParts314.gi";
connectAttr "groupParts314.og" "groupParts315.ig";
connectAttr "groupId724.id" "groupParts315.gi";
connectAttr "polySeparate3.out[71]" "groupParts316.ig";
connectAttr "groupId725.id" "groupParts316.gi";
connectAttr "polySeparate3.out[72]" "groupParts317.ig";
connectAttr "groupId726.id" "groupParts317.gi";
connectAttr "groupParts317.og" "groupParts318.ig";
connectAttr "groupId727.id" "groupParts318.gi";
connectAttr "polySeparate3.out[73]" "groupParts319.ig";
connectAttr "groupId728.id" "groupParts319.gi";
connectAttr "groupParts315.og" "polyPlanarProj6.ip";
connectAttr "polySurfaceShape306.wm" "polyPlanarProj6.mp";
connectAttr "polyPlanarProj6.out" "polyTweakUV12.ip";
connectAttr "groupParts308.og" "polySphProj1.ip";
connectAttr "polySurfaceShape301.wm" "polySphProj1.mp";
connectAttr "polySphProj1.out" "polyPlanarProj7.ip";
connectAttr "polySurfaceShape301.wm" "polyPlanarProj7.mp";
connectAttr "polyPlanarProj7.out" "polyCylProj1.ip";
connectAttr "polySurfaceShape301.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV12.out" "polyCylProj2.ip";
connectAttr "polySurfaceShape306.wm" "polyCylProj2.mp";
connectAttr "polyCylProj2.out" "polyTweakUV14.ip";
connectAttr "groupParts311.og" "polyCylProj3.ip";
connectAttr "polySurfaceShape304.wm" "polyCylProj3.mp";
connectAttr "polyCylProj3.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV15.out" "polyFlipUV1.ip";
connectAttr "polySurfaceShape304.wm" "polyFlipUV1.mp";
connectAttr "polyFlipUV1.out" "polyTweakUV16.ip";
connectAttr "groupParts276.og" "polyCylProj4.ip";
connectAttr "polySurfaceShape269.wm" "polyCylProj4.mp";
connectAttr "polyCylProj4.out" "polyTweakUV17.ip";
connectAttr "polySurfaceShape308.o" "polyCBoolOp13.ip[0]";
connectAttr "polySurfaceShape307.o" "polyCBoolOp13.ip[1]";
connectAttr "polySurfaceShape309.o" "polyCBoolOp13.ip[2]";
connectAttr "polySurfaceShape308.wm" "polyCBoolOp13.im[0]";
connectAttr "polySurfaceShape307.wm" "polyCBoolOp13.im[1]";
connectAttr "polySurfaceShape309.wm" "polyCBoolOp13.im[2]";
connectAttr "polyCBoolOp13.out" "polyCylProj5.ip";
connectAttr "polySurface313Shape.wm" "polyCylProj5.mp";
connectAttr "polyCylProj5.out" "polyTweakUV18.ip";
connectAttr "polyTweakUV18.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV19.ip";
connectAttr "polySurfaceShape305.o" "polyCBoolOp14.ip[0]";
connectAttr "polySurfaceShape303.o" "polyCBoolOp14.ip[1]";
connectAttr "polySurfaceShape305.wm" "polyCBoolOp14.im[0]";
connectAttr "polySurfaceShape303.wm" "polyCBoolOp14.im[1]";
connectAttr "polySurfaceShape250.o" "polyUnite6.ip[0]";
connectAttr "polySurfaceShape251.o" "polyUnite6.ip[1]";
connectAttr "polySurfaceShape252.o" "polyUnite6.ip[2]";
connectAttr "polySurfaceShape253.o" "polyUnite6.ip[3]";
connectAttr "polySurfaceShape254.o" "polyUnite6.ip[4]";
connectAttr "polySurfaceShape255.o" "polyUnite6.ip[5]";
connectAttr "polySurfaceShape256.o" "polyUnite6.ip[6]";
connectAttr "polySurfaceShape257.o" "polyUnite6.ip[7]";
connectAttr "polySurfaceShape258.o" "polyUnite6.ip[8]";
connectAttr "polySurfaceShape259.o" "polyUnite6.ip[9]";
connectAttr "polySurfaceShape260.o" "polyUnite6.ip[10]";
connectAttr "polySurfaceShape261.o" "polyUnite6.ip[11]";
connectAttr "polySurfaceShape262.o" "polyUnite6.ip[12]";
connectAttr "polySurfaceShape263.o" "polyUnite6.ip[13]";
connectAttr "polySurfaceShape264.o" "polyUnite6.ip[14]";
connectAttr "polySurfaceShape265.o" "polyUnite6.ip[15]";
connectAttr "polySurfaceShape250.wm" "polyUnite6.im[0]";
connectAttr "polySurfaceShape251.wm" "polyUnite6.im[1]";
connectAttr "polySurfaceShape252.wm" "polyUnite6.im[2]";
connectAttr "polySurfaceShape253.wm" "polyUnite6.im[3]";
connectAttr "polySurfaceShape254.wm" "polyUnite6.im[4]";
connectAttr "polySurfaceShape255.wm" "polyUnite6.im[5]";
connectAttr "polySurfaceShape256.wm" "polyUnite6.im[6]";
connectAttr "polySurfaceShape257.wm" "polyUnite6.im[7]";
connectAttr "polySurfaceShape258.wm" "polyUnite6.im[8]";
connectAttr "polySurfaceShape259.wm" "polyUnite6.im[9]";
connectAttr "polySurfaceShape260.wm" "polyUnite6.im[10]";
connectAttr "polySurfaceShape261.wm" "polyUnite6.im[11]";
connectAttr "polySurfaceShape262.wm" "polyUnite6.im[12]";
connectAttr "polySurfaceShape263.wm" "polyUnite6.im[13]";
connectAttr "polySurfaceShape264.wm" "polyUnite6.im[14]";
connectAttr "polySurfaceShape265.wm" "polyUnite6.im[15]";
connectAttr "polyUnite6.out" "groupParts320.ig";
connectAttr "groupId731.id" "groupParts320.gi";
connectAttr "polySurfaceShape270.o" "polyUnite7.ip[0]";
connectAttr "polySurfaceShape271.o" "polyUnite7.ip[1]";
connectAttr "polySurfaceShape272.o" "polyUnite7.ip[2]";
connectAttr "polySurfaceShape273.o" "polyUnite7.ip[3]";
connectAttr "polySurfaceShape274.o" "polyUnite7.ip[4]";
connectAttr "polySurfaceShape275.o" "polyUnite7.ip[5]";
connectAttr "polySurfaceShape270.wm" "polyUnite7.im[0]";
connectAttr "polySurfaceShape271.wm" "polyUnite7.im[1]";
connectAttr "polySurfaceShape272.wm" "polyUnite7.im[2]";
connectAttr "polySurfaceShape273.wm" "polyUnite7.im[3]";
connectAttr "polySurfaceShape274.wm" "polyUnite7.im[4]";
connectAttr "polySurfaceShape275.wm" "polyUnite7.im[5]";
connectAttr "polyUnite7.out" "groupParts321.ig";
connectAttr "groupId732.id" "groupParts321.gi";
connectAttr "polySurfaceShape268.o" "polyCBoolOp15.ip[0]";
connectAttr "polySurfaceShape244.o" "polyCBoolOp15.ip[1]";
connectAttr "polySurfaceShape268.wm" "polyCBoolOp15.im[0]";
connectAttr "polySurfaceShape244.wm" "polyCBoolOp15.im[1]";
connectAttr "polySurfaceShape285.o" "polyUnite8.ip[0]";
connectAttr "polySurfaceShape286.o" "polyUnite8.ip[1]";
connectAttr "polySurfaceShape287.o" "polyUnite8.ip[2]";
connectAttr "polySurfaceShape288.o" "polyUnite8.ip[3]";
connectAttr "polySurfaceShape289.o" "polyUnite8.ip[4]";
connectAttr "polySurfaceShape290.o" "polyUnite8.ip[5]";
connectAttr "polySurfaceShape291.o" "polyUnite8.ip[6]";
connectAttr "polySurfaceShape285.wm" "polyUnite8.im[0]";
connectAttr "polySurfaceShape286.wm" "polyUnite8.im[1]";
connectAttr "polySurfaceShape287.wm" "polyUnite8.im[2]";
connectAttr "polySurfaceShape288.wm" "polyUnite8.im[3]";
connectAttr "polySurfaceShape289.wm" "polyUnite8.im[4]";
connectAttr "polySurfaceShape290.wm" "polyUnite8.im[5]";
connectAttr "polySurfaceShape291.wm" "polyUnite8.im[6]";
connectAttr "polyUnite8.out" "groupParts322.ig";
connectAttr "groupId734.id" "groupParts322.gi";
connectAttr "polySurfaceShape293.o" "polyUnite9.ip[0]";
connectAttr "polySurfaceShape294.o" "polyUnite9.ip[1]";
connectAttr "polySurfaceShape295.o" "polyUnite9.ip[2]";
connectAttr "polySurfaceShape296.o" "polyUnite9.ip[3]";
connectAttr "polySurfaceShape297.o" "polyUnite9.ip[4]";
connectAttr "polySurfaceShape298.o" "polyUnite9.ip[5]";
connectAttr "polySurfaceShape299.o" "polyUnite9.ip[6]";
connectAttr "polySurfaceShape293.wm" "polyUnite9.im[0]";
connectAttr "polySurfaceShape294.wm" "polyUnite9.im[1]";
connectAttr "polySurfaceShape295.wm" "polyUnite9.im[2]";
connectAttr "polySurfaceShape296.wm" "polyUnite9.im[3]";
connectAttr "polySurfaceShape297.wm" "polyUnite9.im[4]";
connectAttr "polySurfaceShape298.wm" "polyUnite9.im[5]";
connectAttr "polySurfaceShape299.wm" "polyUnite9.im[6]";
connectAttr "polyUnite9.out" "groupParts323.ig";
connectAttr "groupId735.id" "groupParts323.gi";
connectAttr "polySurfaceShape283.o" "polyCBoolOp16.ip[0]";
connectAttr "polySurfaceShape282.o" "polyCBoolOp16.ip[1]";
connectAttr "polySurfaceShape283.wm" "polyCBoolOp16.im[0]";
connectAttr "polySurfaceShape282.wm" "polyCBoolOp16.im[1]";
connectAttr "polySurfaceShape276.o" "polyCBoolOp17.ip[0]";
connectAttr "polySurfaceShape280.o" "polyCBoolOp17.ip[1]";
connectAttr "polySurfaceShape281.o" "polyCBoolOp17.ip[2]";
connectAttr "polySurfaceShape276.wm" "polyCBoolOp17.im[0]";
connectAttr "polySurfaceShape280.wm" "polyCBoolOp17.im[1]";
connectAttr "polySurfaceShape281.wm" "polyCBoolOp17.im[2]";
connectAttr "polySurfaceShape247.o" "polyCBoolOp18.ip[0]";
connectAttr "polySurfaceShape248.o" "polyCBoolOp18.ip[1]";
connectAttr "polySurfaceShape249.o" "polyCBoolOp18.ip[2]";
connectAttr "polySurfaceShape247.wm" "polyCBoolOp18.im[0]";
connectAttr "polySurfaceShape248.wm" "polyCBoolOp18.im[1]";
connectAttr "polySurfaceShape249.wm" "polyCBoolOp18.im[2]";
connectAttr "polySurfaceShape237.o" "polyUnite10.ip[0]";
connectAttr "polySurfaceShape238.o" "polyUnite10.ip[1]";
connectAttr "polySurfaceShape239.o" "polyUnite10.ip[2]";
connectAttr "polySurfaceShape240.o" "polyUnite10.ip[3]";
connectAttr "polySurfaceShape241.o" "polyUnite10.ip[4]";
connectAttr "polySurfaceShape242.o" "polyUnite10.ip[5]";
connectAttr "polySurfaceShape243.o" "polyUnite10.ip[6]";
connectAttr "polySurfaceShape237.wm" "polyUnite10.im[0]";
connectAttr "polySurfaceShape238.wm" "polyUnite10.im[1]";
connectAttr "polySurfaceShape239.wm" "polyUnite10.im[2]";
connectAttr "polySurfaceShape240.wm" "polyUnite10.im[3]";
connectAttr "polySurfaceShape241.wm" "polyUnite10.im[4]";
connectAttr "polySurfaceShape242.wm" "polyUnite10.im[5]";
connectAttr "polySurfaceShape243.wm" "polyUnite10.im[6]";
connectAttr "polyUnite10.out" "groupParts324.ig";
connectAttr "groupId739.id" "groupParts324.gi";
connectAttr "groupParts324.og" "polyTweakUV20.ip";
connectAttr "groupParts320.og" "polyTweakUV21.ip";
connectAttr "groupParts321.og" "polyTweakUV22.ip";
connectAttr "groupParts322.og" "polyTweakUV23.ip";
connectAttr "groupParts323.og" "polyTweakUV24.ip";
connectAttr "polyTweakUV19.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV25.ip";
connectAttr "polyTweakUV25.out" "polyFlipUV2.ip";
connectAttr "polySurface313Shape.wm" "polyFlipUV2.mp";
connectAttr "polyFlipUV2.out" "polyTweakUV26.ip";
connectAttr "polyTweakUV21.out" "polyFlipUV3.ip";
connectAttr "polySurface255Shape.wm" "polyFlipUV3.mp";
connectAttr "polyFlipUV3.out" "polyFlipUV4.ip";
connectAttr "polySurface255Shape.wm" "polyFlipUV4.mp";
connectAttr "polyFlipUV4.out" "polyFlipUV5.ip";
connectAttr "polySurface255Shape.wm" "polyFlipUV5.mp";
connectAttr "polyFlipUV5.out" "polyFlipUV6.ip";
connectAttr "polySurface255Shape.wm" "polyFlipUV6.mp";
connectAttr "polyFlipUV6.out" "polyTweakUV27.ip";
connectAttr "groupParts274.og" "polyTweakUV28.ip";
connectAttr "groupParts291.og" "polyTweakUV29.ip";
connectAttr "polyCBoolOp15.out" "polyTweakUV30.ip";
connectAttr "polyCBoolOp14.out" "polyTweakUV31.ip";
connectAttr "groupParts253.og" "polyTweakUV32.ip";
connectAttr "groupParts309.og" "polyTweakUV33.ip";
connectAttr "groupParts273.og" "polyTweakUV34.ip";
connectAttr "polyCBoolOp16.out" "polyTweakUV35.ip";
connectAttr "groupParts285.og" "polyTweakUV36.ip";
connectAttr "groupParts284.og" "polyTweakUV37.ip";
connectAttr "polyCBoolOp17.out" "polyTweakUV38.ip";
connectAttr "groupParts307.og" "polyTweakUV39.ip";
connectAttr "polyCBoolOp18.out" "polyTweakUV40.ip";
connectAttr "groupParts252.og" "polyTweakUV41.ip";
connectAttr "groupParts243.og" "polyTweakUV42.ip";
connectAttr "groupParts286.og" "polyTweakUV43.ip";
connectAttr "groupParts299.og" "polyTweakUV44.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pasted__polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__polySurfaceShape25.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "pasted__polySurfaceShape24.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "polySurfaceShape48.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape49.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape50.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape51.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape52.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape53.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape54.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape41.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape42.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape43.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape44.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape45.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape47.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__polySurfaceShape53.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "polySurface64Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "pCube20Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface83Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group40|pasted__group39|pasted__pasted__polySurface64|transform11|pasted__pasted__polySurface64Shape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape79.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "pasted__polySurface12Shape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "polySurfaceShape81.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape84.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape85.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape86.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape87.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group45|pasted__group39|pasted__pasted__polySurface64|transform9|pasted__pasted__polySurface64Shape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__polySurface64Shape.ciog.cog[0]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "|group48|pasted__group47|pasted__pasted__polySurface64|transform7|pasted__pasted__polySurface64Shape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__polySurfaceShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__polySurface64Shape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "group18_pasted__group2_pasted__pasted__pCube2Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__pasted__pCube2Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurface33Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__polySurface33Shape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurface64Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface64Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface81Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface81Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube20Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube20Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface83Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface83Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "|group40|pasted__group39|pasted__pasted__polySurface64|transform11|pasted__pasted__polySurface64Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group40|pasted__group39|pasted__pasted__polySurface64|transform11|pasted__pasted__polySurface64Shape.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group45|pasted__group39|pasted__pasted__polySurface64|transform9|pasted__pasted__polySurface64Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group45|pasted__group39|pasted__pasted__polySurface64|transform9|pasted__pasted__polySurface64Shape.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__polySurface64Shape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "pasted__polySurface64Shape.ciog.cog[1]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "|group48|pasted__group47|pasted__pasted__polySurface64|transform7|pasted__pasted__polySurface64Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group48|pasted__group47|pasted__pasted__polySurface64|transform7|pasted__pasted__polySurface64Shape.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__polySurface64Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__polySurface64Shape.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape88.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape89.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape90.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape91.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape92.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape93.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape94.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape95.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape96.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape97.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape98.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape99.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape100.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape101.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape102.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape103.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape104.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape105.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape106.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape107.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape108.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape109.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape110.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape111.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape112.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape113.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape114.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape115.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape116.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape117.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape118.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape119.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape120.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape121.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape122.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape123.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape124.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape125.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape126.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape127.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape128.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape129.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape130.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape131.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape132.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape133.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape134.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape135.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape136.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape137.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape138.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape139.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape140.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape141.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape142.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape143.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape144.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape145.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape146.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape147.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape148.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape149.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape150.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape151.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape152.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape153.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape154.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape155.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape156.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape157.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape158.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape159.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape160.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape161.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface138Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pCubeShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pCubeShape23.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface89Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface89Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface89Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface90Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape196.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape198.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape207.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape232.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape233.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape234.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape235.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface233|transform144|polySurface233Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface236|transform148|polySurface236Shape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group53|pasted__pCube25|transform145|pasted__pCubeShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group53|pasted__pCube25|transform145|pasted__pCubeShape25.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface236|transform148|polySurface236Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface236|transform148|polySurface236Shape.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group54|pasted__pCube25|transform147|pasted__pCubeShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group54|pasted__pCube25|transform147|pasted__pCubeShape25.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group55|pasted__pCube25|transform149|pasted__pCubeShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group55|pasted__pCube25|transform149|pasted__pCubeShape25.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group56|pasted__pCube25|transform151|pasted__pCubeShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group56|pasted__pCube25|transform151|pasted__pCubeShape25.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group58|pasted__pCube25|transform155|pasted__pCubeShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group58|pasted__pCube25|transform155|pasted__pCubeShape25.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurface239Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group59|pasted__pCube25|transform157|pasted__pCubeShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group59|pasted__pCube25|transform157|pasted__pCubeShape25.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurface163Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group60|pasted__pCube25|transform159|pasted__pCubeShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group60|pasted__pCube25|transform159|pasted__pCubeShape25.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurface200Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group61|pasted__pCube25|transform161|pasted__pCubeShape25.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group61|pasted__pCube25|transform161|pasted__pCubeShape25.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurface240Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface240Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface164Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape305.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape306.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape308.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface313Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface310Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId85.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId87.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId97.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId98.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId99.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId100.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId101.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId102.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId103.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId104.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId106.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId108.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId109.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId108.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId147.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId148.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId149.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId150.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId151.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId152.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId153.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId154.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId155.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId156.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId157.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId158.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId159.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId160.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId161.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId106.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId255.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId257.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId258.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId261.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId262.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId263.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId264.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId265.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId266.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__pasted__groupId109.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId280.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId281.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId282.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId283.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId284.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId285.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId286.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId287.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId288.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId289.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId290.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId291.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId292.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId293.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId294.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId295.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId296.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId297.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId298.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId299.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId300.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId301.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId302.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId303.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId304.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId305.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId306.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId307.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId308.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId309.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId310.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId311.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId312.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId313.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId314.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId315.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId316.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId317.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId318.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId319.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId320.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId321.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId322.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId323.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId324.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId325.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId326.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId327.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId328.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId329.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId330.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId331.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId332.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId333.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId334.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId335.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId336.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId337.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId338.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId339.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId340.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId341.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId342.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId343.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId344.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId345.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId346.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId347.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId348.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId349.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId350.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId351.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId352.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId353.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId354.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId355.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId356.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId357.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId358.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId359.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId360.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId361.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId362.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId363.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId364.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId365.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId366.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId367.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId368.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId369.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId370.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId371.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId372.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId373.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId374.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId375.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId376.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId377.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId378.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId379.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId380.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId381.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId382.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId383.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId384.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId385.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId386.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId387.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId388.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId389.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId391.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId392.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId393.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId428.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId430.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId439.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId464.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId465.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId466.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId467.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId468.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId469.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId470.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId472.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId473.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId475.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId476.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId478.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId479.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId480.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId481.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId483.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId484.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId486.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId487.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId496.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId497.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId501.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId502.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId506.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId507.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId509.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId510.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId651.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId722.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId724.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId727.msg" ":initialShadingGroup.gn" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
// End of highbilding_ecr1.ma
