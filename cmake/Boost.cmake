find_package(Boost 1.65 COMPONENTS system thread REQUIRED)
if ( Boost_FOUND )
    link_directories(${Boost_LIBRARY_DIRS})
    include_directories(SYSTEM ${Boost_INCLUDE_DIR})
else()
    message( FATAL_ERROR "Required Boost packages not found. Perhaps add -DBOOST_ROOT?" )
endif()