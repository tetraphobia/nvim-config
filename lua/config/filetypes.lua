return function()
    -- Verilog 
    vim.api.nvim_create_autocmd(
        {"BufNewFile", "BufRead"}, {
            pattern = {"*.v"},
            command = "set filetype=verilog",
        }
    )

    -- Systemverilog 
    vim.api.nvim_create_autocmd(
        {"BufNewFile", "BufRead"}, {
            pattern = {"*.sv"},
            command = "set filetype=systemverilog",
        }
    )
end
