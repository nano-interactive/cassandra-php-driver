if (NOT PHP_CONFIG_FOUND)
    message(FATAL_ERROR "php-config is required")
endif ()

execute_process(COMMAND ${PHP_CONFIG_EXECUTABLE} --prefix OUTPUT_VARIABLE PHP_LIB_PREFIX OUTPUT_STRIP_TRAILING_WHITESPACE)
execute_process(COMMAND ${PHP_CONFIG_EXECUTABLE} --includes OUTPUT_VARIABLE PHP_INCLUDES OUTPUT_STRIP_TRAILING_WHITESPACE)
execute_process(COMMAND ${PHP_CONFIG_EXECUTABLE} --libs OUTPUT_VARIABLE PHP_LIBS OUTPUT_STRIP_TRAILING_WHITESPACE)
execute_process(COMMAND ${PHP_CONFIG_EXECUTABLE} --version OUTPUT_VARIABLE PHP_VERSION OUTPUT_STRIP_TRAILING_WHITESPACE)
execute_process(COMMAND ${PHP_CONFIG_EXECUTABLE} --vernum OUTPUT_VARIABLE ZEND_API OUTPUT_STRIP_TRAILING_WHITESPACE)
execute_process(COMMAND ${PHP_CONFIG_EXECUTABLE} --extension-dir OUTPUT_VARIABLE PHP_EXTENSION_DIR OUTPUT_STRIP_TRAILING_WHITESPACE)
execute_process(COMMAND ${PHP_CONFIG_EXECUTABLE} --include-dir OUTPUT_VARIABLE PHP_INCLUDES_DIR OUTPUT_STRIP_TRAILING_WHITESPACE)

get_filename_component(PHP_LIB_DIR ${PHP_LIBS} DIRECTORY)
string(REGEX REPLACE "-I" "" PHP_INCLUDES "${PHP_INCLUDES} ")
string(REGEX REPLACE " " ";" PHP_INCLUDES " ${PHP_INCLUDES} ")


set(PHP_LDFLAGS " -L${PHP_LIB_DIR} ${PHP_LIBS} ")
set(PHP_INCLUDES ${PHP_INCLUDES})
set(PHP_LDFLAGS ${PHP_LDFLAGS})
set(PHP_LIB ${PHP_LIB})
set(PHP_VERSION ${PHP_VERSION})
set(ZEND_API ${ZEND_API})
set(PHP_EXTENSION_DIR ${PHP_EXTENSION_DIR})
set(PHP_INCLUDES_DIR ${PHP_INCLUDES_DIR})
set(PHP_FOUND ON)