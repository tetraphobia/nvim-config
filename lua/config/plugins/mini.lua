return {
    'echasnovski/mini.nvim',
    config = function()
        require('mini.ai').setup()
        require('mini.align').setup()
        require('mini.comment').setup()
        require('mini.cursorword').setup()
        require('mini.pairs').setup()
        require('mini.git').setup()
        require('mini.diff').setup()
        require('mini.indentscope').setup({
            draw = {
                animation = require('mini.indentscope').gen_animation.none()
            },
            symbol = "|"
        })
        require('mini.notify').setup()
        require('mini.completion').setup({
            delay = {
                completion = 10,
                info = 100,
                signature = 10,
            }
        })
        require('mini.icons').setup()
        require('mini.operators').setup()
        require('mini.surround').setup()
    end
}
