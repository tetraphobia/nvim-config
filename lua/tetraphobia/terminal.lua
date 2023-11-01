function zsh_or_fallback()
    local sh = io.open('/bin/zsh', 'r')
    if sh~= nil then
        io.close(sh) return "zsh" else return "bash"
    end
end

local SHELL = zsh_or_fallback()

vim.keymap.set('n', '<leader>t', function()
    vim.cmd.edit('term://' .. SHELL)
end)
