if(EXISTS "/home/jingyu/Super4PCS/build/tests/dataset-standford-armadillo-prefix/src/Armadillo_scans.tar.gz")
  file("MD5" "/home/jingyu/Super4PCS/build/tests/dataset-standford-armadillo-prefix/src/Armadillo_scans.tar.gz" hash_value)
  if("x${hash_value}" STREQUAL "x437eafa8d3d07067e17a42c727a0c28d")
    return()
  endif()
endif()
message(STATUS "downloading...
     src='http://graphics.stanford.edu/pub/3Dscanrep/armadillo/Armadillo_scans.tar.gz'
     dst='/home/jingyu/Super4PCS/build/tests/dataset-standford-armadillo-prefix/src/Armadillo_scans.tar.gz'
     timeout='none'")




file(DOWNLOAD
  "http://graphics.stanford.edu/pub/3Dscanrep/armadillo/Armadillo_scans.tar.gz"
  "/home/jingyu/Super4PCS/build/tests/dataset-standford-armadillo-prefix/src/Armadillo_scans.tar.gz"
  SHOW_PROGRESS
  # no TIMEOUT
  STATUS status
  LOG log)

list(GET status 0 status_code)
list(GET status 1 status_string)

if(NOT status_code EQUAL 0)
  message(FATAL_ERROR "error: downloading 'http://graphics.stanford.edu/pub/3Dscanrep/armadillo/Armadillo_scans.tar.gz' failed
  status_code: ${status_code}
  status_string: ${status_string}
  log: ${log}
")
endif()

message(STATUS "downloading... done")
