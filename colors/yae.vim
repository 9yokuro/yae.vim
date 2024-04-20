vim9script

highlight clear

if exists("syntax_on")
  syntax reset
endif

g:colors_name = "yae"

const colors: dict<string> = {
  foreground: "#feeeed",
  background: "#0c0c0c",

  black: "#000b00",
  gray: "#727171",
  white: "#fbfbf6",

  bright_black: "#343434",
  bright_gray: "#a3a3a2",
  bright_white: "#f6f7f8",
}

const fg_foreground: string = "ctermfg=white guifg=" .. colors.foreground .. " "
const fg_background: string = "ctermfg=black guifg=" .. colors.background .. " "
const fg_black: string = "ctermfg=black guifg=" .. colors.black .. " "
const fg_gray: string = "ctermfg=gray guifg=" .. colors.gray .. " "
const fg_white: string = "ctermfg=white guifg=" .. colors.white .. " "
const fg_bright_black: string = "ctermfg=black guifg=" .. colors.bright_black .. " "
const fg_bright_gray: string = "ctermfg=gray guifg=" .. colors.bright_gray .. " "
const fg_bright_white: string = "ctermfg=white guifg=" .. colors.bright_white .. " "
const fg_none: string = "ctermfg=NONE guifg=NONE "

const bg_foreground: string = "ctermbg=white guibg=" .. colors.foreground .. " "
const bg_background: string = "ctermbg=black guibg=" .. colors.background .. " "
const bg_black: string = "ctermbg=black guibg=" .. colors.black .. " "
const bg_gray: string = "ctermbg=gray guibg=" .. colors.gray .. " "
const bg_white: string = "ctermbg=white guibg=" .. colors.white .. " "
const bg_bright_black: string = "ctermbg=black guibg=" .. colors.bright_black .. " "
const bg_bright_gray: string = "ctermbg=gray guibg=" .. colors.bright_gray .. " "
const bg_bright_white: string = "ctermbg=white guibg=" .. colors.bright_white .. " "
const bg_none: string = "ctermbg=NONE guibg=NONE "

const bold: string = "term=bold cterm=bold gui=bold "
const italic: string = "term=italic cterm=italic gui=italic "
const none: string = "term=NONE cterm=NONE gui=NONE "
const reverse: string = "term=reverse cterm=reverse gui=reverse "
const underline: string = "term=underline cterm=underline gui=underline "
const undercurl: string = "term=undercurl cterm=undercurl gui=undercurl "

