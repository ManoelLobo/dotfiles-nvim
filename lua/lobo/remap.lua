local nnoremap = require("lobo.keymap").nnoremap

nnoremap("<leader>xp", ":Telescope file_browser<CR>")
nnoremap("<leader>ted", ":tabe<CR>")

nnoremap("<leader>sl", ":split<CR><C-w>w")
nnoremap("<leader>sc", ":vsplit<CR><C-w>w")
