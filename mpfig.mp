
% tree reordering 1

beginfig(1);
label(btex $j+1$ etex, (100, 125));
label(btex $\vdots$ etex, (100, 115));
label(btex $j+k$ etex, (100, 97));

label(btex $j+k+1$ etex, (100, 70));
label(btex $\vdots$ etex, (100, 60));
label(btex $j+k+l$ etex, (100, 42));

mid1 := (125+97)/2;
mid2 := (70+42)/2;
mid3 := (mid1+mid2)/2;

draw (70, mid1) -- (60, mid1) -- (60, mid2) -- (70, mid2);
draw (60, mid3) -- (40, mid3);
label.rt((btex $\lbrace$ etex) xscaled 1.3 yscaled 3, (70, mid1));
label.rt((btex $\lbrace$ etex) xscaled 1.3 yscaled 3, (70, mid2));

label(btex $j+1$ etex, (200, 125));
label(btex $\vdots$ etex, (200, 115));
label(btex $j+l$ etex, (200, 97));

label(btex $j+l+1$ etex, (200, 70));
label(btex $\vdots$ etex, (200, 60));
label(btex $j+l+k$ etex, (200, 42));

draw (230, mid1) -- (240, mid1) -- (240, mid2) -- (230, mid2);
draw (240, mid3) -- (260, mid3);
label.lft((btex $\rbrace$ etex) xscaled 1.3 yscaled 3, (230, mid1));
label.lft((btex $\rbrace$ etex) xscaled 1.3 yscaled 3, (230, mid2));

drawarrow (130, mid1) -- (170, mid2);
drawarrow (130, mid2) -- (170, mid1);
endfig;

% tree reordering 2

beginfig(2);
draw (90, 0) -- (60, 0) -- (60, 30) -- (90, 30);
draw (90, 60) -- (60, 60) -- (60, 90) -- (90, 90);
draw (60, 15) -- (30, 15) -- (30, 75) -- (60, 75);
draw (30, 45) -- (0, 45);
label.rt("A", (90, 90));
label.rt("B", (90, 60));
label.rt("C", (90, 30));
label.rt("D", (90, 0));

draw (290, 0) -- (260, 0) -- (260, 30) -- (290, 30);
draw (290, 60) -- (260, 60) -- (260, 90) -- (290, 90);
draw (260, 15) -- (230, 15) -- (230, 75) -- (260, 75);
draw (230, 45) -- (200, 45);
label.rt("C", (290, 90));
label.rt("D", (290, 60));
label.rt("A", (290, 30));
label.rt("B", (290, 0));
endfig;

% parsimoneous species map

beginfig(3);
unit := 36;
base := unit*4 + 50;

draw (0,0)--(2*unit,2*unit)--(4*unit,0);
draw (unit,0)--(unit*1.5,unit/2)--(2*unit,0);
draw (unit*1.5,unit/2)--(unit*1.5,unit*1.5);
draw (unit*1.5,unit*1.5)--(3*unit,0);
label.bot(btex {\it Human} etex, (0,0));
label.bot(btex {\it Mouse} etex, (unit,0));
label.bot(btex {\it Rat} etex, (2*unit,0));
label.bot(btex {\it Dog} etex, (3*unit,0));
label.bot(btex {\it Chicken} etex, (4*unit,0));
label(btex $S$ etex, (2*unit, -unit*0.8));
dotlabel.lft(btex $M^*(g)=M^*(g_p)=${\it Eutheria} etex, (unit*1.5,unit*1.5));

draw (base,0)--(2*unit+base,2*unit)--(4*unit+base,0);
draw (unit+base,0)--(unit*1.5+base,unit/2) dashed withdots;
draw (unit+base,unit)--(2*unit+base,0);
draw (unit*1.5+base,unit*1.5)--(3*unit+base,0);
label.bot(btex $hum$ etex, (base,0));
% label.bot(btex $mou$ etex, (unit+base,0));
label.bot(btex $rat$ etex, (2*unit+base,0));
label.bot(btex $dog$ etex, (3*unit+base,0));
label.bot(btex $chi$ etex, (4*unit+base,0));
label(btex $G$ etex, (2*unit+base, -unit*0.8));
label.rt(btex $g$ etex, (unit+base+2, unit));
label.rt(btex $g_p$ etex, (unit*1.5+base+2, unit*1.5));

