vardef drawfinal(expr u, x, y, co, ct) =
	draw (x,y)--(x+u,y+u)--(x+2*u,y) withcolor co;
	draw (x+1.5*u,y+u/2)--(x+u,y) withcolor co;
	draw (x+u,y+u)--(x+2*u,y+2*u)--(x+4*u,y) withcolor ct;
	draw (x+1.5*u,y+1.5*u)--(x+3*u,y+0) withcolor ct;
	label.lft(btex $g_1^c$ etex, (x+u,y+u));
	label.lft(btex $g_2^c$ etex, (x+2*u,y+2*u));
	dotlabel.lft(btex $g_5$ etex, (x+1.5*u,y+u/2));
	label.lft(btex $g_4$ etex, (x+1.5*u,y+1.5*u));
	label.bot(btex $rat$ etex, (x,y));
	label.bot(btex $mou_1$ etex, (x+u,y));
	label.bot(btex $mou_2$ etex, (x+2*u,y));
	label.bot(btex $hum$ etex, (x+3*u,y));
	label.bot(btex $chi$ etex, (x+4*u,y));
	label(btex $G^*$ etex, (x+2*u,y-0.7*u));
enddef;

vardef drawoz(expr u, x, y, co, ct) =
	draw (x,y)--(x+u,y+u)--(x+2*u,y) withcolor co;
	draw (x+u/2,y+u/2)--(x+u,y+0) withcolor co;
	draw (x+u,y+u)--(x+2*u,y+2*u)--(x+4*u,y) withcolor ct;
	draw (x+1.5*u,y+1.5*u)--(x+3*u,y+0) withcolor ct;
	dotlabel.lft(btex $g_1^c$ etex, (x+u,y+u));
	label.lft(btex $g_2^c$ etex, (x+2*u,y+2*u));
	label.lft(btex $g_3$ etex, (x+u/2,y+u/2));
	label.lft(btex $g_4$ etex, (x+1.5*u,y+1.5*u));
	label.bot(btex $rat$ etex, (x,y));
	label.bot(btex $mou_1$ etex, (x+u,y));
	label.bot(btex $mou_2$ etex, (x+2*u,y));
	label.bot(btex $hum$ etex, (x+3*u,y));
	label.bot(btex $chi$ etex, (x+4*u,y));
	label.rt(btex $1$ etex, (x+1.5*u,y+u/2));
	label(btex $G_1$ etex, (x+2*u,y-0.7*u));
enddef;

vardef drawtz(expr u, x, y, co, ct) = 
	draw (x,y)--(x+u,y+u)--(x+2*u,y) withcolor co;
	draw (x+1.5*u,y+u/2)--(x+u,y) withcolor co;
	draw (x+u,y+u)--(x+2*u,y+2*u)--(x+4*u,y) withcolor ct;
	draw (x+3.5*u,y+0.5*u)--(x+3*u,y+0) withcolor ct;
	label.lft(btex $g_1^c$ etex, (x+u,y+u));
	dotlabel.lft(btex $g_2^c$ etex, (x+2*u,y+2*u));
	dotlabel.lft(btex $g_5$ etex, (x+1.5*u,y+u/2));
	label.lft(btex $g_6$ etex, (x+3.5*u,y+u/2));
	label.bot(btex $rat$ etex, (x,y));
	label.bot(btex $mou_1$ etex, (x+u,y));
	label.bot(btex $mou_2$ etex, (x+2*u,y));
	label.bot(btex $hum$ etex, (x+3*u,y));
	label.bot(btex $chi$ etex, (x+4*u,y));
	label.rt(btex $2$ etex, (x+1.5*u,y+1.5*u));
	label.rt(btex $1$ etex, (x+3.25*u,y+0.25*u));
	label(btex $G_2$ etex, (x+2*u,y-0.7*u));
enddef;

vardef drawoo(expr u, x, y, c) =
	label(btex $=$ etex scaled 2, (x-25,y+u));
	draw (x,y)--(x+u,y+u)--(x+2*u,y) withcolor c;
	draw (x+u/2,y+u/2)--(x+u,y+0) withcolor c;
	dotlabel.lft(btex $g_1^c$ etex, (x+u,y+u));
	label.lft(btex $g_3$ etex, (x+u/2,y+u/2));
	label.bot(btex $rat$ etex, (x,y));
	label.bot(btex $mou_1$ etex, (x+u,y));
	label.bot(btex $mou_2$ etex, (x+2*u,y));
	label.rt(btex $1$ etex, (x+1.5*u,y+u/2));
	label(btex $R_{G_1}(g_1^c)$ etex, (x+u,y-0.7*u));
	label(btex $\cup$ etex scaled 2, (x+2*u+23,y+u));
enddef;

