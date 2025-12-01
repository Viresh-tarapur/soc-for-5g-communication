# top_ports_final2.xdc
# Pin mapping provided by user for XC7A100T-CSG324 (Nexys4-like)
# All top ports are constrained here. Adjust IOSTANDARD if any IO bank is not 3.3V.

# ---------- clock ----------
set_property PACKAGE_PIN N15 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -name sys_clk -period 10.000 [get_ports clk]  ;# 100 MHz

# ---------- reset (active low) ----------
set_property PACKAGE_PIN R16 [get_ports rstn]
set_property IOSTANDARD LVCMOS33 [get_ports rstn]
set_property PULLUP TRUE [get_ports rstn]

# ---------- control / valid signals ----------
set_property PACKAGE_PIN T8  [get_ports tx_valid]
set_property IOSTANDARD LVCMOS33 [get_ports tx_valid]

set_property PACKAGE_PIN V16 [get_ports rx_valid]
set_property IOSTANDARD LVCMOS33 [get_ports rx_valid]

# ---------- tx_byte[0..7] (inputs to FPGA) ----------
set_property PACKAGE_PIN J15 [get_ports {tx_byte[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {tx_byte[0]}]

set_property PACKAGE_PIN L16 [get_ports {tx_byte[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {tx_byte[1]}]

set_property PACKAGE_PIN M13 [get_ports {tx_byte[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {tx_byte[2]}]

set_property PACKAGE_PIN R15 [get_ports {tx_byte[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {tx_byte[3]}]

set_property PACKAGE_PIN R17 [get_ports {tx_byte[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {tx_byte[4]}]

set_property PACKAGE_PIN T18 [get_ports {tx_byte[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {tx_byte[5]}]

set_property PACKAGE_PIN U18 [get_ports {tx_byte[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {tx_byte[6]}]

set_property PACKAGE_PIN R13 [get_ports {tx_byte[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {tx_byte[7]}]

# ---------- rx_byte[0..7] (outputs from FPGA) ----------
set_property PACKAGE_PIN H17 [get_ports {rx_byte[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rx_byte[0]}]

set_property PACKAGE_PIN K15 [get_ports {rx_byte[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rx_byte[1]}]

set_property PACKAGE_PIN J13 [get_ports {rx_byte[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rx_byte[2]}]

set_property PACKAGE_PIN N14 [get_ports {rx_byte[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rx_byte[3]}]

set_property PACKAGE_PIN R18 [get_ports {rx_byte[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rx_byte[4]}]

set_property PACKAGE_PIN V17 [get_ports {rx_byte[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rx_byte[5]}]

set_property PACKAGE_PIN U17 [get_ports {rx_byte[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rx_byte[6]}]

set_property PACKAGE_PIN U16 [get_ports {rx_byte[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rx_byte[7]}]

# End of file
