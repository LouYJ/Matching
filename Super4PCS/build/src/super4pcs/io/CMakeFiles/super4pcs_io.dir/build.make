# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cewu/firstHDD/yujing/Matching/Super4PCS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cewu/firstHDD/yujing/Matching/Super4PCS/build

# Include any dependencies generated for this target.
include src/super4pcs/io/CMakeFiles/super4pcs_io.dir/depend.make

# Include the progress variables for this target.
include src/super4pcs/io/CMakeFiles/super4pcs_io.dir/progress.make

# Include the compile flags for this target's objects.
include src/super4pcs/io/CMakeFiles/super4pcs_io.dir/flags.make

src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.o: src/super4pcs/io/CMakeFiles/super4pcs_io.dir/flags.make
src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.o: ../src/super4pcs/io/io.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.o"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/io && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/super4pcs_io.dir/io.cc.o -c /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/io/io.cc

src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/super4pcs_io.dir/io.cc.i"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/io && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/io/io.cc > CMakeFiles/super4pcs_io.dir/io.cc.i

src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/super4pcs_io.dir/io.cc.s"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/io && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/io/io.cc -o CMakeFiles/super4pcs_io.dir/io.cc.s

src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.o.requires:

.PHONY : src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.o.requires

src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.o.provides: src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.o.requires
	$(MAKE) -f src/super4pcs/io/CMakeFiles/super4pcs_io.dir/build.make src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.o.provides.build
.PHONY : src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.o.provides

src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.o.provides.build: src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.o


# Object files for target super4pcs_io
super4pcs_io_OBJECTS = \
"CMakeFiles/super4pcs_io.dir/io.cc.o"

# External object files for target super4pcs_io
super4pcs_io_EXTERNAL_OBJECTS =

src/super4pcs/io/libsuper4pcs_io.a: src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.o
src/super4pcs/io/libsuper4pcs_io.a: src/super4pcs/io/CMakeFiles/super4pcs_io.dir/build.make
src/super4pcs/io/libsuper4pcs_io.a: src/super4pcs/io/CMakeFiles/super4pcs_io.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsuper4pcs_io.a"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/io && $(CMAKE_COMMAND) -P CMakeFiles/super4pcs_io.dir/cmake_clean_target.cmake
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/io && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/super4pcs_io.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/super4pcs/io/CMakeFiles/super4pcs_io.dir/build: src/super4pcs/io/libsuper4pcs_io.a

.PHONY : src/super4pcs/io/CMakeFiles/super4pcs_io.dir/build

src/super4pcs/io/CMakeFiles/super4pcs_io.dir/requires: src/super4pcs/io/CMakeFiles/super4pcs_io.dir/io.cc.o.requires

.PHONY : src/super4pcs/io/CMakeFiles/super4pcs_io.dir/requires

src/super4pcs/io/CMakeFiles/super4pcs_io.dir/clean:
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/io && $(CMAKE_COMMAND) -P CMakeFiles/super4pcs_io.dir/cmake_clean.cmake
.PHONY : src/super4pcs/io/CMakeFiles/super4pcs_io.dir/clean

src/super4pcs/io/CMakeFiles/super4pcs_io.dir/depend:
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cewu/firstHDD/yujing/Matching/Super4PCS /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/io /home/cewu/firstHDD/yujing/Matching/Super4PCS/build /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/io /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/io/CMakeFiles/super4pcs_io.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/super4pcs/io/CMakeFiles/super4pcs_io.dir/depend

