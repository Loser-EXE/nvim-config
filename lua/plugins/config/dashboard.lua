-- http://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=
local os = require("os")
local ascii = require("AsciiArt")
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local date = os.date("*t")

-- Format example: Monday, January 20
local get_todays_date = function()
    local result = {}
    local weekday = ascii.weekdays[date.wday]
    local month = ascii.months[date.month]
    result = ascii.combine(weekday, month)
    result = ascii.combine(result, ascii.num_to_ascii(date.day), true)
    result[7] = ""
    return result
end

dashboard.section.header.val = get_todays_date()

dashboard.section.buttons.val = {
    dashboard.button("l", "󰒲  > Lazy Plugin Manager", ":Lazy<CR>"),
    dashboard.button("g", "  > Find grep", ":Telescope live_grep<CR>"),
    dashboard.button("f", "󰱼  > Find file", ":Telescope find_files<CR>"),
    dashboard.button("c", "  > Open Config", ":Neotree ~/.config/nvim/<CR>:q2<CR>"),
    dashboard.button("t", "  > Open Neotree", ":Neotree<CR>:q2<CR>"),
    dashboard.button("q", "󰈆  > Quit", ":qa<CR>")
}

local minute = date.min
if minute < 10 then
    minute = "0" .. tostring(minute)
end

dashboard.section.footer.val = tostring(os.date("%I")) .. ":" .. minute .. " " .. os.date("%p")
dashboard.opts.layout[1].val = 8


alpha.setup(dashboard.config)
