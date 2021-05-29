1 REM ************************************************************************
2 REM A simple program to draw a Sierpinski Triangle
3 REM ************************************************************************
10 GRAPHICS 8
19 REM Set foreground color to white
20 SETCOLOR 1,0,14
29 REM Set background color to black
30 SETCOLOR 2,0,0
100 REM * Set some constants *************************************************
110 XSIZE=320
120 YSIZE=160
130 DRAWOUTLINE=0
140 ITERATIONS=5000
1000 REM * Setup triangle vertices *******************************************
1010 DIM VA(3,2)
1020 REM First vertex
1030 VA(0,0)=XSIZE/2-1
1040 VA(0,1)=0
1050 VA(1,0)=0
1060 VA(1,1)=YSIZE-1
1070 VA(2,0)=XSIZE-1
1080 VA(2,1)=YSIZE-1
1100 REM  * Set up the variables for the random point and current point ******
1110 RX=INT(RND(1)*XSIZE)
1120 RY=INT(RND(1)*YSIZE)
1130 CURRENTPOINT=0
1500 REM Set the draw color to the first color register
1510 COLOR 1
2000 REM * Draw the triangle outline if specified ****************************
2010 IF DRAWOUTLINE = 0 THEN GOTO 3000
2020 PLOT VA(0,0),VA(0,1)
2030 DRAWTO VA(1,0),VA(1,1)
2040 DRAWTO VA(2,0),VA(2,1)
2050 DRAWTO VA(0,0),VA(0,1)
3000 REM * Draw the Sierpinski Triangle **************************************
3010 FOR I=0 TO ITERATIONS
3020 CURRENTPOINT=INT(RND(1)*3)
3030 RX=INT((VA(CURRENTPOINT,0)-RX)/2)+RX
3040 RY=INT((VA(CURRENTPOINT,1)-RY)/2)+RY
3050 PLOT RX,RY
3060 NEXT I
3080 END
