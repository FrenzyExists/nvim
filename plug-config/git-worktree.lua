require("git-worktree").setup({
    update_on_change = true,
    clearjumps_on_change = true
})

require("telescope").load_extension("git_worktree")
