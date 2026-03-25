transcript on

# ------------------------------------------------------------
# Official Cheshire hello-world smoke test (command-line)
# ------------------------------------------------------------
set BINARY   ../../../sw/tests/helloworld.spm.elf
set BOOTMODE 0
set PRELMODE 1

# Compile design
if {[catch {source compile.cheshire_soc.tcl} msg]} {
  puts "COMPILE FAILED: $msg"
  quit -code 1
}

# Load design using official Cheshire start script
if {[catch {source start.cheshire_soc.tcl} msg]} {
  puts "START FAILED: $msg"
  quit -code 1
}

# Run simulation and exit
run -all
quit -f