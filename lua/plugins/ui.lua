return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        mode = "buffers",
        separator_style = "think",
        always_show_bufferline = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true,
      },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        icons_enable = true,
        theme = "gruvbox",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            fnt = function(str)
              return str:sub(1, 1)
            end,
          },
        },
        lualine_b = { { "filename", file_status = true, path = 0 } },
        lualine_c = { "diff" },
        lualine_x = {
          "filetype",
          "branch",
          { "diagnostics", symbols = { error = " ", warn = " ", hint = " " } },
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
    },
  },
}
