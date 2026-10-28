savedcmd_/work/validation/soc_fan/cycle_2/soc_fan.mod := printf '%s\n'   soc_fan.o | awk '!x[$$0]++ { print("/work/validation/soc_fan/cycle_2/"$$0) }' > /work/validation/soc_fan/cycle_2/soc_fan.mod
