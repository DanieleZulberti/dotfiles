return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = {'nvim-lua/plenary.nvim'},
    opts = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope git files search' })
        vim.keymap.set('n', '<leader>ps', function()
	        builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)
    end
}
