require("kidpeterpan.packer")
require("kidpeterpan.set")
require("kidpeterpan.remap")
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup {
	ensure_installed = { "gopls" }
}

local augroup = vim.api.nvim_create_augroup
local KidpeterpanGroup = augroup('Kidpeterpan', {})
local autocmd = vim.api.nvim_create_autocmd

autocmd({"BufWritePre"}, {
    group = KidpeterpanGroup,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})
