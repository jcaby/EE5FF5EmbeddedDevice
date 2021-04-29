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
  "CMakeFiles/confserver"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/confserver.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
