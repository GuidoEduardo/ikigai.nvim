return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- set header
    dashboard.section.header.val = {
      '',
      '',
      '生き甲斐',
      '',
      '',
    }

    -- set menu
    dashboard.section.buttons.val = {
      dashboard.button('e', ' new file', '<cmd>ene<CR>'),
      dashboard.button('SPC ee', ' file explorer', '<cmd>NvimTreeToggle<CR>'),
      dashboard.button('SPC ff', '󰱼 find file', '<cmd>Telescope find_files<CR>'),
      dashboard.button('SPC fs', ' find word', '<cmd>Telescope live_grep<CR>'),
      dashboard.button('SPC wr', '󰁯 restore session', '<cmd>SessionRestore<CR>'),
      dashboard.button('q', ' quit', '<cmd>qa<CR>'),
    }

    alpha.setup(dashboard.opts)

    vim.cmd [[autocmd FileType alpha setlocal nofoldenable]]
  end,
}
