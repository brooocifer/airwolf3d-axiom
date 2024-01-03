# Extruder

The Bowden extruder that came with the printer had degraded (cracked) and was unusable. No STL file was available anywhere online that I could find.

Apparently, Airwolf3D recommends converting the printer from a Bowden extruder model to a direct drive model, but for a free printer, I really wasn't interested in spending a lot of money to do this.

Also, I've wanted to learn how to use Blender to create my own 3D models, and this was a great opportunity to do so. I spent a lot of time learning Blender, and ended with a result that is workable, but not without a few issues. Basically, I was exhausted with it when I had a version that was workable, and didn't fix all the problems that probably should have been fixed.

The resulting file is available here as extruder_assembly_final.blend and extruder_assembly_final.stl.

Notes, things I learned:
- A digital caliper is a requirement. Measurements with a manual caliper were way off.
- Buy replacement batteries for your digital caliper beforehand. Lots of measuring.
- The digital caliper from Harbor Freight was good enough, although margin of error was probably still too high for this reverse engineering effort. I did 6 major revisions to the model to fix measuring errors.
- In Blender, if you cut too much volume out of an object, you can just create a new 3D object and "glom" it on to the original. I'm sure some engineer somewhere thinks this is a hack and not the proper way to design this, and it makes for a *really* messy model, but frankly, I don't care. It works.
- A good soundtrack is essential.
- I printed my first one in PLA on my old 3D printer. I had to modify the part with a drill, bit, and applying some force. The PLA gave enough for this to work, YMMV on other materials.
- Instructions for assembly/disassembly are here: https://airwolf3d.freshdesk.com/support/solutions/articles/5000684875-axiom-extruder-assembly-dissassembly
- The screw holes for the spring plate are tooo small. I just used a drill with a philips driver to screw the screws in all the way, then backed them all the way out before starting assembly.
- Similarly, the 3 bolt holes that bolt into the acrylic plates are slightly too small. I used the drill and philips driver on those too before assembly.
- The bolts that go through the back panel and attach the acrylic plates are a huge pain because you have to reach through the open front door. Get a 2nd person to help if you can. I have long arms and I could barely reassemble it by myself.
- The hole for the main shaft and bearing is very tight. Snap it in and remove it a couple times before trying to do final assembly, this will "stretch" or erode the PLA enough that it will be a snug fit.
- The hole for the spring that is held in place by the spring plate is still too small. I used a drill and a drill bit to round it out enough that the spring could be inserted and "spring" appropriately.
- On one of my assembly attempts, the extruder was not fully flush against the acrylic plates. It turns out that the black adapter on the filament tube was not snapped in correctly, and was slightly twisted. Make sure it is snapped in flush with the extruder surface edge.
- After assebly, I found that loading both ABS and Nylon filament was impossible with the spring plate screwed all the way in. I backed it off almost all the way out, and both filament types are loading easily now.

Overall, it was fun, as most reverse-engineering/hacks are.
