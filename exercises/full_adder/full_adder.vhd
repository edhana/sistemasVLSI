entity full_adder is
  PORT (
    a, b, cin: IN BIT;
    s, cout: OUT BIT);
end full_adder;

ARCHITECTURE dataflow OF full_adder is
BEGIN
  s <= a XOR b XOR cin;
  cout <= (a AND b) OR (a AND cin) OR (b AND cin);
END dataflow;

