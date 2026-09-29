library ieee;
use ieee.std_logic_1164.all;

entity TP1Fin is
    port (
        a, b, c, d : in bit;
        S : out bit_vector(6 downto 0)
    );
end TP1Fin;

architecture arch_afficheur of TP1Fin is
    signal x : bit_vector(3 downto 0);
begin
    x <= a & b & c & d;

    with x select
    S <= "0000001" when "0000",
         "1001111" when "0001",
         "0010010" when "0010",
         "0000110" when "0011",
         "1001100" when "0100",
         "0100100" when "0101",
         "0100000" when "0110",
         "0001111" when "0111",
         "0000000" when "1000",
         "0000100" when "1001",
         "1111111" when others;
end arch_afficheur;
