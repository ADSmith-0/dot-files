local bufferline = require("bufferline")

bufferline.setup({
  options = {
    style_preset = bufferline.style_preset.no_italic,
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " "
            or (e == "warning" and " " or " ")
        s = s .. n .. sym
      end
      return s
    end,
    show_buffer_close_icons = false,
    show_close_icon = false,
  }
})
