return {
    'ThePrimeagen/harpoon',
    config = function ()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        vim.keymap.set('n', '<leader>ha', function() mark.add_file() end, { desc = '[H]arpoon [A]dd File' })
        vim.keymap.set('n', '<leader>hv', function() ui.toggle_quick_menu() end, { desc = '[H]arpoon [V]iew Menu' })
        vim.keymap.set('n', '<a-a>', function() ui.nav_file(1) end, { desc = 'Harpoon File 1' })
        vim.keymap.set('n', '<a-s>', function() ui.nav_file(2) end, { desc = 'Harpoon File 2' })
        vim.keymap.set('n', '<a-d>', function() ui.nav_file(3) end, { desc = 'Harpoon File 3' })
        vim.keymap.set('n', '<a-f>', function() ui.nav_file(4) end, { desc = 'Harpoon File 4' })
        vim.keymap.set('n', '<a-n>', function() ui.nav_next() end, { desc = 'Harpoon to Next' })
        vim.keymap.set('n', '<a-p>', function() ui.nav_prev() end, { desc = 'Harpoon to Previous' })
    end
}
