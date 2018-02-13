----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:08 12/23/2017 
-- Design Name: 
-- Module Name:    cd - Behavioral 
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


	--preguntas:


	--HE PUESTO INFINITO * NaN = NaN
	--PERO NO SE ESPECIFICABA

	--LÍNEA 132 -> ¿BIEN METIDO?
	--LÍNEA 296 -> ¿ESTADO PARA P_CASOS_ESPECIALES?
	--LÍNEA 305 -> ¿SOBRA?
	--LÍNEA 426 -> ¿PORQUÉ DA WARNING?
	--LÍNEA 437 -> ¿8 DOWNTO 1?


use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cd is
port (
				clk 	 : in  std_logic;
				rst	 : in  std_logic;
				--OPERANDOS E/S
				op1 	 : in  std_logic_vector (31 downto 0);
				op2 	 : in	std_logic_vector (31 downto 0);
				res	 : out std_logic_vector (31 downto 0);
				--SEÑALES DE ESTADO/CONTROL
				ctrl   : in std_logic_vector   (8 downto 0);
				status : out  std_logic_vector (12 downto 0)
			);
end cd;

architecture Behavioral of cd is
-------------------------------------------------------------------------
-- DECLARACIÓN DE SEÑALES:
-------------------------------------------------------------------------
	-------------------------------------------------------------------------
	--	FLIP-FLOPS 
	-------------------------------------------------------------------------
	signal exp1 				: std_logic_vector(7  downto 0);
	signal exp2 				: std_logic_vector(7  downto 0);
	signal man1					: std_logic_vector(22 downto 0);
	signal man2					: std_logic_vector(22 downto 0);
	signal signo1				: std_logic;
	signal signo2				: std_logic;
	
	signal m1					: std_logic_vector(23 downto 0);
	signal m2					: std_logic_vector(23 downto 0);
	
	signal m_res				: std_logic_vector(47 downto 0);
	
	signal exp_res				: std_logic_vector(7  downto 0);	--¿8 o 9?
	
	signal signo_res			: std_logic;		--NO NECESARIO
	
	signal resultado			: std_logic_vector(31 downto 0);	--¿31?
	-------------------------------------------------------------------------
	--	Señales de ESTADO (out)
	-------------------------------------------------------------------------
	signal exp1_inf			: std_logic;						  --status(0)
	signal exp2_inf			: std_logic;						  --status(1)
	signal m1_0					: std_logic;						  --status(2)
	signal m2_0					: std_logic;						  --status(3)
	signal cmp_exp_res_0		: std_logic;						  --status(5)
	signal cmp_exp_res_inf	: std_logic;						  --status(5)
	signal overflow			: std_logic_vector(1 downto 0); -- status(6, 7)
	signal exponente_add	   : std_logic;						  --status(8)
	signal exp_inf				: std_logic;						  --status(9)
	signal exp_0				: std_logic;						  --status(10)
	signal exp1_0				: std_logic;						  --status(11)
	signal exp2_0				: std_logic;						  --status(12)
	-------------------------------------------------------------------------
	-- SEÑALES DE CONTROL(ENTRADA):
	-------------------------------------------------------------------------
	signal op_ld 			: std_logic; 						  --ctrl(0)
	signal m_ld				: std_logic; 						  --ctrl(1)
	signal mux_exp_res	: std_logic_vector(1 downto 0); --ctrl(2 y 3)
	signal m_res_ld		: std_logic; 						  --ctrl(4)
	signal m_res_sh		: std_logic;						  --ctrl(5)
	signal exp_res_ld		: std_logic; 						  --ctrl(6)
	signal res_ld			: std_logic;						  --ctrl(7)
	signal m_res_mux		: std_logic; 					     --ctrl(8)
	-------------------------------------------------------------------------
	-- SEÑALES DE CIURCUITO:
	-------------------------------------------------------------------------
	signal mult_output		: std_logic_vector (47 downto 0);
	signal adder_output  	: std_logic_vector (8  downto 0); 
	signal sustr_output  	: std_logic_vector (7  downto 0);
	signal mux_m_res_out    : std_logic_vector (47 downto 0);
	signal mux_exp_res_out	: std_logic_vector (7  downto 0);
	signal mux_resultado_out: std_logic_vector (31 downto 0);
	signal mux_res				: std_logic_vector (1  downto 0);
