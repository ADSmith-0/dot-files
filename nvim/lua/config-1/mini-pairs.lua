require("mini.pairs").setup({
  mappings = {
    ['"'] = { action = 'closeopen', pair = '""', neigh_pattern = '[^%S\\].', register = { cr = false } },
    ["'"] = { action = 'closeopen', pair = "''", neigh_pattern = '[^%S\\].', register = { cr = false } },
    ['`'] = { action = 'closeopen', pair = '``', neigh_pattern = '[^%S\\].', register = { cr = false } },
  }
})
