local M = {}

function M.get_highlights()
    local highlightsDevIcon = {
        "DevIconLua",
        "DevIconTypeScript",
        "DevIconTsx",
        "DevIconTSConfig",
        "DevIconCss",
        "DevIconC",
        "DevIconGo",
        "DevIconFreeLosslessAudioCodec",
        "DevIconMPEG4",
        "DevIconMPEGAudioLayerIII",
        "DevIconDockerfile",
    }

    local highlights = {}
    for _, icon in ipairs(highlightsDevIcon) do
        highlights[icon] = { link = "DevIconColorschemeBlue" }
    end

    return highlights
end

return M
