set(file "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/tests/dataset-standford-armadillo-prefix/src/Armadillo_scans.tar.gz")
message(STATUS "verifying file...
     file='${file}'")
set(expect_value "437eafa8d3d07067e17a42c727a0c28d")
set(attempt 0)
set(succeeded 0)
while(${attempt} LESS 3 OR ${attempt} EQUAL 3 AND NOT ${succeeded})
  file(MD5 "${file}" actual_value)
  if("${actual_value}" STREQUAL "${expect_value}")
    set(succeeded 1)
  elseif(${attempt} LESS 3)
    message(STATUS "MD5 hash of ${file}
does not match expected value
  expected: ${expect_value}
    actual: ${actual_value}
Retrying download.
")
    file(REMOVE "${file}")
    execute_process(COMMAND ${CMAKE_COMMAND} -P "/home/cewu/firstHDD/yujing/Matching/Super4PCS/build/tests/dataset-standford-armadillo-prefix/src/dataset-standford-armadillo-stamp/download-dataset-standford-armadillo.cmake")
  endif()
  math(EXPR attempt "${attempt} + 1")
endwhile()

if(${succeeded})
  message(STATUS "verifying file... done")
else()
  message(FATAL_ERROR "error: MD5 hash of
  ${file}
does not match expected value
  expected: ${expect_value}
    actual: ${actual_value}
")
endif()
