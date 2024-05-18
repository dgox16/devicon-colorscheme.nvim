local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconLua",
        "DevIconTypeScript",
        "DevIconTSConfig",
        "DevIconCss",
        "DevIconC",
        "DevIconGo",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeBlue" }
    end

    return highlights
end

return M
