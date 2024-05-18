local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconHtml",
        "DevIconMp4",
        "DevIconRs",
        "DevIconXml",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeOrange" }
    end

    return highlights
end

return M
