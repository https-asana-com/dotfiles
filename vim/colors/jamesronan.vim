" Vim color file
" Original Maintainer: James Ronan <james@ronanweb.co.uk>
" Last Change: 21 Jan 2013

" jamesronan v1.0
" A modification of the Gardener colorscheme v1.1

" I liked most of the Gardener Colorscheme, but certain things irked me, so I've
" changed them.

" Features:
"   256 Color XTerm Compatibility
"   Richer Syntax
"   Black Background
"   Functions
"   No Italics
"   Purple Booleans
"   Swapped Status Line Colors
"   Other minor tweaks

set background=dark
hi clear
syntax reset


if has("gui_running")

" Colors for the User Interface.
    hi linenr           guibg=black       guifg=#808080    gui=bold

    hi Cursor           guibg=#cc4455     guifg=white      gui=bold
    hi link             CursorIM Cursor
    hi Normal           guibg=black       guifg=white      gui=none
    hi NonText          guibg=#445566     guifg=#ffeecc    gui=bold
    hi Visual           guibg=#557799     guifg=white      gui=none

    hi Directory        guibg=bg	      guifg=#337700    gui=none

    hi IncSearch        guibg=#0066cc     guifg=white      gui=none
    hi link Seach       IncSearch

    hi SpecialKey       guibg=bg	      guifg=fg         gui=none
    hi Titled           guibg=bg	      guifg=fg         gui=none

    hi ErrorMsg         guibg=bg	      guifg=#ff0000    gui=bold
    hi ModeMsg          guibg=bg	      guifg=#ffeecc    gui=none
    hi link	            MoreMsg           ModeMsg
    hi Question         guibg=bg	      guifg=#ccffcc    gui=bold
    hi link	            WarningMsg        ErrorMsg

    hi StatusLineNC     guibg=#ffeecc	  guifg=black	   gui=none
    hi StatusLine       guibg=#cc4455	  guifg=white	   gui=bold
    hi VertSplit        guibg=#ffeecc	  guifg=black	   gui=none

    hi DiffAdd          guibg=#446688     guifg=fg	       gui=none
    hi DiffChange       guibg=#558855     guifg=fg	       gui=none
    hi DiffDelete       guibg=#884444     guifg=fg	       gui=none
    hi DiffText         guibg=#884444     guifg=fg	       gui=bold

    " Colors for Syntax Highlighting.
    if exists("g:gardener_light_comments")
        hi Comment          guibg=#334455     guifg=#dddddd    gui=none
    else
        hi Comment          guibg=bg          guifg=#888888    gui=none
    endif


    hi Define	        guibg=bg          guifg=#66ccdd    gui=bold
    hi Conditional      guibg=bg          guifg=#aadd55    gui=bold

    hi Constant         guibg=bg          guifg=white	   gui=bold
    hi Identifier       guibg=bg          guifg=#ffddaa    gui=none
    hi String           guibg=bg          guifg=#ffffcc    gui=none
    hi Character        guibg=bg          guifg=#ffffcc    gui=bold
    hi Number           guibg=bg          guifg=#bbddff    gui=bold
    hi Boolean          guibg=bg          guifg=#ff55ff    gui=bold
    hi Float            guibg=bg          guifg=#bbddff    gui=bold

    hi Function         guibg=bg          guifg=#ffffaa    gui=bold
    hi Statement        guibg=bg          guifg=#ffffcc    gui=bold

    hi Repeat           guibg=bg          guifg=#ff9900    gui=bold
    hi Label            guibg=bg          guifg=#ffccff    gui=bold
    hi Operator         guibg=bg          guifg=#cc9966    gui=bold
    hi Keyword          guibg=bg          guifg=#66ffcc    gui=bold
    hi Exception        guibg=bg          guifg=#66ffcc    gui=bold

    hi PreProc	        guibg=bg          guifg=#ffcc99    gui=bold
    hi Include	        guibg=bg          guifg=#99cc99    gui=bold
    hi link Macro	  Include
    hi link PreCondit Include

    hi Type		        guibg=bg	      guifg=#ccffaa    gui=bold
    hi Structure	    guibg=bg	      guifg=#99ff99    gui=bold
    hi Typedef	        guibg=bg	      guifg=#99cc99    gui=italic

    hi StorageClass	    guibg=bg	      guifg=#99cc99    gui=bold
    hi Special	        guibg=bg	      guifg=#bbddff	   gui=bold
    hi SpecialChar	    guibg=bg	      guifg=#bbddff	   gui=bold
    hi Tag		        guibg=bg	      guifg=#bbddff	   gui=bold
    hi Delimiter	    guibg=bg	      guifg=fg	       gui=bold
    hi SpecialComment   guibg=#334455     guifg=#dddddd	   gui=italic
    hi Debug	        guibg=bg          guifg=#ff9999	   gui=none

    hi Underlined       guibg=bg          guifg=#99ccff    gui=underline

    hi Title            guibg=#445566     guifg=white	   gui=bold
    hi Ignore           guibg=bg	      guifg=#cccccc    gui=italic
    hi Error            guibg=#ff0000     guifg=white	   gui=bold
    hi Todo	            guibg=#556677     guifg=#ff0000    gui=bold

    hi htmlH1           guibg=bg          guifg=#ffffff    gui=bold
    hi htmlH2           guibg=bg          guifg=#dadada    gui=bold
    hi htmlH3           guibg=bg          guifg=#c6c6c6    gui=bold
    hi htmlH4           guibg=bg          guifg=#b2b2b2    gui=bold
    hi htmlH5           guibg=bg          guifg=#9e9e9e    gui=bold
    hi htmlH6           guibg=bg          guifg=#8a8a8a    gui=bold

