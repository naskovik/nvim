return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "lua",
                "rust"
            },
            sunc_install = false,
            auto_intall = true,
            indent = { enable = true },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { "markdown" }
            }
        })
    end

}
