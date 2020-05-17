set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(tools W:/more_projects/C++/gcc-arm-9.2-2019.12-mingw-w64-i686-aarch64-none-linux-gnu)
set(target aarch64-none-linux-gnu)
set(sysroot ${tools}/${target}/libc)
#set(CMAKE_C_COMPILER_EXTERNAL_TOOLCHAIN ${tools})
#set(CMAKE_CXX_COMPILER_EXTERNAL_TOOLCHAIN ${tools})


set(CMAKE_C_COMPILER clang.exe)
set(CMAKE_CXX_COMPILER clang++.exe)
set(CMAKE_C_FLAGS "--sysroot=${sysroot} --gcc-toolchain=${tools} --target=${target}")
set(CMAKE_CXX_FLAGS "--sysroot=${sysroot} --gcc-toolchain=${tools} --target=${target}")
set(CMAKE_EXE_LINKER_FLAGS -fuse-ld=lld)

#set(CMAKE_C_COMPILER_TARGET aarch64-none-linux-gnu)
#set(CMAKE_CXX_COMPILER_TARGET aarch64-none-linux-gnu)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)