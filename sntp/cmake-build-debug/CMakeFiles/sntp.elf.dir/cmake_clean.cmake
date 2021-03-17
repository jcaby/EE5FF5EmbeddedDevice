file(REMOVE_RECURSE
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "flash_project_args"
  "project_elf_src_esp32.c"
  "sntp.bin"
  "sntp.map"
  "CMakeFiles/sntp.elf.dir/project_elf_src_esp32.c.obj"
  "project_elf_src_esp32.c"
  "sntp.elf"
  "sntp.elf.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/sntp.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
