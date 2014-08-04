PipeViterbi
===========

A 4 state, 8 bit output, 1/2 pipelined version of Viterbi decoder using Register Exchange method.

* Input:  8 2-bit long binary
* Output: 8 bit binary

Files
-----------

### testbench files
    testbench/ACS_tb.v
    testbench/ham_tb.v
    testbench/PipeViterbi_fixed_input_tb.v
    testbench/shift_mem_tb.v
    testbench/cmp_sel_tb.v
    testbench/input_shifter_tb.v
    testbench/PipeViterbi_tb.v
    testbench/vitenc_fsm.v

### source code of the decoder
    src/old_files     # some old files created during developing
    src/ACS_matrix.v      # a matrix formed by ACS modules, the calculating part of this decoder
    src/cmp_sel.v         # compare and select the right output value
    src/input_shifter.v   # change the format of input data to meet the pipelined inputing requirement
    src/PipeViterbi.v     # TOP MODULE
    src/ACS.v             # basic calculating unit
    src/ham_compute.v     # a module to calculate hamming distance
    
Structure
-----------
### PipeViterbi
    PipeViterbi         # Top module
    |- input_shifter    # change the format of input data to meet the pipelined inputing requirement
    |  |- input_fifo    # a FIFO to buffer inputs
    |  \- input_split   # split the input
    |- ACS_matrix       # a matrix formed by 8 ACS_col modules
    |  \- ACS_col       # a column formed by 4 ACS_mem modules
    |     \- ACS_mem    # basic function unit of this decoder
    |        |- ACS     # add-compare-select unit
    |        |- app_mem # move data 1 bit ahead and append the decoded result at the tail
    |        \- MEM     # Register module
    \- cmp_sel          # compare the results, select the right one and output
