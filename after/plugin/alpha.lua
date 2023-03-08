local present, alpha = pcall(require, "alpha")
if not present then
  return
end

local function button(sc, txt)
  local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

  local opts = {
    position = "center",
    text = txt,
    shortcut = sc,
    cursor = 5,
    width = 36,
    align_shortcut = "right",
    hl = "AlphaButtons",
  }

  return {
    type = "button",
    val = txt,
    on_press = function()
      local key = vim.api.nvim_replace_termcodes(sc_, true, false, true) or ""
      vim.api.nvim_feedkeys(key, "normal", false)
    end,
    opts = opts,
  }
end

-- dynamic header padding
local fn = vim.fn
local marginTopPercent = 0.3
local headerPadding = fn.max { 2, fn.floor(fn.winheight(0) * marginTopPercent) }

local options = {

  header = {
    type = "text",
    val = {
        "                                            88",
        "                                            88",
        "                                            88",
        " 8b,dPPYba,   ,adPPYba, 8b,dPPYba,  ,adPPYb,88",
        " 88P'   `\"8a a8P_____88 88P'   \"Y8 a8\"    `Y88",
        " 88       88 8PP\"\"\"\"\"\"\" 88         8b       88",
        " 88       88 \"8b,   ,aa 88         \"8a,   ,d88",
        " 88       88  `\"Ybbd8\"' 88          `\"8bbdP\"Y8",
    },
    opts = {
        position = "center",
        hl = "AlphaHeader",
    },
},

buttons = {
    type = "group",
    val = {
      button("SPC f f", "  Find File  "),
      button("SPC f o", "  Recent File  "),
      button("SPC f w", "  Find Word  "),
    },
    opts = {
      spacing = 1,
    },
  },

  headerPaddingTop = { type = "padding", val = headerPadding },
  headerPaddingBottom = { type = "padding", val = 2 },
}

alpha.setup({
  layout = {
    options.headerPaddingTop,
    options.header,
    options.headerPaddingBottom,
    options.buttons,
  },
  opts = {},
})

-- Definindo as cores do cabeçalho usando highlights
vim.cmd([[ hi AlphaHeader guifg=#3CB371 guibg=none ]])