else

    " Colors for the Terminal User Interface.
    exec "hi linenr         cterm=BOLD   ctermfg=245   ctermbg=NONE"

    exec "hi Cursor         cterm=BOLD   ctermfg=255   ctermbg=167"
    exec "hi CursorIM       cterm=BOLD   ctermfg=255   ctermbg=167"

    exec "hi Normal         cterm=NONE   ctermfg=NONE  ctermbg=NONE"
    exec "hi NonText        cterm=NONE   ctermfg=NONE  ctermbg=NONE"
    exec "hi Visual         cterm=NONE   ctermfg=235   ctermbg=109"

    exec "hi Linear         cterm=NONE   ctermfg=40   ctermbg=NONE"
    exec "hi Directory      cterm=NONE   ctermfg=64    ctermbg=NONE"
    exec "hi IncSearch      cterm=NONE   ctermfg=255   ctermbg=25"

    exec "hi ErrorMsg       cterm=BOLD   ctermfg=196   ctermbg=NONE"
    exec "hi WarningMsg     cterm=BOLD   ctermfg=196   ctermbg=NONE"
    exec "hi ModeMsg        cterm=NONE   ctermfg=230   ctermbg=NONE"
    exec "hi MoreMsg        cterm=NONE   ctermfg=230   ctermbg=NONE"
    exec "hi Question       cterm=NONE   ctermfg=194   ctermbg=NONE"

    exec "hi StatusLineNC   cterm=NONE   ctermfg=16    ctermbg=248"
    exec "hi StatusLine     cterm=BOLD   ctermfg=255   ctermbg=17"
    exec "hi VertSplit      cterm=NONE   ctermfg=16    ctermbg=248"

    exec "hi DiffAdd        cterm=NONE   ctermfg=255   ctermbg=60"
    exec "hi DiffChange     cterm=NONE   ctermfg=255   ctermbg=65"
    exec "hi DiffDelete     cterm=NONE   ctermfg=255   ctermbg=95"
    exec "hi DiffText       cterm=BOLD   ctermfg=255   ctermbg=95"

    exec "hi ColorColumn    cterm=NONE   ctermfg=NONE  ctermbg=235"
    exec "hi CursorColumn   cterm=NONE   ctermfg=NONE  ctermbg=235"
    exec "hi CursorLineNR   cterm=NONE   ctermfg=226   ctermbg=NONE"

    " Colors for Syntax Highlighting.
    exec "hi Comment        cterm=NONE   ctermfg=247   ctermbg=NONE"

    exec "hi Constant       cterm=NONE   ctermfg=255  ctermbg=NONE"
    exec "hi String         cterm=NONE   ctermfg=230   ctermbg=NONE"
    exec "hi Character      cterm=NONE   ctermfg=230  ctermbg=NONE"
    exec "hi Number         cterm=NONE   ctermfg=153  ctermbg=NONE"
    exec "hi Boolean        cterm=NONE   ctermfg=207  ctermbg=NONE"
    exec "hi Float          cterm=NONE   ctermfg=153  ctermbg=NONE"

    exec "hi Identifier     cterm=NONE   ctermfg=215  ctermbg=NONE"
    exec "hi Function       cterm=NONE   ctermfg=226  ctermbg=NONE"
    exec "hi Statement      cterm=NONE   ctermfg=185  ctermbg=NONE"

    exec "hi Define         cterm=NONE   ctermfg=68   ctermbg=NONE"
    exec "hi Conditional    cterm=NONE   ctermfg=185  ctermbg=NONE"

    exec "hi Repeat         cterm=NONE   ctermfg=185  ctermbg=NONE"
    exec "hi Label          cterm=NONE   ctermfg=206  ctermbg=NONE"
    exec "hi Operator       cterm=NONE   ctermfg=185  ctermbg=NONE"
    exec "hi Keyword        cterm=NONE   ctermfg=185   ctermbg=NONE"
    exec "hi Exception      cterm=NONE   ctermfg=86   ctermbg=NONE"

    exec "hi PreProc        cterm=NONE   ctermfg=69   ctermbg=NONE"
    exec "hi Include        cterm=NONE   ctermfg=76   ctermbg=NONE"
    exec "hi Macro          cterm=NONE   ctermfg=76   ctermbg=NONE"
    exec "hi PreCondit      cterm=NONE   ctermfg=76   ctermbg=NONE"

    exec "hi Type           cterm=NONE   ctermfg=112   ctermbg=NONE"
    exec "hi StorageClass   cterm=NONE   ctermfg=112   ctermbg=NONE"
    exec "hi Structure      cterm=NONE   ctermfg=112   ctermbg=NONE"
    exec "hi Typedef        cterm=NONE   ctermfg=112   ctermbg=NONE"

    exec "hi Special        cterm=NONE   ctermfg=153   ctermbg=NONE"
    exec "hi SpecialChar    cterm=NONE   ctermfg=153   ctermbg=NONE"
    exec "hi Tag            cterm=NONE   ctermfg=153   ctermbg=NONE"
    exec "hi Delimiter      cterm=NONE   ctermfg=255   ctermbg=NONE"
    exec "hi SpecialComment cterm=NONE   ctermfg=33    ctermbg=NONE"
    exec "hi Debug          cterm=NONE   ctermfg=210   ctermbg=NONE"

    exec "hi Title          cterm=BOLD   ctermfg=255   ctermbg=60"
    exec "hi Ignore         cterm=NONE   ctermfg=251   ctermbg=NONE"
    exec "hi Error          cterm=NONE   ctermfg=124   ctermbg=NONE"
    exec "hi Ignore         cterm=NONE   ctermfg=196   ctermbg=60"

    exec "hi htmlH1         cterm=BOLD   ctermfg=255   ctermbg=NONE"
    exec "hi htmlH2         cterm=BOLD   ctermfg=253   ctermbg=NONE"
    exec "hi htmlH3         cterm=BOLD   ctermfg=251   ctermbg=NONE"
    exec "hi htmlH4         cterm=BOLD   ctermfg=249   ctermbg=NONE"
    exec "hi htmlH5         cterm=BOLD   ctermfg=247   ctermbg=NONE"
    exec "hi htmlH6         cterm=BOLD   ctermfg=245   ctermbg=NONE"

endif

" And finally.
let g:colors_name = "gardener"
let colors_name   = "gardener"

