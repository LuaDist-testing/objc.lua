local objc = require "objc/init"

objc.import "AppKit"

local NSPasteboardTypeString = "public.utf8-plain-text"

local pasteboard = objc.NSPasteboard:generalPasteboard()
pasteboard:declareTypes_owner_(objc.ns{NSPasteboardTypeString}, nil)

function get()
  return pasteboard:stringForType_(NSPasteboardTypeString)
end

function set(text)
  local oldValue = get()
  pasteboard:setString_forType_(text, NSPasteboardTypeString)
  return oldValue
end



set('Hello World!')

local contents = get()
print(contents) -- => 'Hello World!'
