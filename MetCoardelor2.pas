program MetCoardelor2;
var
Msup,minf,a,b,e,x,xnou,xvechi,eps: real;
function f(x:real):real;
begin
f:=(sqrt(x+1) - 1/x);
end;
begin
a:=0.1; b:=1.1; eps:=0.001;
Msup:=10; minf:=5;

x:=a-(f(a))/(f(b)-f(a))*(b-a);
if f(x)*f(a)>0 then begin e:=b; xnou:=a; end
else begin e:=a; xnou:=b; end;
repeat
xvechi:=xnou;
xnou:= xvechi-(f(xvechi))/(f(e)-f(xvechi))*(e-xvechi);
writeln(' x=',xnou:10:8,' f(x)=',f(xnou):12:8);
until abs((Msup-minf)/minf*(xnou-xvechi))<eps;
readln();
end.
