local dap = require("dap")

local js = { "javascript", "typescript", "typescriptreact" }

for _, lang in ipairs(js) do
    dap.configurations[lang] = {
        {
            type = "pwa-node",
            request = "launch",
            name = "Launch (Deno)",
            runtimeExecutable = "deno",
            runtimeArgs = {"run", "--inspect-brk", "--allow-all", "${file}"},
            attachSimplePort = 9229,
            cwd = "${workspaceFolder}",
        },
        {
            type = "pwa-node",
            request = "launch",
            name = "Launch (Node)",
            program = "${file}",
            cwd = "${workspaceFolder}",
        },
        {
            type = "pwa-node",
            request = "attach",
            name = "Attach",
            processId = require 'dap.utils'.pick_process,
            cwd = "${workspaceFolder}",
        },
        {
            type = "pwa-chrome",
            request = "launch",
            name = "Start Chrome with \"localhost\"",
            url = "http://localhost:3000",
            webRoot = "${workspaceFolder}",
            userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir"
        }
    }
end
