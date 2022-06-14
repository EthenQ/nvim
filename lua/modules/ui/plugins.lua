local package = require('core.pack').package
local conf = require('modules.ui.config')

package {'glepnir/zephyr-nvim',config = conf.zephyr }

package {'glepnir/dashboard-nvim', config = conf.dashboard }

package {'glepnir/galaxyline.nvim',
  branch = 'main',
  config = conf.galaxyline,
  requires = 'kyazdani42/nvim-web-devicons'
}

package {'lukas-reineke/indent-blankline.nvim',
  event = 'BufRead',
  config = conf.indent_blakline
}

package {'akinsho/nvim-bufferline.lua',
  config = conf.nvim_bufferline,
  requires = 'kyazdani42/nvim-web-devicons'
}


package {'kyazdani42/nvim-tree.lua',
  cmd = 'NvimTreeToggle',
  config = conf.nvim_tree,
  requires = 'kyazdani42/nvim-web-devicons'
}

package {'lewis6991/gitsigns.nvim',
  event = {'BufRead','BufNewFile'},
  config = conf.gitsigns,
  requires = {'nvim-lua/plenary.nvim',opt=true}
}
