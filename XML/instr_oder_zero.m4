divert(-1)
include(./lib.m4lib)
divert(0)dnl
program_start
	<instruction order="0" opcode="DeFVar">
		<arg1  type="var">GF@a</arg1 >
	</instruction>
	start_instr(move)
		add_arg(var, GF@a)
		add_arg(string, aa)
	end_instr
	start_instr(Write)
		add_arg(var, GF@a)
	end_instr
program_end
