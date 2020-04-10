project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin_int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }
    
    filter "system:linux"

        buildoptions
        {
            "-Wall",
            "-Wextra"
        }

    filter "configurations:Debug"
        symbols "on"

    filter "configurations:Release"
        optimize "speed"

        linkoptions
        {
            "-flto"
        }
