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
	bias = {
		1,
		1,
		1,
	},
}

function config.setup(opts)
	if opts == nil then
		return
	end

	if opts.colors ~= nil then
		default_config.colors = opts.colors
	end

	if opts.bias ~= nil then
		default_config.bias = opts.bias
	end

	local devicons = require("nvim-web-devicons").get_icons()
	local lab_utils = require("devicon-colorscheme.lab_utils")

	for key_icon, icon_object in pairs(devicons) do
		local nearest_color = lab_utils.get_nearest_color(icon_object.color, default_config.colors, default_config.bias)

		require("nvim-web-devicons").set_icon({
			[key_icon] = {
				icon = icon_object.icon,
				color = nearest_color,
				cterm_color = icon_object.cterm_color,
				name = icon_object.name,
			},
		})
	end
end

return setmetatable(config, { __index = default_config })
