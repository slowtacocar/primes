program primes;

var
allPrimes: array[1..15000] of integer;
numPrimes: integer = 0;
j: integer;
i: integer;
sq: real;

label loopEnd, otherLabel;

begin
  for i := 2 to 30000 do
  begin
    sq := sqrt(i);
    for j := 1 to numPrimes do
    begin
      if allPrimes[j] > sq then break;
      if (i mod allPrimes[j]) = 0 then goto loopEnd;
    end;
    numPrimes := numPrimes + 1;
    allPrimes[numPrimes] := i;
    loopEnd:;
  end;
  writeln(numPrimes);
end.
