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
    use 'onsails/lspkind-nvim'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'neovim/nvim-lspconfig'
end)