vardef drawot(expr u, x, y, c, cb) =
	draw (x+u,y+u)--(x+2*u,y+2*u)--(x+4*u,y) withcolor c;
	draw (x+1.5*u,y+1.5*u)--(x+3*u,y+0) withcolor c;
	label.lft(btex $g_2^c$ etex, (x+2*u,y+2*u));
	label.lft(btex $g_4$ etex, (x+1.5*u,y+1.5*u));
	label.bot(btex $hum$ etex, (x+3*u,y));
	label.bot(btex $chi$ etex, (x+4*u,y));
	draw (x+u-10,y-15)--(x+u-10,y+2*u+15)--(x+4*u+15,y+2*u+15)--(x+4*u+15,y-15)--cycle withcolor cb;
	label(btex $R_{G_1}(g_2^c)$ etex, (x+2*u,y-0.7*u));
	label.bot(btex $g_1^c$ etex, (x+u,y+u));
enddef;

vardef drawto(expr u, x, y, c, cb) =
	label(btex $=$ etex scaled 2, (x-25,y+u));
	draw (x,y)--(x+u,y+u)--(x+2*u,y) withcolor c;
	draw (x+1.5*u,y+u/2)--(x+u,y) withcolor c;
	label.lft(btex $g_1^c$ etex, (x+u,y+u));
	dotlabel.lft(btex $g_5$ etex, (x+1.5*u,y+u/2));
	label.bot(btex $rat$ etex, (x,y));
	label.bot(btex $mou_1$ etex, (x+u,y));
	label.bot(btex $mou_2$ etex, (x+2*u,y));
	draw (x-15,y-15)--(x-15,y+u+15)--(x+2*u+15,y+u+15)--(x+2*u+15,y-15)--cycle withcolor cb;
	label(btex $R_{G_2}(g_1^c)$ etex, (x+u,y-0.7*u));
	label(btex $\cup$ etex scaled 2, (x+2*u+23,y+u));
enddef;

vardef drawtt(expr u, x, y, c) =
	draw (x+u,y+u)--(x+2*u,y+2*u)--(x+4*u,y) withcolor c;
	draw (x+3.5*u,y+0.5*u)--(x+3*u,y+0) withcolor c;
	dotlabel.lft(btex $g_2^c$ etex, (x+2*u,y+2*u));
	label.lft(btex $g_6$ etex, (x+3.5*u,y+u/2));
	label.bot(btex $hum$ etex, (x+3*u,y));
	label.bot(btex $chi$ etex, (x+4*u,y));
	label.rt(btex $2$ etex, (x+1.5*u,y+1.5*u));
	label.rt(btex $1$ etex, (x+3.25*u,y+0.25*u));
	label(btex $R_{G_2}(g_2^c)$ etex, (x+2*u,y-0.7*u));
	label.bot(btex $g_1^c$ etex, (x+u,y+u));
enddef;

beginfig(1);
u := 33;
x := 0;
y := 2*u+50;
draw (x+u-10,y-15)--(x+u-10,y+2*u+15)--(x+4*u+15,y+2*u+15)--(x+4*u+15,y-15)--cycle withcolor (1,1,1);
drawoz(u, x, y,(1,0,0),(0,.7,0));

x := 0;
y := 0;
drawtz(u, x, y,(1,0,0),(0,.7,0));
endfig;

beginfig(2);
u := 33;
x := 0;
y := 2*u+50;
x := x + 4*u+40;
drawoo(u, x, y,(1,0,0));
x := x + 2*u+10;
drawot(u, x, y,(0,.7,0),(1,1,1));

x := 0;
y := 0;
x := x + 4*u + 40;
drawto(u,x,y,(1,0,0),(1,1,1));
x := x + 2*u + 10;
drawtt(u,x,y,(0,.7,0));
endfig;

beginfig(3);
u := 33;
x := 0;
y := 2*u+50;
x := x + 4*u+40;
drawoo(u, x, y,(1,0,0));
x := x + 2*u+10;
drawot(u, x, y,(0,0.7,0),(0,0,.7));

x := 0;
y := 0;
x := x + 4*u + 40;
drawto(u,x,y,(1,0,0),(0,0,.7));
x := x + 2*u + 10;
drawtt(u,x,y,(0,.7,0));
endfig;

beginfig(4);
u := 33;
drawfinal(u, 0, 0, (1,0,0),(0,.7,0));
endfig;

