----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:34:57 10/17/2023 
-- Design Name: 
-- Module Name:    binarytogray - Behavioral 
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

entity binarytogray is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           binary_input : in  STD_LOGIC_VECTOR (3 downto 0);
           gray_output : out  STD_LOGIC_VECTOR (3 downto 0));
end binarytogray;

architecture Behavioral of binarytogray is

begin


end Behavioral;

