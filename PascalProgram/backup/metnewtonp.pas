program MetNewton;
var a, b, x, c : real;
i, n: integer;
function f(x:real):real;
 begin f:=sqrt( x + 1) - (1/x); end;
function fd1(x:real):real;
 begin fd1:=(1/(x*x))+1/(sqrt(x+1)); end;
begin a:=0.2; b:=1.1; n:=30; i:=0;
 c:=a-(f(a))/(f(b)-f(a))*(b-a);
 if f(c)*f(a)<0 then x:=a else x:=b;
 while i<n do
 begin i:=i+1;
 x:=x-f(x)/fd1(x);
 writeln('i=',i:2,' x=',x:15:12, ' f=',f(x):15:12);
 end;
 readln();
end.
