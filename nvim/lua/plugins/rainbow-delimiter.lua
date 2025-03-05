MiniDeps.add("HiPhish/rainbow-delimiters.nvim")
MiniDeps.later(function()
    require("rainbow-delimiters.setup").setup({
        highlight = {
            "RainbowDelimiterBlack",
            "RainbowDelimiterRed",
            "RainbowDelimiterYellow",
            "RainbowDelimiterBlue",
            "RainbowDelimiterOrange",
            "RainbowDelimiterGreen",
            "RainbowDelimiterViolet",
            "RainbowDelimiterCyan",
        },
    })
end)
