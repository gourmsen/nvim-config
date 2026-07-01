-- last position
vim.api.nvim_create_autocmd("BufReadPost", {
    callback = function(args)
        local pos = vim.api.nvim_buf_get_mark(args.buf, '"')
        local line_count = vim.api.nvim_buf_line_count(args.buf)

        if pos[1] > 0 and pos[1] <= line_count then
            pcall(vim.api.nvim_win_set_cursor, 0, pos)
        end
    end,
})
