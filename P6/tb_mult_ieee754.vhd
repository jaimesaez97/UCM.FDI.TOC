----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:10:35 01/15/2018 
-- Design Name: 
-- Module Name:    tb_mult_ieee754 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_mult_ieee754 is
end tb_mult_ieee754;

architecture Behavioral of tb_mult_ieee754 is
	component mult_ieee754
	port (
				clk 	 : in  std_logic;
				rst	 : in  std_logic;
				--OPERANDOS E/S
				op1 	 : in  std_logic_vector (31 downto 0);
				op2 	 : in	std_logic_vector (31 downto 0);
				res	 : out std_logic_vector (31 downto 0);
				--CONTROL
				ini	 : in  std_logic;
				fin	 : out std_logic
				--SEÑALES DE ESTADO/CONTROL
--				ctrl   : out std_logic_vector (6 downto 0);
--				status : in  std_logic_vector (7 downto 0)
			);
	end component;
	
	signal clk, rst, ini, fin				: std_logic;
	signal op1									: std_logic_vector (31 downto 0);
	signal op2									: std_logic_vector (31 downto 0);
	signal res									: std_logic_vector (31 downto 0);
begin
	-------------------------------------------------------------------------------
   -- Component instantiation
   -------------------------------------------------------------------------------
	i_dut : mult_ieee754
		port map 	(
						clk => clk,
						rst => rst,
						ini => ini,
						op1 => op1,
						op2 => op2,
						res => res,
						fin => fin
						 );
   -----------------------------------------------------------------------------
   -- Process declaration
   -----------------------------------------------------------------------------
	-- Input clock
	p_clk : process
	begin
		clk <= '0', '1' after 5 ns;
		wait for 10 ns;
	end process p_clk;
	
	-- External reset
	p_rst : process
	begin 
		rst <= '1';
		wait for 250 ns;
		rst <= '0';
		wait;
	end process p_rst;
	
	-- Driver process
	p_driver : process
    variable v_i, v_j    : natural := 0;
    variable v_calculo   : std_logic_vector(7 downto 0);
    variable v_correctas : natural := 0;

  begin
    ini <= '0';
    op1 <= (others => '0');
    op2 <= (others => '0');
    wait until rising_edge(rst);
	 
	 op1 <= "00000000000000000000000000000000";
	 op2 <= "01111111100000000000000000000000";
	 wait until rising_edge(clk);
	 ini <= '1';
	 wait until rising_edge(clk);
	 ini <= '0';
	 wait until fin <= '1';
	 wait;
	 
	 
--    dndo_loop : for v_i in 1 to 255 loop
--      dndo <= std_logic_vector(to_unsigned(v_i, 8));
--      dsor_loop : for v_j in 1 to v_i loop
--        dsor      <= std_logic_vector(to_unsigned(v_j, 8));
--        wait until rising_edge(clk);
--        inicio    <= '1';
--        wait until rising_edge(clk);
--        inicio    <= '0';
--        wait until ready = '1';
--        wait until rising_edge(clk);
--        v_calculo := std_logic_vector(unsigned(dndo)/unsigned(dsor));
--        assert v_calculo = cociente
--          report "Error en la division"
--          severity error;
--        --   if v_calculo = cociente then
--        --     v_correctas := v_correctas +1;
--        --   end if;
--        wait until rising_edge(clk);
--      end loop dsor_loop;
--    end loop dndo_loop;
--    -- assert false report "Divisiones v_correctas: "& integer'image(v_correctas)
--    --   severity note;
--    wait;
  end process p_driver;


end Behavioral;

