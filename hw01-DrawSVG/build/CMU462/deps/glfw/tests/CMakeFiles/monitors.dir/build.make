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
CMAKE_SOURCE_DIR = /home/arron/computer-graphics/DrawSVG

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/arron/computer-graphics/DrawSVG/build

# Include any dependencies generated for this target.
include CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/compiler_depend.make

# Include the progress variables for this target.
include CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/progress.make

# Include the compile flags for this target's objects.
include CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/flags.make

CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o: CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/flags.make
CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o: ../CMU462/deps/glfw/tests/monitors.c
CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o: CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arron/computer-graphics/DrawSVG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o"
	cd /home/arron/computer-graphics/DrawSVG/build/CMU462/deps/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o -MF CMakeFiles/monitors.dir/monitors.c.o.d -o CMakeFiles/monitors.dir/monitors.c.o -c /home/arron/computer-graphics/DrawSVG/CMU462/deps/glfw/tests/monitors.c

CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/monitors.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/monitors.dir/monitors.c.i"
	cd /home/arron/computer-graphics/DrawSVG/build/CMU462/deps/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/arron/computer-graphics/DrawSVG/CMU462/deps/glfw/tests/monitors.c > CMakeFiles/monitors.dir/monitors.c.i

CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/monitors.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/monitors.dir/monitors.c.s"
	cd /home/arron/computer-graphics/DrawSVG/build/CMU462/deps/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/arron/computer-graphics/DrawSVG/CMU462/deps/glfw/tests/monitors.c -o CMakeFiles/monitors.dir/monitors.c.s

CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o: CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/flags.make
CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o: ../CMU462/deps/glfw/deps/getopt.c
CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o: CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arron/computer-graphics/DrawSVG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o"
	cd /home/arron/computer-graphics/DrawSVG/build/CMU462/deps/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o -MF CMakeFiles/monitors.dir/__/deps/getopt.c.o.d -o CMakeFiles/monitors.dir/__/deps/getopt.c.o -c /home/arron/computer-graphics/DrawSVG/CMU462/deps/glfw/deps/getopt.c

CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/monitors.dir/__/deps/getopt.c.i"
	cd /home/arron/computer-graphics/DrawSVG/build/CMU462/deps/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/arron/computer-graphics/DrawSVG/CMU462/deps/glfw/deps/getopt.c > CMakeFiles/monitors.dir/__/deps/getopt.c.i

CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/monitors.dir/__/deps/getopt.c.s"
	cd /home/arron/computer-graphics/DrawSVG/build/CMU462/deps/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/arron/computer-graphics/DrawSVG/CMU462/deps/glfw/deps/getopt.c -o CMakeFiles/monitors.dir/__/deps/getopt.c.s

CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad.c.o: CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/flags.make
CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad.c.o: ../CMU462/deps/glfw/deps/glad.c
CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad.c.o: CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arron/computer-graphics/DrawSVG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad.c.o"
	cd /home/arron/computer-graphics/DrawSVG/build/CMU462/deps/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad.c.o -MF CMakeFiles/monitors.dir/__/deps/glad.c.o.d -o CMakeFiles/monitors.dir/__/deps/glad.c.o -c /home/arron/computer-graphics/DrawSVG/CMU462/deps/glfw/deps/glad.c

CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/monitors.dir/__/deps/glad.c.i"
	cd /home/arron/computer-graphics/DrawSVG/build/CMU462/deps/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/arron/computer-graphics/DrawSVG/CMU462/deps/glfw/deps/glad.c > CMakeFiles/monitors.dir/__/deps/glad.c.i

CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/monitors.dir/__/deps/glad.c.s"
	cd /home/arron/computer-graphics/DrawSVG/build/CMU462/deps/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/arron/computer-graphics/DrawSVG/CMU462/deps/glfw/deps/glad.c -o CMakeFiles/monitors.dir/__/deps/glad.c.s

# Object files for target monitors
monitors_OBJECTS = \
"CMakeFiles/monitors.dir/monitors.c.o" \
"CMakeFiles/monitors.dir/__/deps/getopt.c.o" \
"CMakeFiles/monitors.dir/__/deps/glad.c.o"

# External object files for target monitors
monitors_EXTERNAL_OBJECTS =

CMU462/deps/glfw/tests/monitors: CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/monitors.c.o
CMU462/deps/glfw/tests/monitors: CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/getopt.c.o
CMU462/deps/glfw/tests/monitors: CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/__/deps/glad.c.o
CMU462/deps/glfw/tests/monitors: CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/build.make
CMU462/deps/glfw/tests/monitors: CMU462/deps/glfw/src/libglfw3.a
CMU462/deps/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/librt.a
CMU462/deps/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/libm.so
CMU462/deps/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/libX11.so
CMU462/deps/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/libXrandr.so
CMU462/deps/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/libXinerama.so
CMU462/deps/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
CMU462/deps/glfw/tests/monitors: /usr/lib/x86_64-linux-gnu/libXcursor.so
CMU462/deps/glfw/tests/monitors: CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/arron/computer-graphics/DrawSVG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable monitors"
	cd /home/arron/computer-graphics/DrawSVG/build/CMU462/deps/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/monitors.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/build: CMU462/deps/glfw/tests/monitors
.PHONY : CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/build

CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/clean:
	cd /home/arron/computer-graphics/DrawSVG/build/CMU462/deps/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/monitors.dir/cmake_clean.cmake
.PHONY : CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/clean

CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/depend:
	cd /home/arron/computer-graphics/DrawSVG/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arron/computer-graphics/DrawSVG /home/arron/computer-graphics/DrawSVG/CMU462/deps/glfw/tests /home/arron/computer-graphics/DrawSVG/build /home/arron/computer-graphics/DrawSVG/build/CMU462/deps/glfw/tests /home/arron/computer-graphics/DrawSVG/build/CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMU462/deps/glfw/tests/CMakeFiles/monitors.dir/depend

