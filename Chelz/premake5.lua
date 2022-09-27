project "Chelz"
   kind "StaticLib"
   language "C++"
   cppdialect "C++20"
   targetdir "bin/%{cfg.buildcfg}"
   staticruntime "off"

   files { 
      "src/**.h", 
      "src/**.cpp",
      "vendor/**.h", 
      "vendor/**.cpp", 
   }

   includedirs {
      "src",
      "vendor",
   }

   links {
      "d3d9",
      "d3d11"
   }

   targetdir ("bin/" .. outputdir .. "/%{prj.name}")
   objdir ("objs/" .. outputdir .. "/%{prj.name}")

   filter "configurations:Debug"
      defines { "APP_DEBUG" }
      runtime "Debug"
      symbols "On"

   filter "configurations:Release"
      defines { "APP_RELEASE" }
      runtime "Release"
      optimize "On"