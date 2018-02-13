----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:44:27 12/23/2017 
-- Design Name: 
-- Module Name:    mult_ieee754 - Behavioral 
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

entity mult_ieee754 is
	port (
				----------------------------------------------
				--ESPECIFICACIONES:
				--	1. FUNCIONAMIENTO S�NCRONO ACTIVO EN SUBIDA
				-- 2. RST AS�NCRONO A NIVEL ALTO (1 -> RST)
				--	3. DATOS E/S REGISTRADOS
				----------------------------------------------

				clk 	 : in  std_logic;
				rst	 : in  std_logic;
				--OPERANDOS E/S
				op1 	 : in  std_logic_vector (31 downto 0);
				op2 	 : in	std_logic_vector (31 downto 0);
				res	 : out std_logic_vector (31 downto 0);
				--CONTROL
				ini	 : in  std_logic;
				fin	 : out std_logic
				--SE�ALES DE ESTADO/CONTROL
--				ctrl   : out std_logic_vector (6 downto 0);
--				status : in  std_logic_vector (7 downto 0)
			);
end mult_ieee754;
	

architecture Behavioral of mult_ieee754 is
-------------------------------------------------------------------------
--	DECLARACI�N DE SE�ALES
-------------------------------------------------------------------------
signal ctrl 	: std_logic_vector (8 downto 0);
signal status 	: std_logic_vector (12 downto 0);
-------------------------------------------------------------------------
--	DECLARACI�N DE COMPONENTES
-------------------------------------------------------------------------
component uc
port (
				clk 	 : in  std_logic;
				rst	 : in  std_logic;
				--CONTROL
				ini	 : in  std_logic;
				fin	 : out std_logic;
				--SE�ALES DE ESTADO/CONTROL
				ctrl   : out std_logic_vector (8 downto 0);
				status : in  std_logic_vector (12 downto 0)
			);
end component;
-------------------------------------------------------------------------
component cd
port (
				clk 	 : in  std_logic;
				rst	 : in  std_logic;
				--OPERANDOS E/S
				op1 	 : in  std_logic_vector (31 downto 0);
				op2 	 : in	std_logic_vector (31 downto 0);
				res	 : out std_logic_vector (31 downto 0);
				--SE�ALES DE ESTADO/CONTROL
				ctrl   : in std_logic_vector (8 downto 0);
				status : out  std_logic_vector (12 downto 0)
			);
end component;
begin
-----------------------------------------------------------------------------
--Instanciaci�n PORT-MAP UC
-----------------------------------------------------------------------------
control : uc port map (clk, rst, ini, fin, ctrl, status);
-----------------------------------------------------------------------------
--Instanciaci�n PORT-MAP CD
-----------------------------------------------------------------------------
data 	  : cd port map (clk, rst, op1, op2, res, ctrl, status);
-----------------------------------------------------------------------------
end Behavioral;

