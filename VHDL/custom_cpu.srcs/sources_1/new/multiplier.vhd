----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/22/2023 10:11:07 PM
-- Design Name: 
-- Module Name: multiplier - Custom_Arch
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


-- Use this for help: https://technobyte.org/multiplier-vhdl-dataflow-behavioral-structural/

entity multiplier is
    generic
    (
        WIDTH  : integer
    );
    port
    (
        A   : in std_logic_vector((WIDTH/2)-1 downto 0);
        B   : in std_logic_vector((WIDTH/2)-1 downto 0);
        Y   : out std_logic_vector(WIDTH-1 downto 0)
    );
end multiplier;

architecture Custom_Arch of multiplier is
begin
    Y <= std_logic_vector(signed(A) * signed(B));
end Custom_Arch;
