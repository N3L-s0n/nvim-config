local buffers = vim.api.nvim_list_bufs()
local counter = 0
for i, buffer in pairs(buffers) do
    if vim.api.nvim_buf_is_loaded(buffer) and vim.api.nvim_buf_get_option(buffer, 'buflisted') then
        counter = counter + 1
        print(i..' '..buffer)
        print(vim.api.nvim_buf_get_name(buffer))
    end
end
print('count: '..counter)
