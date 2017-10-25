if(EXISTS "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/tests/dataset-standford-bunny-prefix/src/bunny.tar.gz")
  file("MD5" "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/tests/dataset-standford-bunny-prefix/src/bunny.tar.gz" hash_value)
  if("x${hash_value}" STREQUAL "x232bb90cac5f2ac77140e09a59bcffe4")
    return()
  endif()
endif()
message(STATUS "downloading...
     src='http://graphics.stanford.edu/pub/3Dscanrep/bunny.tar.gz'
     dst='/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/tests/dataset-standford-bunny-prefix/src/bunny.tar.gz'
     timeout='none'")




file(DOWNLOAD
  "http://graphics.stanford.edu/pub/3Dscanrep/bunny.tar.gz"
  "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/tests/dataset-standford-bunny-prefix/src/bunny.tar.gz"
  SHOW_PROGRESS
  # no TIMEOUT
  STATUS status
  LOG log)

list(GET status 0 status_code)
list(GET status 1 status_string)

if(NOT status_code EQUAL 0)
  message(FATAL_ERROR "error: downloading 'http://graphics.stanford.edu/pub/3Dscanrep/bunny.tar.gz' failed
  status_code: ${status_code}
  status_string: ${status_string}
  log: ${log}
")
endif()

message(STATUS "downloading... done")
