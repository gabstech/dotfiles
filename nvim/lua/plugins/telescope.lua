return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<C-o>', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', function() builtin.find_files({ cwd = vim.fn.expand("%:p:h"), hidden = true }) end, {})

    vim.keymap.set('n', '<C-j>', builtin.live_grep, {})
    vim.keymap.set('n', '<C-k>', function() builtin.live_grep({search_dirs={vim.fn.expand("%:p")}}) end, {})

    vim.keymap.set('n', '<C-g>', builtin.git_files, {})
  end
}

