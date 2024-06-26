local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconTxt",
        "DevIconZsh",
        "DevIconZshenv",
        "DevIconZshprofile",
        "DevIconZshrc",
        "DevIconBash",
        "DevIconTex",
        "DevIconCsv",
        "DevIconVim",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeGreen" }
    end

    return highlights
end

return M
