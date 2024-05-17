vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        require("devicon-colorscheme").apply()
    end,
})
