local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconPyc",
        "DevIconPyd",
        "DevIconPyo",
        "DevIconSvg",
        "DevIconCjs",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeBrightYellow" }
    end

    return highlights
end

return M
