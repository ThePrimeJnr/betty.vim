local M = {}

function M.run_betty()
    local original_filename = vim.fn.expand("%:t")
    if vim.fn.filereadable(original_filename) == 1 then
        -- Create a temporary file path in /tmp directory
        local tmp_filename = "/tmp/" .. original_filename
        vim.cmd("silent w! " .. tmp_filename) -- Save a copy to the /tmp directory

        local output = vim.fn.system("betty " .. tmp_filename) -- Run Betty on the temporary copy
        local lines = vim.split(output, "\n")

        local buffer_number = vim.fn.bufnr()
        local namespace_id = vim.api.nvim_create_namespace("betty_checker_errors")

        -- Clear existing signs and virtual text in the namespace
        vim.fn.sign_unplace("LinterWarning", { buffer = buffer_number })
        vim.api.nvim_buf_clear_namespace(buffer_number, namespace_id, 0, -1)

        vim.cmd("highlight LinterWarning guifg=#FFCC00") -- Custom color for warning icon

        vim.fn.sign_define("LinterWarning", { text = "󰜺", texthl = "LinterWarning" }) -- Warning icon

        for _, line in ipairs(lines) do
            local _, _, line_number, message = string.find(line, "(%d+): (.+)")
            if line_number and message then
                line_number = tonumber(line_number)
                if string.find(message, "ERROR") then
                    vim.fn.sign_place(0, "LinterWarning", "LinterWarning", original_filename, { lnum = line_number, priority = 10 }) -- Error icon
                    vim.api.nvim_buf_set_virtual_text(
                        buffer_number,
                        namespace_id,
                        line_number - 1,
                        { { " " .. message, "LinterWarning" } }, -- Error text with icon
                        {}
                    )
                else
                    vim.fn.sign_place(0, "LinterWarning", "LinterWarning", original_filename, { lnum = line_number, priority = 10 })
                    vim.api.nvim_buf_set_virtual_text(
                        buffer_number,
                        namespace_id,
                        line_number - 1,
                        { { " " .. message, "LinterWarning" } }, -- Warning text with icon
                        {}
                    )
                end
            end
        end
    end
end

function M.clear_linter()
    local buffer_number = vim.fn.bufnr()
    local namespace_id = vim.api.nvim_create_namespace("betty_checker_errors")

    vim.fn.sign_unplace("LinterWarning", { buffer = buffer_number })
    vim.api.nvim_buf_clear_namespace(buffer_number, namespace_id, 0, -1)
end

return M

