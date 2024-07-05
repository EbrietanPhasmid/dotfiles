return { --this file edits the dashboard
 "goolord/alpha-nvim",
  opts = function(_, opts) -- override the options using lazy.nvim
    opts.section.header.val = { -- change the header section value
      "    使困惑    "
    }
  end,
}
