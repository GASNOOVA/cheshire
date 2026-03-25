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

# Start simulation in pure batch mode
vsim -c \
  -suppress 8386 \
  work.tb_cheshire_soc \
  "+BOOTMODE=$BOOTMODE" \
  "+PRELMODE=$PRELMODE" \
  "+BINARY=$BINARY" \
  -do "run -all; quit -f"