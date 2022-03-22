program primes;

const
count = 30000;

var
allPrimes: array[1..count] of integer;
numPrimes: integer = 0;
j: integer;
i: integer;
sq: real;

label loopEnd, otherLabel;

begin
  for i := 2 to count do
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
