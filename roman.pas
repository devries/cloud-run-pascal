program roman(input, output);

var y: integer;

begin
   read(y);

   if (y<1) or (y>3999) then
      write(StdErr, 'Only numbers from 1 to 3999 can be converted')
   else
      begin
         while y>=1000 do
            begin write('M'); y := y-1000 end;
         if y>=900 then
            begin write('CM'); y := y-900 end;
         if y>=500 then
            begin write('D'); y := y-500 end;
         if y>=400 then
            begin write('CD'); y := y-400 end;
         while y>=100 do
            begin write('C'); y := y-100 end;
         if y>=90 then
            begin write('XC'); y := y-90 end;
         if y>=50 then
            begin write('L'); y := y-50 end;
         if y>=40 then
            begin write('XL'); y := y-40 end;
         while y>=10 do
            begin write('X'); y := y-10 end;
         if y>=9 then
            begin write('IX'); y := y-9 end;
         if y>=5 then
            begin write('V'); y := y-5 end;
         if y>=4 then
            begin write('IV'); y := y-4 end;
         while y>=1 do
            begin write('I'); y := y-1 end;
      end
end.
