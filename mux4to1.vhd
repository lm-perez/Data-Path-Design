LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux4to1 IS
	PORT (
		s						:IN std_logic_vector(1 DOWNTO 0);
		X1, X2, X3, X4		:IN std_logic_vector(31 DOWNTO 0);
		f						:OUT std_logic_vector(31 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE Behaviour OF mux4to1 IS
BEGIN
	WITH s SELECT
		f <= X1 WHEN "00",
		     X2 WHEN "01",
			  X3 WHEN "10",
			  X4 WHEN "11";
END Behaviour;