local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconZip",
        "DevIconGz",
        "DevIconPyc",
        "DevIconPyd",
        "DevIconPyo",
        "DevIconSvg",
        "DevIconCjs",
        "DevIconMobi",
        "DevIconFavicon",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeBrightYellow" }
    end

    return highlights
end

return M
