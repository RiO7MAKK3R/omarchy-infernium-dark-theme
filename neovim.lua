
-- Infernium-Dark single-file colorscheme

local palette = {
  bg        = "#1E1E1E",
  bg_dark   = "#2A2A2A",
  fg        = "#DDDBDD",
  fg_dim    = "#767476",
  border    = "#AEB1C0",
  panel     = "#2C2C2C",


  lava_light = "#E99867", 
  lava_mid   = "#E3884A",
  lava_deep  = "#D66938",
  lava_core  = "#BA6435",


  silver = "#CAD1E0",
  steel  = "#97969A",
  white  = "#F4F4F5",
}


local function hi(group, opts)
  local parts = { "highlight", group }
  if opts.fg then table.insert(parts, "guifg=" .. opts.fg) end
  if opts.bg then table.insert(parts, "guibg=" .. opts.bg) end
  if opts.gui then table.insert(parts, "gui=" .. opts.gui) end
  vim.cmd(table.concat(parts, " "))
end


local function apply()
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "infernium-dark"

  vim.cmd("highlight clear")


  hi("Normal",       { fg = palette.fg, bg = palette.bg })
  hi("CursorLine",   { bg = palette.bg_dark })
  hi("CursorLineNr", { fg = palette.lava_mid, bg = palette.bg })
  hi("LineNr",       { fg = palette.steel, bg = palette.bg })
  hi("StatusLine",   { fg = palette.fg, bg = palette.panel })
  hi("StatusLineNC", { fg = palette.fg_dim, bg = palette.panel })
  hi("TabLine",      { fg = palette.fg_dim, bg = palette.bg_dark })
  hi("TabLineSel",   { fg = palette.bg, bg = palette.lava_mid, gui = "bold" })
  hi("VertSplit",    { fg = palette.border, bg = palette.bg })
  hi("ColorColumn",  { bg = palette.silver })


  hi("Comment",      { fg = palette.fg_dim, gui = "italic" })
  hi("Constant",     { fg = palette.lava_light })
  hi("String",       { fg = palette.lava_light })
  hi("Character",    { fg = palette.lava_light })
  hi("Number",       { fg = palette.lava_mid })
  hi("Boolean",      { fg = palette.lava_deep })
  hi("Float",        { fg = palette.lava_mid })
  hi("Identifier",   { fg = palette.fg })
  hi("Function",     { fg = palette.lava_mid })
  hi("Statement",    { fg = palette.lava_deep })
  hi("Conditional",  { fg = palette.lava_deep })
  hi("Repeat",       { fg = palette.lava_deep })
  hi("Label",        { fg = palette.lava_mid })
  hi("Operator",     { fg = palette.fg })
  hi("Keyword",      { fg = palette.lava_deep, gui = "bold" })
  hi("Exception",    { fg = palette.lava_core })
  hi("PreProc",      { fg = palette.steel })
  hi("Include",      { fg = palette.steel })
  hi("Define",       { fg = palette.steel })
  hi("Macro",        { fg = palette.steel })
  hi("Type",         { fg = palette.lava_core })
  hi("StorageClass", { fg = palette.lava_mid })
  hi("Structure",    { fg = palette.lava_mid })
  hi("Typedef",      { fg = palette.lava_mid })
  hi("Special",      { fg = palette.lava_light })
  hi("SpecialComment", { fg = palette.fg_dim })
  hi("Todo",         { fg = palette.bg, bg = palette.lava_mid })


  hi("Search",     { fg = palette.bg, bg = palette.lava_light })
  hi("IncSearch",  { fg = palette.bg, bg = palette.lava_mid })
  hi("MatchParen", { fg = palette.lava_mid, bg = palette.silver, gui = "bold" })


  hi("DiagnosticError",          { fg = palette.lava_deep })
  hi("DiagnosticWarn",           { fg = palette.lava_light })
  hi("DiagnosticInfo",           { fg = palette.steel })
  hi("DiagnosticHint",           { fg = palette.silver })
  hi("DiagnosticVirtualTextError", { fg = palette.lava_deep })
  hi("DiagnosticVirtualTextWarn",  { fg = palette.lava_light })
  hi("DiagnosticSignError",        { fg = palette.lava_deep })
  hi("DiagnosticSignWarn",         { fg = palette.lava_light })
  hi("LspReferenceText", { bg = palette.silver })
  hi("LspReferenceRead", { bg = palette.silver })
  hi("LspReferenceWrite", { bg = palette.silver })


  hi("Pmenu",      { fg = palette.fg, bg = palette.panel })
  hi("PmenuSel",   { fg = palette.bg, bg = palette.lava_mid })
  hi("PmenuSbar",  { bg = palette.steel })
  hi("PmenuThumb", { bg = palette.silver })


  hi("TelescopeNormal",       { fg = palette.fg, bg = palette.panel })
  hi("TelescopePreviewNormal", { fg = palette.fg, bg = palette.bg_dark })
  hi("TelescopePromptNormal",  { fg = palette.fg, bg = palette.panel })
  hi("TelescopePromptPrefix",  { fg = palette.lava_mid, bg = palette.panel })
  hi("TelescopePromptTitle",   { fg = palette.bg, bg = palette.lava_mid })
  hi("TelescopePreviewTitle",  { fg = palette.bg, bg = palette.lava_mid })


  hi("HopNextKey",       { fg = palette.lava_mid, bg = palette.bg }) 
  hi("HopNextKey1",      { fg = palette.lava_light, bg = palette.bg })
  hi("HopNextKey2",      { fg = palette.fg_dim, bg = palette.bg })
  hi("LightspeedLabel",  { fg = palette.lava_mid, bg = palette.bg })
  hi("LightspeedLabelDistant", { fg = palette.lava_light, bg = palette.bg })


  hi("TSKeyword",       { fg = palette.lava_deep, gui = "bold" })
  hi("TSString",        { fg = palette.lava_light })
  hi("TSVariable",      { fg = palette.fg })
  hi("TSField",         { fg = palette.fg })
  hi("TSFunction",      { fg = palette.lava_mid })
  hi("TSMethod",        { fg = palette.lava_mid })
  hi("TSConstant",      { fg = palette.lava_light })
  hi("TSComment",       { fg = palette.fg_dim, gui = "italic" })
  hi("TSConstructor",   { fg = palette.lava_mid })
  hi("TSType",          { fg = palette.lava_core })
  hi("TSOperator",      { fg = palette.fg })
  hi("TSParameter",     { fg = palette.steel })
  hi("TSVariableBuiltin",{ fg = palette.lava_core })
  hi("TSNote",          { fg = palette.lava_mid, bg = palette.silver })


  hi("NormalFloat", { fg = palette.fg, bg = palette.panel })
  hi("FloatBorder", { fg = palette.border, bg = palette.panel })
  hi("WhichKey", { fg = palette.fg })
  hi("WhichKeyGroup", { fg = palette.lava_mid })


  hi("GitSignsAdd",    { fg = "#34A853" })
  hi("GitSignsChange", { fg = palette.lava_light })
  hi("GitSignsDelete", { fg = palette.lava_deep })


  hi("DiffAdd",    { fg = "#34A853", bg = palette.bg })
  hi("DiffChange", { fg = palette.lava_light, bg = palette.bg })
  hi("DiffDelete", { fg = palette.lava_deep, bg = palette.bg })


  vim.g.terminal_color_0  = palette.bg
  vim.g.terminal_color_1  = palette.lava_deep
  vim.g.terminal_color_2  = palette.lava_light
  vim.g.terminal_color_3  = palette.lava_mid
  vim.g.terminal_color_4  = palette.silver
  vim.g.terminal_color_5  = palette.lava_core
  vim.g.terminal_color_6  = palette.steel
  vim.g.terminal_color_7  = palette.fg
  vim.g.terminal_color_8  = palette.fg_dim
  vim.g.terminal_color_9  = palette.lava_deep
  vim.g.terminal_color_10 = palette.lava_light
  vim.g.terminal_color_11 = palette.lava_mid
  vim.g.terminal_color_12 = palette.silver
  vim.g.terminal_color_13 = palette.lava_core
  vim.g.terminal_color_14 = palette.steel
  vim.g.terminal_color_15 = palette.white
end


local aug = vim.api.nvim_create_augroup("InferniumDark", { clear = true })
vim.api.nvim_create_autocmd({ "VimEnter", "UIEnter" }, {
  group = aug,
  callback = function() vim.schedule(apply) end,
})
vim.api.nvim_create_autocmd({ "ColorScheme" }, {
  group = aug,
  callback = function() vim.schedule(apply) end,
})


vim.api.nvim_create_user_command("ApplyInferniumDark", function() apply() end, {})


apply()

return { name = "infernium-dark-local" }
