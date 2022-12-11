onerror {abort all; exit -code 1;}
set VSIM_VERSION_STR "Model Technology ModelSim ALTERA STARTER EDITION vsim 10.5b Simulator 2016.10 Oct  5 2016"
set QSYS_SIMDIR .
source mentor/msim_setup.tcl
set USER_DEFINED_VERILOG_COMPILE_OPTIONS "+incdir+. +define+COSIM_LIB -suppress 14408"
dev_com
com
if {$tcl_platform(platform) == "windows"} {
  set fname_svlib "C:/intelFPGA_pro/22.3/hls/windows64/bin/hls_cosim_msim32"
  set fname_svlib [string map { "\\" "/"} $fname_svlib]
} else {
  set fname_svlib "C:/intelFPGA_pro/22.3/hls/host/linux64/lib/libhls_cosim_msim32"
}
set USER_DEFINED_ELAB_OPTIONS "-dpioutoftheblue 1 -sv_lib $fname_svlib -nodpiexports -voptargs=+acc"
elab
exit -code 0
