local api = require("utils.api")
--------------------------------------------------------------------------------
-- vim方便编辑的映射
--------------------------------------------------------------------------------
api.map.bulk_register({
    {
        mode = { "" },
        lhs = ":",
        rhs = ";",
        options = {},
        description = "exchange ; and :",
    },
    {
        mode = { "" },
        lhs = ";",
        rhs = ":",
        options = {},
        description = "exchange ; and :",
    },
    {
        mode = { "v" },
        lhs = "Y",
        rhs = '"+y',
        options = { silent = true},
        description = "copy to the system clipboard",
    },
    {
        mode = { "n" },
        lhs = "Q",
        rhs = ":q<CR>",
        options = { silent = true},
        description = "quit the window",
    },
    {
        mode = { "n" },
        lhs = "<leader>sa",
        rhs = "ggvG",
        options = { silent = true},
        description = "seleect all text",
    },
    {
        mode = { "n" },
        lhs = "<leader><esc>",
        rhs = ":qa!<cr>",
        options = { silent = true },
        description = "Escape Neovim",
    },
    {
        mode = { "t" },
        lhs = "<esc>",
        rhs = "<c-\\><c-n>",
        options = { silent = true },
        description = "Escape terminal insert mode",
    },
    {
        mode = { "n" },
        lhs = "<esc>",
        rhs = ":noh<cr>",
        options = { silent = true },
        description = "Clear search highlight",
    },
    {
        mode = { "n" },
        lhs = "<leader>cs",
        rhs = ":set spell!<cr>",
        options = { silent = true },
        description = "Enable or disable spell checking",
    },
})

--------------------------------------------------------------------------------
-- 方便进行文本间移动的快捷键
--------------------------------------------------------------------------------
api.map.bulk_register({
    {
        mode = { "n" },
        lhs = "<c-u>",
        rhs = function()
            vim.cmd("normal! " .. math.ceil(vim.api.nvim_win_get_height(0) / 4) .. "k")
        end,
        options = { silent = true },
        description = "Move 1/4 screen up",
    },
    {
        mode = { "n" },
        lhs = "<c-d>",
        rhs = function()
            vim.cmd("normal! " .. math.ceil(vim.api.nvim_win_get_height(0) / 4) .. "j")
        end,
        options = { silent = true },
        description = "Move 1/4 screen down",
    },
    {
        mode = { "n", "v" },
        lhs = "k",
        rhs = function()
            return vim.v.count > 0 and "k" or "gk"
        end,
        options = { silent = true, expr = true },
        description = "Move up one line",
    },
    {
        mode = { "n", "v" },
        lhs = "j",
        rhs = function()
            return vim.v.count > 0 and "j" or "gj"
        end,
        options = { silent = true, expr = true },
        description = "Move down one line",
    },
    {
        mode = { "n", "v" },
        lhs = "H",
        rhs = function()
            return vim.v.count > 0 and "^" or "g^"
        end,
        options = { silent = true, expr = true },
        description = "Move to the first character at the beginning of the line",
    },
    {
        mode = { "n", "v" },
        lhs = "L",
        rhs = function()
            return vim.v.count > 0 and "$" or "g$"
        end,
        options = { silent = true, expr = true },
        description = "Move to the last character at the end of the line",
    },
    {
        mode = { "n", "v" },
        lhs = "J",
        rhs = "5j",
        options = { silent = true },
        description = "move down five lines",
    },
    {
        mode = { "n", "v" },
        lhs = "K",
        rhs = "5k",
        options = { silent = true },
        description = "move up five lines",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-w>",
        rhs = "<c-right>",
        options = {},
        description = "Jump to next word in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-b>",
        rhs = "<c-left>",
        options = {},
        description = "Jump to previous word in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-k>",
        rhs = "<up>",
        options = {},
        description = "Move cursor up in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-j>",
        rhs = "<down>",
        options = {},
        description = "Move cursor down in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-h>",
        rhs = "<left>",
        options = {},
        description = "Move cursor left in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-l>",
        rhs = "<right>",
        options = {},
        description = "Move cursor right in insert mode",
    },
})

--------------------------------------------------------------------------------
-- 方便进行分屏的快捷键
--------------------------------------------------------------------------------
api.map.bulk_register({
    {
        mode = { "n" },
        lhs = "<leader>h",
        rhs = "<C-w>h",
        options = { silent = true },
        description = "go to the left windows",
    },
    {
        mode = { "n" },
        lhs = "<leader>j",
        rhs = "<C-w>j",
        options = { silent = true },
        description = "go to the bottom windows",
    },
    {
        mode = { "n" },
        lhs = "<leader>k",
        rhs = "<C-w>k",
        options = { silent = true },
        description = "go to the upper windows",
    },
    {
        mode = { "n" },
        lhs = "<leader>l",
        rhs = "<C-w>l",
        options = { silent = true },
        description = "go to the right windows",
    },
    {
        mode = { "n" },
        lhs = "sl",
        rhs = ":set splitright<CR>:vs<CR>",
        options = { silent = true },
        description = "split the windows and cursor on right",
    },
    {
        mode = { "n" },
        lhs = "sh",
        rhs = ":set nosplitright<CR>:vs<CR>",
        options = { silent = true },
        description = "split the windows and cursor on left",
    },
    {
        mode = { "n" },
        lhs = "sj",
        rhs = ":set splitbelow<CR>:sp<CR>",
        options = { silent = true },
        description = "split the windows and cursor on down",
    },
    {
        mode = { "n" },
        lhs = "sk",
        rhs = ":set nosplitbelow<CR>:sp<CR>",
        options = { silent = true },
        description = "split the windows and cursor on up",
    },
    {
        mode = { "n" },
        lhs = "sb",
        rhs = "<C-w>t<C-w>H",
        options = { silent = true },
        description = "Make a horizontal window a vertical window",
    },
    {
        mode = { "n" },
        lhs = "<m-k>",
        rhs = "<c-w>-",
        options = { silent = true },
        description = "Reduce horizontal split screen size",
    },
    {
        mode = { "n" },
        lhs = "<m-j>",
        rhs = "<c-w>+",
        options = { silent = true },
        description = "Increase horizontal split screen size",
    },
    {
        mode = { "n" },
        lhs = "<m-h>",
        rhs = "<c-w><",
        options = { silent = true },
        description = "Reduce vertical split screen size",
    },
    {
        mode = { "n" },
        lhs = "<m-l>",
        rhs = "<c-w>>",
        options = { silent = true },
        description = "Increase vertical split screen size",
    },
})

--------------------------------------------------------------------------------
-- telescope 相关设置
--------------------------------------------------------------------------------
api.map.bulk_register({
  {
      mode = { "n" },
      lhs = "<leader>ff",
      rhs = function()
          require("telescope.builtin").find_files()
      end,
      options = { silent = true },
      description = "Find files in the current workspace",
  },
  {
      mode = { "n" },
      lhs = "<leader>fl",
      rhs = function()
          require("telescope.builtin").live_grep()
      end,
      options = { silent = true },
      description = "Find string in the current workspace",
  },
  {
      mode = { "n" },
      lhs = "<leader>fh",
      rhs = function()
          require("telescope.builtin").oldfiles()
      end,
      options = { silent = true },
      description = "Find telescope history",
  },
  {
      mode = { "n" },
      lhs = "<leader>ft",
      rhs = function()
          require("telescope.builtin").help_tags()
      end,
      options = { silent = true },
      description = "Find all help document tags",
  },
})