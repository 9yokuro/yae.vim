highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'yae'

const s:colors = {
  \   'foreground': '#feeeed',
  \   'background': '#0c0c0c',
  \   'black': '#000b00',
  \   'gray': '#727171',
  \   'white': '#fbfbf6',
  \   'bright_black': '#343434',
  \   'bright_gray': '#a3a3a2',
  \   'bright_white': '#f6f7f8',
  \ }

const s:fg_foreground = 'ctermfg=white guifg=' .. s:colors.foreground
const s:fg_background = 'ctermfg=black guifg=' .. s:colors.background
const s:fg_black = 'ctermfg=black guifg=' .. s:colors.black
const s:fg_gray = 'ctermfg=gray guifg=' .. s:colors.gray
const s:fg_white = 'ctermfg=white guifg=' .. s:colors.white
const s:fg_bright_black = 'ctermfg=black guifg=' .. s:colors.bright_black
const s:fg_bright_gray = 'ctermfg=gray guifg=' .. s:colors.bright_gray
const s:fg_bright_white = 'ctermfg=white guifg=' .. s:colors.bright_white
const s:fg_none = 'ctermfg=NONE guifg=NONE '

const s:bg_foreground = 'ctermbg=white guibg=' .. s:colors.foreground
const s:bg_background = 'ctermbg=black guibg=' .. s:colors.background
const s:bg_black = 'ctermbg=black guibg=' .. s:colors.black
const s:bg_gray = 'ctermbg=gray guibg=' .. s:colors.gray
const s:bg_white = 'ctermbg=white guibg=' .. s:colors.white
const s:bg_bright_black = 'ctermbg=black guibg=' .. s:colors.bright_black
const s:bg_bright_gray = 'ctermbg=gray guibg=' .. s:colors.bright_gray
const s:bg_bright_white = 'ctermbg=white guibg=' .. s:colors.bright_white
const s:bg_none = 'ctermbg=NONE guibg=NONE '

const s:bold = 'term=bold cterm=bold gui=bold'
const s:italic = 'term=italic cterm=italic gui=italic'
const s:none = 'term=NONE cterm=NONE gui=NONE'
const s:reverse = 'term=reverse cterm=reverse gui=reverse'
const s:underline = 'term=underline cterm=underline gui=underline'
const s:undercurl = 'term=undercurl cterm=undercurl gui=undercurl'

