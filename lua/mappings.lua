local map = vim.keymap.set
local silent = { silent = true }
local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }

map("n", "<leader>w", ":w!<CR>", silent)
map("n", "<leader>x", ":x<CR>", silent)
map("n", "<leader>qq", ":bd<CR>", silent)
map("n", "<C-j>", ":bp<CR>", silent)
map("n", "<C-k>", ":bn<CR>", silent)
map("i", "jk", "<ESC>:w!<CR>", silent)
map("n", "<leader>cc", ":nohl<CR>", silent)

-- Coc Config
map("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
map("i", "<c-space>", "coc#refresh()", { silent = true, expr = true })
map("n", "gd", "<Plug>(coc-definition)", { silent = true })
map("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
map("n", "gi", "<Plug>(coc-implementation)", { silent = true })
map("n", "gr", "<Plug>(coc-references)", { silent = true })
map("n", "<leader>rn", "<Plug>(coc-rename)", { silent = true })
map("x", "<leader>f", "<Plug>(coc-format-selected)", { silent = true })
map("n", "<leader>f", "<Plug>(coc-format-selected)", { silent = true })
map("n", "K", '<CMD>lua _G.show_docs()<CR>', { silent = true })

-- NERDTree
map("n", "<leader>nt", ":NvimTreeOpen<CR>", silent)

-- Markdown preview
map("n", "<leader>md", ":MarkdownPreview<CR>")
map("n", "<leader>mds", ":MarkdownPreviewStop<CR>")

-- Comment
map('n', '<leader>c', ':CommentToggle<CR>')
