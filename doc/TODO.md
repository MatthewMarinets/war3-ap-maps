# TODO
- [x] Do a roundtrip of saving a campaign file, extracting it, compacting it with MPQEditor, and saving it again, noting sizes at each step
  - [x] Update extract/pack tools to also track map flags
- [ ] Map IO
  - [ ] Write Preloader script that sets technology level and displays a message
  - [ ] Read gamecache format from Python
  - [ ] Write gamecache format from Python
  - [ ] Decide and document a message-passing format
- [ ] Work towards full map explode / compact
  - [ ] Extract triggers from .wct / .wtg
  - [ ] Re-compile triggers to .wct / .wtg for import into WorldEditor
  - [ ] Make a tool to convert .slk to .csv / .md and back
  - [ ] Make a tool to convert .w3i to .json and back
  - [ ] Make a tool to convert .blp to .jpg and back
  - [ ] Deal with .w3f  /.w3n
  - [ ] Make a top-level build script
  - [ ] lint with Jasshelper?
- [ ] Make a common / testing map
- [ ] Make a client that can communicate with the testing map
- [ ] Make a custom item
- [ ] Make a hero selector map
- [ ] Make a custom campaign
  - [ ] Test that custom campaigns still work with Reforged
