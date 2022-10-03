-- Use 4 spaces tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Github dark colorscheme
 vim.opt.termguicolors = true
-- vim.cmd('colorscheme ghdark')

require('github-theme').setup({
    theme_style = "dark",
    colors = {
        bg = '#0d1117', 
        bg_sidebar = '#0e141b',
    },
})
-- vim.opt.background = 'dark'

-- Show line numbers
vim.opt.number = true

-- Don't ask for '!' when changing buffers and args
vim.opt.hidden = true

vim.opt.completeopt = 'menu,menuone,noselect'


-- Lualine
require('lualine').setup{
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

-- nvim-tree
require'nvim-tree'.setup{
    diagnostics = {
        enable = false,
        show_on_dirs = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    log = {
        enable = false,
        truncate = false,
        types = {
            all = true,
            config = true,
            copy_paste = false,
            git = false,
            profile = false,
        },
    },
    view = {
        width = 40,
    },
}

-- Auto-commands
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = "Vagrantfile",
    command = "set filetype=ruby",
})
