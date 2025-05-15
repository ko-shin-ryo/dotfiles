set clipboard=unnamed

noremap j gj
noremap gj j
noremap k gk
noremap gk k
map L llllllllll
map K 10k
map J 10j
map H hhhhhhhhhh
nmap Y y$
nmap <F9> :noh<CR>
imap jj <Esc>

unmap <Space>
nmap <Space>y 0v$y
map <Space>p "0p
map <Space>P "0P

" Search
map <Space>il /\[\[./+\]\]<CR> " inner link

" Openlink
exmap openlink obcommand editor:follow-link
nmap <Space>o :openlink<CR>
exmap openlink_leaf obcommand editor:open-link-in-new-leaf
nmap <Space>O :openlink_leaf<CR>

" Header
exmap h0 obcommand editor:set-heading-0
nmap <Space>H0 :h0<CR>
nmap <Space>h0 <Space>H0a
exmap h1 obcommand editor:set-heading-1
nmap <Space>H1 :h1<CR>
nmap <Space>h1 <Space>H1a
exmap h2 obcommand editor:set-heading-2
nmap <Space>H2 :h2<CR>
nmap <Space>h2 <Space>H2a
exmap h3 obcommand editor:set-heading-3
nmap <Space>H3 :h3<CR>
nmap <Space>h3 <Space>H3a
exmap h4 obcommand editor:set-heading-4
nmap <Space>H4 :h4<CR>
nmap <Space>h4 <Space>H4a
exmap h5 obcommand editor:set-heading-5
nmap <Space>H5 :h5<CR>
nmap <Space>h5 <Space>H5a
exmap h6 obcommand editor:set-heading-6
nmap <Space>H6 :h6<CR>
nmap <Space>h6 <Space>H6a

" Table
exmap table_controller obcommand templater-obsidian:Config/Template/Actions/table_controller.md
nmap <Space>t :table_controller<CR>

" Command
exmap w obcommand editor:save-file
exmap q obcommand workspace:close
exmap p obcommand workspace:toggle-pin
exmap ls obcommand app:toggle-left-sidebar
exmap rs obcommand app:toggle-right-sidebar
exmap split obcommand workspace:split-horizontal
exmap vsplit obcommand workspace:split-vertical
exmap graph obcommand graph:open-local
exmap mindmap obcommand obsidian-mind-map:app:markmap-preview
exmap folder obcommand open-with-default-app:show
exmap publish obcommand publish:open-in-live-site
exmap vimrc obcommand templater-obsidian:Config/Template/Actions/open_vimrc.md
exmap mf obcommand templater-obsidian:Config/Template/Actions/move_to_fragments.md
exmap mj obcommand templater-obsidian:Config/Template/Actions/move_to_journals.md

" Surround
exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_back_quotes surround ` `
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }
exmap surround_angle_brackets surround < >
exmap surround_math surround $ $
exmap surround_italic surround _ _
exmap surround_bold surround ** **
exmap surround_line surround == ==
exmap surround_marukakko surround （ ）
exmap surround_kagikakko surround 「 」
exmap surround_yamakakko surround 〈 〉
exmap surround_nijukagi surround 『 』
exmap surround_sumituki surround 【 】
vmap [[ :surround_wiki<CR>
vmap ]] :surround_wiki<CR>
map <Space>s" :surround_double_quotes<CR>
map <Space>s' :surround_single_quotes<CR>
map <Space>s` :surround_back_quotes<CR>
map <Space>s( :surround_brackets<CR>
map <Space>s) :surround_brackets<CR>
map <Space>s[ :surround_square_brackets<CR>
map <Space>s] :surround_square_brackets<CR>
map <Space>s{ :surround_curly_brackets<CR>
map <Space>s} :surround_curly_brackets<CR>
map <Space>s< :surround_angle_brackets<CR>
map <Space>s> :surround_angle_brackets<CR>
map <Space>s$ :surround_math<CR>
map <Space>si :surround_italic<CR>
map <Space>s_ :surround_italic<CR>
map <Space>sb :surround_bold<CR>
map <Space>s* :surround_bold<CR>
map <Space>s= :surround_line<CR>
map <Space>sl :surround_line<CR>
map <Space>sm :surround_marukakko<CR>
map <Space>sk :surround_kagikakko<CR>
map <Space>sy :surround_yamakakko<CR>
map <Space>sn :surround_nijukagi<CR>
map <Space>ss :surround_sumituki<CR>

" Fold
exmap togglefold obcommand editor:toggle-fold
nmap za :togglefold<CR>
exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall<CR>
exmap foldall obcommand editor:fold-all
nmap zM :foldall<CR>
exmap toggle_fold_properties obcommand editor:toggle-fold-properties
nmap zp :toggle_fold_properties<CR>

" Tab
" required plugins:
" - Cycle through panes
" - Pane Relief
exmap tab1 obcommand workspace:goto-tab-1
nmap g1 :tab1<CR>
exmap tab2 obcommand workspace:goto-tab-2
nmap g2 :tab2<CR>
exmap tab3 obcommand workspace:goto-tab-3
nmap g3 :tab3<CR>
exmap tab4 obcommand workspace:goto-tab-4
nmap g4 :tab4<CR>
exmap tab5 obcommand workspace:goto-tab-5
nmap g5 :tab5<CR>
exmap tab6 obcommand workspace:goto-tab-6
nmap g6 :tab6<CR>
exmap tab7 obcommand workspace:goto-tab-7
nmap g7 :tab7<CR>
exmap tab8 obcommand workspace:goto-tab-8
nmap g8 :tab8<CR>
exmap tablast obcommand workspace:goto-last-tab
nmap g9 :tablast<CR>
exmap tabnext obcommand cycle-through-panes:cycle-through-panes
nmap gt :tabnext<CR>
exmap tabprev obcommand cycle-through-panes:cycle-through-panes-reverse
nmap gT :tabprev<CR>
exmap +tabmove obcommand pane-relief:swap-next
nmap gs :+tabmove<CR>
exmap -tabmove obcommand pane-relief:swap-prev
nmap gS :-tabmove<CR>
exmap tabmovehead obcommand pane-relief:put-1st
nmap g[ :tabmovehead<CR>
exmap tabmovetail obcommand pane-relief:put-last
nmap g] :tabmovetail<CR>
exmap select_tab obcommand templater-obsidian:Config/Template/Actions/select_tab.md
nmap T :select_tab<CR>


" Zoom
" request plugins:
" - Zoom
exmap zoomin obcommand obsidian-zoom:zoom-in
nmap zi :zoomin<CR>
nmap zI $[[:zoomin<CR>
exmap zoomout obcommand obsidian-zoom:zoom-out
nmap zo :zoomout<CR>
nmap zO :zoomout<CR>

" Others
" https://github.com/esm7/obsidian-vimrc-support/discussions/146
exmap ze_to_he jscommand { editor.setSelections([selection]); this.app.commands.commands['templater-obsidian:Config/Template/Actions/ze_to_he.md'].callback() }
map <Space>zh :ze_to_he<CR>
