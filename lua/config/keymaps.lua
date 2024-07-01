local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Search stuff
keymap.set('n', '<Esc>', ':nohlsearch<CR>', opts)

keymap.set('n', '<Tab>', '>>', opts)
keymap.set('n', '<S-Tab>', '<<', opts)
keymap.set("n", "<leader>l", ":Lazy<CR>", opts) -- Navigate Left

-- Navigation  

keymap.set('i', '<C-l>', '<Right>', opts)
keymap.set('i', '<C-h>', '<Left>', opts)
keymap.set('i', '<C-k>', '<Up>', opts)
keymap.set('i', '<C-j>', '<Down>', opts)

keymap.set('n', '<C-l>', '<C-w>l', opts)
keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-k>', '<C-w>k', opts)
keymap.set('n', '<C-j>', '<C-w>j', opts)

-- My undiagnosed autism likes it this way.
keymap.set('i', "'", "''<Left>", opts)
keymap.set('i', '"', '""<Left>', opts)
keymap.set('i', '(', '()<Left>', opts)
keymap.set('i', '{', '{}<Left>', opts)

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

