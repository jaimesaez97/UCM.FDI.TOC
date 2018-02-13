----------------------------------------------------------------------------------
-- Company:        Universidad Complutense de Madrid
-- Engineer:       
-- 
-- Create Date:    
-- Design Name:    Practica 1a
-- Module Name:    tb_sumador_4bits - beh
-- Project Name:   Practica 1a
-- Target Devices: Spartan-3 
-- Tool versions: 
-- Description:    Testbench del sumador de 4 bits sin carry de salida 
-- Dependencies: 
-- Revision: 
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

-------------------------------------------------------------------------------
-- Entidad
-------------------------------------------------------------------------------
entity tb_iterative_1d is
end tb_iterative_1d;

-------------------------------------------------------------------------------
-- Arquitectura
-------------------------------------------------------------------------------

architecture beh of tb_iterative_1d is
  constant c_width_data  : natural := 16;
  constant c_width_count : natural := 4;

-- Declaracion del componente que vamos a simular
  component iterative_1d
    generic(
      g_width_data  : natural := 16;
      g_width_count : natural := 4
      );
    port(
      din          : in  std_logic_vector(g_width_data-1 downto 0);
      num_patterns : out signed(g_width_count-1 downto 0)
      );
  end component;

-- Entradas
  signal din : std_logic_vector(c_width_data-1 downto 0);

-- Salidas
  signal count    : signed(c_width_count -1 downto 0);
  signal count_tb : natural;
begin

-- Instanciacion de la unidad a simular 
  dut : iterative_1d
    generic map (
      g_width_data  => c_width_data,
      g_width_count => c_width_count
      )
    port map (
      din          => din,
      num_patterns => count
      );


-- Proceso de estimulos
  p_stim : process
    variable i        : natural := 0;
    variable j        : natural := 0;
    variable contador : natural := 0;
  begin
    i_loop : for i in 0 to 2**c_width_data-1 loop
      din      <= std_logic_vector(to_signed(i, c_width_data));
      wait for 1 ns;
      contador := 0;
      j        := 2;
      while j < c_width_data loop
        if (din(j) = '1') and (din(j-2) = '1') then
          contador := contador + 1;
          j        := j +3;
        else
          j := j +1;
        end if;
      end loop;
      count_tb <= contador;
      assert to_integer(signed(count)) = contador report "ERROR" severity error;
      wait for 99 ns;
    end loop i_loop;
    wait;
  end process p_stim;

end beh;