vardef drawunorder(expr u) =
	x := 0;
	y := 2*u+80;
	draw (x,y+0)--(x+2*u,y+2*u)--(x+4*u,y+0);
	draw (x+u/2,y+u/2)--(x+u,y+0);
	draw (x+u,y+u)--(x+2*u,y+0);
	draw (x+1.5*u,y+1.5*u)--(x+3*u,y+0);
	dotlabel.lft("", (x+u,y+u));
	label.bot(btex $rat$ etex, (x,y));
	label.bot(btex $mou_1$ etex, (x+u,y));
	label.bot(btex $mou_2$ etex, (x+2*u,y));
	label.bot(btex $hum$ etex, (x+3*u,y));
	label.bot(btex $chi$ etex, (x+4*u,y));
	label.bot(btex $g:$ etex, (x-0.7*u,y));
	label(btex $1$ etex, (x,y-0.5*u));
	label(btex $2$ etex, (x+u,y-0.5*u));
	label(btex $3$ etex, (x+2*u,y-0.5*u));
	label(btex $4$ etex, (x+3*u,y-0.5*u));
	label(btex $5$ etex, (x+4*u,y-0.5*u));
	label(btex $I(g):$ etex, (x-0.7*u,y-0.5*u));
	label(btex $G_1$ etex, (x+2*u,y-u));
	
	x := x + 4*u + 60;
	draw (x,y+0)--(x+2*u,y+2*u)--(x+4*u,y+0);
	draw (x+u/2,y+u/2)--(x+u,y);
	draw (x+3*u,y+u)--(x+2*u,y);
	draw (x+2.5*u,y+0.5*u)--(x+3*u,y);
	label.lft(btex $g_1^c$ etex, (x+3*u,y+u));
	dotlabel.top(btex $g_2^c$ etex, (x+2*u,y+2*u));
	dotlabel("", (x+2.5*u,y+0.5*u));
	label.bot(btex $hum$ etex, (x,y));
	label.bot(btex $chi$ etex, (x+u,y));
	label.bot(btex $mou_1$ etex, (x+2*u,y));
	label.bot(btex $mou_2$ etex, (x+3*u,y));
	label.bot(btex $rat$ etex, (x+4*u,y));
	label.bot(btex $g:$ etex, (x-0.7*u,y));
	label(btex $4$ etex, (x,y-0.5*u));
	label(btex $5$ etex, (x+u,y-0.5*u));
	label(btex $2$ etex, (x+2*u,y-0.5*u));
	label(btex $3$ etex, (x+3*u,y-0.5*u));
	label(btex $1$ etex, (x+4*u,y-0.5*u));
	label(btex $W(g):$ etex, (x-0.7*u,y-0.5*u));
	label(btex $G_2$ etex, (x+2*u,y-u));
enddef;

