TOPLEVEL_LANG ?= verilog

PWD=$(shell pwd)

export PYTHONPATH := $(PWD)/../model:$(PYTHONPATH)


VERILOG_SOURCES = $(PWD)/FlipFlop.v

TOPLEVEL := FlipFlop
MODULE   := test_ff

include $(shell cocotb-config --makefiles)/Makefile.sim

