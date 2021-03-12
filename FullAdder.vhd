library ieee;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity full_adder is 
  port
    (
      a, b, cin: in std_logic;
      s, cout: out std_logic
    );
  end full_adder;
  -----
  architecture dataflow of full_adder is 
    begin 
      s <= a xor b xor cin;
      cout <= (a and b) or (cin and (a or b));
    end dataflow;
  
