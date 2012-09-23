/*******************/
/*  Controls       */
/*******************/

// Control types
#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0c

#define ST_TYPE           0xF0
#define ST_SINGLE         0
#define ST_MULTI          16
#define ST_TITLE_BAR      32
#define ST_PICTURE        48
#define ST_FRAME          64
#define ST_BACKGROUND     80
#define ST_GROUP_BOX      96
#define ST_GROUP_BOX2     112
#define ST_HUD_BACKGROUND 128
#define ST_TILE_PICTURE   144
#define ST_WITH_RECT      160
#define ST_LINE           176

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20


/*******************/
/*  Basic classes  */
/*******************/

class RscButton
{
	type = 1;
	style = 0;
	x = 0;
	y = 0;
	w = 0.097500;
	h = 0.040000;
	font = "Zeppelin32";
	sizeEx = 0.024000;
	colorText[] = {1.000000,1.000000,1.00000,1.000000};
	colorDisabled[] = {0.400000,0.400000,0.400000,1};
	colorBackground[] = {0,0,0,0.0};
	colorBackgroundActive[] = {0.000000,0.000000,1.000000,0.000000};
	colorBackgroundDisabled[] = {1,1,1,0.000000};
	offsetX = 0.003000;
	offsetY = 0.003000;
	offsetPressedX = 0.002000;
	offsetPressedY = 0.002000;
	colorFocused[] = {0.840000,1,0.550000,0};
	colorShadow[] = {0,0,0,0};
	colorBorder[] = {0,0,0,0};
	borderSize = 0.000000;
	soundEnter[] = {"",0.150000,1};
	soundPush[] = {"",0.150000,1};
	soundClick[] = {"",0.15,5};
	soundEscape[] = {"",0.150000,1};
};

class RscLine
{
   type = CT_STATIC;
   IDC = -1;
   style = ST_LEFT + ST_MULTI + ST_NO_RECT;
   LineSpacing = 1.000000;
   h = 0.040000;
   ColorBackground[] = {1,1,1,0.2};
   ColorText[] = {0.1,0.1,0.1,1};
   font = "Zeppelin32";
   SizeEx = 0.024000;
};

class RscLine2
{
   type = CT_STATIC;
   IDC = -1;
   style = 512;
   ColorBackground[] = {0.000000,0.000000,0,0.00000};
   colorText[] = {1.000000,1.000000,1.00000,1.000000};
   font = "Zeppelin32";
   SizeEx = 0.024000;
};

/*******************/
/*  Dialog         */
/*******************/
class PXS_RscSatellite
{
	IDD = 1000;
	MovingEnable = 1;
	
	class Controls
	{
		
		class obd1: RscLine2
        	{
      			x = 0.085;
      			y = 0.75;
      			w = 0.43;
      			h = 0.1;
      			text = "";
        	};
		
		class obd2: RscLine2
        	{
      			x = 0.2;
      			y = 0.65;
      			w = 0.125;
      			h = 0.09;
      			text = "";
      		};
		
		class uhf: RscLine2
      		{
      			x = 0.12;
      			y = 0.13;
      			w = 0.15;
      			h = 0.1;
      			text = "UHF.........ACTIVE";
      		};
				
				class nvs: RscLine2
      		{
      			x = 0.12;
      			y = 0.16;
      			w = 0.15;
      			h = 0.1;
      			text = "TVS........MANUAL";
      		};
				
				class calib: RscLine2
      		{
      			x = 0.12;
      			y = 0.19;
      			w = 0.15;
      			h = 0.1;
      			text = "CALIBRATION.......OK";
      		};
		
			
		class nav: RscLine2
     		{
					x = 0.12;
      			y = 0.1;
      			w = 0.1;
      			h = 0.1;
      			text = "NAV>";
      		};
				
				class msat2: RscLine2
     		{
					x = 0.78;
      			y = 0.77;
      			w = 0.15;
      			h = 0.1;
      			text = "NTS>185-MILSAT";
      		};
				
				class msat: RscLine2
     		{
      			x = 0.78;
      			y = 0.8;
      			w = 0.1;
      			h = 0.1;
      			text = "NTW>>928-1e5";
      		};
		
				
		class nv: RscLine2
      		{
      			IDC = 1005;
					x = 0.12;
      			y = 0.8;
      			w = 0.2;
      			h = 0.08;
      			text = "TVS STATUS...OFF";
      		};
		
		class time: RscLine2
      		{
      			IDC = 1001;
					x = 0.465;
      			y = 0.1;
      			w = 0.2;
      			h = 0.1;
      			text = "15:00:00";
      		};
		
		class cz: RscLine2
      		{
      			IDC = 1004;
					x = 0.78;
      			y = 0.16;
      			w = 0.099;
      			h = 0.1;
      			text = "SZ 1202";
      		};
		
				
		class cy: RscLine2
      		{
      			IDC = 1003;
					x = 0.78;
      			y = 0.13;
      			w = 0.099;
      			h = 0.1;
      			text = "SY 1202";
      		};
		
				
		class cx: RscLine2
      		{
      			IDC = 1002;
					x = 0.78;
      			y = 0.1;
      			w = 0.099;
      			h = 0.1;
      			text = "SX 1202";
      		};
				
		class cross1: RscLine
         	{
               	x = 0.5-0.055;
            		y = 0.5-0.002;
            		w = 0.04;
            		h = 0.0018;
            		text = "";
            		colorBackground[] = {1,1,1,0.5};
         	};
			
		class cross1_2: RscLine
         	{
               	x = 0.5+0.015;
            		y = 0.5-0.002;
            		w = 0.04;
            		h = 0.0018;
            		text = "";
            		colorBackground[] = {1,1,1,0.5};
         	};
			
      class cross2: RscLine
         	{
            		x = 0.5-0.002;
            		y = 0.5+0.005;
            		w = 0.002;
            		h = 0.04;
            		text = "";
            		colorBackground[] = {1,1,1,0.5};
         	};

		class cross2_2: RscLine
         	{
						x = 0.5-0.002;
            		y = 0.5-0.045;
            		w = 0.002;
            		h = 0.04;
            		text = "";
            		colorBackground[] = {1,1,1,0.5};
         	};
							 			
      
	};
};