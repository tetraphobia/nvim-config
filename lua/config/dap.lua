return function()
    local dap = require("dap")

    dap.adapters.gdb = {
        type = "executable",
        command = "gdb",
        args = { "-i", "dap", },
    }

    dap.configurations.riscv = {
        {
            name = "Debug RISC-V",
            type = "gdb",
            request = "launch",
            program = function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end,
            cwd = "${workspaceFolder}",
            stopOnEntry = true,
        }
    }
end
