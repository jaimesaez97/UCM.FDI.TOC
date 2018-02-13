----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:41 12/23/2017 
-- Design Name: 
-- Module Name:    uc - Behavioral 
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
--
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

entity uc is
port (
				clk 	 : in  std_logic;
				rst	 : in  std_logic;
				--CONTROL
				ini	 : in  std_logic;
				fin	 : out std_logic;
				--SEÑALES DE ESTADO/CONTROL
				ctrl   : out std_logic_vector (8 downto 0);
				status : in  std_logic_vector (12 downto 0)
			);
end uc;

architecture Behavioral of uc is
-------------------------------------------------------------------------
-- DECLARACIÓN DE TIPOS:
-------------------------------------------------------------------------
type t_st is (sInicial, s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10);
signal current_state, next_state : t_st;
-------------------------------------------------------------------------
--	Señales de ESTADO (in)
-------------------------------------------------------------------------
signal exp1_inf			: std_logic;	--status(0)
signal exp2_inf			: std_logic;	--status(1)
signal m1_0					: std_logic;	--status(2)
signal m2_0					: std_logic;	--status(3)
signal cmp_exp_res_0		: std_logic;	--status(5)
signal cmp_exp_res_inf	: std_logic;	--status(5)
signal overflow			: std_logic_vector(1 downto 0); -- status(6, 7)
signal exponente_add	   : std_logic;	--status(8)
signal exp_inf				: std_logic;	--status(9)
signal exp_0				: std_logic;	--status(10)
signal exp1_0				: std_logic;	--status(11)
signal exp2_0				: std_logic;	--status(12)
-------------------------------------------------------------------------
-- SEÑALES DE CONTROL(out):
-------------------------------------------------------------------------
signal op_ld 			: std_logic; 						  --ctrl(0)
signal m_ld				: std_logic; 						  --ctrl(1)
signal mux_exp_res	: std_logic_vector(1 downto 0); --ctrl(2 y 3)
signal m_res_ld		: std_logic; 						  --ctrl(4)
signal m_res_sh		: std_logic;						  --ctrl(5)
signal exp_res_ld		: std_logic; 						  --ctrl(6)
signal res_ld			: std_logic;						  --ctrl(7)
signal m_res_mux		: std_logic; 					     --ctrl(8)
---------------------	----------------------------------------------------
begin
-------------------------------------------------------------------------
-- PROCESO SEÑAL STATUS
-------------------------------------------------------------------------
p_status_signals : (exp1_0					,
						  exp2_0					,
						  exp_0					,
						  exp_inf				,
						  exponente_add		,
						  overflow(1)   		,
						  overflow(0)			,
						  cmp_exp_res_inf		,
						  cmp_exp_res_0		, 
						  m2_0					,
						  m1_0					,
						  exp2_inf				,
						  exp1_inf				) 		<= status;
-------------------------------------------------------------------------
-- PROCESO SIGUIENTE ESTADO
-------------------------------------------------------------------------
p_next_state : process (ini, current_state, rst, exponente_add, exp_inf, exp_0)
begin
	case current_state is
	-----------------------
	-- ¿Pongo estado para
	-- p_casos_especiales?
	-----------------------	
		when sInicial => 
			if ini = '1' then
				next_state <= s0;
			else
				next_state <= sInicial;
			end if;
		when s0 =>
			--CARGAR OP
			next_state <= s1;
		when s1 =>
			--CASOS ESP
			next_state <= s2;
		when s2 =>
			--MULTIPLICAR MANTISAS
			next_state <= s3;
		when s3 =>
			--SUMAR EXPONENTES
			next_state <= s4;
		when s4 =>
			--NORMALIZAR
			if exponente_add = '1' then
				next_state <= s8;
			else
				next_state <= s5;
			end if;
		when s5 =>
			--REDONDEAR (NADA)
			next_state <= s6;
		when s6 =>
			--OVERFLOW
			if exp_inf = '1' then
				next_state <= s9;
			elsif exp_0 = '1' then
				next_state <= s10;
			else
				next_state <= s7;
			end if;
		when s7 =>
			--EMPAQUETAR
			next_state <= sInicial;	
		when s8 =>
			--EXP_AD = 1 (SUMAR EXPONENTE)
			next_state <= s5;
		when s9 =>
			--OVERFLOW_1
			next_state <= s7;
		when s10 => 
			--OVERFLOW_2
			next_state <= s7;
	end case;
end process p_next_state;
-----------------------------------------------------------------------------
-- Proceso salida
-----------------------------------------------------------------------------
p_outputs : process (current_state) is
		--DEFINICION SEÑALES DE CONTROL
	constant c_op_ld      		: std_logic_vector(8 downto 0) := "000000001";--ctrl(0)
	constant c_m_ld      		: std_logic_vector(8 downto 0) := "000000010";--ctrl(1)
	constant c_mux_exp_res     : std_logic_vector(8 downto 0) := "000000100";--ctrl(2)
	constant c_mux_exp_res_2   : std_logic_vector(8 downto 0) := "000001000";--ctrl(3)
	constant c_m_res_ld 		   : std_logic_vector(8 downto 0) := "000010000";--ctrl(4)
	constant c_m_res_sh  		: std_logic_vector(8 downto 0) := "000100000";--ctrl(5)
	constant c_exp_res_ld	   : std_logic_vector(8 downto 0) := "001000000";--ctrl(6)
	constant c_res_ld				: std_logic_vector(8 downto 0) := "010000000";--ctrl(7)
	constant c_m_res_mux			: std_logic_vector(8 downto 0) := "100000000";--ctrl(8)
begin
case current_state is
	when sInicial =>
		fin  <= '1';
		ctrl <= (others=>'0');
	when s0 =>	
		fin  <= '0';
		ctrl <= c_op_ld;
	when s1 =>
		fin  <= '0';
		ctrl <= (others=>'0');
	when s2 =>
		fin  <= '0';
		ctrl <= c_m_res_ld	or
				  c_m_ld			 ;
	when s3 =>
		fin  <= '0';
		ctrl <= c_exp_res_ld  ;
	when s4 =>
		fin  <= '0';
		ctrl <= c_m_res_sh	 ;
	when s5 =>
		fin  <= '0';
		ctrl <= (others=>'0') ;
	when s6 =>
		fin  <= '0';
		ctrl <= (others=>'0') ;
	when s7 =>
		fin  <= '0';
		ctrl <= c_res_ld		  ;
	when s8 =>
		fin <= '0';
		ctrl <= c_m_res_mux   or
				  c_m_res_ld	  ;
	when s9 =>
		fin <= '0';
		ctrl <= c_m_res_mux	 or
				  c_m_res_ld     ;
	when s10 =>
		fin  <= '0';
		ctrl <= c_m_res_mux	 or
				  c_m_res_ld    or
				  c_exp_res_ld  or
				--c_mux_exp_res or
				  c_mux_exp_res_2; 	--EL 0 NO Y EL DOS SI: (10) <- 2
				  
end case;

end process p_outputs;
-----------------------------------------------------------------------------
-- Proceso reloj
-----------------------------------------------------------------------------
p_status_reg : process (clk, rst) is
begin
  if rst = '1' then
	 current_state <= sInicial;
  elsif rising_edge(clk) then
	 current_state <= next_state;
  end if;
end process p_status_reg;

end Behavioral;

