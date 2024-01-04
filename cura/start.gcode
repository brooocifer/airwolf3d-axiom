M190 S130.000000 ; bed temperature
M109 S245.000000 ; head temperature
M42 P6 S255                  ; turn lights on
G21                          ; metric values
G90                          ; absolute positioning
M82                          ; set extruder to absolute mode
M107                         ; start with the fan off
G92 E0                       ; set extruder position to 0
G1 E-20 F125
G28 F200                         ; home all
G1 Z0  F1200
G1 X20 Y228 F7000
G1 Z-2  F1200                ; lower to brush

G1 X138 Y226 F2000
G1 X40 Y228 F2000
G1 X138 Y226 F2000
G1 E-30 F125
G1 X40 Y228 F2000           ;

G1 Z0 F1200
G28 X0 Y0
M204 S300                    ; set accel for probing
G29
M204 S3500                   ; set accel back to normal
G1 Z5							  ; raise nozzle up 10mm
G1 E6 F100                     ; extrude filament back into nozzle and 7mm more
G92 E0                        ; zero extruder
M400                         ; clear buffer
G4 S1                        ; pause
