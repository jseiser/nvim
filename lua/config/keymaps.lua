local map = require("helpers.keys").map

map("n", "<leader>qq", "<cmd>q<cr>", "Quit")
map("n", "<leader>qa", "<cmd>qa!<cr>", "Quit all")

-- Oil
map("n", "-", "<cmd>Oil --float<CR>", "Open Parent Directory in Oil")
