return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  --dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys={
    {
      "<leader>ff", 
      function() require('fzf-lua').files() end,
      desc="Find files in project directory",
    },
    {
      "<leader>fg", 
      function() require('fzf-lua').live_grep() end,
      desc="Find by grepping in project directory",
    },
    {
      "<leader>fc", 
      function() require('fzf-lua').files=({cwd=vim.fn.stdpath("config")}) end,
      desc="Find in neovim config",
    },
    {
      "<leader>fb", 
      function() require('fzf-lua').buildin() end,
      desc="FZF Builtins",
    },
    {
      "<leader><leader>", 
      function() require('fzf-lua').buffers() end,
      desc="[.] Find existing buffers",
    },
{
      "<leader>/", 
      function() require('fzf-lua').lgrep_curbuf() end,
      desc="[/] Live grep the current buffer",
    },

    {
      "<leader>fo", 
      function() require('fzf-lua').oldfiles() end,
      desc="FZF Builtins",
    }


  },
}

