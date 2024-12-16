require("which-key").setup({
  plugins = {
    marks = true,
    registers = true,
  },
  key_labels = {
    ["<leader>"] = "SPC", -- Das entspricht deinem Leader-Key
  },
  presets = {
    operators = false,
    motions = false,
    text_objects = false,
    windows = true,
    nav = true,
    z = true,
    g = true,
  },
})

