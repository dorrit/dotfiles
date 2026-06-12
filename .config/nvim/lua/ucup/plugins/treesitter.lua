return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter")

    treesitter.setup({
      install_dir = vim.fn.stdpath("data") .. "/site",
    })

    local languages = {
      "go",
      "javascript",
      "typescript",
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "rust",
      "java",
      "python",
      "html",
      "css",
      "svelte",
    }

    local installed = {}
    for _, language in ipairs(treesitter.get_installed()) do
      installed[language] = true
    end

    local missing = vim.tbl_filter(function(language)
      return not installed[language]
    end, languages)

    if #missing > 0 then
      treesitter.install(missing)
    end

    vim.api.nvim_create_autocmd("FileType", {
      pattern = languages,
      callback = function(args)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(args.buf))
        if ok and stats and stats.size > max_filesize then
          return
        end

        vim.treesitter.start(args.buf)
      end,
    })
  end,
}
