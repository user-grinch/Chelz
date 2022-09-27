project "ChelzApp"
   kind "WindowedApp"
   language "C++"
   cppdialect "C++20"
   targetdir "bin/%{cfg.buildcfg}"
   staticruntime "off"

   files {
      "src/**.h", "src/**.cpp" }

   includedirs {
      "src",
      "../Chelz/src/",
      "../Chelz/vendor/",
   }

   links {
      "Chelz"
   }

   targetdir ("bin/" .. outputdir .. "/%{prj.name}")
   objdir ("bin/objs/" .. outputdir .. "/%{prj.name}")

   filter "configurations:Debug"
      defines { "APP_DEBUG" }
      runtime "Debug"
      symbols "On"

   filter "configurations:Release"
      defines { "APP_RELEASE" }
      runtime "Release"
      optimize "On"