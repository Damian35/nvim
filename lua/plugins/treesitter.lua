return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "arduino",
        "astro",
        "bash",
        "c",
        "c_sharp",
        "cmake",
        "cpp",
        "css",
        "dart",
        "dockerfile",
        "gitignore",
        "html",
        "http",
        "javascript",
        "json",
        "lua",
        "markdown",
        "php",
        "python",
        "rust",
        "scss",
        "sql",
        "svelte",
        "toml",
        "tsx",
        "typescript",
        "yaml",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
