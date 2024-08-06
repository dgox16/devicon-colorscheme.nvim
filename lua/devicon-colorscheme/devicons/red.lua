local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconGitIgnore",
        "DevIconPackageLockJson",
        "DevIconToml",
        "DevIconJava",
        "DevIconSvelte",
        "DevIconSvelteConfig",
        "DevIconNPMrc",
        "DevIconNPMIgnore",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeRed" }
    end

    return highlights
end

return M
