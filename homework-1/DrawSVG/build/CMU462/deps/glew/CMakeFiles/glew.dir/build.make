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
CMAKE_SOURCE_DIR = /home/arron/computer-graphics/homework-1/DrawSVG

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/arron/computer-graphics/homework-1/DrawSVG/build

# Include any dependencies generated for this target.
include CMU462/deps/glew/CMakeFiles/glew.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMU462/deps/glew/CMakeFiles/glew.dir/compiler_depend.make

# Include the progress variables for this target.
include CMU462/deps/glew/CMakeFiles/glew.dir/progress.make

# Include the compile flags for this target's objects.
include CMU462/deps/glew/CMakeFiles/glew.dir/flags.make

CMU462/deps/glew/CMakeFiles/glew.dir/src/glew.c.o: CMU462/deps/glew/CMakeFiles/glew.dir/flags.make
CMU462/deps/glew/CMakeFiles/glew.dir/src/glew.c.o: ../CMU462/deps/glew/src/glew.c
CMU462/deps/glew/CMakeFiles/glew.dir/src/glew.c.o: CMU462/deps/glew/CMakeFiles/glew.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arron/computer-graphics/homework-1/DrawSVG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMU462/deps/glew/CMakeFiles/glew.dir/src/glew.c.o"
	cd /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMU462/deps/glew/CMakeFiles/glew.dir/src/glew.c.o -MF CMakeFiles/glew.dir/src/glew.c.o.d -o CMakeFiles/glew.dir/src/glew.c.o -c /home/arron/computer-graphics/homework-1/DrawSVG/CMU462/deps/glew/src/glew.c

CMU462/deps/glew/CMakeFiles/glew.dir/src/glew.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glew.dir/src/glew.c.i"
	cd /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/arron/computer-graphics/homework-1/DrawSVG/CMU462/deps/glew/src/glew.c > CMakeFiles/glew.dir/src/glew.c.i

CMU462/deps/glew/CMakeFiles/glew.dir/src/glew.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glew.dir/src/glew.c.s"
	cd /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/arron/computer-graphics/homework-1/DrawSVG/CMU462/deps/glew/src/glew.c -o CMakeFiles/glew.dir/src/glew.c.s

CMU462/deps/glew/CMakeFiles/glew.dir/src/glewinfo.c.o: CMU462/deps/glew/CMakeFiles/glew.dir/flags.make
CMU462/deps/glew/CMakeFiles/glew.dir/src/glewinfo.c.o: ../CMU462/deps/glew/src/glewinfo.c
CMU462/deps/glew/CMakeFiles/glew.dir/src/glewinfo.c.o: CMU462/deps/glew/CMakeFiles/glew.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arron/computer-graphics/homework-1/DrawSVG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMU462/deps/glew/CMakeFiles/glew.dir/src/glewinfo.c.o"
	cd /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMU462/deps/glew/CMakeFiles/glew.dir/src/glewinfo.c.o -MF CMakeFiles/glew.dir/src/glewinfo.c.o.d -o CMakeFiles/glew.dir/src/glewinfo.c.o -c /home/arron/computer-graphics/homework-1/DrawSVG/CMU462/deps/glew/src/glewinfo.c

CMU462/deps/glew/CMakeFiles/glew.dir/src/glewinfo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glew.dir/src/glewinfo.c.i"
	cd /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/arron/computer-graphics/homework-1/DrawSVG/CMU462/deps/glew/src/glewinfo.c > CMakeFiles/glew.dir/src/glewinfo.c.i

CMU462/deps/glew/CMakeFiles/glew.dir/src/glewinfo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glew.dir/src/glewinfo.c.s"
	cd /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/arron/computer-graphics/homework-1/DrawSVG/CMU462/deps/glew/src/glewinfo.c -o CMakeFiles/glew.dir/src/glewinfo.c.s

CMU462/deps/glew/CMakeFiles/glew.dir/src/visualinfo.c.o: CMU462/deps/glew/CMakeFiles/glew.dir/flags.make
CMU462/deps/glew/CMakeFiles/glew.dir/src/visualinfo.c.o: ../CMU462/deps/glew/src/visualinfo.c
CMU462/deps/glew/CMakeFiles/glew.dir/src/visualinfo.c.o: CMU462/deps/glew/CMakeFiles/glew.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arron/computer-graphics/homework-1/DrawSVG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMU462/deps/glew/CMakeFiles/glew.dir/src/visualinfo.c.o"
	cd /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMU462/deps/glew/CMakeFiles/glew.dir/src/visualinfo.c.o -MF CMakeFiles/glew.dir/src/visualinfo.c.o.d -o CMakeFiles/glew.dir/src/visualinfo.c.o -c /home/arron/computer-graphics/homework-1/DrawSVG/CMU462/deps/glew/src/visualinfo.c

CMU462/deps/glew/CMakeFiles/glew.dir/src/visualinfo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glew.dir/src/visualinfo.c.i"
	cd /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/arron/computer-graphics/homework-1/DrawSVG/CMU462/deps/glew/src/visualinfo.c > CMakeFiles/glew.dir/src/visualinfo.c.i

CMU462/deps/glew/CMakeFiles/glew.dir/src/visualinfo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glew.dir/src/visualinfo.c.s"
	cd /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/arron/computer-graphics/homework-1/DrawSVG/CMU462/deps/glew/src/visualinfo.c -o CMakeFiles/glew.dir/src/visualinfo.c.s

# Object files for target glew
glew_OBJECTS = \
"CMakeFiles/glew.dir/src/glew.c.o" \
"CMakeFiles/glew.dir/src/glewinfo.c.o" \
"CMakeFiles/glew.dir/src/visualinfo.c.o"

# External object files for target glew
glew_EXTERNAL_OBJECTS =

CMU462/deps/glew/libglew.a: CMU462/deps/glew/CMakeFiles/glew.dir/src/glew.c.o
CMU462/deps/glew/libglew.a: CMU462/deps/glew/CMakeFiles/glew.dir/src/glewinfo.c.o
CMU462/deps/glew/libglew.a: CMU462/deps/glew/CMakeFiles/glew.dir/src/visualinfo.c.o
CMU462/deps/glew/libglew.a: CMU462/deps/glew/CMakeFiles/glew.dir/build.make
CMU462/deps/glew/libglew.a: CMU462/deps/glew/CMakeFiles/glew.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/arron/computer-graphics/homework-1/DrawSVG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libglew.a"
	cd /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew && $(CMAKE_COMMAND) -P CMakeFiles/glew.dir/cmake_clean_target.cmake
	cd /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glew.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMU462/deps/glew/CMakeFiles/glew.dir/build: CMU462/deps/glew/libglew.a
.PHONY : CMU462/deps/glew/CMakeFiles/glew.dir/build

CMU462/deps/glew/CMakeFiles/glew.dir/clean:
	cd /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew && $(CMAKE_COMMAND) -P CMakeFiles/glew.dir/cmake_clean.cmake
.PHONY : CMU462/deps/glew/CMakeFiles/glew.dir/clean

CMU462/deps/glew/CMakeFiles/glew.dir/depend:
	cd /home/arron/computer-graphics/homework-1/DrawSVG/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arron/computer-graphics/homework-1/DrawSVG /home/arron/computer-graphics/homework-1/DrawSVG/CMU462/deps/glew /home/arron/computer-graphics/homework-1/DrawSVG/build /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew /home/arron/computer-graphics/homework-1/DrawSVG/build/CMU462/deps/glew/CMakeFiles/glew.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMU462/deps/glew/CMakeFiles/glew.dir/depend

