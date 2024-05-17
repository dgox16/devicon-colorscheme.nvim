local config = {}

local default_config = {
    colors = {
        blue = "#0000ff",
        cyan = "#00ffe6",
        green = "#00ff00",
        magenta = "#ff00ff",
        orange = "#ff8000",
        purple = "#6e00ff",
        red = "#ff0000",
        white = "#ffffff",
        yellow = "#ffff00",
        bright_blue = "#00a1ff",
        bright_cyan = "#00ffe6",
        bright_green = "#00ff00",
        bright_magenta = "#ff00ff",
        bright_orange = "#ff8000",
        bright_purple = "#6e00ff",
        bright_red = "#ff0000",
        bright_yellow = "#ffff00",
    },
}

function config.get_colors()
    local color_modules = {}
    for color, _ in pairs(default_config.colors) do
        table.insert(color_modules, color)
    end
    return color_modules
end

function config.setup(opts)
    if opts == nil then
        return
    end

    for k, v in pairs(opts) do
        if k == "colors" then
            for key, color in pairs(v) do
                if default_config.colors[key] ~= nil then
                    default_config.colors[key] = color
                end
            end
        end
    end
end

return setmetatable(config, { __index = default_config })
