# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/111/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/111/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sten_bone/locals/LD46

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sten_bone/locals/LD46/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/LD46.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LD46.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LD46.dir/flags.make

CMakeFiles/LD46.dir/Main.cpp.o: CMakeFiles/LD46.dir/flags.make
CMakeFiles/LD46.dir/Main.cpp.o: ../Main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sten_bone/locals/LD46/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LD46.dir/Main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LD46.dir/Main.cpp.o -c /home/sten_bone/locals/LD46/Main.cpp

CMakeFiles/LD46.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LD46.dir/Main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sten_bone/locals/LD46/Main.cpp > CMakeFiles/LD46.dir/Main.cpp.i

CMakeFiles/LD46.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LD46.dir/Main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sten_bone/locals/LD46/Main.cpp -o CMakeFiles/LD46.dir/Main.cpp.s

CMakeFiles/LD46.dir/Game.cpp.o: CMakeFiles/LD46.dir/flags.make
CMakeFiles/LD46.dir/Game.cpp.o: ../Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sten_bone/locals/LD46/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/LD46.dir/Game.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LD46.dir/Game.cpp.o -c /home/sten_bone/locals/LD46/Game.cpp

CMakeFiles/LD46.dir/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LD46.dir/Game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sten_bone/locals/LD46/Game.cpp > CMakeFiles/LD46.dir/Game.cpp.i

CMakeFiles/LD46.dir/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LD46.dir/Game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sten_bone/locals/LD46/Game.cpp -o CMakeFiles/LD46.dir/Game.cpp.s

# Object files for target LD46
LD46_OBJECTS = \
"CMakeFiles/LD46.dir/Main.cpp.o" \
"CMakeFiles/LD46.dir/Game.cpp.o"

# External object files for target LD46
LD46_EXTERNAL_OBJECTS =

LD46: CMakeFiles/LD46.dir/Main.cpp.o
LD46: CMakeFiles/LD46.dir/Game.cpp.o
LD46: CMakeFiles/LD46.dir/build.make
LD46: CMakeFiles/LD46.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sten_bone/locals/LD46/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable LD46"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LD46.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LD46.dir/build: LD46

.PHONY : CMakeFiles/LD46.dir/build

CMakeFiles/LD46.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LD46.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LD46.dir/clean

CMakeFiles/LD46.dir/depend:
	cd /home/sten_bone/locals/LD46/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sten_bone/locals/LD46 /home/sten_bone/locals/LD46 /home/sten_bone/locals/LD46/cmake-build-debug /home/sten_bone/locals/LD46/cmake-build-debug /home/sten_bone/locals/LD46/cmake-build-debug/CMakeFiles/LD46.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LD46.dir/depend

