local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconPackageJson",
        "DevIconAstro",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeBrightRed" }
    end

    return highlights
end

return M
