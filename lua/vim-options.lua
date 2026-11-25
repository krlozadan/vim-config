vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- Use spaces instead of a tab character
vim.opt.softtabstop = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Copy path of current file to the clipboard
vim.keymap.set("n", "<leader>yr", function()
    local rel_path = vim.fn.expand("%")
    if rel_path == "" then
        vim.notify("No file associated with buffer", vim.log.levels.WARN)
        return
    end
    vim.fn.setreg("*", rel_path)
    vim.notify("Copied path: " .. rel_path, vim.log.levels.INFO)
end)
