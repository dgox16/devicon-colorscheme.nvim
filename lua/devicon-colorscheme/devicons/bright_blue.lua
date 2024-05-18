local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconTailwindConfig",
        "DevIconDocx",
        "DevIconNix",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeBrightBlue" }
    end

    return highlights
end

return M
