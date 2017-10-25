set(file "/home/jingyu/Super4PCS/build/tests/dataset-standford-bunny-prefix/src/bunny.tar.gz")
message(STATUS "verifying file...
     file='${file}'")
set(expect_value "232bb90cac5f2ac77140e09a59bcffe4")
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
    execute_process(COMMAND ${CMAKE_COMMAND} -P "/home/jingyu/Super4PCS/build/tests/dataset-standford-bunny-prefix/src/dataset-standford-bunny-stamp/download-dataset-standford-bunny.cmake")
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
