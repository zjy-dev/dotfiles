return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "latte",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      float = {
        transparent = false,
        solid = false,
      },
      dim_inactive = {
        enabled = false,
      },
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        keywords = { "italic" },
      },
      integrations = {
        blink_cmp = { enabled = true, style = "bordered" },
        indent_blankline = { enabled = true, scope_color = "mauve" },
        mini = { enabled = true, indentscope_color = "mauve" },
      },
      custom_highlights = function(colors)
        return {
          CursorLine = { bg = colors.mantle },
          CursorLineNr = { fg = colors.mauve, bg = colors.mantle, style = { "bold" } },
          FloatBorder = { fg = colors.surface1, bg = colors.mantle },
          FloatTitle = { fg = colors.mauve, bg = colors.mantle, style = { "bold" } },
          Folded = { fg = colors.overlay1, bg = colors.mantle },
          LineNr = { fg = colors.overlay0 },
          MatchParen = { fg = colors.mauve, bg = colors.surface0, style = { "bold" } },
          NormalFloat = { bg = colors.mantle },
          Pmenu = { bg = colors.mantle },
          PmenuSel = { fg = colors.text, bg = colors.surface0, style = { "bold" } },
          Search = { fg = colors.crust, bg = colors.yellow },
          CurSearch = { fg = colors.crust, bg = colors.peach, style = { "bold" } },
          Visual = { bg = colors.surface1 },
          WinSeparator = { fg = colors.surface0 },

          -- Markdown should read like prose, not a wall of blue links and grey badges.
          ["@markup.heading.1.markdown"] = { fg = colors.mauve, style = { "bold" } },
          ["@markup.heading.2.markdown"] = { fg = colors.blue, style = { "bold" } },
          ["@markup.heading.3.markdown"] = { fg = colors.teal, style = { "bold" } },
          ["@markup.heading.4.markdown"] = { fg = colors.peach, style = { "bold" } },
          ["@markup.link.label.markdown_inline"] = { fg = colors.sapphire },
          ["@markup.link.url.markdown_inline"] = { fg = colors.overlay1, style = { "underline" } },
          ["@markup.raw.markdown_inline"] = { fg = colors.teal, bg = colors.mantle },
          markdownCode = { fg = colors.teal, bg = colors.mantle },
          markdownCodeDelimiter = { fg = colors.overlay0, bg = colors.mantle },
          markdownUrl = { fg = colors.overlay1, style = { "underline" } },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-latte",
    },
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        indicator = { style = "underline" },
        separator_style = "thin",
        show_buffer_close_icons = false,
        show_close_icon = false,
        always_show_bufferline = false,
        max_name_length = 24,
        max_prefix_length = 18,
        truncate_names = true,
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "catppuccin",
        section_separators = { left = "", right = "" },
        component_separators = { left = "│", right = "│" },
      },
    },
  },
}
