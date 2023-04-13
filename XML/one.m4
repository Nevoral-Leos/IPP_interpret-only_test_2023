divert(-1)
include(./lib.m4lib)
divert(0)dnl
program_start
start_instr(DeFVar)
add_arg(var, GF@a)
end_instr
start_instr(DeFVar)
	<arg1
	type="var"
	>
			GF@c
	</arg1>
end_instr
start_instr(DeFVar)dnl
add_arg(var, GF@b)dnl
end_instr dnl
program_end
