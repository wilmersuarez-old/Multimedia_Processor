----------------------------------------------------------------------------------
-- Engineer: 
-- 
-- Create Date: 11/13/2017 07:38:55 PM
-- Design Name: 
-- Module Name: li_shift - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
--use IEEE.NUMERIC_STD.ALL;

entity li_shift is
    Port (
          Immediate_16_o : in std_logic_vector(15 downto 0);
          LI_Offset_o : in std_logic_vector(1 downto 0);
          Out_val : out std_logic_vector(63 downto 0)
          );
end li_shift;

architecture Behavioral of li_shift is

begin


end Behavioral;
