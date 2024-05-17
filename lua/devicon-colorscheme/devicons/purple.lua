local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconSql",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemePurple" }
    end

    return highlights
end

return M