execute 'highlight Comment' s:fg_bright_black s:bg_none s:italic
execute 'highlight Constant' s:fg_foreground s:bg_none s:none
highlight link String Constant
highlight link Character Constant
highlight link Number Constant
highlight link Boolean Constant
highlight link Float Constant
execute 'highlight Identifier' s:fg_bright_white s:bg_none s:bold
highlight link Function Identifier
execute 'highlight Statement' s:fg_bright_gray s:bg_none s:none
highlight link Conditional Statement
highlight link Repeat Statement
highlight link Label Statement
highlight link Operator Statement
highlight link Keyword Statement
highlight link Exception Statement
execute 'highlight PreProc' s:fg_gray s:bg_none s:italic
highlight link Include PreProc
highlight link Define PreProc
highlight link Macro PreProc
highlight link PreCondit PreProc
execute 'highlight Type' s:fg_white s:bg_none s:none
highlight link StorageClass Type
highlight link Structure Type
highlight link Typedef Type
execute 'highlight Special' s:fg_gray s:bg_none s:none
highlight link SpecialChar Special
highlight link Tag Special
highlight link Delimiter Special
highlight link SpecialComment Special
highlight link Debug Special
execute 'highlight Underlined' s:fg_foreground s:bg_none s:underline
highlight Ignore NONE
execute 'highlight Error' s:fg_black s:bg_bright_white s:none
execute 'highlight Todo' s:fg_bright_black s:bg_white s:none
execute 'highlight Added' s:fg_white s:bg_none s:none
execute 'highlight Changed' s:fg_bright_white s:bg_none s:none
execute 'highlight Removed' s:fg_foreground s:bg_none s:none
execute 'highlight ColorColumn' s:fg_foreground s:bg_background s:none
execute 'highlight Conceal' s:fg_foreground s:bg_background s:none
execute 'highlight Cursor' s:fg_none s:bg_none s:reverse
highlight link lCursor Cursor
execute 'highlight CursorColumn' s:fg_foreground s:bg_bright_black s:none
execute 'highlight CursorLine' s:fg_foreground s:bg_bright_black s:none
execute 'highlight Directory' s:fg_bright_white s:bg_none s:none
execute 'highlight DiffAdd' s:fg_background s:bg_bright_white s:none
execute 'highlight DiffChange' s:fg_background s:bg_white s:none
execute 'highlight DiffDelete' s:fg_background s:bg_foreground s:none
execute 'highlight DiffText' s:fg_background s:bg_bright_gray s:none
highlight link EndOfBuffer NonText
execute 'highlight ErrorMsg' s:fg_black s:bg_bright_white s:none
execute 'highlight VertSplit' s:fg_white s:bg_none s:none
execute 'highlight Folded' s:fg_bright_white s:bg_background s:none
execute 'highlight FoldColumn' s:fg_bright_white s:bg_background s:none
execute 'highlight SignColumn' s:fg_bright_white s:bg_background s:none
execute 'highlight IncSearch' s:fg_none s:bg_none s:reverse
execute 'highlight LineNr' s:fg_bright_black s:bg_none s:none
highlight link LineNrAbove LineNr
highlight link LineNrBelow LineNr
execute 'highlight CursorLineNr' s:fg_bright_black s:bg_none s:bold
highlight link CursorLineFold FoldColumn
highlight link CursorLineSign SignColumn
execute 'highlight MatchParen' s:fg_foreground s:bg_gray s:none
execute 'highlight MessageWindow' s:fg_foreground s:bg_none s:none
execute 'highlight ModeMsg' s:fg_bright_gray s:bg_none s:none
execute 'highlight MsgArea' s:fg_bright_white s:bg_none s:none
execute 'highlight MoreMsg' s:fg_gray s:bg_none s:none
execute 'highlight NonText' s:fg_bright_black s:bg_none s:none
execute 'highlight Normal' s:fg_foreground s:bg_background s:none
execute 'highlight Pmenu' s:fg_foreground s:bg_black s:none
execute 'highlight PmenuSel' s:fg_bright_white s:bg_bright_black s:none
highlight link PmenuKind Pmenu
execute 'highlight PmenuKindSel' s:fg_foreground s:bg_bright_black s:none
highlight link PmenuExtra Pmenu
execute 'highlight PmenuExtraSel' s:fg_foreground s:bg_bright_black s:none
execute 'highlight PmenuSbar' s:fg_none s:bg_gray s:none
execute 'highlight PmenuThumb' s:fg_none s:bg_bright_gray s:none
execute 'highlight PopupNotification' s:fg_foreground s:bg_black s:none
execute 'highlight Question' s:fg_bright_gray s:bg_none s:bold
highlight link QuickFixLine Search
execute 'highlight Search' s:fg_black s:bg_white s:none
highlight link CurSearch Search
execute 'highlight SpecialKey' s:fg_bright_gray s:bg_none s:none
execute 'highlight SpellBad guisp=NONE' s:fg_black s:bg_foreground s:undercurl
execute 'highlight SpellCap guisp=NONE' s:fg_black s:bg_bright_white s:undercurl
execute 'highlight SpellLocal guisp=NONE' s:fg_black s:bg_white s:undercurl
execute 'highlight SpellRare guisp=NONE' s:fg_black s:bg_bright_gray s:undercurl
execute 'highlight StatusLine' s:fg_white s:bg_none s:none
execute 'highlight StatusLineNC' s:fg_white s:bg_none s:none
execute 'highlight StatusLineTerm' s:fg_white s:bg_none s:none
execute 'highlight StatusLineTermNC' s:fg_white s:bg_none s:none
execute 'highlight TabLine' s:fg_foreground s:bg_bright_black s:none
execute 'highlight TabLineFill' s:fg_none s:bg_none s:reverse
execute 'highlight TabLineSel' s:fg_bright_white s:bg_black s:bold
highlight Terminal NONE
execute 'highlight Title' s:fg_bright_white s:bg_none s:bold
execute 'highlight Visual' s:fg_black s:bg_white s:none
execute 'highlight VisualNOS' s:fg_black s:bg_bright_black s:none
execute 'highlight WarningMsg' s:fg_foreground s:bg_none s:bold
execute 'highlight WildMenu' s:fg_bright_white s:bg_black s:none
