-- plugins.lua hoặc init.lua
return {
    -- Plugin Copilot chính
    {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      event = "InsertEnter",
      config = function()
        require("copilot").setup({
          panel = {
            enabled = true,
            auto_refresh = false,
            keymap = {
              jump_prev = "[[",
              jump_next = "]]",
              accept = "<CR>",
              refresh = "gr",
              open = "<M-CR>",
            },
            layout = {
              position = "bottom",
              ratio = 0.4,
            },
          },
          suggestion = {
            enabled = true,
            auto_trigger = false,
            debounce = 75,
            keymap = {
              accept = "<M-l>",
              accept_word = false,
              accept_line = false,
              next = "<M-]>",
              prev = "<M-[>",
              dismiss = "<C-]>",
            },
          },
          filetypes = {
            ["*"] = true,
            ["markdown"] = true,
          },
          copilot_node_command = "node", -- Node version cần thiết (16.x trở lên)
          server_opts_overrides = {},
        })
      end,
    },
  
    -- Tích hợp với nvim-cmp
    {
      "zbirenbaum/copilot-cmp",
      after = { "copilot.lua", "nvim-cmp" },
      config = function()
        require("copilot_cmp").setup()
      end,
    },
  
    -- Plugin chat với Copilot
    -- {
    --  "zbirenbaum/copilot-chat.nvim",
    --  cmd = { "CopilotChat" },
    --  config = function()
    --    require("copilot_chat").setup()
    --  end,
    -- },
  
    -- Đoạn cấu hình mới
    {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      build = ":Copilot auth",
      opts = {
        suggestion = { enabled = false },
        panel = { enabled = false },
        filetypes = {
          markdown = true,
          help = true,
        },
      },
    },
  }