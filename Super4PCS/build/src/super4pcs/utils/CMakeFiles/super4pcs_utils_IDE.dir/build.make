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

# Utility rule file for super4pcs_utils_IDE.

# Include the progress variables for this target.
include src/super4pcs/utils/CMakeFiles/super4pcs_utils_IDE.dir/progress.make

super4pcs_utils_IDE: src/super4pcs/utils/CMakeFiles/super4pcs_utils_IDE.dir/build.make

.PHONY : super4pcs_utils_IDE

# Rule to build all files generated by this target.
src/super4pcs/utils/CMakeFiles/super4pcs_utils_IDE.dir/build: super4pcs_utils_IDE

.PHONY : src/super4pcs/utils/CMakeFiles/super4pcs_utils_IDE.dir/build

src/super4pcs/utils/CMakeFiles/super4pcs_utils_IDE.dir/clean:
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/utils && $(CMAKE_COMMAND) -P CMakeFiles/super4pcs_utils_IDE.dir/cmake_clean.cmake
.PHONY : src/super4pcs/utils/CMakeFiles/super4pcs_utils_IDE.dir/clean

src/super4pcs/utils/CMakeFiles/super4pcs_utils_IDE.dir/depend:
	cd /home/cewu/firstHDD/yujing/Matching/Super4PCS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cewu/firstHDD/yujing/Matching/Super4PCS /home/cewu/firstHDD/yujing/Matching/Super4PCS/src/super4pcs/utils /home/cewu/firstHDD/yujing/Matching/Super4PCS/build /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/utils /home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/utils/CMakeFiles/super4pcs_utils_IDE.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/super4pcs/utils/CMakeFiles/super4pcs_utils_IDE.dir/depend

