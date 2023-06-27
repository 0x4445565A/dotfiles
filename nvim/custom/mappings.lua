local M = {}

-- In order to disable a default keymap, use
M.disabled = {}

local opts = { noremap = true, silent = true }
-- Your custom mappings
M.abc = {
  v = {
     ["J"] = {":MoveBlock(1)<CR>", "Moveblock up", opts=opts},
     ["K"] = {":MoveBlock(-1)<CR>", "Moveblock down", opts=opts}
  }
}

return M
