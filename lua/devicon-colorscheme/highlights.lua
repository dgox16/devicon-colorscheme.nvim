local config = require("devicon-colorscheme.config")
local M = {}

local function load_highlights(highlights)
    for group_name, group_settings in pairs(highlights) do
        vim.api.nvim_set_hl(0, group_name, group_settings)
    end
end

function M.setup()
    local highlightsColorscheme = {
        DevIconColorschemeBlue = { fg = config.colors.blue },
        DevIconColorschemeCyan = { fg = config.colors.cyan },
        DevIconColorschemeGreen = { fg = config.colors.green },
        DevIconColorschemeMagenta = { fg = config.colors.magenta },
        DevIconColorschemeOrange = { fg = config.colors.orange },
        DevIconColorschemePurple = { fg = config.colors.purple },
        DevIconColorschemeRed = { fg = config.colors.red },
        DevIconColorschemeWhite = { fg = config.colors.white },
        DevIconColorschemeYellow = { fg = config.colors.yellow },
        DevIconColorschemeBrightBlue = { fg = config.colors.bright_blue },
        DevIconColorschemeBrightCyan = { fg = config.colors.bright_cyan },
        DevIconColorschemeBrightGreen = { fg = config.colors.bright_green },
        DevIconColorschemeBrightMagenta = { fg = config.colors.bright_magenta },
        DevIconColorschemeBrightOrange = { fg = config.colors.bright_orange },
        DevIconColorschemeBrightPurple = { fg = config.colors.bright_purple },
        DevIconColorschemeBrightRed = { fg = config.colors.bright_red },
        DevIconColorschemeBrightYellow = { fg = config.colors.bright_yellow },
    }
    load_highlights(highlightsColorscheme)

    local colors = require("devicon-colorscheme.config").get_colors()

    for _, color in ipairs(colors) do
        load_highlights(require("devicon-colorscheme.devicons." .. color).get_highlights())
    end
end

return M
