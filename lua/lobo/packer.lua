local status, packer = pcall(require, "packer")
if (not status) then
	print("Packer is not installed")
	return
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim' -- Packer self management

    use 'folke/tokyonight.nvim' -- Tokyo Night Theme

    use 'hoob3rt/lualine.nvim' -- Status line

    use 'nvim-lua/plenary.nvim'

    -- LSP configs
    use 'onsails/lspkind-nvim'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'L3MON4D3/LuaSnip'
    use 'glepnir/lspsaga.nvim' -- LSP UIs

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    use 'norcalli/nvim-colorizer.lua'

    use 'akinsho/nvim-bufferline.lua'

    use 'lewis6991/gitsigns.nvim'

    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'

    use 'kyazdani42/nvim-web-devicons'

    use {
        'folke/zen-mode.nvim',
        config = function()
            require("zen-mode").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end}
    use 'dinhhuy258/git.nvim'
end)
