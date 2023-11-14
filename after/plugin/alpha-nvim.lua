local status, alpha = pcall(require, 'alpha')
local statusdashboard, dashboard = pcall(require, 'alpha.themes.dashboard')

if not status then
  return
end

if not statusdashboard then
  return
end

dashboard.section.header.val = {
  "PPPGY:                               ?GGPPPPPPPPPP",
  "PPGJ.                                 !GGPPPPPPPPP",
  "PG?                                   .~PGPPPPPPPP",
  "GY                                     .^PGPPPPPPP",
  "P~                                      .!PGPPPPPP",
  "J^                                       :JGPPPPPP",
  "!                     :.                 .!PGPPPPP",
  "~         .:           ^:!.                !PGGPPP",
  "..         .:   ...    ..:^^ .      :.   .  :JGGGP",
  "~^       :~  ^~...:77:.~?J?~~~.    ^75    . .^~YGG",
  "PY        ~^ .^!JJ~.J&&GJGG??7:   .~Y5     .... .!",
  "GP:      .7J~^P7Y@@&#&@@@@&&@&~   ^!@:       :~. .",
  "GP7       :~J7~75&@@@@@@@@@@@&J   :^^         :7.!",
  "GP7       .B&&BG@@@@@&&####&@&Y.   !      .  . ^^&",
  "PG!        J@@@@@@&#BG&@@@@@@@5.   G5.?:    JG.7&!",
  "PG!      :. P@PGBB&@@&@@@@@@@@G.   B5^@YBY  :PY #&",
  "PGY   ^   !  7&GG@@@@@@@@@&&@@&.   J!:@BB@!^ .5~.#",
  "PGP   7   ~~: ^5YB&@@@GB#B#@@@@^   ^. @@B@&7^ .J.7",
  "!!~   7^ ..~^    :5&@@@@@@@@@@G!   .: ?@G@@Y!  ~! ",
  "PPP. .~? :^.^. .   .:?G&@@@@#B@5    Y..BB@@@~: ?J^",
  "GGG: ~.J  Y..   :  .^   .^J57@@Y  : B!7:J@@@G. 75J",
  "PPG~ ^:.. ~P.   .:   ^^   &@JG&B  7 G@.7YYB&B .JPP",
  "PPG? .P!.: JG7. ^:    . :~&@&&&@ .J7Y@G~^^  .!&JPG",
  "PPG5  JP^^^ ?G5 .Y. .G. 7!5@@@#B ~55JG&&P!~?#@@&JP"
}

dashboard.section.buttons.val = {
  dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", "  > Find file", ":cd $HOME/ | Telescope find_files<CR>"),
  dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
  dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
  dashboard.button("q", "󰿅  > Quit NVIM", ":qa<CR>"),
}

alpha.setup(dashboard.opts)

vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
