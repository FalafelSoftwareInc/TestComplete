function Test1()
{
  var wndNotepad;
  var edit;
  wndNotepad = Aliases.notepad.wndNotepad;
  edit = wndNotepad.Edit;
  edit.Click(21, 21);
  edit.Click(17, 380);
  edit.Click(378, 378);
  edit.Click(377, 27);
  wndNotepad.Drag(272, 16, -75, 0);
}

function GeneralEvents_OnLogEvent(Sender, LogParams)
{
  LogParams.Locked = true; 
}