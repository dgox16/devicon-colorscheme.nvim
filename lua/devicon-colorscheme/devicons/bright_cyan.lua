local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconJsx",
        "DevIconTorrent",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeBrightCyan" }
    end

    return highlights
end

return M