drawarrow (unit+base, unit){dir(150)} .. {dir(210)}(unit*1.5,unit*1.5) dashed evenly;
drawarrow (unit*1.5+base, unit*1.5){dir(150)} .. {dir(210)}(unit*1.5,unit*1.5) dashed evenly;
endfig;

% species map 1

beginfig(4);
u := 31;
b := u*6 + 30;
s := 1;
b2 := -12;

draw (0,0)--(3*u,3*u)--(6*u,0);
draw (u,u)--(2*u,0);
draw (u,0)--(1.5*u,0.5*u);
label.top(btex {\it Human} etex, (0,b2));
label.top(btex {\it Rat} etex, (u,b2));
label.top(btex {\it Mouse} etex, (2*u,b2));
label.top(btex {\it Chicken} etex, (6*u,b2));
label(btex $S$ etex, (3*u, -u*0.7));

draw (b,0)--(3*u+b,3*u)--(6*u+b,0);
draw (u+b,u)--(2*u+b,0);
draw (u+b,0)--(1.5*u+b,0.5*u);
label.top(btex $hum$ etex, (b,b2));
label.top(btex $rat$ etex, (u+b,b2));
label.top(btex $mou$ etex, (2*u+b,b2));
label.top(btex $chi$ etex, (6*u+b,b2));
label.top(btex $g$ etex, (u+b,u));
label(btex $G$ etex, (3*u+b, -u*0.7));
label(btex $M^*$ etex scaled 2, ((b+u*6)/2, 3*u));
drawarrow (b+3*u-s,3*u+s){dir(150)}..{dir(210)}(3*u+s,3*u+s) dashed evenly;
drawarrow (b+u-s,u+s){dir(150)}..{dir(210)}(u+s,u+s) dashed evenly;
drawarrow (b+1.5*u-s,0.5*u+s){dir(150)}..{dir(210)}(1.5*u+s,0.5*u+s) dashed evenly;
endfig;

% species map 2

beginfig(5);
u := 31;
b := u*6 + 30;
s := 1;
b2 := -12;

draw (0,0)--(3*u,3*u)--(6*u,0);
draw (u,u)--(2*u,0);
draw (u,0)--(1.5*u,0.5*u);
label.top(btex {\it Human} etex, (0,b2));
label.top(btex {\it Rat} etex, (u,b2));
label.top(btex {\it Mouse} etex, (2*u,b2));
label.top(btex {\it Chicken} etex, (6*u,b2));
label(btex $S$ etex, (3*u, -u*0.7));

