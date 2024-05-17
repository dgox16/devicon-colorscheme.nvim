local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconJs",
        "DevIconCjs",
        "DevIconMjs",
        "DevIconPy",
        "DevIconPyi",
        "DevIconJson",
        "DevIconJson5",
        "DevIconJsonc",
        "DevIconEnv",
        "DevIconTypeScriptDeclaration",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeYellow" }
    end

    return highlights
end

return M
