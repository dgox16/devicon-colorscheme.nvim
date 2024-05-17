local devicon_highlights = require("devicon-colorscheme.highlights")

local M = {}

function M.apply()
    devicon_highlights.setup()
end

M.setup = require("devicon-colorscheme.config").setup

return M
