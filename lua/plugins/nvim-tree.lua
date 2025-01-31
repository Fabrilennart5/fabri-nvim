return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- Necesario para los iconos
  },
  config = function()
    -- Configuro nvim-tree con iconos personalizados
    require("nvim-tree").setup({
      renderer = {
        icons = {
          glyphs = {
            -- Icono por defecto para archivos
            default = "", -- Puedo cambiarlo a cualquier otro icono

            -- Iconos para carpetas
            folder = {
              arrow_closed = "", -- Flecha para carpeta cerrada
              arrow_open = "",   -- Flecha para carpeta abierta
              default = "",      -- Icono por defecto para carpetas
              open = "",         -- Icono para carpetas abiertas
              empty = "",        -- Icono para carpetas vacías
              empty_open = "",   -- Icono para carpetas vacías abiertas
            },

            -- Iconos para Git (los personalizo para que sean más simples)
            git = {
              unstaged = "●",     -- Cambios no guardados (usaré un círculo)
              staged = "✓",       -- Cambios guardados (usaré un check)
              unmerged = "",     -- Conflictos de fusión (icono de Git)
              renamed = "➜",      -- Archivos renombrados (una flecha)
              untracked = "?",    -- Archivos no rastreados (un signo de pregunta)
              deleted = "",      -- Archivos eliminados (un icono de basura)
              ignored = "◌",      -- Archivos ignorados (un círculo vacío)
            },
          },
          show = {
            git = true, -- Activo los iconos de Git (si no los quiero, lo cambio a false)
          },
        },
      },
    })

    -- Mapeo personalizado para abrir/cerrar nvim-tree con <Leader>e
    vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end,
}
