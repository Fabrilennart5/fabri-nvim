return {
  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup({
        terminals = {
          type_opts = {
            float = {
              relative = "editor",
              row = 0.15,
              col = 0.075,
              width = 0.85,
              height = 0.7,
            },
          },
        },
      })

      local terminal = require("nvterm.terminal")
      local opts = { noremap = true, silent = true }

      -- Mapea <Leader>t (espacio + t) para abrir/cerrar la terminal flotante
      vim.keymap.set({ "n", "t" }, "<Leader>t", function()
        terminal.toggle("float")
      end, opts)
    end,
  },
}
