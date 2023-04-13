divert(-1)
include(./lib.m4lib)
divert(0)dnl
program_start
	start_instr(DeFVar)
		add_arg(var, GF@a)
		add_arg(var, GF@a)
	end_instr
	start_instr(move)
		<arg1  type="var">GF@a</arg1 >
		<arg2  type="string"> abc </arg2 >
	end_instr
	start_instr(Write)
		add_arg(var, GF@a)
	end_instr
program_end
