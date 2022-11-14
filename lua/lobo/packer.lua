local status, packer = pcall(require, "packer")
if (not status) then
	print("Packer is not installed")
	return
end

vim.cmd [[packadd packer.vim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim' -- Packer self management

    use 'folke/tokyonight.nvim' -- Tokyo Night Theme
end)
