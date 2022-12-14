require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { 'astro', 'bash', 'css', 'dockerfile', 'graphql', 'html', 'java', 'javascript', 'json', 'lua',
    'markdown', 'php', 'python', 'scss', 'sql', 'tsx', 'typescript', 'vim', 'vue', 'yaml' },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    additional_vim_regex_highlighting = false,

    autotag = {
      enable = true,
    },
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    -- colors = {},
    -- termcolors = {}
  }
}
