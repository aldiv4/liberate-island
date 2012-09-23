	_cam = "camera" camCreate [0,0,1000];
	_cam cameraEffect ["internal","back"];
	ShowCinemaBorder true;

	playSound "intro";

	cutRsc ["warcontextlabel","PLAIN",2];

	_cam camsettarget player;
 	player setCameraInterest 50;
	_cam camsetrelpos [400, 600, 100];
	_cam CamCommit 0;
	titleText ["", "plain"];
	_cam camsetrelpos [700, 400, 100];
	_cam CamCommit 30;
	sleep 10;
	
	_cam camsettarget player;
 	player setCameraInterest 50;
	_cam camsetrelpos [400, 200, 30];
	_cam CamCommit 0;
	titleText ["", "plain"];
	_cam camsetrelpos [10, 10, 10];
	_cam CamCommit 60;
	
	sleep 10;

	_cam camsettarget player;
 	player setCameraInterest 50;
	_cam camsetrelpos [10, 10, 2];
	_cam CamCommit 0;
	titleText ["", "plain"];
	_cam camsetrelpos [2, 2, 1];
	_cam CamCommit 30;


	while { true } do {
		player playMove "ActsPercMstpSnonWnonDnon_DancingDuoStefan";
		_text = format["YOU WIN !", _score];
		titleText [_text, "plain"];
		sleep 5;
	};