begin
-----------------------------------------------------------------------------
-- Internamente no trabajo con las componentes del vector ctrl y status sino que
-- damos nombre a cada una de las componentes y trabajamos con ellas por
-- separado. De esta forma es mucho mÃ¡s legible el codigo obtenido. 
-----------------------------------------------------------------------------
( op_ld				,
  m_ld				,
  mux_exp_res(0)  ,
  mux_exp_res(1)	,
  m_res_ld			,
  m_res_sh			,
  exp_res_ld		,
  res_ld				,
  m_res_mux		)  <= ctrl;	--MIRAR SI ESTA BIEN METIDO

 status 				<= (exp1_inf  	 			,
							 exp2_inf	  		 	,
							 m1_0			 		 	,
							 m2_0		 			 	,
							 cmp_exp_res_0  	 	,
							 cmp_exp_res_inf		,
							 overflow(0)			,
							 overflow(1)			,
							 exponente_add			,
							 exp_inf					,
							 exp_0					,
							 exp1_0					,
							 exp2_0					);
							 
-------------------------------------------------------------------------
-------------------------------------------------------------------------


-------------------------------------------------------------------------
--	Proceso EXP1 (S0)
-------------------------------------------------------------------------
p_exp1 : process (op1, clk, rst) is
begin
	if rst = '1' then
		exp1 <= (others=>'0');
	elsif rising_edge(clk) then
		exp1 <= op1(30 downto 23);
	end if;
end process p_exp1;
-------------------------------------------------------------------------
--	Proceso EXP2 (S0)
-------------------------------------------------------------------------
p_exp2 : process (op2, clk, rst) is
begin
	if rst = '1' then
		exp2 <= (others=>'0');
	elsif rising_edge(clk) then
		exp2 <= op2(30 downto 23);
	end if;
end process p_exp2;
-------------------------------------------------------------------------
--	Proceso MAN1 (S0)
-------------------------------------------------------------------------
p_man1 : process (op1, clk, rst) is
begin
	if rst = '1' then
		man1 <= (others=>'0');
	elsif rising_edge(clk) then
		man1 <= op1(22 downto 0);
	end if;
end process p_man1;
-------------------------------------------------------------------------
--	Proceso MAN2 (S0)
-------------------------------------------------------------------------
p_man2 : process (op2, clk, rst) is
begin
	if rst = '1' then
		man2 <= (others=>'0');
	elsif rising_edge(clk) then
		man2 <= op2(22 downto 0);
	end if;
end process p_man2;
-------------------------------------------------------------------------
--	Proceso SIGNO1 (S0)
-------------------------------------------------------------------------
p_signo1 : process (op1, clk, rst) is
begin
	if rst = '1' then
		signo1 <= '0';
	elsif rising_edge(clk) then
		signo1 <= op1(31);
	end if;
end process p_signo1;
-------------------------------------------------------------------------
--	Proceso SIGNO2 (S0)
-------------------------------------------------------------------------
p_signo2 : process (op2, clk, rst) is
begin
	if rst = '1' then
		signo2 <= '0';
	elsif rising_edge(clk) then
		signo2 <= op2(31);
	end if;
end process p_signo2;
-------------------------------------------------------------------------
-------------------------------------------------------------------------


-------------------------------------------------------------------------
--	Proceso EXP1_INF(S1)
-------------------------------------------------------------------------
p_exp1_inf : process (exp1) is
begin
	if exp1 = "11111111" then
		exp1_inf <= '1';
	else
		exp1_inf <= '0';
	end if;
end process p_exp1_inf;
-------------------------------------------------------------------------
--	Proceso EXP1_0(S1)
-------------------------------------------------------------------------
p_exp1_0 : process(exp1) is
begin
	if exp1 = "00000000" then
		exp1_0 <= '1';
	else
		exp1_0 <= '0';
	end if;
end process p_exp1_0;
-------------------------------------------------------------------------
--	Proceso EXP2_INF(S1)
-------------------------------------------------------------------------
p_exp2_inf : process (exp2) is
begin
	if exp2 = "11111111" then
		exp2_inf <= '1';
	else
		exp2_inf <= '0';
	end if;
end process p_exp2_inf;
-------------------------------------------------------------------------
--	Proceso EXP2_0(S1)
-------------------------------------------------------------------------
p_exp2_0 : process(exp2) is
begin
	if exp2 = "00000000" then
		exp2_0 <= '1';
	else
		exp2_0 <= '0';
	end if;
end process p_exp2_0;
-------------------------------------------------------------------------
--	Proceso M1_0(S1)
-------------------------------------------------------------------------
p_m1_0 : process (m1) is
begin
	if m1 = "000000000000000000000000" then
		m1_0 <= '1';
	else
		m1_0 <= '0';
	end if;
