local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconSql",
        "DevIconLog",
        "DevIconLock",
        "DeviconMd",
        "DevIconMdx",
        "DeviconYml",
        "DeviconYaml",
        "DeviconConf",
        "DeviconConfig",
        "DeviconDefault",
        "DevIconTrueTypeFont",
        "DevIconSh",
        "DevIconIso",
        "DevIconIni",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeWhite" }
    end

    return highlights
end

return M
