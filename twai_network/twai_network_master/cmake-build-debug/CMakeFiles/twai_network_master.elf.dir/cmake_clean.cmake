file(REMOVE_RECURSE
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "flash_project_args"
  "project_elf_src_esp32.c"
  "twai_network_master.bin"
  "twai_network_master.map"
  "CMakeFiles/twai_network_master.elf.dir/project_elf_src_esp32.c.obj"
  "project_elf_src_esp32.c"
  "twai_network_master.elf"
  "twai_network_master.elf.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/twai_network_master.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
