"spell-checker: disable
call plug#begin('~/.custom/nvim/plugins')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jiangmiao/auto-pairs'
    Plug 'sheerun/vim-polyglot'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'xiyaowong/nvim-transparent'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'lambdalisue/suda.vim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'folke/todo-comments.nvim'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'Shatur/neovim-ayu'
    Plug 'Luxed/ayu-vim'
    Plug 'Mofiqul/vscode.nvim'
    Plug 'wolf-dog/nigted.vim'
    Plug 'kjssad/quantum.vim'
    Plug 'nekonako/xresources-nvim'
    Plug 'romgrk/nvim-treesitter-context'
    Plug 'wfxr/minimap.vim'
    Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
    Plug 'erietz/vim-terminator'
    Plug 'iamcco/coc-spell-checker', {'do': 'yarn install && yarn build'}
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    Plug 'AndrewRadev/id3.vim'
    Plug 'yamatsum/nvim-cursorline'
    Plug 'glepnir/dashboard-nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    "Local Plugins
    Plug '~/.custom/nvim/plugins/hello-world.nvim'
    Plug '~/.custom/nvim/plugins/cardinal-notes.nvim'
call plug#end()

set expandtab
set shiftwidth=4
set tabstop=4
set mouse=a
set number
set relativenumber
set background=dark
set termguicolors " this variable must be enabled for colors to be applied properly
set cursorline
"set cursorcolumn
"set colorcolumn=100
set signcolumn=yes

set viewoptions=folds,options,cursor,unix,slash
set virtualedit=onemore

" wrap
set nowrap

" window scroll
set winminheight=0
set scrolloff=3
set splitbelow

" mouse
set mouse+=a
set mousehide

" spaceline
set list
set listchars=tab:›\ ,trail:-,extends:#,nbsp:.

" updatetime
set updatetime=300

" COLOR CONFIG
let g:vscode_style = "dark"
let g:nighted_transparent_bg = 1
set background=dark

colorscheme xresources "xresources tokyonight ayu vscode nighted quantum

" COC CONFIG
let g:coc_global_extensions = [
  \ 'coc-python',
  \ 'coc-html',
  \ 'coc-snippets',
  \ 'coc-prettier', 
  \ 'coc-json',
  \ 'coc-rust-analyzer',
  \ 'coc-sh'
  \ ]

" MINIMAP CONFIG
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_highlight_range = 1

" BEACON CONFIG
let g:beacon_enable = 1
let g:beacon_size = 60
let g:beacon_minimal_jump = 3

" NVIM-TREE SETUP
let g:nvim_tree_side = 'left' "left by default
let g:nvim_tree_width = 30 "30 by default, can be width_in_columns or 'width_in_percent%'
let g:nvim_tree_ignore = [  ] "empty by default
let g:nvim_tree_gitignore = 0 "0 by default
let g:nvim_tree_auto_open = 0 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 0 "0 by default, closes the tree when it's the last window
let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_quit_on_open = 0 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles = 0 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 2 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open = 0 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_auto_resize = 1 "1 by default, will resize the tree to its saved width when opening a file
let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_hijack_cursor = 0 "1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
let g:nvim_tree_icon_padding = '  ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_update_cwd = 1 "0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 1,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
"

let g:nvim_tree_icons = {
    \ 'default': ' ',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "✖",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }

let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:transparent_enabled = 1

" MARKDOWN CONFIG
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']

let g:dashboard_default_executive = 'telescope'
let g:dashboard_custom_header=[
            \' ██████╗ █████╗ ██████╗ ██████╗ ██╗███╗   ██╗ █████╗ ██╗     ', 
            \'██╔════╝██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔══██╗██║     ',
            \'██║     ███████║██████╔╝██║  ██║██║██╔██╗ ██║███████║██║     ',
            \'██║     ██╔══██║██╔══██╗██║  ██║██║██║╚██╗██║██╔══██║██║     ',
            \'╚██████╗██║  ██║██║  ██║██████╔╝██║██║ ╚████║██║  ██║███████╗',
            \' ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝']

" AYU CONFIG
let g:ayucolor="mirage"

" NVIMTREE REMAPS
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" CUSTOM REMAPS
nnoremap <C-q> :wqa!<CR>
nnoremap <C-s> :wa!<CR>

" MANAGING TABS
nnoremap <C-t> :tabnew<CR>
nnoremap <leader>tn :tabn<CR>
nnoremap <leader>tp :tabp<CR>

" SPELLCHECK REMAPS
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" MARKDOWN REMAPS
nmap <C-p> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

" list all lines with the word under the cursor {{{
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeNormal guibg=normal

autocmd VimEnter * TransparentEnable

" LUA
lua << EOF
require'telescope-config'
require'colorizer'.setup()
require("todo-comments").setup {}
require'nvim-treesitter.configs'.setup {}

local ayu_mirage = require'lualine.themes.ayu_mirage'
local codedark = require'lualine.themes.codedark'
local horizon = require'lualine.themes.horizon'

require'lualine'.setup{
    options = { theme = codedark,
                section_separators = '',
                component_separators = ''
               }

}

require'treesitter-context'.setup{
    enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
    throttle = true, -- Throttles plugin updates (may improve performance)
}

require'telescope'.setup {
    defaults = {
            previewer = true,
            initial_mode = "normal",
        }
    }
EOF

