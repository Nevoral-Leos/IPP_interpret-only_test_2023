divert(-1)
include(./lib.m4lib)
divert(0)dnl
program_start
	start_instr(DeFVar)
		add_arg(var, GF@a)
	end_instr
	<instruction order="1 " opcode="move">
		<arg2  type="string">abc</arg2 >
		<arg1  type="var">GF@a</arg1 >
	</instruction>
	<instruction order="1 " opcode="move">
		<arg2  type="string">abc</arg2 >
		<arg1  type="var">GF@a</arg1 >
	</instruction>
	start_instr(Write)
		add_arg(var, GF@a)
	end_instr
program_end
