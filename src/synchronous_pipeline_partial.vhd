library ieee;
use ieee.std_logic_1164.all;

entity TP2Synchrone is
    port (
        clk, rst : in bit;
        a, b, c, d : in bit;
        s1, s2 : out bit
    );
end TP2Synchrone;

architecture archi_1 of TP2Synchrone is
    signal temp_a, temp_b, temp_c, temp_d, temp_s1, temp_s2 : bit;
begin
    p1 : process(rst, clk)
    begin
        if rst='0' then
            temp_a <= '0';
            temp_b <= '0';
            temp_c <= '0';
            temp_d <= '0';
        elsif clk'event and clk='1' then
            temp_a <= a;
            temp_b <= b;
            temp_c <= c;
            temp_d <= d;
        end if;
    end process p1;

    -- The archived report truncates the original output equations here.
    -- They are intentionally not reconstructed as if they were original source.

    p2 : process(rst, clk)
    begin
        if rst='0' then
            temp_s1 <= '0';
            temp_s2 <= '0';
        elsif clk'event and clk='1' then
            temp_s1 <= temp_s1;
            temp_s2 <= temp_s2;
        end if;
    end process p2;

    s1 <= temp_s1;
    s2 <= temp_s2;
end archi_1;
