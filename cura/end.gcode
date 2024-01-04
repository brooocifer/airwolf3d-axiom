M400
M104 S0                         ; Hotend off
M140 S0                         ; heated bed heater off (if you have it)
M107                            ; fans off
G92 E0                          ; set extruder to 0
G1 E-3 F300                     ; retract a bit to relieve pressure
G28 X0 Y0 F8000            ; move to cooling positioning
G1 Z260 F1000         ; move to cooling positioning
M84                             ; steppers off
G90                             ; absolute positioning
M42 P6 S0 ; lights off
