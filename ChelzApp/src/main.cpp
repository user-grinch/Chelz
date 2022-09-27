#include "Chelz/application.h"

void MyMenubar()
{
    ImGui::MenuItem("Item 1");
    ImGui::MenuItem("Item 2");
    ImGui::MenuItem("Item 3");
}

void MyWindow()
{
    ImGui::Text("This is a test window");
}

int WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd)
{
    Chelz::Specification Spec;
    Spec.Name = L"Chelz Test Application";
    Spec.MenuBarFunc = MyMenubar;
    Spec.LayerFunc = MyWindow;

    Chelz::Application App(Spec);
    App.Run();

    return 0;
}