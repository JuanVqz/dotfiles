return {
  'CopilotC-Nvim/CopilotChat.nvim',
  dependencies = {
    { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
    { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
  },
  build = 'make tiktoken', -- Only on MacOS or Linux
  config = function()
    local chat = require('CopilotChat')
    local select = require('CopilotChat.select')

    chat.setup({
      debug = true,
      selection = select.visual,
      auto_follow_cursor = true,
      show_help = true,
      mappings = {
        reset = false,
        complete = {
          detail = 'Use @<Tab> or /<Tab> for options.',
          insert = ''
        },
      },
      prompts = {
        Explain = {
          mapping = '<leader>ae',
          description = 'AI Explain',
        },
        Review = {
          mapping = '<leader>ar',
          description = 'AI Review',
        },
        Tests = {
          mapping = '<leader>at',
          description = 'AI Tests',
        },
        Fix = {
          mapping = '<leader>af',
          description = 'AI Fix',
        },
        Optimize = {
          mapping = '<leader>ao',
          description = 'AI Optimize',
        },
        Docs = {
          mapping = '<leader>ad',
          description = 'AI Documentation',
        },
        Commit = {
          mapping = '<leader>ac',
          description = 'AI Generate Commit',
          selection = select.buffer,
        },
        Juan = {
          prompt = 'Explain how it works.',
          system_prompt = 'You are very good at explaining stuff',
          mapping = '<leader>aj',
          description = 'My custom prompt description',
        }
      }
    })

    vim.keymap.set({ 'n' }, '<leader>aa', chat.toggle, { desc = 'AI Toggle' })
    vim.keymap.set({ 'v' }, '<leader>aa', chat.open, { desc = 'AI Open' })
    vim.keymap.set({ 'n' }, '<leader>ax', chat.reset, { desc = 'AI Reset' })
    vim.keymap.set({ 'n' }, '<leader>as', chat.stop, { desc = 'AI Stop' })
    vim.keymap.set({ 'n' }, '<leader>am', chat.select_model, { desc = 'AI Model' })

    vim.keymap.set({ 'n', 'v' }, '<leader>aq', function()
      vim.ui.input({
        prompt = 'AI Question> ',
      }, function(input)
        if input and input ~= '' then
          chat.ask(input)
        end
      end)
    end, { desc = 'AI Question' })

  end,
}
