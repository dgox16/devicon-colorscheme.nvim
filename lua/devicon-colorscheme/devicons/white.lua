local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DeviconMd",
        "DeviconYml",
        "DeviconYaml",
        "DeviconConf",
        "DeviconConfig",
        "DeviconDefault",
        "DevIconTrueTypeFont",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeWhite" }
    end

    return highlights
end

return M