end process p_m1_0;
-------------------------------------------------------------------------
--	Proceso M2_0(S1)
-------------------------------------------------------------------------
p_m2_0 : process (m2) is
begin
	if m2 = "000000000000000000000000" then
		m2_0 <= '1';
	else
		m2_0 <= '0';
	end if;
end process p_m2_0;

-------------------------------------------------------------------------
--	Proceso CASOS_ESPECIALES(S1)
-------------------------------------------------------------------------
p_casos_especiales : process(exp1_inf, exp1_0, exp2_inf, exp2_0, m1_0, m2_0) is
begin
	-----------------------
	-- ¿Pongo estado para
	-- p_casos_especiales?
	-----------------------	
	if exp1_inf = '1' and m1_0 = '0' then
		mux_res <= "11";
	
	elsif exp2_inf = '1' and m2_0 = '0' then
		mux_res <= "11";
		
	elsif exp1_inf = '1' and m1_0 = '1' then
		--OP1 = INFINITO
		if exp2_0 = '1' and m2_0 = '1' then
			--OP2 = 0
			--RESULTADO = NaN
			mux_res <= "11"; 
		elsif exp2_inf = '1' and m2_0 = '1' then	--CREO QUE SOBRA
			--OP2 = INF
			--RESULTADO = INF
			mux_res <= "10";
		else
			--OP1 = any
			--MUX_RES <= INFINITO
			mux_res <= "10";
		end if;
	elsif exp1_0 = '1' and m1_0 = '1' then
		--OP1 = 0
		if exp2_inf = '1' and m2_0 = '1' then
			--OP2 = INF
			--RESULTADO = NaN		
			mux_res <= "11";
		else
			--OP2 = {any, 0}
			--RESULTADO = 0
			mux_res <= "00";
		end if;
	elsif exp2_0 = '1' and m2_0 = '1' then
		--OP2 = 0
		if exp1_0 = '0' and exp1_inf = '0' then
			--OP1 = any
			--RESULTADO = 0
			mux_res <= "00";
		end if;
	elsif exp2_inf = '1' and m2_0 = '1' then
		--OP2 = INF
		if exp1_0 = '0' and exp1_inf = '0' then
			--OP1 = any
			--RESULTADO = INF
			mux_res <= "10";
		end if;
	else 
		--OP1 = any
		--OP2 = any
		--RESULTADO = OP1 * OP2
		mux_res <= "01";
	end if;
end process p_casos_especiales;
-------------------------------------------------------------------------
-------------------------------------------------------------------------


-------------------------------------------------------------------------
--	Proceso M1 (S2)
-------------------------------------------------------------------------
p_m1 	: process (man1, clk, rst) is
begin
	if rst = '1' then
		m1 <= (others=>'0');
	elsif rising_edge(clk) then
		m1 <= '1' & man1(22 downto 0);
	end if;
end process p_m1;
-------------------------------------------------------------------------
--	Proceso M2 (S2)
-------------------------------------------------------------------------
p_m2	: process (man2, clk, rst) is
begin
	if rst = '1' then
		m2 <= (others=>'0');
	elsif rising_edge(clk) then
		m2 <= '1' & man2(22 downto 0);
	end if;
end process p_m2;
-------------------------------------------------------------------------
--	Proceso MULT(S2)
-------------------------------------------------------------------------
p_mult  : process (m1, m2) is
begin
	--PROCESO ASINCRONO
	mult_output <= std_logic_vector(unsigned(m1) * unsigned(m2));
end process p_mult;
-------------------------------------------------------------------------
--	Proceso M_RES_MUX(S2 Y S4)
-------------------------------------------------------------------------
p_m_res_mux : process (mult_output, m_res_mux) is
begin
	if m_res_mux = '0' then
		mux_m_res_out <= mult_output;
	else
		mux_m_res_out <= (others=>'0');
	end if;
end process p_m_res_mux;
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--	Proceso M_RES(S2 y S4(normalizar m_res))
-------------------------------------------------------------------------
p_m_res : process (m_res_ld, m_res_sh, clk, rst, m_res)
begin
	if rst = '1' then
		m_res <= (others=>'0');
	elsif rising_edge(clk) then
		if m_res_ld = '1' then
				--S2
			m_res <= mux_m_res_out;
		elsif m_res_sh = '1' then
				--s4
			-----------------
			--DESPLAZO IZQ
			-----------------
			m_res <= m_res(46 downto 0) & '0';	
		end if;
	end if;
