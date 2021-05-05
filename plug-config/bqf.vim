hi default link BqfPreviewFloat Normal
hi default link BqfPreviewBorder Normal
hi default link BqfPreviewCursor Cursor
hi default link BqfPreviewRange Search

lua <<EOF
require('bqf').setup({
    auto_enable = true,
    preview = {
        win_height = 12,
        win_vheight = 12,
        delay_syntax = 10,
        border_chars = {'┃', '┃', '━', '━', '┏', '┓', '┗', '┛', '█'}
    },
    func_map = {
        vsplit = '',
        ptogglemode = 'z,',
        stoggleup = ''
    },
    filter = {
        fzf = {
            action_for = {['ctrl-v'] = 'split'},
            extra_opts = {'--bind', 'ctrl-o:toggle-all', '--prompt', '> '}
        }
    }
})
EOF
