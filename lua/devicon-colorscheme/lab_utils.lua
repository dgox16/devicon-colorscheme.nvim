local M = {}

--- Converts a hexadecimal color value to RGB.
--- The hexadecimal value should start with a '#' and be followed by 6 hexadecimal digits.
--- The returned RGB values are in the range [0, 255].
--- @param hex string: Hexadecimal value of the color.
--- @return table: RGB values of the color.
function M.hex_to_rgb(hex)
	hex = hex:gsub("#", "")
	return {
		tonumber(hex:sub(1, 2), 16),
		tonumber(hex:sub(3, 4), 16),
		tonumber(hex:sub(5, 6), 16),
	}
end

--- Converts RGB color values to XYZ.
--- The RGB values should be in the range [0, 255] and they will be scaled down to the range [0, 1].
--- The conversion formula includes a gamma correction.
--- The returned XYZ values are in the range [0, 100].
--- @param r number: Red component of the color.
--- @param g number: Green component of the color.
--- @param b number: Blue component of the color.
--- @return number: X component of the color.
--- @return number: Y component of the color.
--- @return number: Z component of the color.
function M.rgb_to_xyz(r, g, b)
	r, g, b = r / 255, g / 255, b / 255

	if r > 0.04045 then
		r = ((r + 0.055) / 1.055) ^ 2.4
	else
		r = r / 12.92
	end
	if g > 0.04045 then
		g = ((g + 0.055) / 1.055) ^ 2.4
	else
		g = g / 12.92
	end
	if b > 0.04045 then
		b = ((b + 0.055) / 1.055) ^ 2.4
	else
		b = b / 12.92
	end

	r, g, b = r * 100, g * 100, b * 100

	local x = r * 0.4124 + g * 0.3576 + b * 0.1805
	local y = r * 0.2126 + g * 0.7152 + b * 0.0722
	local z = r * 0.0193 + g * 0.1192 + b * 0.9505

	return x, y, z
end

--- Converts XYZ color values to LAB.
--- The XYZ values should be in the range [0, 100] and they will be scaled down to the range [0, 1].
--- The returned LAB values are in the range [0, 100] for L and [-128, 127] for A and B.
--- @param x number: X component of the color.
--- @param y number: Y component of the color.
--- @param z number: Z component of the color.
--- @return number: L component of the color.
--- @return number: A component of the color.
--- @return number: B component of the color.
function M.xyz_to_lab(x, y, z)
	x, y, z = x / 95.047, y / 100.000, z / 108.883

	if x > 0.008856 then
		x = x ^ (1 / 3)
	else
		x = (7.787 * x) + (16 / 116)
	end
	if y > 0.008856 then
		y = y ^ (1 / 3)
	else
		y = (7.787 * y) + (16 / 116)
	end
	if z > 0.008856 then
		z = z ^ (1 / 3)
	else
		z = (7.787 * z) + (16 / 116)
	end

	local l = (116 * y) - 16
	local a = 500 * (x - y)
	local b = 200 * (y - z)

	return l, a, b
end

function M.rgb_to_lab(r, g, b)
	local x, y, z = M.rgb_to_xyz(r, g, b)
	return M.xyz_to_lab(x, y, z)
end

--- Computes the distance between two colors.
--- @param color1 table: RGB values of the first color.
--- @param color2 table: RGB values of the second color.
--- @param bias table: Bias for each color component.
--- @return number: Distance between the two colors.
function M.color_distance(color1, color2, bias)
	local l1, a1, b1 = M.rgb_to_lab(color1[1], color1[2], color1[3])
	local l2, a2, b2 = M.rgb_to_lab(color2[1], color2[2], color2[3])

	local dl = math.abs(l2 - l1) * bias[1]
	local da = math.abs(a2 - a1) * bias[2]
	local db = math.abs(b2 - b1) * bias[3]

	return math.sqrt(dl * dl + da * da + db * db)
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
