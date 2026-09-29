library ieee;
use ieee.std_logic_1164.all;

entity TP1Suite is
    port (
        e1, e2, e3, e4 : in bit;
        s1, s2, s3, s4 : out bit_vector(6 downto 0)
    );
end TP1Suite;

architecture global of TP1Suite is
    component TP1Fin
        port (
            a, b, c, d : in bit;
            S : out bit_vector(6 downto 0)
        );
    end component;
begin
    inst1 : TP1Fin port map (a=>'0', b=>'0', c=>'0', d=>e1, S=>s1);
    inst2 : TP1Fin port map (a=>'0', b=>'0', c=>'0', d=>e2, S=>s2);
    inst3 : TP1Fin port map (a=>'0', b=>'0', c=>'0', d=>e3, S=>s3);
    inst4 : TP1Fin port map (a=>'0', b=>'0', c=>'0', d=>e4, S=>s4);
end global;
