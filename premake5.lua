project "Box2D"
    language "C++"
    kind "StaticLib"
    cppdialect "C++11"
    staticruntime "off"

    architecture "x86_64"

    targetdir ("%{prj.location}/bin/" .. outputdir)
    objdir ("%{prj.location}/bin-int/" .. outputdir)

    files 
    {
        "src/**.cpp",
        "src/**.h",
        "include/**.h"
    }
    
    includedirs 
    {
        "src",
        "include"
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
