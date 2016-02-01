library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ALU is

generic(
DATA_WIDTH : integer := 16 --Default input and output width
); 

port(
	OPCODE: in unsigned(3 downto 0); --Specified the ALU which operation to perform
	DATA0, DATA1: in signed((DATA_WIDTH - 1) downto 0);
	RESET, CLK: in std_logic;
	STATUS: out unsigned(3 downto 0);
	DATA_OUT: out signed((DATA_WIDTH - 1) downto 0)); --Status information relating to the previously executed instruction
	
end ALU;

architecture behavior of ALU is 

signal temp_opcode, temp_status : unsigned(3 downto 0);
signal temp_data_out : signed((DATA_WIDTH - 1) downto 0);
signal temp_data0_in, temp_data1_in : signed((DATA_WIDTH - 1) downto 0);

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
--inputs to intermidiate signals
temp_data0_in <= DATA0;
temp_data1_in <= DATA1;
temp_opcode <= OPCODE;

--intermidiate signals to outputs
STATUS <= temp_status;
DATA_OUT <= temp_data_out;

process(CLK, RESET, temp_opcode)

begin

	if RESET = '1' then
		--Default output and status values
		temp_data_out <= to_signed(0,DATA_WIDTH);
		temp_status <= to_unsigned(0,4);
	
	elsif (CLK'EVENT AND CLK = '1') then
			case temp_opcode is
			
			when ADDITION =>
				temp_data_out <= temp_data0_in + temp_data1_in;
				temp_status <= ADDITION;
			
			when SUBTRACTION =>
				temp_data_out <= temp_data0_in - temp_data1_in;
				temp_status <= SUBTRACTION;
			
			when NEGATION =>
				temp_data_out <= not temp_data0_in;
				temp_status <= NEGATION;
			
			when AND_OP =>
				temp_data_out <= temp_data0_in and temp_data1_in;
				temp_status <= AND_OP;
			
			when NAND_OP =>
				temp_data_out <= temp_data0_in nand temp_data1_in;
				temp_status <= NAND_OP;
			
			when OR_OP =>
				temp_data_out <= temp_data0_in or temp_data1_in;
				temp_status <= OR_OP;
			
			when NOR_OP =>
				temp_data_out <= temp_data0_in nor temp_data1_in;
				temp_status <= NOR_OP;
			
			when XOR_OP =>
				temp_data_out <= temp_data0_in xor temp_data1_in;
				temp_status <= XOR_OP;
				
			when XNOR_OP =>
				temp_data_out <= temp_data0_in xnor temp_data1_in;
				temp_status <= XNOR_OP;
				
			when ARITH_SHIFT_LEFT =>
				temp_data_out <= shift_left(
														temp_data0_in, 
														to_integer(unsigned(temp_data1_in))); 
				temp_status <= ARITH_SHIFT_LEFT;
			
			when ARITH_SHIFT_RIGHT =>
				temp_data_out <= shift_right(
														temp_data0_in, 
														to_integer(unsigned(temp_data1_in)));
				temp_status <= ARITH_SHIFT_RIGHT;	
			
			when LOGICAL_SHIFT_LEFT =>
				temp_data_out <= signed(shift_left(
																unsigned(temp_data0_in),
																to_integer(unsigned(temp_data1_in)))); 
				temp_status <= LOGICAL_SHIFT_LEFT;
			
			when LOGICAL_SHIFT_RIGHT =>
				temp_data_out <= signed(shift_right(
																unsigned(temp_data0_in), 
																to_integer(unsigned(temp_data1_in)))); 
				temp_status <= LOGICAL_SHIFT_RIGHT;
			
			when OTHERS =>
			--Default output and status values
				temp_data_out <= to_signed(0,DATA_WIDTH);
				temp_status <= to_unsigned(0,4);
			
		end case;	
	end if;
end process;

end behavior;