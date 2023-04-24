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
CMAKE_SOURCE_DIR = /root/Concurrent-Server-Pro/21-LogStream/jmuduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Concurrent-Server-Pro/21-LogStream/build/debug

# Include any dependencies generated for this target.
include tests/CMakeFiles/countdownlatch_test2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/countdownlatch_test2.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/countdownlatch_test2.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/countdownlatch_test2.dir/flags.make

tests/CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.o: tests/CMakeFiles/countdownlatch_test2.dir/flags.make
tests/CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.o: /root/Concurrent-Server-Pro/21-LogStream/jmuduo/tests/CountDownLatch_test2.cc
tests/CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.o: tests/CMakeFiles/countdownlatch_test2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Concurrent-Server-Pro/21-LogStream/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.o"
	cd /root/Concurrent-Server-Pro/21-LogStream/build/debug/tests && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.o -MF CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.o.d -o CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.o -c /root/Concurrent-Server-Pro/21-LogStream/jmuduo/tests/CountDownLatch_test2.cc

tests/CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.i"
	cd /root/Concurrent-Server-Pro/21-LogStream/build/debug/tests && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Concurrent-Server-Pro/21-LogStream/jmuduo/tests/CountDownLatch_test2.cc > CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.i

tests/CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.s"
	cd /root/Concurrent-Server-Pro/21-LogStream/build/debug/tests && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Concurrent-Server-Pro/21-LogStream/jmuduo/tests/CountDownLatch_test2.cc -o CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.s

# Object files for target countdownlatch_test2
countdownlatch_test2_OBJECTS = \
"CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.o"

# External object files for target countdownlatch_test2
countdownlatch_test2_EXTERNAL_OBJECTS =

bin/countdownlatch_test2: tests/CMakeFiles/countdownlatch_test2.dir/CountDownLatch_test2.cc.o
bin/countdownlatch_test2: tests/CMakeFiles/countdownlatch_test2.dir/build.make
bin/countdownlatch_test2: lib/libmuduo_base.a
bin/countdownlatch_test2: tests/CMakeFiles/countdownlatch_test2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/Concurrent-Server-Pro/21-LogStream/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/countdownlatch_test2"
	cd /root/Concurrent-Server-Pro/21-LogStream/build/debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/countdownlatch_test2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/countdownlatch_test2.dir/build: bin/countdownlatch_test2
.PHONY : tests/CMakeFiles/countdownlatch_test2.dir/build

tests/CMakeFiles/countdownlatch_test2.dir/clean:
	cd /root/Concurrent-Server-Pro/21-LogStream/build/debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/countdownlatch_test2.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/countdownlatch_test2.dir/clean

tests/CMakeFiles/countdownlatch_test2.dir/depend:
	cd /root/Concurrent-Server-Pro/21-LogStream/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Concurrent-Server-Pro/21-LogStream/jmuduo /root/Concurrent-Server-Pro/21-LogStream/jmuduo/tests /root/Concurrent-Server-Pro/21-LogStream/build/debug /root/Concurrent-Server-Pro/21-LogStream/build/debug/tests /root/Concurrent-Server-Pro/21-LogStream/build/debug/tests/CMakeFiles/countdownlatch_test2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/countdownlatch_test2.dir/depend

