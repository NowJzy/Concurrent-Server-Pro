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
CMAKE_SOURCE_DIR = /root/Concurrent-Server-Pro/26-Channel/jmuduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Concurrent-Server-Pro/26-Channel/build/debug

# Include any dependencies generated for this target.
include tests/CMakeFiles/reactor_test01.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/reactor_test01.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/reactor_test01.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/reactor_test01.dir/flags.make

tests/CMakeFiles/reactor_test01.dir/Reactor_test01.cc.o: tests/CMakeFiles/reactor_test01.dir/flags.make
tests/CMakeFiles/reactor_test01.dir/Reactor_test01.cc.o: /root/Concurrent-Server-Pro/26-Channel/jmuduo/tests/Reactor_test01.cc
tests/CMakeFiles/reactor_test01.dir/Reactor_test01.cc.o: tests/CMakeFiles/reactor_test01.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Concurrent-Server-Pro/26-Channel/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/reactor_test01.dir/Reactor_test01.cc.o"
	cd /root/Concurrent-Server-Pro/26-Channel/build/debug/tests && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/reactor_test01.dir/Reactor_test01.cc.o -MF CMakeFiles/reactor_test01.dir/Reactor_test01.cc.o.d -o CMakeFiles/reactor_test01.dir/Reactor_test01.cc.o -c /root/Concurrent-Server-Pro/26-Channel/jmuduo/tests/Reactor_test01.cc

tests/CMakeFiles/reactor_test01.dir/Reactor_test01.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reactor_test01.dir/Reactor_test01.cc.i"
	cd /root/Concurrent-Server-Pro/26-Channel/build/debug/tests && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Concurrent-Server-Pro/26-Channel/jmuduo/tests/Reactor_test01.cc > CMakeFiles/reactor_test01.dir/Reactor_test01.cc.i

tests/CMakeFiles/reactor_test01.dir/Reactor_test01.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reactor_test01.dir/Reactor_test01.cc.s"
	cd /root/Concurrent-Server-Pro/26-Channel/build/debug/tests && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Concurrent-Server-Pro/26-Channel/jmuduo/tests/Reactor_test01.cc -o CMakeFiles/reactor_test01.dir/Reactor_test01.cc.s

# Object files for target reactor_test01
reactor_test01_OBJECTS = \
"CMakeFiles/reactor_test01.dir/Reactor_test01.cc.o"

# External object files for target reactor_test01
reactor_test01_EXTERNAL_OBJECTS =

bin/reactor_test01: tests/CMakeFiles/reactor_test01.dir/Reactor_test01.cc.o
bin/reactor_test01: tests/CMakeFiles/reactor_test01.dir/build.make
bin/reactor_test01: lib/libmuduo_net.a
bin/reactor_test01: lib/libmuduo_base.a
bin/reactor_test01: tests/CMakeFiles/reactor_test01.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/Concurrent-Server-Pro/26-Channel/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/reactor_test01"
	cd /root/Concurrent-Server-Pro/26-Channel/build/debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reactor_test01.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/reactor_test01.dir/build: bin/reactor_test01
.PHONY : tests/CMakeFiles/reactor_test01.dir/build

tests/CMakeFiles/reactor_test01.dir/clean:
	cd /root/Concurrent-Server-Pro/26-Channel/build/debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/reactor_test01.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/reactor_test01.dir/clean

tests/CMakeFiles/reactor_test01.dir/depend:
	cd /root/Concurrent-Server-Pro/26-Channel/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Concurrent-Server-Pro/26-Channel/jmuduo /root/Concurrent-Server-Pro/26-Channel/jmuduo/tests /root/Concurrent-Server-Pro/26-Channel/build/debug /root/Concurrent-Server-Pro/26-Channel/build/debug/tests /root/Concurrent-Server-Pro/26-Channel/build/debug/tests/CMakeFiles/reactor_test01.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/reactor_test01.dir/depend

