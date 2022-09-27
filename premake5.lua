workspace "ChelzApp"
   architecture "x64"
   configurations { "Debug", "Release" }
   startproject "ChelzApp"
   targetdir "ChelzApp"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

include "Chelz"
include "ChelzApp"