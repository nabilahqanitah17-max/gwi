# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appuntitledahahah_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appuntitledahahah_autogen.dir\\ParseCache.txt"
  "appuntitledahahah_autogen"
  )
endif()
