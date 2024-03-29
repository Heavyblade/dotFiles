" Modeline and Notes {
"   EverVim is a modern & powerful vim distribution
"   Repo URL: https://github.com/LER0ever/EverVim
"   Made by [LER0ever](https://github.com/LER0ever)
"   Licensed under
"       * Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE.md) or http://www.apache.org/licenses/LICENSE-2.0)
" }

" EverVim options {

    " Disable folding
    let g:evervim_disable_folding=1
    "

    " EverVim Bundle Groups
    " Bundle Group name is just folders under ~/.EverVim/plugins
    " Below is the default config, uncomment and make your own
    let g:evervim_bundle_groups=['general', 'appearance', 'writing', 'youcompleteme', 'programming', 'javascript', 'html', 'css', 'misc', 'go', 'ruby']

    " Color Theme
    " Use :Colors for a list of available colorschemes
    "   let g:evervim_airline_theme="dracula"
    "   let g:evervim_light_background = 1

    " Customize Patched Font
    " Pick one at https://github.com/ryanoasis/nerd-fonts
    " By default it's "Knack Nerd Font" on Unix and "Knack NF" on Windows
    "   let g:evervim_font="Knack Nerd Font"
    "   let g:evervim_font_size="12"

    " Disable Patched Font
    "   let g:evervim_no_patched_fonts = 1

    " Override Bundle Configuration
    " You can add additional plugins, or disable a set of plugins instead of
    " adding/removing a whole bundle
    " Simply uncomment the following line and add remove plugins in the
    " ~/.EverVim.bundles file using `Plug` and `UnPlug` commands
    let g:override_evervim_bundles = 1
    "
    " in ~/.EverVim.bundles,
    "   Plug 'Someone/AwesomePlugin'
    "   UnPlug 'Someone/PluginToDisable'

    " Automatically changing to open file directory
    " May cause airline to misbehave
    "   let g:evervim_autochdir = 1

    " Default statusline is vim-airline
    " You can change to the more configurable lightline.vim by uncomment the following
    "   let g:evervim_use_lightline = 1

    " Header constants for generating and updating the comment header
    "   let g:header_field_author = 'YOUR_NAME'
    "   let g:header_field_author_email = 'YOUR_EMAIL_ADDRESS'

    " Startup Screen
    " You can customize the welcome message by changing the following line
    "   let g:evervim_welcome_message = "Code your life with EverVim!"

    " Leader keys
    "   let g:evervim_leader=','
    "   let g:evervim_localleader='\\'

    " Restore cursor
    " Automatically restore your cursor to the place you left
    " Disable by uncommenting the following line.
    "   let g:evervim_no_restore_cursor = 1

    " Linting engine
    " Use ALE by default. But if you are using an older version
    " of vim or experiencing issues with ALE, you can switch to
    " Syntastic by uncommenting the following line
    "   let g:evervim_use_syntastic = 1

    " Fuzzy Finder
    " By default, CtrlP is used on Windows and FZF.vim on Unix
    " Fall back to CtrlP by uncommenting the following line (Unix only)
    "   let g:evervim_use_ctrlp = 1

    " Enable smooth scrolling
    " Use physics-based smooth scrolling for half-page/full-page scrolling
    " Friction and air-drag can be override here
    "   let g:evervim_smooth_scrolling = 1

    " Enable transparent background on terminal vim/nvim
    "   let g:evervim_transparent_bg = 1

    " Disable easier moving in tabs and windows
    " only if you need <C-J> for jumping or other conflicting plugin
    " keybinding
    "   let g:evervim_no_easyWindows = 1

    " Disable wrap relative motion for start/end line motions
    "   let g:evervim_no_wrapRelMotion = 1

    " Disable fast tab navigation
    "   let g:evervim_no_fastTabs = 1

    " Enable NerdTree Sync across tabs
    " Synchronize view and focus between different tabs
    let g:evervim_nerdtree_tabs_sync = 1

    " Clear search highlighting
    "   let g:evervim_clear_search_highlight = 1

    " Disable neosnippet expansion
    " This maps over <C-k> and does some Supertab
    " emulation with snippets
    "   let g:evervim_no_neosnippet_expand = 1

    " Disable whitespace stripping
    "   let g:evervim_keep_trailing_whitespace = 1

    " vim files directory
    "   let g:evervim_consolidated_directory = <full path to desired directory>
    "   eg: let g:evervim_consolidated_directory = $HOME . '/.vim/'

    " This makes the completion popup strictly passive.
    " Keypresses acts normally. <ESC> takes you of insert mode, words don't
    " automatically complete, pressing <CR> inserts a newline, etc. Iff the
    " menu is open, tab will cycle through it. If a snippet is selected, <C-k>
    " expands it and jumps between fields.
    "   let g:evervim_noninvasive_completion = 1

    " Don't turn conceallevel or concealcursor
    "   let g:evervim_no_conceal = 1

    " Disable  omni complete
    "   let g:evervim_no_omni_complete = 1

    " Prefer indentguides
    "   let g:evervim_use_indentguides = 1

    " Prefer Neoformat over vim-autoformat
    "   let g:evervim_use_neoformat = 1

    " Disable autoformat on write
    " You can still use <Leader>fm to manually format the file
    "   let g:evervim_no_autoformat = 1

    " Hybrid Linenumber
    " Show absolute line number for current line and relative
    " for the rest
    "   let g:evervim_hybrid_linenumber = 1

    " 80 Column Warning
    " Shows a magenta line at column 81 only for those lines that exceeds 80
    "   let g:evervim_80_column_warning = 1

    " Minimap Support
    " Shows a minimap on the right hand side, need has_python
    "   let g:evervim_minimap

    " Don't create default mappings for multicursors
    " See :help multiple-cursors-mappings
    "   let g:multi_cursor_use_default_mapping=0
    "   let g:multi_cursor_next_key='<C-n>'
    "   let g:multi_cursor_prev_key='<C-p>'
    "   let g:multi_cursor_skip_key='<C-x>'
    "   let g:multi_cursor_quit_key='<Esc>'
    " Require a special keypress to enter multiple cursors mode
    "   let g:multi_cursor_start_key='+'

    " Mappings for editing/applying evervim config
    "   let g:evervim_edit_config_mapping='<leader>ec'
    "   let g:evervim_apply_config_mapping='<leader>ac'

    " Custome mappings
    map <F4> :tabnew<cr>
    map <F5> :WinResizerStartResize<cr>
    map <F6> :ALEToggle<cr>
    map <F2> :Telescope find_files<cr>
    map <C-w> :bd<cr>

    " Allow vim to share the sistem clipboard
    set clipboard=unnamedplus

    "set number relativenumber
    let g:ctrlp_working_path_mode = 0

    " show relative numbers
    augroup numbertoggle
      autocmd!
      autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
      autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    augroup END

    " default values for synta
    let g:indentLine_setColors = 0
    let g:indentLine_char = get(g:, 'indentLine_char', '⎸')

    syntax on
    let g:rehash256 = 1
    let g:evervim_color_theme="onedark"


    " Disable ALE by default
    let g:ale_enabled = 0
    let g:UltiSnipsExpandTrigger = "<C-Tab>"

    " Set tabs to two spaces every where
    setlocal expandtab shiftwidth=2 softtabstop=2

    let g:prettier#config#tab_width = '2'
    let g:prettier#config#use_tabs = 'false'

    "Remove bell on vim
    set noeb vb t_vb=

    " ack.vim --- {{{

        " Use ripgrep for searching ⚡️
        " Options include:
        " --vimgrep -> Needed to parse the rg response properly for ack.vim
        " --type-not sql -> Avoid huge sql file dumps as it slows down the search
        " --smart-case -> Search case insensitive if all lowercase pattern, Search case sensitively otherwise
        let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'

        " Auto close the Quickfix list after pressing '<enter>' on a list item
        let g:ack_autoclose = 1

        " Any empty ack search will search for the work the cursor is on
        let g:ack_use_cword_for_empty_search = 1

        " Don't jump to first match
        cnoreabbrev Ack Ack!

        " Maps <leader>/ so we're ready to type the search keyword
        nnoremap <Leader>/ :Ack!<Space>

        " Navigate quickfix list with ease
        nnoremap <silent> [q :cprevious<CR>
        nnoremap <silent> ]q :cnext<CR>
    " }}}
"}
