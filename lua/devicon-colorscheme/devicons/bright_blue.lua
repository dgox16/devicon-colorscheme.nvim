local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconTailwindConfig",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeBrightBlue" }
    end

    return highlights
end

return M