end process p_m_res;
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--	Proceso COMP_M_RES(sumar 1 exponente)
-------------------------------------------------------------------------
p_comp_m_res : process (m_res)
begin
	if(m_res(47) = '1') then
		--------------------------------------------
		--INDICO QUE QUIERO SUMAR UNO AL EXPONENTE
		-------------------------------------------- 
		exponente_add <= '1';
	else
		exponente_add <= '0';
	end if;
end process p_comp_m_res; 
-------------------------------------------------------------------------
--	Proceso EXP_SUM(S3)
-------------------------------------------------------------------------
p_exp_sum : process (exp1, exp2) is
begin
	-------------------------
	--  ¿Meto en 9 bits 8,
	--      da fallo?
	-------------------------
	adder_output <= std_logic_vector(unsigned(exp1) + unsigned(exp2));
end process p_exp_sum;
-------------------------------------------------------------------------
--	Proceso EXP_SUS(S3)
-------------------------------------------------------------------------
p_exp_sus : process (adder_output) is
begin
													------------------------------
													-- ¿COJO 8->1 DE EXP1 + EXP2?
													------------------------------
	sustr_output <= std_logic_vector(unsigned(adder_output(8 downto 1)) - 127); --¿?
end process p_exp_sus;
-------------------------------------------------------------------------
--	Proceso MUX_EXP_RES(S3)
-------------------------------------------------------------------------
p_mux_exp_res : process (mux_exp_res, sustr_output, exp_res) is
begin
	case mux_exp_res is
		when "00" =>
			mux_exp_res_out <= sustr_output;
		when "01" =>
			mux_exp_res_out <= std_logic_vector(1 + unsigned(exp_res));
		when "10" => 
			mux_exp_res_out <= (others=>'0');
		when others =>
		   mux_exp_res_out <= (others=>'0');
	end case;
end process p_mux_exp_res;
-------------------------------------------------------------------------
--	Proceso EXP_RES(S3)
-------------------------------------------------------------------------
p_exp_res : process (mux_exp_res_out, clk, rst) is
begin
	if rst = '1' then
		exp_res <= (others=>'0');
	elsif  rising_edge(clk) then
		exp_res <= mux_exp_res_out;
	end if;
end process p_exp_res;
-------------------------------------------------------------------------
-------------------------------------------------------------------------


-------------------------------------------------------------------------

--S4 arriba
--S6 no hacer
-------------------------------------------------------------------------
-------------------------------------------------------------------------


-------------------------------------------------------------------------
--	Proceso OVERFLOW(S6)
-------------------------------------------------------------------------
p_overflow : process (exp_res) is
begin
	if exp_res >= "11111111" then
		--IR A S10
		exp_inf <= '1';
	elsif exp_res <= "00000000" then
		--IR A S11
		exp_0 <= '1';
	end if;
end process p_overflow;
-------------------------------------------------------------------------
-------------------------------------------------------------------------


-------------------------------------------------------------------------
--	Proceso SIGNO_RES(S7)
-------------------------------------------------------------------------
p_signo_res : process (signo1, signo2, clk, rst) is
begin
	if rst = '1' then
		signo_res <= '0';
	elsif rising_edge(clk) then
		--LO HE PUESTO A 1
		signo_res <= signo1 xor signo2;
	end if;
end process p_signo_res;
-------------------------------------------------------------------------
--	Proceso MUX_RESULTADO(S7)
-------------------------------------------------------------------------
p_resultado_mux : process (mux_res, signo_res, exp_res, m_res) is
begin
	case mux_res is
		when "00" =>
			mux_resultado_out <= (others=>'0');
		when "01" =>
			mux_resultado_out <= signo_res & exp_res & m_res(47 downto 25);
		when "10" =>
			mux_resultado_out <= "01111111100000000000000000000000";
		when "11" =>
			mux_resultado_out <= "01111111100000000010000100000100";
		when others =>
			mux_resultado_out <= (others=>'0');
	end case;
end process p_resultado_mux;
-------------------------------------------------------------------------
--	Proceso RESULTADO(S7)
-------------------------------------------------------------------------
p_resultado : process (mux_resultado_out, clk, rst, res_ld) is
begin
	if rst = '1' then 
		resultado <= (others=>'0');
	elsif rising_edge(clk) then
		if res_ld = '1' then
			resultado <= mux_resultado_out;
		else
			resultado <= (others=>'0');
		end if;
	end if;
end process p_resultado;
-------------------------------------------------------------------------
-------------------------------------------------------------------------
end Behavioral;