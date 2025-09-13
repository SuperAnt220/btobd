# Convert blocks to block displays
This configurable datapack allows to select an area of blocks in worldedit style and convert all the blocks into corresponding block displays. This datapack works very well with [Axiom](https://modrinth.com/mod/axiom) mod, as it allows to group display entities and manipulate them easily afterwards.

### Versions: <FONT COLOR="#ff39eb">1.21.4-1.21.8</FONT>

## Usage
- `/function btobd:admin/give_converter_stick` - gives you the stick to set pos1 and pos2:
  - `Right click` → set Pos1
  - `Right click again` → set/move Pos2
  - `Shift + Right click` → clear Pos1 and Pos2
- `/function btobd:admin/convert` - start the conversion process (only works when both pos1 and pos2 entities are loaded);
- `/function btobd:admin/settings` - open up settings;
- `/function btobd:admin/convert_macro {x:<num>,y:<num>,z:<num>,x2:<num>,y2:<num>,z2:<num>}` - convert an area by writing specific coordinates instead of `<num>`.

Watch this demo video:

[![Trailer](https://img.youtube.com/vi/W_AcC19raRo/0.jpg)](https://www.youtube.com/watch?v=W_AcC19raRo)


## Credit
This datapack uses [Triton365's "Blockstate" library](https://github.com/Triton365/BlockState).