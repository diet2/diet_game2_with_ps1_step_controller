#include "lambda.h"

#define	SPR_W	640
#define	SPR_H	480
#define	ADD_X	1
#define	ADD_Y	2

/*
Å@âÊñ ì‡ÇîΩéÀÇµÇ»Ç™ÇÁìÆÇ≠ÉTÉìÉvÉã
*/
main()
{
	var back, move, sz[2], x, y, x1, y1, a1, addx, addy, txt;
	var flag1, c1, c2, c3, x2, y2, x3, y3, score1;
	var time1,cm;
	sprSetLevel(66);
	timeSetFPS(30);
	txt = imgCreate(640,16,4,0);
	back = imgLoad("bg.png", 1, 0);
	imgSetCurrent(back);
	x1=0;y1=300.2;
	x2=620;y2=240;
	x3=620;y3=sysRandom(100, 300);
	score1=0;
	cm=100;
	c2 = imgLoad("tatehuda.png", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	c1 = imgLoad("chara1.png", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
		imgSetCurrent(txt);
		txtSetColor(255, 255, 255);
		txtSetPos(300, 0);
		txtOut("SCORE:"+score1);

	inpSetCurrent(inpGetDevice(1));
	sprRenderScreen();

	while(true)
	{
		imgSetCurrent(c1);
		inpClear();
		if(inpGetState(INP_RIGHT) == INP_PUSH)
		{
				if(flag1==0){
	c1 = imgLoad("chara1.png", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
				flag1=1;
				score1+=1;
				x2-=2;
				}
		}
		if(inpGetState(INP_LEFT) == INP_PUSH)
		{
				if(flag1==1){
	c1 = imgLoad("chara3.png", 2, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
				flag1=0;
				score1+=1;
				x2-=2;
				}
		}
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	txtSetPos(40, 20);
		imgFillRect(40, 20, 60, 32, 31, 31, 31);
		txtOut(cm);
	imgSetPos(x2, y2);
	if(x2<0){
		x2=620;
		cm+=100;
	}
	imgSetCurrent(c1);
				imgSetPos(x1, y1);
		imgSetCurrent(txt);
		imgFill(0, 0, 0);
		txtSetPos(0, 0);
		txtOut("You play with Step controller.");
		txtSetPos(300, 0);
		txtOut("SCORE:"+score1);
		txtSetPos(460, 0);
		time1+=1;
		txtOut("TIME:"+time1);
	timeWait();
	sprRenderScreen();
	}
}
