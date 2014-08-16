###################################################################

# Created by write_sdc on Thu Aug 14 21:40:36 2014

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports clk_PAD]  -name clk  -period 0.58  -waveform {0 0.29}
