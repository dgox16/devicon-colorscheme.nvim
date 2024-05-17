local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconJs",
        "DevIconPy",
        "DevIconJson",
        "DevIconJson5",
        "DevIconEnv",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeYellow" }
    end

    return highlights
end

return M
