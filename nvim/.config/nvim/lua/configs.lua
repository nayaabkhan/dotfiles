require('lspconfig').tsserver.setup{}

require('lspsaga').init_lsp_saga{
  border_style = 'round',
}

require('telescope').setup{
  defaults = {
    color_devicons = true,
    layout_config = {
      prompt_position = 'top'
    },
    sorting_strategy = 'ascending'
  }
}

require('lualine').setup{
  options = {
    theme = 'gruvbox_material',
    component_separators = { " ", " " },
    section_separators = { "", "" },
  },
  sections = {
    lualine_a = { "mode", "paste" },
    lualine_b = {
      { "branch", icon = "" },
      { "diff", color_added = "#a7c080", color_modified = "#ffdf1b", color_removed = "#ff6666" },
    },
    lualine_c = {
      { "diagnostics", sources = { "nvim_lsp" } },
      function()
        return "%="
      end,
      "filename",
    },
    lualine_x = { "filetype" },
    lualine_y = {
      {
        "progress",
      },
    },
    lualine_z = {
      {
        "location",
        icon = "",
      },
    },
  },
}

