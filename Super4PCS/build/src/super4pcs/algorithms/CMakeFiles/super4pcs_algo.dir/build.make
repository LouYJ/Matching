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
include src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/depend.make

# Include the progress variables for this target.
include src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/progress.make

# Include the compile flags for this target's objects.
include src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/flags.make

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/flags.make
src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o: ../src/super4pcs/algorithms/match4pcsBase.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o -c /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/algorithms/match4pcsBase.cc

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.i"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/algorithms/match4pcsBase.cc > CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.i

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.s"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/algorithms/match4pcsBase.cc -o CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.s

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o.requires:

.PHONY : src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o.requires

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o.provides: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o.requires
	$(MAKE) -f src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/build.make src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o.provides.build
.PHONY : src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o.provides

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o.provides.build: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o


src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.o: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/flags.make
src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.o: ../src/super4pcs/algorithms/4pcs.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.o"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/super4pcs_algo.dir/4pcs.cc.o -c /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/algorithms/4pcs.cc

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/super4pcs_algo.dir/4pcs.cc.i"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/algorithms/4pcs.cc > CMakeFiles/super4pcs_algo.dir/4pcs.cc.i

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/super4pcs_algo.dir/4pcs.cc.s"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/algorithms/4pcs.cc -o CMakeFiles/super4pcs_algo.dir/4pcs.cc.s

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.o.requires:

.PHONY : src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.o.requires

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.o.provides: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.o.requires
	$(MAKE) -f src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/build.make src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.o.provides.build
.PHONY : src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.o.provides

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.o.provides.build: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.o


src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/flags.make
src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o: ../src/super4pcs/algorithms/super4pcs.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o -c /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/algorithms/super4pcs.cc

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/super4pcs_algo.dir/super4pcs.cc.i"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/algorithms/super4pcs.cc > CMakeFiles/super4pcs_algo.dir/super4pcs.cc.i

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/super4pcs_algo.dir/super4pcs.cc.s"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/algorithms/super4pcs.cc -o CMakeFiles/super4pcs_algo.dir/super4pcs.cc.s

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o.requires:

.PHONY : src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o.requires

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o.provides: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o.requires
	$(MAKE) -f src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/build.make src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o.provides.build
.PHONY : src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o.provides

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o.provides.build: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o


# Object files for target super4pcs_algo
super4pcs_algo_OBJECTS = \
"CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o" \
"CMakeFiles/super4pcs_algo.dir/4pcs.cc.o" \
"CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o"

# External object files for target super4pcs_algo
super4pcs_algo_EXTERNAL_OBJECTS =

src/super4pcs/algorithms/libsuper4pcs_algo.a: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o
src/super4pcs/algorithms/libsuper4pcs_algo.a: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.o
src/super4pcs/algorithms/libsuper4pcs_algo.a: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o
src/super4pcs/algorithms/libsuper4pcs_algo.a: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/build.make
src/super4pcs/algorithms/libsuper4pcs_algo.a: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libsuper4pcs_algo.a"
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms && $(CMAKE_COMMAND) -P CMakeFiles/super4pcs_algo.dir/cmake_clean_target.cmake
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/super4pcs_algo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/build: src/super4pcs/algorithms/libsuper4pcs_algo.a

.PHONY : src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/build

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/requires: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/match4pcsBase.cc.o.requires
src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/requires: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/4pcs.cc.o.requires
src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/requires: src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/super4pcs.cc.o.requires

.PHONY : src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/requires

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/clean:
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms && $(CMAKE_COMMAND) -P CMakeFiles/super4pcs_algo.dir/cmake_clean.cmake
.PHONY : src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/clean

src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/depend:
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cewu/firstHDD/yujing/Matching/Super4PCS /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/algorithms /home/cewu/firstHDD/yujing/Matching/Super4PCS/build /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/super4pcs/algorithms/CMakeFiles/super4pcs_algo.dir/depend
