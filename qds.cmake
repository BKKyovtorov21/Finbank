### This file is automatically generated by Qt Design Studio.
### Do not change

add_subdirectory(FinbankContent)
add_subdirectory(Generated)
add_subdirectory(Finbank)
add_subdirectory(App)

target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE
    FinbankContentplugin
    Generated_DesignSystemplugin
    Finbankplugin)