file(REMOVE_RECURSE
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "flash_project_args"
  "project_elf_src_esp32.c"
  "twai_self_test_example.bin"
  "twai_self_test_example.map"
  "CMakeFiles/twai_self_test_example.elf.dir/project_elf_src_esp32.c.obj"
  "project_elf_src_esp32.c"
  "twai_self_test_example.elf"
  "twai_self_test_example.elf.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/twai_self_test_example.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
