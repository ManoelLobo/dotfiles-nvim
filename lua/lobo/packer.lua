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

    -- LSP configs
    use 'nvim-lua/plenary.nvim'
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
end)
