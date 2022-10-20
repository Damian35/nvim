local map = vim.keymap.set
local silent = { silent = true }

map("n", "<leader>q", ":q<CR>", silent)
map("n", "<leader>w", ":w!<CR>", silent)
map("n", "<leader>x", ":x<CR>", silent)
map("n", "<leader>qq", ":bd<CR>", silent)
map("n", "<C-j>", ":bp<CR>", silent)
map("n", "<C-k>", ":bn<CR>", silent)
map("i", "jk", "<ESC>", silent)
map("n", "<leader>cc", ":nohl<CR>", silent)

-- NERDTree
map("n", "<leader>nt", ":NvimTreeOpen<CR>", silent)

-- Markdown preview
map("n", "<leader>md", ":MarkdownPreview<CR>")
map("n", "<leader>mds", ":MarkdownPreviewStop<CR>")

-- Comment
map('n', '<leader>c', ':CommentToggle<CR>')

-- Format
map("n", "<localleader>f", ":Prettier<CR>")
