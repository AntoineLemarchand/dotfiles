-- https://dev.to/mr_destructive/configure-neovim-in-lua-4can
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- split nav
map('n', '<C-h>', ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>")
map('n', '<C-j>', ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>")
map('n', '<C-k>', ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>")
map('n', '<C-l>', ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>")

-- fzf
map('n', '<leader>f', ':Telescope find_files<CR>')
map('n', '<leader>b', ':Telescope buffers<CR>')
map('n', '<leader>m', ':Mason<CR>')

-- tmux terminal integration
map('n', '<leader>vp', ':VimuxPromptCommand<CR>')
map('n', '<leader>vl', ':VimuxRunLastCommand<CR>')
map('n', '<Leader>vi', ':VimuxInspectRunner<CR>')
map('n', '<Leader>vz', ':VimuxZoomRunner<CR>')

-- quick config
map('n', '<Leader>vv', ':e $MYVIMRC<CR>')

-- tab switch
map('n', '<Leader>tt', ':tabnext<CR>')
map('n', '<Leader>tr', ':tabprevious<CR>')
