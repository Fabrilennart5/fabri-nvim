-- Retorna una tabla que configura el plugin 'gruvbox.nvim'
return {
    "ellisonleao/gruvbox.nvim", -- Indico que estoy usando el plugin Gruvbox para el esquema de colores
    priority = 1000,            -- Establezco una alta prioridad para asegurarme de que este plugin se cargue primero
    config = function()
        -- Aquí empiezo a configurar el esquema de colores
        vim.o.background = "dark" -- Defino el fondo como oscuro; puedo cambiar a "light" si quiero un fondo claro
        require("gruvbox").setup({ -- Configuro Gruvbox con mis opciones preferidas
            terminal_colors = true, -- Activo los colores en el terminal integrado
            contrast = "",          -- Puedo ajustar el contraste: "hard", "soft" o dejarlo vacío para predeterminado
            transparent_mode = false -- Decido no usar un fondo transparente
        })
        vim.cmd("colorscheme gruvbox") -- Aplico el esquema de colores Gruvbox que configuré
    end,
}
