local objc = require "objc/init"

local now = objc.NSDate:date()
local localizedDate = objc.NSDateFormatter:localizedStringFromDate_dateStyle_timeStyle_(now, 2, 2)

print(localizedDate)
-- => "10. Sep 2017, 13:22:27"
