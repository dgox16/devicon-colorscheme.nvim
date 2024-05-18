local M = {}

--- Converts RGB color values to HSL (Hue, Saturation, Lightness).
--- The RGB values should be in the range [0, 255]
--- The returned HSL values are in the range [0, 1].
--- @param r number: Red component of the color.
--- @param g number: Green component of the color.
--- @param b number: Blue component of the color.
--- @return table: Hue, Saturation and Lightness of the color.
function M.rgb_to_hsl(r, g, b)
	r, g, b = r / 255, g / 255, b / 255
	local max, min = math.max(r, g, b), math.min(r, g, b)
	local h, s, l
	l = (max + min) / 2
	if max == min then
		h, s = 0, 0 -- achromatic
	else
		local d = max - min
		if l > 0.5 then
			s = d / (2 - max - min)
		else
			s = d / (max + min)
		end
		if max == r then
			h = (g - b) / d
			if g < b then
				h = h + 6
			end
		elseif max == g then
			h = (b - r) / d + 2
		elseif max == b then
			h = (r - g) / d + 4
		end
		h = h / 6
	end
	return h, s, l
end

--- Converts HSL color values to RGB (Red, Green, Blue).
--- @param hex string: Hexadecimal color value.
function M.hex_to_rgb(hex)
	hex = hex:gsub("#", "")

	return {
		tonumber(hex:sub(1, 2), 16),
		tonumber(hex:sub(3, 4), 16),
		tonumber(hex:sub(5, 6), 16),
	}
end

--- Computes the distance between two colors.
--- @param color1 table: RGB values of the first color.
--- @param color2 table: RGB values of the second color.
--- @param bias table: Bias for each color component.
--- @return number: Distance between the two colors.
function M.color_distance(color1, color2, bias)
	local h1, s1, l1 = M.rgb_to_hsl(color1[1], color1[2], color1[3])
	local h2, s2, l2 = M.rgb_to_hsl(color2[1], color2[2], color2[3])
	local dh = (h1 - h2) * bias[1] -- gives more weight to hue
	local ds = (s1 - s2) * bias[2]
	local dl = (l1 - l2) * bias[3]
	return math.sqrt(dh * dh + ds * ds + dl * dl)
end

--- Converts RGB color values to hexadecimal.
--- @param rgb table: RGB values of the color.
--- @return string: Hexadecimal value of the color.
function M.rgb_to_hex(rgb)
	return string.format("#%02x%02x%02x", rgb[3], rgb[2], rgb[1])
end

--- Computes the nearest color from the default colors.
--- @param color string: Hexadecimal value of the color.
--- @param colors_table table: Table of colors to compare with.
--- @param bias table: Bias for each color component. Can be nil.
--- @return string: Hexadecimal value of the nearest color.
function M.get_nearest_color(color, colors_table, bias)
	local nearest_color = colors_table.white
	local nearest_distance = math.huge
	local rgb_color = M.hex_to_rgb(color)

	if bias == nil then
		bias = { 1, 1, 1 }
	end

	for _, value in pairs(colors_table) do
		local rgb_value = M.hex_to_rgb(value)

		local distance = M.color_distance(rgb_value, rgb_color, bias)

		if distance < nearest_distance then
			nearest_color = value
			nearest_distance = distance
		end
	end

	return nearest_color
end

return M
