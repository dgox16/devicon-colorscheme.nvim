local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconPdf",
        "DevIconXlsx",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeBrightGreen" }
    end

    return highlights
end

return M
