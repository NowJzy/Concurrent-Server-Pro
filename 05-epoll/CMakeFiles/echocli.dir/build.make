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
CMAKE_SOURCE_DIR = /root/Concurrent-Server-Pro/05-epoll

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/Concurrent-Server-Pro/05-epoll

# Include any dependencies generated for this target.
include CMakeFiles/echocli.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/echocli.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/echocli.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/echocli.dir/flags.make

CMakeFiles/echocli.dir/echocli.cpp.o: CMakeFiles/echocli.dir/flags.make
CMakeFiles/echocli.dir/echocli.cpp.o: echocli.cpp
CMakeFiles/echocli.dir/echocli.cpp.o: CMakeFiles/echocli.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/Concurrent-Server-Pro/05-epoll/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/echocli.dir/echocli.cpp.o"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/echocli.dir/echocli.cpp.o -MF CMakeFiles/echocli.dir/echocli.cpp.o.d -o CMakeFiles/echocli.dir/echocli.cpp.o -c /root/Concurrent-Server-Pro/05-epoll/echocli.cpp

CMakeFiles/echocli.dir/echocli.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echocli.dir/echocli.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/Concurrent-Server-Pro/05-epoll/echocli.cpp > CMakeFiles/echocli.dir/echocli.cpp.i

CMakeFiles/echocli.dir/echocli.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echocli.dir/echocli.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/Concurrent-Server-Pro/05-epoll/echocli.cpp -o CMakeFiles/echocli.dir/echocli.cpp.s

# Object files for target echocli
echocli_OBJECTS = \
"CMakeFiles/echocli.dir/echocli.cpp.o"

# External object files for target echocli
echocli_EXTERNAL_OBJECTS =

bin/echocli: CMakeFiles/echocli.dir/echocli.cpp.o
bin/echocli: CMakeFiles/echocli.dir/build.make
bin/echocli: CMakeFiles/echocli.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/Concurrent-Server-Pro/05-epoll/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/echocli"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/echocli.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/echocli.dir/build: bin/echocli
.PHONY : CMakeFiles/echocli.dir/build

CMakeFiles/echocli.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/echocli.dir/cmake_clean.cmake
.PHONY : CMakeFiles/echocli.dir/clean

CMakeFiles/echocli.dir/depend:
	cd /root/Concurrent-Server-Pro/05-epoll && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/Concurrent-Server-Pro/05-epoll /root/Concurrent-Server-Pro/05-epoll /root/Concurrent-Server-Pro/05-epoll /root/Concurrent-Server-Pro/05-epoll /root/Concurrent-Server-Pro/05-epoll/CMakeFiles/echocli.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/echocli.dir/depend

