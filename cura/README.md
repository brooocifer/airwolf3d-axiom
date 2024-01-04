# Cura Ultimaker Pro

I don't have Airwolf3D's APEX software, and I have absolutely no interest in it. I've been using Cura Ultimaker Pro for years so why change now?

Except that Cura supports practically every 3D printer manufacturer except Airwolf3D. Or maybe Airwolf3D doesn't want Cura to support them, since they have competing software.

Either way, it takes manually setting up Cura to use it.

I'm not finding a HOWTO article for this EOL'd printer, but there are articles on Airwolf3D's currently supported printers, so I've created a HOWTO based on those. I also had the sample print files, so some reverse engineering was necessary to fill in some blanks.

When I first tried to print based on the configuration settings and profiles using Airwolf3D's sample STL's, I was having issues, as it looked like the printer was trying to print 0.5mm too high above the glass plate. It turns out that it really was, but it wasn't due to the configuration.

Airwolf3D provided STL files where the model is not layed flat on the Z axis zero plane, but are in fact floating at 0.4mm! This seems like such a rookie mistake on Airwolf3D's part, I didn't even consider that their STL models were screwed up! Booooooooooo! Looking through the library of provided STL files, I found that they all have issues, some are even consistently rotated sideways rather than flat.

Once I used Cura to lay the model flat, rotated it where I wanted it, and then re-sliced, the resulting GCODE file printed the model with no problems.

So with my whining and complaining out of the way, here are the HOWTO steps needed to enable the use of Cura Ultimaker Pro for this printer:

1. Download and install Cura, if you haven't already
2. Open Settings or Preferences, and go to Manage Printers
3. Add a non-networked, Custom FFF Printer
4. Name it something meaningful, I used "Airwolf3d Axiom"
5. In the Machine Settings, Printer Settings, set the following:
-  X (Width) : 340.0 mm
-  Y (Depth) : 203.0 mm
-  Z (Height) : 254.0 mm
-  Build Plate Shape: Rectangular
-  Origin at cetner : Unchecked
-  Heated Bed : Checked
-  Heated build volume : Unchecked
-  G-code flavor: Marlin
6. In the Machine Settings, Printhead Settings, set the following:
-  X min : -20 mm
-  Y min : -10 mm
-  X max : 10 mm
-  Y max : 10 mm
-  Gantry Height : 254.0 mm
-  Number of Extruders : 1
-  Apply Extruder offsets to GCode : Checked
7. In the Machine Settings, Start G-code, set the following : use the contents of the start.gcode file from this folder
8. In the Machine Settings, End G-code, set the following : use the contents of the end.gcode file from this folder
9. In the Machine Settings, Extruder 1, set the following :
- Nozzle size : 0.5 mm
- Compatible material diameter : 3.0 mm
- Nozzle offset X : 0.0 mm
- Nozzle offset Y : 0.0 mm
- Cooling Fan Number : 0
10. In the Machine Settings, Extruder 1, Extruder Start G-code, leave it blank/empty
11. In the Machine Settings, Extruder 1, Extruder End G-code, leave it blank/empty
12. In the Profiles section of Settings/Preferences, create custom profiles by importing the profile files for different filament types and qualities. These files came with my printer, and were provided by Airwolf3D
