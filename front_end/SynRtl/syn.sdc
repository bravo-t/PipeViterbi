###################################################################

# Created by write_sdc on Sat Aug 16 15:52:33 2014

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports clk_PAD]  -name clk  -period 0.5  -waveform {0 0.25}
