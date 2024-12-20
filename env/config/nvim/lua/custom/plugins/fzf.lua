return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({})

    local fzf = require("fzf-lua")
    vim.keymap.set("n", "<leader>sh", fzf.help_tags, { desc = "[S]earch [H]elp" })
    vim.keymap.set("n", "<leader>sk", fzf.keymaps, { desc = "[S]earch [K]eymaps" })
    vim.keymap.set("n", "<leader>sf", fzf.files, { desc = "[S]earch [F]iles" })
    vim.keymap.set("n", "<leader>ss", fzf.builtin, { desc = "[S]earch [S]elect Fzf-Lua" })
    vim.keymap.set("n", "<leader>sw", fzf.grep_cword, { desc = "[S]earch current [W]ord" })
    vim.keymap.set("n", "<leader>sg", fzf.live_grep, { desc = "[S]earch by [G]rep" })
    vim.keymap.set("n", "<leader>sd", fzf.diagnostics_workspace, { desc = "[S]earch [D]iagnostics" })
    vim.keymap.set("n", "<leader>sr", fzf.resume, { desc = "[S]earch [R]esume" })
    vim.keymap.set("n", "<leader>s.", fzf.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
    vim.keymap.set("n", "<leader><leader>", fzf.buffers, { desc = "[ ] Find existing buffers" })
    vim.keymap.set("n", "<leader>/", fzf.blines, { desc = "[/] Fuzzily search in current buffer" })
    vim.keymap.set("n", "<leader>s/", fzf.live_grep, { desc = "[S]earch [/] in Open Files" })

    -- Shortcut for searching your Neovim configuration files
    vim.keymap.set("n", "<leader>sn", function()
      fzf.files({ cwd = vim.fn.stdpath("config") })
    end, { desc = "[S]earch [N]eovim files" })
  end
}
