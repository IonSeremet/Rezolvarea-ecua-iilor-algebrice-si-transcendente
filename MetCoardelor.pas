program MetCoardelor;
var a,b,e,c,x: real;
 n,i: integer;
function f(x:real):real;
begin f:=sqrt(x+1)-(1/x);
end;
begin a:=0.1; b:=1.1; n:=111;

 c:=a-(f(a)/((f(b)-f(a)))*(b-a));
 if f(c)*f(a)>0 then begin e:=b; x:=a; end
 else begin e:=a; x:=b; end;
 for i:=1 to n do
 begin x:= x-(f(x))/(f(e)-f(x))*(e-x);
 writeln(x:10:8,' ',f(x):12:8);
 end;
 readln();
end.
