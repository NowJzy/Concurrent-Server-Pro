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
CMAKE_SOURCE_DIR = /root/Concurrent-Server-Pro/13-Thread/jmuduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Concurrent-Server-Pro/13-Thread/build/debug

# Include any dependencies generated for this target.
include muduo/base/CMakeFiles/muduo_base.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include muduo/base/CMakeFiles/muduo_base.dir/compiler_depend.make

# Include the progress variables for this target.
include muduo/base/CMakeFiles/muduo_base.dir/progress.make

# Include the compile flags for this target's objects.
include muduo/base/CMakeFiles/muduo_base.dir/flags.make

muduo/base/CMakeFiles/muduo_base.dir/Exception.cc.o: muduo/base/CMakeFiles/muduo_base.dir/flags.make
muduo/base/CMakeFiles/muduo_base.dir/Exception.cc.o: /root/Concurrent-Server-Pro/13-Thread/jmuduo/muduo/base/Exception.cc
muduo/base/CMakeFiles/muduo_base.dir/Exception.cc.o: muduo/base/CMakeFiles/muduo_base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Concurrent-Server-Pro/13-Thread/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object muduo/base/CMakeFiles/muduo_base.dir/Exception.cc.o"
	cd /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT muduo/base/CMakeFiles/muduo_base.dir/Exception.cc.o -MF CMakeFiles/muduo_base.dir/Exception.cc.o.d -o CMakeFiles/muduo_base.dir/Exception.cc.o -c /root/Concurrent-Server-Pro/13-Thread/jmuduo/muduo/base/Exception.cc

muduo/base/CMakeFiles/muduo_base.dir/Exception.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_base.dir/Exception.cc.i"
	cd /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Concurrent-Server-Pro/13-Thread/jmuduo/muduo/base/Exception.cc > CMakeFiles/muduo_base.dir/Exception.cc.i

muduo/base/CMakeFiles/muduo_base.dir/Exception.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_base.dir/Exception.cc.s"
	cd /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Concurrent-Server-Pro/13-Thread/jmuduo/muduo/base/Exception.cc -o CMakeFiles/muduo_base.dir/Exception.cc.s

muduo/base/CMakeFiles/muduo_base.dir/Thread.cc.o: muduo/base/CMakeFiles/muduo_base.dir/flags.make
muduo/base/CMakeFiles/muduo_base.dir/Thread.cc.o: /root/Concurrent-Server-Pro/13-Thread/jmuduo/muduo/base/Thread.cc
muduo/base/CMakeFiles/muduo_base.dir/Thread.cc.o: muduo/base/CMakeFiles/muduo_base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Concurrent-Server-Pro/13-Thread/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object muduo/base/CMakeFiles/muduo_base.dir/Thread.cc.o"
	cd /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT muduo/base/CMakeFiles/muduo_base.dir/Thread.cc.o -MF CMakeFiles/muduo_base.dir/Thread.cc.o.d -o CMakeFiles/muduo_base.dir/Thread.cc.o -c /root/Concurrent-Server-Pro/13-Thread/jmuduo/muduo/base/Thread.cc

muduo/base/CMakeFiles/muduo_base.dir/Thread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_base.dir/Thread.cc.i"
	cd /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Concurrent-Server-Pro/13-Thread/jmuduo/muduo/base/Thread.cc > CMakeFiles/muduo_base.dir/Thread.cc.i

muduo/base/CMakeFiles/muduo_base.dir/Thread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_base.dir/Thread.cc.s"
	cd /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Concurrent-Server-Pro/13-Thread/jmuduo/muduo/base/Thread.cc -o CMakeFiles/muduo_base.dir/Thread.cc.s

muduo/base/CMakeFiles/muduo_base.dir/Timestamp.cc.o: muduo/base/CMakeFiles/muduo_base.dir/flags.make
muduo/base/CMakeFiles/muduo_base.dir/Timestamp.cc.o: /root/Concurrent-Server-Pro/13-Thread/jmuduo/muduo/base/Timestamp.cc
muduo/base/CMakeFiles/muduo_base.dir/Timestamp.cc.o: muduo/base/CMakeFiles/muduo_base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Concurrent-Server-Pro/13-Thread/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object muduo/base/CMakeFiles/muduo_base.dir/Timestamp.cc.o"
	cd /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT muduo/base/CMakeFiles/muduo_base.dir/Timestamp.cc.o -MF CMakeFiles/muduo_base.dir/Timestamp.cc.o.d -o CMakeFiles/muduo_base.dir/Timestamp.cc.o -c /root/Concurrent-Server-Pro/13-Thread/jmuduo/muduo/base/Timestamp.cc

muduo/base/CMakeFiles/muduo_base.dir/Timestamp.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/muduo_base.dir/Timestamp.cc.i"
	cd /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Concurrent-Server-Pro/13-Thread/jmuduo/muduo/base/Timestamp.cc > CMakeFiles/muduo_base.dir/Timestamp.cc.i

muduo/base/CMakeFiles/muduo_base.dir/Timestamp.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/muduo_base.dir/Timestamp.cc.s"
	cd /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Concurrent-Server-Pro/13-Thread/jmuduo/muduo/base/Timestamp.cc -o CMakeFiles/muduo_base.dir/Timestamp.cc.s

# Object files for target muduo_base
muduo_base_OBJECTS = \
"CMakeFiles/muduo_base.dir/Exception.cc.o" \
"CMakeFiles/muduo_base.dir/Thread.cc.o" \
"CMakeFiles/muduo_base.dir/Timestamp.cc.o"

# External object files for target muduo_base
muduo_base_EXTERNAL_OBJECTS =

lib/libmuduo_base.a: muduo/base/CMakeFiles/muduo_base.dir/Exception.cc.o
lib/libmuduo_base.a: muduo/base/CMakeFiles/muduo_base.dir/Thread.cc.o
lib/libmuduo_base.a: muduo/base/CMakeFiles/muduo_base.dir/Timestamp.cc.o
lib/libmuduo_base.a: muduo/base/CMakeFiles/muduo_base.dir/build.make
lib/libmuduo_base.a: muduo/base/CMakeFiles/muduo_base.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/Concurrent-Server-Pro/13-Thread/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library ../../lib/libmuduo_base.a"
	cd /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base && $(CMAKE_COMMAND) -P CMakeFiles/muduo_base.dir/cmake_clean_target.cmake
	cd /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/muduo_base.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
muduo/base/CMakeFiles/muduo_base.dir/build: lib/libmuduo_base.a
.PHONY : muduo/base/CMakeFiles/muduo_base.dir/build

muduo/base/CMakeFiles/muduo_base.dir/clean:
	cd /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base && $(CMAKE_COMMAND) -P CMakeFiles/muduo_base.dir/cmake_clean.cmake
.PHONY : muduo/base/CMakeFiles/muduo_base.dir/clean

muduo/base/CMakeFiles/muduo_base.dir/depend:
	cd /root/Concurrent-Server-Pro/13-Thread/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Concurrent-Server-Pro/13-Thread/jmuduo /root/Concurrent-Server-Pro/13-Thread/jmuduo/muduo/base /root/Concurrent-Server-Pro/13-Thread/build/debug /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base /root/Concurrent-Server-Pro/13-Thread/build/debug/muduo/base/CMakeFiles/muduo_base.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : muduo/base/CMakeFiles/muduo_base.dir/depend

