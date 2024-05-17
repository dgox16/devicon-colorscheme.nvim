local M = {}

function M.get_highlights()
    local highlightsDevIcon = {}

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeBrightMagenta" }
    end

    return highlights
end

return M
