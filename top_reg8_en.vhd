library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_reg8_en is
    Port (
        clk : in  STD_LOGIC;
        btnU : in STD_LOGIC;
        btnC : in STD_LOGIC;
        sw : in STD_LOGIC_VECTOR(7 downto 0);
        led : out STD_LOGIC_VECTOR(7 downto 0)
    );
end top_reg8_en;

architecture Behavioral of top_reg8_en is

    signal q_reg : STD_LOGIC_VECTOR(7 downto 0);

begin

    U1: entity work.reg8_en
        port map (
            clk => clk,
            rst => btnU,
            en  => btnC,
            d   => sw,
            q   => q_reg
        );

    led <= q_reg;

end Behavioral;