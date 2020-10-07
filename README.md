# Godot-Render
Simple script to export animation in Godot Game Engine in PNG sequence files with specified frame rate and resolution.

# Main Goal
This script is intended to help animators to render faster their works in a 3D environment. It doesn't matter if you create it in Godot or anywhere else.

This script generates pixel perfect animation renders every time. It means you can composite your renders in Godot with your renders from any other application using the same file. For example: When you want to render your character in Godot but the smoke, reflection pass, scenario in other applications.

## Do it when working with imported scenes from other 3D Application

1) Change the FPS of the scene imported inside Godot: Go to "Import" tab in godot, go down to find "Fps" value and change to the framerate you have in your 3D application.

2) In the "Import" tab in Godot, go a little bit down and disable the "Optimizer". Otherwise it will delete and interpolate the frames the engine doesn't consider necessary. With these two things right, the code runs perfectly without any visible delay in the animation.

3) Also it is important to bake all the keyframes in your 3D Application before or in the exporting process. This is important because Godot Engine only uses the KeyFrame and ignores its interpolation modes, so your animation might not look right in betweens.

## How to use it with a 3D file

All you have to do is:
- Export your 3D animation with any format Godot will understand (Collada, glTF, etc.);
- Import it in Godot (with the proper settings;
- Attach the script file to the scene;
- Paste the path you want to render out your images in path_start variable (default is "c:/Screenshots/screenshot_")
- Change the desirable frame rate in fps variable (default is 24)
- Press Play button to Start;
- Close the window to stop;

*PS.:* The export process generates a Sequence of numbered PNG files. But it's not as fast as playing and recording the screen, it's quite long actually. Only because generating a PNG file is time expensive, it's not exactly a Godot Engine issue.
