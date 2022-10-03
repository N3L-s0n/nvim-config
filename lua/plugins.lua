return require('packer').startup(function()
	use 'wbthomason/packer.nvim' -- Package manager
	use 'neovim/nvim-lspconfig' -- configurations for LSP client
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    
    -- Luanisp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp

    -- use 'folke/lsp-colors.nvim' -- LSP diagnostics highlight

    use 'wojciechkepka/vim-github-dark' -- Github theme
	use 'projekt0n/github-nvim-theme' -- LSP compatible Github theme

	use 'kyazdani42/nvim-web-devicons'

    -- Lualine
	use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = false }
    }

    -- File Explorer
    use{
        'kyazdani42/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons', opt = false },
        config   = function() require'nvim-tree'.setup {} end
    }

      use 'jvirtanen/vim-hcl'
end)

