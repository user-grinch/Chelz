#pragma once
#include "specification.h"
#include "imgui/imgui.h"
#include "renderer.h"

namespace Chelz
{
    class Application
    {
    private:
        Specification Info;

    public:
        Application(Specification &Spec);
        ~Application();
        
        CVector2 GetWindowSize();

        // Returns the active thememode
        eTheme GetTheme();

        // Sets the current theme 
        void SetTheme(eTheme theme);

        // Start the application loop
        void Run();

        // Set the poup function
        void SetPopup(std::function<void()> Func);
    };
}
