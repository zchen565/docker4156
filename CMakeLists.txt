PROJECT(4156)
CMAKE_MINIMUM_REQUIRED(VERSION 3.10)

link_libraries(-lmysqlcppconn8)

# SET(CMAKEDEMO_VERSION 1.0)

# include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

file(GLOB_RECURSE all_files
*.cc
)

# 生成目标可执行文件
add_executable(hello ${all_files})
