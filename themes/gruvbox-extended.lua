local cmd = vim.cmd

local colors = {
    white = "#d4be98",
    darker_black = "#2b2b2b",
    black = "#282828", --  nvim bg
    black2 = "#2b2b2b",
    one_bg = "#2b2b2b",
    one_bg2 = "#2b2b2b",
    one_bg3 = "#2b2b2b",
    grey = "#46494a",
    grey_fg = "#5d6061",
    grey_fg2 = "#5b5e5f",
    light_grey = "#585b5c",
    red = "#ea6962",
    baby_pink = "#ce8196",
    pink = "#ff75a0",
    line = "#2c2f30", -- for lines like vertsplit
    green = "#a9b665",
    vibrant_green = "#a9b665",
    nord_blue = "#6f8faf",
    blue = "#7daea3",
    yellow = "#e78a4e",
    sun = "#d1b171",
    purple = "#d3869b",
    dark_purple = "#cc7f94",
    teal = "#749689",
    orange = "#e78a4e",
    cyan = "#89b482",
    statusline_bg = "#252829",
    lightbg = "#2d3139",
    lightbg2 = "#262a32"
}

local white = colors.white
local darker_black = colors.darker_black
local black = colors.black
local black2 = colors.black2
local one_bg = colors.one_bg
local one_bg2 = colors.one_bg2
local one_bg3 = colors.one_bg3
local light_grey = colors.light_grey
local grey = colors.grey
local grey_fg = colors.grey_fg
local red = colors.red
local line = colors.line
local green = colors.green
local nord_blue = colors.nord_blue
local blue = colors.blue
local yellow = colors.yellow
local purple = colors.purple

-- for guifg , bg
local function fg(group, color)
    cmd("hi " .. group .. " guifg=" .. color)
end

local function bg(group, color)
    cmd("hi " .. group .. " guibg=" .. color)
end

local function fg_bg(group, fgcol, bgcol)
    cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

-- blankline
fg("IndentBlanklineChar", line)

-- misc --
fg("LineNr", grey)
fg("Comment", grey)
fg("NvimInternalError", red)
fg("VertSplit", line)
fg("EndOfBuffer", black)

-- Pmenu
bg("Pmenu", one_bg)
bg("PmenuSbar", one_bg2)
bg("PmenuSel", green)
bg("PmenuThumb", nord_blue)

-- inactive statuslines as thin splitlines
-- cmd("hi! StatusLineNC gui=underline guifg=" .. line)

-- line n.o
cmd "hi clear CursorLine"
fg("cursorlinenr", white)

-- git signs ---
fg_bg("DiffAdd", nord_blue, "none")
fg_bg("DiffChange", one_bg2, "none")
fg_bg("DiffModified", nord_blue, "none")

-- NvimTree
fg("NvimTreeFolderIcon", blue)
fg("NvimTreeFolderName", blue)
fg("NvimTreeOpenedFolderName", blue)
fg("NvimTreeEmptyFolderName", blue)
fg("NvimTreeIndentMarker", one_bg2)
fg("NvimTreeVertSplit", darker_black)
bg("NvimTreeVertSplit", darker_black)
fg("NvimTreeEndOfBuffer", darker_black)

fg("NvimTreeRootFolder", darker_black)
bg("NvimTreeNormal", darker_black)
fg_bg("NvimTreeStatuslineNc", darker_black, darker_black)
fg_bg("NvimTreeWindowPicker", red, black2)

-- LspDiagnostics ---

-- error / warnings
fg("LspDiagnosticsSignError", red)
fg("LspDiagnosticsVirtualTextError", red)
fg("LspDiagnosticsSignWarning", yellow)
fg("LspDiagnosticsVirtualTextWarning", yellow)

-- info
fg("LspDiagnosticsSignInformation", green)
fg("LspDiagnosticsVirtualTextInformation", green)

-- hint
fg("LspDiagnosticsSignHint", purple)
fg("LspDiagnosticsVirtualTextHint", purple)

-- separators
fg_bg("BufferLineSeparator", black2, black2)
fg_bg("BufferLineSeparatorVisible", black2, black2)
fg_bg("BufferLineSeparatorSelected", black, black2)
