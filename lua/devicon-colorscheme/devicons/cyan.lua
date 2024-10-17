local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconCpp",
        "DevIconHyprland",
        "DevIconRobotsTxt",
        "DevIconHttp",
        "DevIconHypridle",
        "DevIconHyprlock",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeCyan" }
    end

    return highlights
end

return M
