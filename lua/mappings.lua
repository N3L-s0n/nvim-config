vim.api.nvim_set_keymap('n', '[b', ':bprevious<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', ']b', ':bnext<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap=true})
vim.keymap.set('n', 'asdf', function()
    local buffers = vim.api.nvim_list_bufs()
    local counter = 0
    for i, buffer in pairs(buffers) do
        if vim.api.nvim_buf_is_loaded(buffer) and vim.api.nvim_buf_get_option(buffer, 'buflisted') then
            counter = counter + 1
        end
    end
    return counter > 1 and ':bp<bar>bd #<CR>' or ':enew<bar>bd #<CR>'
end, {expr = true})


local function check_buffers_left()
    local buffers = vim.api.nvim_list_bufs()
    local counter = 0
    for i, buffer in pairs(buffers) do
        if vim.api.nvim_buf_is_loaded(buffer) and vim.api.nvim_buf_get_option(buffer, 'buflisted') then
            counter = counter + 1
        end
    end
    return counter > 1
end
