return
{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
      theme = 'doom',
      config = {
	  week_header = {
	      enable = true,
	  },
      }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