vardef drawswitch(expr u) =
	x := 0;
	y := 2*u+80;
	draw (x,y+0)--(x+2*u,y+2*u)--(x+4*u,y+0);
	draw (x+u/2,y+u/2)--(x+u,y+0);
	draw (x+u,y+u)--(x+2*u,y+0);
	draw (x+1.5*u,y+1.5*u)--(x+3*u,y+0);
	dotlabel.lft("", (x+u,y+u));
	label.bot(btex $rat$ etex, (x,y));
	label.bot(btex $mou_1$ etex, (x+u,y));
	label.bot(btex $mou_2$ etex, (x+2*u,y));
	label.bot(btex $hum$ etex, (x+3*u,y));
	label.bot(btex $chi$ etex, (x+4*u,y));
	label.bot(btex $g:$ etex, (x-0.7*u,y));
	label(btex $1$ etex, (x,y-0.5*u));
	label(btex $2$ etex, (x+u,y-0.5*u));
	label(btex $3$ etex, (x+2*u,y-0.5*u));
	label(btex $4$ etex, (x+3*u,y-0.5*u));
	label(btex $5$ etex, (x+4*u,y-0.5*u));
	label(btex $I(g):$ etex, (x-0.7*u,y-0.5*u));
	label(btex $G_1$ etex, (x+2*u,y-u));
	x := 4*u + 60;
	y := 2*u+80;
	draw (x,y+0)--(x+2*u,y+2*u)--(x+4*u,y+0);
	draw (x+u/2,y+u/2)--(x+u,y);
	draw (x+3*u,y+u)--(x+2*u,y);
	draw (x+2.5*u,y+0.5*u)--(x+3*u,y);
	label.lft(btex $g_1^c$ etex, (x+3*u,y+u));
	dotlabel.top(btex $g_2^c$ etex, (x+2*u,y+2*u));
	dotlabel("", (x+2.5*u,y+0.5*u));
	label.bot(btex $hum$ etex, (x,y));
	label.bot(btex $chi$ etex, (x+u,y));
	label.bot(btex $mou_1$ etex, (x+2*u,y));
	label.bot(btex $mou_2$ etex, (x+3*u,y));
	label.bot(btex $rat$ etex, (x+4*u,y));
	label.bot(btex $g:$ etex, (x-0.7*u,y));
	label(btex $4$ etex, (x,y-0.5*u)) withcolor (1,0,0);
	label(btex $5$ etex, (x+u,y-0.5*u)) withcolor (1,0,0);
	label(btex $2$ etex, (x+2*u,y-0.5*u)) withcolor (0,.7,0);
	label(btex $3$ etex, (x+3*u,y-0.5*u)) withcolor (0,.7,0);
	label(btex $1$ etex, (x+4*u,y-0.5*u)) withcolor (0,.7,0);
	label(btex $W(g):$ etex, (x-0.7*u,y-0.5*u));
	label(btex $G_2$ etex, (x+2*u,y-u));
	drawarrow (x+2*u-5,y+2*u){dir(200)}..(x+2*u+5,y+2*u){dir(160)} withcolor (0,0,.7);
	label.lft(btex $9/2$ etex, (x+1.5*u,y+1.5*u)) withcolor (1,0,0);
	label.rt(btex $6/3$ etex, (x+2.5*u,y+1.5*u)) withcolor (0,.7,0);
	pair pp;
	pp = (x+2*u,y-1.3*u);
	
	x := 0;
	y := 0;
	draw (x,y+0)--(x+2*u,y+2*u)--(x+4*u,y+0);
	draw (x+u,y+u)--(x+2*u,y);
	draw (x+3.5*u,y+0.5*u)--(x+3*u,y);
	draw (x+1.5*u,y+0.5*u)--(x+u,y);
	label.lft(btex $g_1^c$ etex, (x+u,y+u));
	dotlabel.lft(btex $g_2^c$ etex, (x+2*u,y+2*u));
	dotlabel("", (x+1.5*u,y+0.5*u));
	label.bot(btex $rat$ etex, (x,y));
	label.bot(btex $mou_1$ etex, (x+u,y));
	label.bot(btex $mou_2$ etex, (x+2*u,y));
	label.bot(btex $hum$ etex, (x+3*u,y));
	label.bot(btex $chi$ etex, (x+4*u,y));
	label.bot(btex $g:$ etex, (x-0.7*u,y));
	label(btex $1$ etex, (x,y-0.5*u));
	label(btex $2$ etex, (x+u,y-0.5*u));
	label(btex $3$ etex, (x+2*u,y-0.5*u));
	label(btex $4$ etex, (x+3*u,y-0.5*u));
	label(btex $5$ etex, (x+4*u,y-0.5*u));
	label(btex $W(g):$ etex, (x-0.7*u,y-0.5*u));
	label(btex $G_2$ etex, (x+2*u,y-u));
	drawarrow (x+4*u+50,y+u)--(x+4*u+10,y+u);
	
	x := x + 4*u + 60;
	draw (x,y+0)--(x+2*u,y+2*u)--(x+4*u,y+0);
	draw (x+u,y+u)--(x+2*u,y);
	draw (x+3.5*u,y+0.5*u)--(x+3*u,y);
	draw (x+0.5*u,y+0.5*u)--(x+u,y);
	label.top(btex $g_1^c$ etex, (x+u,y+u));
	dotlabel.lft(btex $g_2^c$ etex, (x+2*u,y+2*u));
	dotlabel("", (x+0.5*u,y+0.5*u));
	label.bot(btex $mou_1$ etex, (x,y));
	label.bot(btex $mou_2$ etex, (x+u,y));
	label.bot(btex $rat$ etex, (x+2*u,y));
	label.bot(btex $hum$ etex, (x+3*u,y));
	label.bot(btex $chi$ etex, (x+4*u,y));
	label.bot(btex $g:$ etex, (x-0.7*u,y));
	label(btex $2$ etex, (x,y-0.5*u)) withcolor (1,0,0);
	label(btex $3$ etex, (x+u,y-0.5*u)) withcolor (1,0,0);
	label(btex $1$ etex, (x+2*u,y-0.5*u)) withcolor (0,.7,0);
	label(btex $4$ etex, (x+3*u,y-0.5*u));
	label(btex $5$ etex, (x+4*u,y-0.5*u));
	label(btex $W(g):$ etex, (x-0.7*u,y-0.5*u));
	label(btex $G_2$ etex, (x+2*u,y-u));
	drawarrow (x+u-5,y+u){dir(200)}..(x+u+5,y+u){dir(160)} withcolor (0,0,.7);
	label.lft(btex $5/2$ etex, (x+0.5*u,y+0.5*u)) withcolor (1,0,0);
	label.rt(btex $1/1$ etex, (x+1.5*u,y+0.5*u)) withcolor (0,.7,0);
	pair pq;
	pq = (x+2*u,y+2.3*u);
	
	drawarrow pp--pq;
enddef;

beginfig(5);
u := 33;
drawswitch(u);
fill bbox currentpicture withcolor (1,1,1);
drawunorder(u);
endfig;

beginfig(6);
u := 33;
drawswitch(u);
draw bbox currentpicture withcolor (1,1,1);
endfig;

end;