execute "highlight Comment " .. fg_bright_black .. bg_none .. italic
execute "highlight Constant " .. fg_foreground .. bg_none .. none
highlight link String Constant
highlight link Character Constant
highlight link Number Constant
highlight link Boolean Constant
highlight link Float Constant
execute "highlight Identifier " .. fg_bright_white .. bg_none .. bold
highlight link Function Identifier
execute "highlight Statement " .. fg_bright_gray .. bg_none .. none
highlight link Conditional Statement
highlight link Repeat Statement
highlight link Label Statement
highlight link Operator Statement
highlight link Keyword Statement
highlight link Exception Statement
execute "highlight PreProc " .. fg_gray .. bg_none .. italic
highlight link Include PreProc
highlight link Define PreProc
highlight link Macro PreProc
highlight link PreCondit PreProc
execute "highlight Type " .. fg_white .. bg_none .. none
highlight link StorageClass Type
highlight link Structure Type
highlight link Typedef Type
execute "highlight Special " .. fg_gray .. bg_none .. none
highlight link SpecialChar Special
highlight link Tag Special
highlight link Delimiter Special
highlight link SpecialComment Special
highlight link Debug Special
execute "highlight Underlined " .. fg_foreground .. bg_none .. underline
highlight Ignore NONE
execute "highlight Error " .. fg_black .. bg_bright_white .. none
execute "highlight Todo " .. fg_bright_black .. bg_white .. none
execute "highlight Added " .. fg_white .. bg_none .. none
execute "highlight Changed " .. fg_bright_white .. bg_none .. none
execute "highlight Removed " .. fg_foreground .. bg_none .. none
execute "highlight ColorColumn " .. fg_foreground .. bg_background .. none
execute "highlight Conceal " .. fg_foreground .. bg_background .. none
execute "highlight Cursor " .. fg_none .. bg_none .. reverse
highlight link lCursor Cursor
execute "highlight CursorColumn " .. fg_foreground .. bg_bright_black .. none
execute "highlight CursorLine " .. fg_foreground .. bg_bright_black .. none
execute "highlight Directory " .. fg_bright_white .. bg_none .. none
execute "highlight DiffAdd " .. fg_background .. bg_bright_white .. none
execute "highlight DiffChange " .. fg_background .. bg_white .. none
execute "highlight DiffDelete " .. fg_background .. bg_foreground .. none
execute "highlight DiffText " .. fg_background .. bg_bright_gray .. none
highlight link EndOfBuffer NonText
execute "highlight ErrorMsg " .. fg_black .. bg_bright_white .. none
execute "highlight VertSplit " .. fg_white .. bg_none .. none
execute "highlight Folded " .. fg_bright_white .. bg_background .. none
execute "highlight FoldColumn " .. fg_bright_white .. bg_background .. none
execute "highlight SignColumn " .. fg_bright_white .. bg_background .. none
execute "highlight IncSearch " .. fg_none .. bg_none .. reverse
execute "highlight LineNr " .. fg_bright_black .. bg_none .. none
highlight link LineNrAbove LineNr
highlight link LineNrBelow LineNr
execute "highlight CursorLineNr " .. fg_bright_black .. bg_none .. bold
highlight link CursorLineFold FoldColumn
highlight link CursorLineSign SignColumn
execute "highlight MatchParen " .. fg_foreground .. bg_gray .. none
execute "highlight MessageWindow " .. fg_foreground .. bg_none .. none
execute "highlight ModeMsg " .. fg_bright_gray .. bg_none .. none
execute "highlight MsgArea " .. fg_bright_white .. bg_none .. none
execute "highlight MoreMsg " .. fg_gray .. bg_none .. none
execute "highlight NonText " .. fg_bright_black .. bg_none .. none
execute "highlight Normal " .. fg_foreground .. bg_background .. none
execute "highlight Pmenu " .. fg_foreground .. bg_black .. none
execute "highlight PmenuSel " .. fg_bright_white .. bg_bright_black .. none
highlight link PmenuKind Pmenu
execute "highlight PmenuKindSel " .. fg_foreground .. bg_bright_black .. none
highlight link PmenuExtra Pmenu
execute "highlight PmenuExtraSel " .. fg_foreground .. bg_bright_black .. none
execute "highlight PmenuSbar " .. fg_none .. bg_gray .. none
execute "highlight PmenuThumb " .. fg_none .. bg_bright_gray .. none
execute "highlight PopupNotification " .. fg_foreground .. bg_black .. none
execute "highlight Question " .. fg_bright_gray .. bg_none .. bold
highlight link QuickFixLine Search
execute "highlight Search " .. fg_black .. bg_white .. none
highlight link CurSearch Search
execute "highlight SpecialKey " .. fg_bright_gray .. bg_none .. none
execute "highlight SpellBad guisp=NONE " .. fg_black .. bg_foreground .. undercurl
execute "highlight SpellCap guisp=NONE " .. fg_black .. bg_bright_white .. undercurl
execute "highlight SpellLocal guisp=NONE " .. fg_black .. bg_white .. undercurl
execute "highlight SpellRare guisp=NONE " .. fg_black .. bg_bright_gray .. undercurl
execute "highlight StatusLine " .. fg_white .. bg_none .. none
execute "highlight StatusLineNC " .. fg_white .. bg_none .. none
execute "highlight StatusLineTerm " .. fg_white .. bg_none .. none
execute "highlight StatusLineTermNC " .. fg_white .. bg_none .. none
execute "highlight TabLine " .. fg_foreground .. bg_bright_black .. none
execute "highlight TabLineFill " .. fg_none .. bg_none .. reverse
execute "highlight TabLineSel " .. fg_bright_white .. bg_black .. bold
highlight Terminal NONE
execute "highlight Title " .. fg_bright_white .. bg_none .. bold
execute "highlight Visual " .. fg_black .. bg_white .. none
execute "highlight VisualNOS " .. fg_black .. bg_bright_black .. none
execute "highlight WarningMsg " .. fg_foreground .. bg_none .. bold
execute "highlight WildMenu " .. fg_bright_white .. bg_black .. none
