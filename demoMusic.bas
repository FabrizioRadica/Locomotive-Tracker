10 mode 1: border 0:ink 0,0:maxx%=4:maxy%=16:DIM map%(maxx%,maxy%):randomize time
14 DEF FNk(v)=1+rnd(20)*v:DEF FNp(v)=1+rnd(15)*v:DEF FNc(v)=32+rnd(200)*v:
15 while 1
20 'Read Map
30 FOR y%=1 TO maxy%
40 FOR x%=1 TO maxx%
50 READ a%:map%(x%,y%)=a%
60 LOCATE x%,y%:if map%(x%,y%)=1 then locate FNk(40),FNk(20):pen FNp(5):print chr$(FNc(100));:gosub 1000
61 LOCATE x%,y%:if map%(x%,y%)=2 then locate 1,y%: print "@":gosub 1200
62 LOCATE x%,y%:if map%(x%,y%)=3 then gosub 1400
70 NEXT x%
80 NEXT y%
82 restore 100
85 wend

90 'Map Data
100 DATA 1,0,0,0 
110 DATA 0,2,0,0 
120 DATA 2,0,4,0 
130 DATA 0,0,0,0 
140 DATA 1,3,4,0
150 DATA 0,0,0,0 
160 DATA 2,2,4,0
170 DATA 0,0,0,0 
180 DATA 1,0,0,0 
190 DATA 0,0,4,0
200 DATA 2,0,0,0 
210 DATA 0,2,4,0 
220 DATA 1,3,0,0 
230 DATA 0,2,4,0
240 DATA 2,0,4,0
250 DATA 0,3,4,0

1000 env 1,15,-1,1:sound 1,2000,10,8,4:return
1200 sound 1,100,2,5,1,5,1:return
1400 env 1,15,-1,4:sound 2,100,8,8,1,8,1:return
1600 env 1,1+rnd(10),-1,4:sound 3,800+10*(rnd(10)^2),2:return