draw (b,0)--(3*u+b,3*u)--(6*u+b,0);
draw (2.5*u+b,2.5*u)--(5*u+b,0);
draw (4*u+b,0)--(4.5*u+b,0.5*u);
label.top(btex $hum$ etex, (b,b2));
label.top(btex $rat$ etex, (4*u+b,b2));
label.top(btex $mou$ etex, (5*u+b,b2));
label.top(btex $chi$ etex, (6*u+b,b2));
dotlabel.top(btex $g'$ etex, (2.5*u+b,2.5*u));
label(btex $G$ etex, (3*u+b, -u*0.7));
label(btex $M'$ etex scaled 2, ((b+u*6)/2, 3*u));
draw (b+u,u)--(b+2*u,0) dashed withdots;
draw (u+b,0)--(1.5*u+b,0.5*u) dashed withdots;
draw (b+3*u,0)--(4*u+b,u) dashed withdots;

drawarrow (b+3*u-s,3*u+s){dir(150)}..{dir(210)}(3*u+s,3*u+s) dashed evenly;
drawarrow (b+2.5*u-s,2.5*u+s){dir(150)}..{dir(210)}(u+s,u+s) dashed evenly;
drawarrow (b+4.5*u-s,0.5*u+s){dir(150)}..{dir(210)}(u+s,u+s) dashed evenly;
endfig;

%%%%%%%%%% tree merge %%%%%%%%%%%

beginfig(7);
u := 33;
x := 0;
y := u * 2 + 80;

draw (x,y+0)--(x+2*u,y+2*u)--(x+4*u,y+0);
draw (x+u/2,y+u/2)--(x+u,y+0);
draw (x+u,y+u)--(x+2*u,y+0);
draw (x+1.5*u,y+1.5*u)--(x+3*u,y+0);
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

x := x + u * 4 + 50;

draw (x,y+0)--(x+2*u,y+2*u)--(x+4*u,y+0);
draw (x+1.5*u,y+u/2)--(x+u,y+0);
draw (x+u,y+u)--(x+2*u,y+0);
draw (x+3.5*u,y+0.5*u)--(x+3*u,y+0);
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


y := 0;
x := 60;
u := 50;

draw (x,y+0)--(x+2*u,y+2*u)--(x+4*u,y+0);
draw (x+1.5*u,y+u/2)--(x+u,y+0);
draw (x+u,y+u)--(x+2*u,y+0);
draw (x+1.5*u,y+1.5*u)--(x+3*u,y+0);
label.lft(btex $g_1^c$ etex, (x+u,y+u));
label.lft(btex $g_2^c$ etex, (x+2*u,y+2*u));
dotlabel.lft(btex $g_5$ etex, (x+1.5*u,y+u/2));
label.lft(btex $g_4$ etex, (x+1.5*u,y+1.5*u));
label.bot(btex $rat$ etex, (x,y));
label.bot(btex $mou_1$ etex, (x+u,y));
label.bot(btex $mou_2$ etex, (x+2*u,y));
label.bot(btex $hum$ etex, (x+3*u,y));
label.bot(btex $chi$ etex, (x+4*u,y));
label(btex $G^*$ etex, (x+2*u,y-0.5*u));

endfig;

%%%%%%%%%%%% tree reordering examples %%%%%%%%%%%%

beginfig(8);
u := 33;
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
drawarrow (x+2*u-5,y+2*u){dir(200)}..(x+2*u+5,y+2*u){dir(160)};
label.rt(btex $6/3$ etex, (x+2.5*u,y+1.5*u));
label.lft(btex $9/2$ etex, (x+1.5*u,y+1.5*u));
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
label(btex $2$ etex, (x,y-0.5*u));
label(btex $3$ etex, (x+u,y-0.5*u));
label(btex $1$ etex, (x+2*u,y-0.5*u));
label(btex $4$ etex, (x+3*u,y-0.5*u));
label(btex $5$ etex, (x+4*u,y-0.5*u));
label(btex $W(g):$ etex, (x-0.7*u,y-0.5*u));
label(btex $G_2$ etex, (x+2*u,y-u));
drawarrow (x+u-5,y+u){dir(200)}..(x+u+5,y+u){dir(160)};
label.rt(btex $1/1$ etex, (x+1.5*u,y+0.5*u));
label.lft(btex $5/2$ etex, (x+0.5*u,y+0.5*u));
pair pq;
pq = (x+2*u,y+2.3*u);
drawarrow pp--pq;

endfig;

%%%%%%%%%%%%% cNJ %%%%%%%%%%%%%%%%

beginfig(9);
u := 32;
y := 80;
x := 0;
xskip := 4*u + 40;
yskip := 2*u + 30;
label.top("Constraining tree", (x+2*u,y));
x := x + xskip;
label.top("Joining procedure", (x+2*u,y));

x := 0;
y := y - yskip;
label.rt("Step 1:", (x-2*u,y+u));
dotlabel.bot("1", (x,y));
dotlabel.bot("2", (x+u,y));
dotlabel.bot("3", (x+2*u,y));
dotlabel.bot("4", (x+3*u,y));
dotlabel.bot("5", (x+4*u,y));
draw (x+u,y+u)--(x+2*u,y+2*u)--(x+4*u,y);
draw (x,y)--(x+u,y+u)--(x+u,y) withpen pencircle scaled 2;
draw (x+3.5*u,y+u/2)--(x+3*u,y);

x := x + xskip;
dotlabel.bot("1", (x,y));
dotlabel.bot("2", (x+u,y));
dotlabel.bot("3", (x+2*u,y));
dotlabel.bot("4", (x+3*u,y));
dotlabel.bot("5", (x+4*u,y));
draw (x,y)--(x+u/2,y+u/2)--(x+u,y);
dotlabel.rt("[12]", (x+u/2,y+u/2));

x := 0;
y := y - yskip;
label.rt("Step 2:", (x-2*u,y+u));
dotlabel.bot("[12]", (x+u/2,y));
dotlabel.bot("3", (x+2*u,y));
dotlabel.bot("4", (x+3*u,y));
dotlabel.bot("5", (x+4*u,y));
draw (x+u/2,y)--(x+3.5*u/2+u/2,y+3.5*u/2)--(x+3.5*u,y+u/2);
draw (x+u*3,y)--(x+3.5*u,y+u/2)--(x+4*u,y) withpen pencircle scaled 2;

x := x + xskip;
dotlabel.bot("[12]", (x+u/2,y));
dotlabel.bot("3", (x+2*u,y));
dotlabel.bot("4", (x+3*u,y));
dotlabel.bot("5", (x+4*u,y));
draw (x+3*u,y)--(x+3.5*u,y+u/2)--(x+4*u,y);
dotlabel.rt("[45]", (x+3.5*u,y+u/2));

x := 0;
y := y - yskip;
label.rt("Step 3:", (x-2*u,y+u));
dotlabel.bot("[12]", (x+u/2,y));
dotlabel.bot("3", (x+2*u,y));
dotlabel.bot("[45]", (x+3.5*u,y));
draw (x+u/2,y)--(x+2*u,y+1.5*u)--(x+3.5*u,y);
%draw (x+1.5*u/2+u/2,y+1.5*u/2)--(x+2*u,y);

x := x + xskip;
dotlabel.bot("[12]", (x+u/2,y));
dotlabel.bot("3", (x+2*u,y));
dotlabel.bot("[45]", (x+3.5*u,y));
draw (x+u/2,y)--(x+2*u,y+1.5*u)--(x+3.5*u,y);
draw (x+2*u,y+1.5*u)--(x+2*u,y);

y := y - yskip;
x := 0;
label.rt("Final tree:", (x-2*u,y+u));
x := (4*u + xskip) / 2 - 4*u/2;
dotlabel.bot("1", (x,y));
dotlabel.bot("2", (x+u,y));
dotlabel.bot("3", (x+2*u,y));
dotlabel.bot("4", (x+3*u,y));
dotlabel.bot("5", (x+4*u,y));
label.lft("[12]", (x+u/2,y+u/2));
label.rt("[45]", (x+3.5*u,y+u/2));
draw (x,y)--(x+2*u,y+2*u)--(x+4*u,y);
draw (x+u,y)--(x+u/2,y+u/2);
draw (x+3.5*u,y+u/2)--(x+3*u,y);
draw (x+2*u,y+2*u)--(x+2*u,y);

endfig;

beginfig(10);
unit := 36;
base := 0;

draw (base,0)--(2*unit+base,2*unit)--(4*unit+base,0);
draw (unit+base,0)--(unit*1.5+base,unit/2);
draw (unit+base,unit)--(2*unit+base,0);
draw (unit*1.5+base,unit*1.5)--(3*unit+base,0);
label.bot(btex $1$ etex, (base,0));
label.bot(btex $2$ etex, (unit+base,0));
label.bot(btex $3$ etex, (2*unit+base,0));
label.bot(btex $4$ etex, (3*unit+base,0));
label.bot(btex $5$ etex, (4*unit+base,0));
label(btex $G$ etex, (2*unit+base, -unit*0.8));
label.lft(btex $\bar{g}=\{1,2,3\}$ etex, (unit+base, unit));
label.rt(btex $g$ etex, (unit+base+2, unit));
label.lft(btex $\{2,3\}$ etex, (unit*1.5+base, unit/2));
label.lft(btex $\{1,2,3,4\}$ etex, (unit*1.5+base, unit*1.5));
label.lft(btex $\{1,2,3,4,5\}$ etex, (unit*2+base, unit*2));

endfig;

beginfig(11);
u := 31;
b := 0;
s := 1;
b2 := -12;

draw (b,0)--(3*u+b,3*u)--(6*u+b,0);
draw (2.5*u+b,2.5*u)--(5*u+b,0);
draw (4*u+b,0)--(4.5*u+b,0.5*u);
label.top(btex $hum$ etex, (b,b2));
label.top(btex $rat$ etex, (4*u+b,b2));
label.top(btex $mou$ etex, (5*u+b,b2));
label.top(btex $chi$ etex, (6*u+b,b2));
dotlabel.lft(btex {\it Eutheria} etex, (2.5*u+b,2.5*u));
label(btex $G$ etex, (3*u+b, -u*0.7));
draw (b+u,u)--(b+2*u,0) dashed withdots;
draw (u+b,0)--(1.5*u+b,0.5*u) dashed withdots;
label.rt(btex {\it Murinae} etex, (1.5*u+b,0.5*u));
draw (b+3*u,0)--(4*u+b,u) dashed withdots;
endfig;

end;
