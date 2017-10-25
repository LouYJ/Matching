# Install script for directory: /home/cewu/firstHDD/yujing/Matching/Super4PCS

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/scripts/run-example.sh;/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/scripts/run-example.bat")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/scripts" TYPE FILE PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ FILES
    "/home/cewu/firstHDD/yujing/Matching/Super4PCS/scripts/run-example.sh"
    "/home/cewu/firstHDD/yujing/Matching/Super4PCS/scripts/run-example.bat"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/assets/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/assets" TYPE DIRECTORY FILES "/home/cewu/firstHDD/yujing/Matching/Super4PCS/assets/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/doc/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/doc" TYPE DIRECTORY FILES "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/doc/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-IOLibTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-IOLibTargets.cmake"
         "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles/Export/_home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-IOLibTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-IOLibTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-IOLibTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-IOLibTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake" TYPE FILE FILES "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles/Export/_home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-IOLibTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-IOLibTargets-release.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake" TYPE FILE FILES "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles/Export/_home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-IOLibTargets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AlgoLibTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AlgoLibTargets.cmake"
         "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles/Export/_home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AlgoLibTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AlgoLibTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AlgoLibTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AlgoLibTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake" TYPE FILE FILES "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles/Export/_home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AlgoLibTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AlgoLibTargets-release.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake" TYPE FILE FILES "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles/Export/_home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AlgoLibTargets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AccelLibTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AccelLibTargets.cmake"
         "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles/Export/_home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AccelLibTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AccelLibTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AccelLibTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AccelLibTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake" TYPE FILE FILES "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/CMakeFiles/Export/_home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCS-AccelLibTargets.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/include/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/include" TYPE DIRECTORY FILES "/home/cewu/firstHDD/yujing/Matching/Super4PCS/src//" FILES_MATCHING REGEX ".*(h|hpp)$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCSConfig.cmake;/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake/Super4PCSConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/install/lib/cmake" TYPE FILE FILES
    "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/generated/Super4PCSConfig.cmake"
    "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/generated/Super4PCSConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/io/cmake_install.cmake")
  include("/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/utils/cmake_install.cmake")
  include("/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/accelerators/cmake_install.cmake")
  include("/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/src/super4pcs/algorithms/cmake_install.cmake")
  include("/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/demos/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
