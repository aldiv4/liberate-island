	_cam = "camera" camCreate [0,0,1000];
	_cam cameraEffect ["internal","back"];
	ShowCinemaBorder true;

	playSound "intro";
	player moveincargo demo;

	cutRsc ["warcontextlabel","PLAIN",2];

	_cam camsettarget DEMO;
 	DEMO setCameraInterest 50;
	_cam camsetrelpos [50, 50, 10];
	_cam CamCommit 0;
	titleText ["LIBERATE ISLAND", "plain"];
	_cam camsetrelpos [30, 10, 10];
	_cam CamCommit 10;
	sleep 10;
	
	_cam camsettarget DEMO;
 	DEMO setCameraInterest 50;
	_cam camsetrelpos [-100, 0, 2];
	_cam CamCommit 0;
	titleText ["LIBERATE ISLAND", "plain"];
	_cam camsetrelpos [-300, -200, 1];
	_cam CamCommit 30;
	sleep 10;

	_cam camsettarget DEMO;
 	DEMO setCameraInterest 50;
	_cam camsetrelpos [100, 100, 70];
	_cam CamCommit 0;
	titleText ["A mission scenarized by =[A*C]= code34", "BLACK IN"];
	_cam camsetrelpos [200, 50, 50];
	_cam CamCommit 10;
	sleep 10;

	titleText ["Soldier. we are arriving to base. Take some weapons and go to enemy zone.", "plain down"];
	
	_cam cameraEffect ["terminate","back"];
	camDestroy _cam;