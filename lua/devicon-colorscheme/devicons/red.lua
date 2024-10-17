local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconGitIgnore",
        "DevIconGitAttributes",
        "DevIconPackageLockJson",
        "DevIconToml",
        "DevIconJava",
        "DevIconSvelte",
        "DevIconSvelteConfig",
        "DevIconNPMrc",
        "DevIconBlade",
        "DevIconNPMIgnore",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeRed" }
    end

    return highlights
end

return M
