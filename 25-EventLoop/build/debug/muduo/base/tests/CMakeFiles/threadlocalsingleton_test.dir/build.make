# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/Concurrent-Server-Pro/25-EventLoop/jmuduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Concurrent-Server-Pro/25-EventLoop/build/debug

# Include any dependencies generated for this target.
include muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/compiler_depend.make

# Include the progress variables for this target.
include muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/progress.make

# Include the compile flags for this target's objects.
include muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/flags.make

muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.o: muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/flags.make
muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.o: /root/Concurrent-Server-Pro/25-EventLoop/jmuduo/muduo/base/tests/ThreadLocalSingleton_test.cc
muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.o: muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Concurrent-Server-Pro/25-EventLoop/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.o"
	cd /root/Concurrent-Server-Pro/25-EventLoop/build/debug/muduo/base/tests && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.o -MF CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.o.d -o CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.o -c /root/Concurrent-Server-Pro/25-EventLoop/jmuduo/muduo/base/tests/ThreadLocalSingleton_test.cc

muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.i"
	cd /root/Concurrent-Server-Pro/25-EventLoop/build/debug/muduo/base/tests && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Concurrent-Server-Pro/25-EventLoop/jmuduo/muduo/base/tests/ThreadLocalSingleton_test.cc > CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.i

muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.s"
	cd /root/Concurrent-Server-Pro/25-EventLoop/build/debug/muduo/base/tests && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Concurrent-Server-Pro/25-EventLoop/jmuduo/muduo/base/tests/ThreadLocalSingleton_test.cc -o CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.s

# Object files for target threadlocalsingleton_test
threadlocalsingleton_test_OBJECTS = \
"CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.o"

# External object files for target threadlocalsingleton_test
threadlocalsingleton_test_EXTERNAL_OBJECTS =

bin/threadlocalsingleton_test: muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/ThreadLocalSingleton_test.cc.o
bin/threadlocalsingleton_test: muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/build.make
bin/threadlocalsingleton_test: lib/libmuduo_base.a
bin/threadlocalsingleton_test: muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/Concurrent-Server-Pro/25-EventLoop/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/threadlocalsingleton_test"
	cd /root/Concurrent-Server-Pro/25-EventLoop/build/debug/muduo/base/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/threadlocalsingleton_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/build: bin/threadlocalsingleton_test
.PHONY : muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/build

muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/clean:
	cd /root/Concurrent-Server-Pro/25-EventLoop/build/debug/muduo/base/tests && $(CMAKE_COMMAND) -P CMakeFiles/threadlocalsingleton_test.dir/cmake_clean.cmake
.PHONY : muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/clean

muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/depend:
	cd /root/Concurrent-Server-Pro/25-EventLoop/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Concurrent-Server-Pro/25-EventLoop/jmuduo /root/Concurrent-Server-Pro/25-EventLoop/jmuduo/muduo/base/tests /root/Concurrent-Server-Pro/25-EventLoop/build/debug /root/Concurrent-Server-Pro/25-EventLoop/build/debug/muduo/base/tests /root/Concurrent-Server-Pro/25-EventLoop/build/debug/muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : muduo/base/tests/CMakeFiles/threadlocalsingleton_test.dir/depend

