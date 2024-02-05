-- [[ Setting options ]]
vim.o.hlsearch = false -- Set highlight on search
vim.wo.number = true -- Make line numbers default
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.wo.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect,preview'
vim.o.termguicolors = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = nil
vim.cmd([[let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro']])
-- Move line
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- vim.keymap.set("n", "J", "mzJ`z")
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.cmd(':se cursorline')
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
-- Some random globedlygook I'll look into later - Windows.
-- local cmp_nvim_lsp = require "cmp_nvim_lsp"
--
-- require("lspconfig").clangd.setup {
--   on_attach = on_attach,
--   capabilities = cmp_nvim_lsp.default_capabilities(),
--   cmd = {
--     "clangd",
--     "--offset-encoding=utf-16",
--   },
-- }
vim.opt.foldenable = false
-- vim.opt.fillchars = {
--   horiz = '_',
--   stlnc = ' ',
--   vert = '│',
--   fold = '·',
--   diff = '-',
--   fold = " "
-- }
-- Enable folding
vim.cmd('set foldmethod=expr')
vim.cmd('set foldexpr=nvim_treesitter#foldexpr()')
-- Set custom foldtext for better visualization (optional)
vim.cmd([[
function! LuaFoldText()
return substitute(getline(v:foldstart), '{', '▸', 'g') . ' ...'
endfunction
]])
vim.cmd('set foldtext=LuaFoldText()')

-- Set the shell to PowerShell
-- vim.opt.shell = 'powershell.exe'
-- vim.opt.shellcmdflag = '-nologo -noprofile -ExecutionPolicy RemoteSigned -command'
-- vim.opt.shellxquote = ''

-- I love this.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- vim.keymap.set("n", "j", "jzz")
-- vim.keymap.set("n", "k", "kzz")
-- Keep cursor vertically centered and reduce wobbly movements
-- vim.api.nvim_set_keymap('n', 'j', 'jzz', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'k', 'kzz', { noremap = true, silent = true })

-- vim.keymap.set("n", "N", "Nzzzv")
-- vim.keymap.set("n", "n", "nzzzv")

-- Copy line to system clipboard
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.cmd.colorscheme 'catppuccin-macchiato'
-- vim.cmd(':set scrolloff=999')
-- disable netrw

vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 0
vim.g.netrw_winsize = 25
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
