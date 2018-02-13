----------------------------------------------------------------------------------
-- Company:        Universidad Complutense de Madrid
-- Engineer:       TOC&TC
-- 
-- Create Date:    
-- Design Name:    Divisor secuencial
-- Module Name:    divider - struct
-- Project Name:   Practica 5
-- Target Devices: Spartan-3 
-- Tool versions:  ISE 14.1
-- Description:    Divisor secuencial de numeros de 8 bits mediante el
--                 algoritmo de restauraci�n
-- Dependencies: 
-- Revision: 
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--DIVISOR GEN�RICO
entity divider is
  generic(n: integer := 6);
  port (clk   : in  std_logic;
        rst_n : in  std_logic;
        ini   : in  std_logic;
        dsor  : in  std_logic_vector(n-1 downto 0);  -- dividendo
        dndo  : in  std_logic_vector(n-1 downto 0);  -- divisor
        coc   : out std_logic_vector(n-1 downto 0);  -- cociente
        res   : out std_logic_vector(n-1 downto 0);  -- resto
        ready : out std_logic
        );
end divider;

architecture struct of divider is

  component cd is
    port (
    clk    : in  std_logic;                      -- clock
    rst_n  : in  std_logic;                      -- reset
    dsor   : in  std_logic_vector(n-1 downto 0);   -- Divisor
    dndo   : in  std_logic_vector(n-1 downto 0);   -- Dividendo
    coc    : out std_logic_vector(n-1 downto 0);   -- Cociente
    res    : out std_logic_vector(n-1 downto 0);   -- Resto
    ctrl   : in  std_logic_vector(10 downto 0);   -- Control: TIENE UN BIT M�S (SE�AL SHIFT DSOR)
    status : out std_logic_vector(2 downto 0));  -- Status: TIENE UN BIT M�S (SE�AL ALIGNED)
  end component cd;

  component uc is
    port (
      clk    : in  std_logic;                      -- clock
      rst_n  : in  std_logic;                      -- reset
      ini    : in  std_logic;                      -- External control signal
      fin    : out std_logic;                      -- External control signal
      ctrl   : out std_logic_vector(10 downto 0);   -- Control vector: TIENE UN BIT M�S (SE�AL SHIFT DSOR)
      status : in  std_logic_vector(2 downto 0));  -- Status vector: TIENE UN BIT M�S (SE�AL ALIGNED)

  end component uc;

  signal ctrl   : std_logic_vector(10 downto 0);  -- Control vector
  signal status : std_logic_vector(2 downto 0);  --Status vector
begin

  i_cd : cd port map (
    clk    => clk,
    rst_n  => rst_n,
    dsor   => dsor,
    dndo   => dndo,
    coc    => coc,
    res    => res,
    ctrl   => ctrl,
    status => status);

  i_uc : uc port map (
    clk    => clk,
    rst_n  => rst_n,
    ini    => ini,
    fin    => ready,
    ctrl   => ctrl,
    status => status);


end struct;