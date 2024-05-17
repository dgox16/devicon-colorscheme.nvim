local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconHurl",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeMagenta" }
    end

    return highlights
end

return M
