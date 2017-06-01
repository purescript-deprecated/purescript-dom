module DOM.HTML.Event.EventTypes where

import DOM.Event.Types (EventType(..))

abort :: EventType
abort = EventType "abort"

animationend :: EventType
animationend = EventType "animationend"

animationiteration :: EventType
animationiteration = EventType "animationiteration"

animationstart :: EventType
animationstart = EventType "animationstart"

beforeunload :: EventType
beforeunload = EventType "beforeunload"

blur :: EventType
blur = EventType "blur"

change :: EventType
change = EventType "change"

click :: EventType
click = EventType "click"

complete :: EventType
complete = EventType "complete"

compositionend :: EventType
compositionend = EventType "compositionend"

compositionstart :: EventType
compositionstart = EventType "compositionstart"

compositionupdate :: EventType
compositionupdate = EventType "compositionupdate"

contextmenu :: EventType
contextmenu = EventType "contextmenu"

copy :: EventType
copy = EventType "copy"

cut :: EventType
cut = EventType "cut"

dblclick :: EventType
dblclick = EventType "dblclick"

drag :: EventType
drag = EventType "drag"

dragend :: EventType
dragend = EventType "dragend"

dragenter :: EventType
dragenter = EventType "dragenter"

dragexit :: EventType
dragexit = EventType "dragexit"

dragleave :: EventType
dragleave = EventType "dragleave"

dragover :: EventType
dragover = EventType "dragover"

dragstart :: EventType
dragstart = EventType "dragstart"

drop :: EventType
drop = EventType "drop"

error :: EventType
error = EventType "error"

focus :: EventType
focus = EventType "focus"

focusin :: EventType
focusin = EventType "focusin"

focusout :: EventType
focusout = EventType "focusout"

hashchange :: EventType
hashchange = EventType "hashchange"

input :: EventType
input = EventType "input"

invalid :: EventType
invalid = EventType "invalid"

keydown :: EventType
keydown = EventType "keydown"

keypress :: EventType
keypress = EventType "keypress"

keyup :: EventType
keyup = EventType "keyup"

load :: EventType
load = EventType "load"

loadeddata :: EventType
loadeddata = EventType "loadeddata"

loadedmetadata :: EventType
loadedmetadata = EventType "loadedmetadata"

loadend :: EventType
loadend = EventType "loadend"

loadstart :: EventType
loadstart = EventType "loadstart"

message :: EventType
message = EventType "message"

mousedown :: EventType
mousedown = EventType "mousedown"

mouseenter :: EventType
mouseenter = EventType "mouseenter"

mouseleave :: EventType
mouseleave = EventType "mouseleave"

mousemove :: EventType
mousemove = EventType "mousemove"

mouseout :: EventType
mouseout = EventType "mouseout"

mouseover :: EventType
mouseover = EventType "mouseover"

mouseup :: EventType
mouseup = EventType "mouseup"

open :: EventType
open = EventType "open"

pagehide :: EventType
pagehide = EventType "pagehide"

pageshow :: EventType
pageshow = EventType "pageshow"

paste :: EventType
paste = EventType "paste"

pause :: EventType
pause = EventType "pause"

play :: EventType
play = EventType "play"

playing :: EventType
playing = EventType "playing"

popstate :: EventType
popstate = EventType "popstate"

progress :: EventType
progress = EventType "progress"

ratechange :: EventType
ratechange = EventType "ratechange"

readystatechange :: EventType
readystatechange = EventType "readystatechange"

reset :: EventType
reset = EventType "reset"

resize :: EventType
resize = EventType "resize"

scroll :: EventType
scroll = EventType "scroll"

seeked :: EventType
seeked = EventType "seeked"

seeking :: EventType
seeking = EventType "seeking"

select :: EventType
select = EventType "select"

show :: EventType
show = EventType "show"

stalled :: EventType
stalled = EventType "stalled"

submit :: EventType
submit = EventType "submit"

suspend :: EventType
suspend = EventType "suspend"

timeout :: EventType
timeout = EventType "timeout"

timeupdate :: EventType
timeupdate = EventType "timeupdate"

touchcancel :: EventType
touchcancel = EventType "touchcancel"

touchend :: EventType
touchend = EventType "touchend"

touchenter :: EventType
touchenter = EventType "touchenter"

touchleave :: EventType
touchleave = EventType "touchleave"

touchmove :: EventType
touchmove = EventType "touchmove"

touchstart :: EventType
touchstart = EventType "touchstart"

transitionend :: EventType
transitionend = EventType "transitionend"

unload :: EventType
unload = EventType "unload"

visibilitychange :: EventType
visibilitychange = EventType "visibilitychange"

wheel :: EventType
wheel = EventType "wheel"
