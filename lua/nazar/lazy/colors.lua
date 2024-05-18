function ColorDeezPencils(color)

    color = color or "base16-catppuccin-macchiato"
    vim.cmd.colorscheme(color)

--    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {


    {
        "tinted-theming/base16-vim",
        config = function()
            ColorDeezPencils()
        end
    },


    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("cyberdream").setup({
                -- Recommended - see "Configuring" below for more config options
                transparent = false,
                italic_comments = true,
                hide_fillchars = true,
                borderless_telescope = true,
                terminal_colors = true,
                theme = {
                    variant = "light"
                }
            })
        end,
    },

    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        config = function()
--            require 'nordic' .load()
        end
    }


}
