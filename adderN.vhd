library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
---
entity adderN is 
  generic (n : natural);
  port 
    (
      a, b: in std_logic_vector (n-1 downto 0);
       cin: in std_logic;
      sum : out std_logic_vector (n-1 downto 0);
      cout: out std_logic
        );
  end addern;
architecture adder_gen1 of addern is 
  signal c: std_logic_vector (n downto 0);
begin 
  cout <= c(n);
  c(0) <= cin;
  carry: for i in 1 to n generate 
      c(i) <= (a(i-1) and b(i-1)) or (c(i-1) and (a(i-1) or b(i-1)));
  end generate;
suma: for i in 0 to n-1 generate 
    sum(i) <= a(i) xor b(i) xor c(i);
  end generate;--- ok


  
