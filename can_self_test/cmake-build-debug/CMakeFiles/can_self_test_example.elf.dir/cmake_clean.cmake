file(REMOVE_RECURSE
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "can_self_test_example.bin"
  "can_self_test_example.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "flash_project_args"
  "project_elf_src_esp32.c"
  "CMakeFiles/can_self_test_example.elf.dir/project_elf_src_esp32.c.obj"
  "can_self_test_example.elf"
  "can_self_test_example.elf.pdb"
  "project_elf_src_esp32.c"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/can_self_test_example.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
