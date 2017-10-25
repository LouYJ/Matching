# CMake generated Testfile for 
# Source directory: /home/jingyu/Super4PCS/tests
# Build directory: /home/jingyu/Super4PCS/build/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(externalAppTest "Super4PCS-externalAppTest")
add_test(pair_extraction "/home/jingyu/Super4PCS/build/tests/pair_extraction")
add_test(matching_0 "/home/jingyu/Super4PCS/build/tests/matching" "0")
set_tests_properties(matching_0 PROPERTIES  TIMEOUT "600")
add_test(matching_1 "/home/jingyu/Super4PCS/build/tests/matching" "1")
set_tests_properties(matching_1 PROPERTIES  TIMEOUT "600")
