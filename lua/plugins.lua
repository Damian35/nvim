local do_packer_sync = nil

return require("packer").startup({
  function(use)

    use("wbthomason/packer.nvim")

    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use('p00f/nvim-ts-rainbow')

    use("navarasu/onedark.nvim")

    use {
      "akinsho/bufferline.nvim",
      tag = "v2.*",
      requires = "kyazdani42/nvim-web-devicons"
    }

    use({
      "glepnir/galaxyline.nvim",
      branch = 'main',
      requires = { "kyazdani42/nvim-web-devicons", opt = true }
    })

    use("jiangmiao/auto-pairs")

    use("windwp/nvim-ts-autotag")

    use("norcalli/nvim-colorizer.lua")

    use({
      "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
      ft = { "markdown" }
    })

    use({ 'jakewvincent/mkdnflow.nvim',
      rocks = 'luautf8',
      config = function()
        require('mkdnflow').setup({})
      end
    })

    use("kyazdani42/nvim-tree.lua")

    use('kyazdani42/nvim-web-devicons')

    use("Pocco81/AutoSave.nvim")

    use("jose-elias-alvarez/typescript.nvim")

    use('mfussenegger/nvim-jdtls')

    use({ 'evanleck/vim-svelte',
      branch = 'main',
      requires = { 'othree/html5.vim', 'pangloss/vim-javascript' }
    })


    use({
      'neoclide/coc.nvim',
        branch = 'release'
    })

    use "terrortylor/nvim-comment"

    use {
      "akinsho/toggleterm.nvim",
      tag = 'v2.*',
    }

    use('manzeloth/live-server')

    use({
      'NTBBloodbath/rest.nvim',
      requires = {'nvim-lua/plenary.nvim'}
    })

    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    }

    if do_packer_sync then require("packer").sync() end
  end,

  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'rounded' })
      end
    },
    auto_clean = true
  }
})
