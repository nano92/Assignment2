library ieee;
--use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ALU is

generic(
DATA_WIDTH : integer := 16; --Default input and output width
); 

port(
	OPCODE: in unsigned(3 downto 0); --Specified the ALU which operation to perform
	DATA0, DATA1: in signed((DATA_WIDTH - 1) downto 0);
	RESET,CLK: in std_logic;
	STATUS: out unsigned(3 downto 0);
	DATA_OUT: out signed((DATA_WIDTH - 1) downto 0)); --Status information relating to the previously executed instruction
	
architecture behavior of ALU is 

--Opertions performed by the ALU
constant ADDITION : unsigned(3 downto 0) := "0000";
constant SUBTRACTION : unsigned(3 downto 0) := "0001";
constant NEGATION : unsigned(3 downto 0) := "0010";
constant AND_OP : unsigned(3 downto 0) := "0011";
constant NAND_OP : unsigned(3 downto 0) := "0100";
constant OR_OP : unsigned(3 downto 0) := "0101";
constant NOR_OP : unsigned(3 downto 0) := "0110";
constant XOR_OP : unsigned(3 downto 0) := "0111";
constant XNOR_OP : unsigned(3 downto 0) := "1000";
constant ARITH_SHIFT_LEFT : unsigned(3 downto 0) := "1001";
constant ARITH_SHIFT_RIGHT : unsigned(3 downto 0) := "1010";
constant LOGICAL_SHIFT_LEFT : unsigned(3 downto 0) := "1011";
constant LOGICAL_SHIFT_RIGHT : unsigned(3 downto 0) := "1100";


begin




end behavior;