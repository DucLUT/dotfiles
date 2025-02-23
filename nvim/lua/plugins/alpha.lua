return {
    "goolord/alpha-nvim",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set header
        dashboard.section.header.val = {
            "███╗   ██╗██╗███╗   ███╗",
            "████╗  ██║██║████╗ ████║",
            "██╔██╗ ██║██║██╔████╔██║",
            "██║╚██╗██║██║██║╚██╔╝██║",
            "██║ ╚████║██║██║ ╚═╝ ██║",
            "╚═╝  ╚═══╝╚═╝╚═╝     ╚═╝",
            "Nihao Toi la Duc!"
        }

        -- Set menu
        dashboard.section.buttons.val = {
            dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
            dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
            dashboard.button("s", "  Settings", ":e $MYVIMRC<CR>"),
            dashboard.button("q", "  Quit", ":qa<CR>"),
        }

        -- Send config to alpha
        alpha.setup(dashboard.opts)
    end,
}