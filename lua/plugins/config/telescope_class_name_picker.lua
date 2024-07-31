local finders = require('telescope.finders')
local pickers = require('telescope.pickers')
local conf = require('telescope.config').values

local class_name_picker = function()
    pickers.new({}, {
        prompt_title = "Classes",
        finder = finders.new_oneshot_job({"find", ".", "-type", "f", "-name", "*.java"}, {entry_maker = function(entry)
            return {
                value = entry,
                display = entry:match("^.+/(.+)$"),
                ordinal = entry
            }
        end}),
        sorter = conf.generic_sorter({}),
    }):find()
end

class_name_picker()
