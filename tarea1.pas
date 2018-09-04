program tarea1;

var
	n, cociente, factor, multiplicidad, i, primo:integer;

begin
	readln(n);
	if n > 1 then
		begin
		primo:=1;
		for i:= 2 to trunc(sqrt(n)) do
			begin
			if n mod i = 0 then
				primo := 0
			end;
		if primo = 1 then
			writeln(n)
		else
			begin
			cociente:=n;
			for i:= 2 to trunc(n/2) do
				begin
				factor:= i;
				multiplicidad:= 0;
				while cociente mod i = 0 do
					begin
					multiplicidad:=multiplicidad+1;
					cociente:= cociente div i;
					end;
				if multiplicidad <> 0 then
					case multiplicidad of
						1: writeln(factor)
					else writeln(factor, '^' ,multiplicidad)	
					end;
				end;
			end;	
		end;
end.		

			