dofile_once("data/scripts/lib/utilities.lua")

local lines = {
  " ",
  "a mod made by",
  " ",
  "Conga Lyne",
  "Main Developer of More Creeps & Weirdos",
  " ",
  "HinoGuchi Sorako",
  "Voice Actor of the Cats",
  " ",
  "Spoopy",
  "Creating sprites for the Blobs, Fluffy Cats & Aesthete of Heat boss. Also made the Colossal Blob's Vomit Ball attack",
  " ",
  "Squirrelly",
  "Creator of the Mana Drain Script",
  " ",
  "Blueberry",
  "Russian Translator",
  " ",
  "Horscht",
  "Provided a ton of help in the mod support channel during development and let me use his credits script.",
  " ",
  "Copi",
  "Helped with some creature design & mod direction, also helped with alt-fire spells.",
  " ",
  "Special Thanks to",
  "Freakstritch",
  "Moriko Yumi",
  "Voksivs",
  "Tanksy Plays",
  "Clemfandongo",
  "Aliasbot",
  "DunkOrSlam's Community",
  "DunkOrSlam",
  "FuryForged",
  "Machebelli",
  "Graham",
  "DayleonFefe",
  "Pneumoania",
  "Elleedy",
  "Zolkarn",
  "Vexilus_",
  "Xytio",
  "And many Modders of the Noita Discord",
  " ",
  " ",
  " ",
  "And finally.. you, for giving More Creeps a try and making it this far into the mod!",
  "I hope you enjoyed playing it as much as I enjoyed making it <3",
  "Best of luck in your future adventures - Conga Lyne",
  " ",
  " ",
  " ",
}

local entity_id = GetUpdatedEntityID()
local player = EntityGetWithTag("player_unit")[1]

gui = gui or GuiCreate()
GuiStartFrame(gui)
roll_credits_progress = (roll_credits_progress or -1) - 0.295 * (accelerate and 15 or 1)

if not do_once and roll_credits_progress <= 0 then
  do_once = true
  local player = EntityGetWithTag("player_unit")[1]
  if player then
    GameTriggerMusicFadeOutAndDequeueAll()
    GamePlaySound( "data/audio/Desktop/music.bank", "music/credits/02", pos_x, pos_y );
  end
end


--Noooo I don't want the Noita to die in these credits!
if roll_credits_progress < -3800 then
    EntityKill(GetUpdatedEntityID())
end

GuiLayoutBeginVertical(gui, 50, 100)
GuiOptionsAddForNextWidget(gui, GUI_OPTION.Align_HorizontalCenter)
GuiImage(gui, 2, 0, roll_credits_progress, "mods/Mo_Creeps/files/entities/the_end/credits_title_new.png", 1, 1, 1)
for i, line in ipairs(lines) do
  -- Draw black shadow first
  GuiOptionsAddForNextWidget(gui, GUI_OPTION.Align_HorizontalCenter)
  GuiColorSetForNextWidget(gui, 0, 0, 0, 1)
  GuiText(gui, 0, 0, line)
  -- Now the actual text at the same position minus one y
  local clicked, right_clicked, hovered, x, y, width, height, draw_x, draw_y, draw_width, draw_height = GuiGetPreviousWidgetInfo(gui)
  GuiOptionsAddForNextWidget(gui, GUI_OPTION.Layout_NoLayouting)
  GuiText(gui, x, y-1, line)
end
GuiLayoutEnd(gui)