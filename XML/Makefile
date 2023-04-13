##
# Project Title
#
# @file
# @version 0.1

SRC_SRCS = $(wildcard *.m4)
SRCS = $(SRC_SRCS:.m4=.src)

all: $(SRCS)

%.src: %.m4
	m4 $^ > $@

# end
