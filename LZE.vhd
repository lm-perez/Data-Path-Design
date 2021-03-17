library ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY LZE IS
PORT (
	LZE_in	:IN std_logic_vector(31 DOWNTO 0);
	LZE_out	:OUT std_logic_vector(31 DOWNTO 0)
);
END ENTITY;

ARCHITECTURE Behaviour OF LZE IS
SIGNAL zeros:	std_logic_vector(15 DOWNTO 0) := (OTHERS => '0');
BEGIN
	LZE_out <= zeros & LZE_in(15 DOWNTO 0);
END Behaviour;