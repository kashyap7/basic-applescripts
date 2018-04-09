#!/usr/bin/env osascript
tell application "System Events"
  set process_list to the name of every process whose background only is false
end tell

set white_list to {"Script Editor"}
repeat with process_name in process_list
  if process_name is not in white_list then
    tell application process_name to quit
  end if
end repeat