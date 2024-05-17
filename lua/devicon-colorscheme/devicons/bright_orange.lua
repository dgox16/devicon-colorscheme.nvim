local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconRs",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeBrightOrange" }
    end

    return highlights
end

return M
