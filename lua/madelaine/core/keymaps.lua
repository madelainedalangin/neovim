vim.g.mapleader = " "

local keymap = vim.keymap --for conciseness

--general keymaps--

--insert (i), exit of insert (jk)
keymap.set("i", "jk", "<ESC>")

--clear search highlights with space + nh
keymap.set("n", "<leader>nh", ":nohl<CR>")

--delete char but not store in memory??
keymap.set("n", "x", "_x")

--increment and decrement
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") --split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") --split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") --make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") --close current split window

----plugin Keybinds----

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

--nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") --find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") --list open buffers in current neovim instance
keymap.set("n", "leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

----vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

--###########################################################################--

--barbar
-- Move to previous/next
keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>") --frequently used
keymap.set("n", "<TAB>", "<Cmd>BufferNext<CR>") --frequently used


--##BARBAR KEYMAPS I DONT REALLY USE BUT WILL KEEP IT HERE IN THE MEANTIME##--

-- Re-order to previous/next
-- keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>")
-- keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>")

-- -- Goto buffer in position...
-- keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>")
-- keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>")
-- keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>")
-- keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>")
-- keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>")
-- keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>")
-- keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>")
-- keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>")
-- keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>")
-- keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>")

-- -- Pin/unpin buffer
keymap.set("n", "<A-p>", "<Cmd>BufferPin<CR>")

-- -- Close buffer
keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>")

--Wipeout buffer
                -- :BufferWipeout
--Close commands
                -- :BufferCloseAllButCurrent
                -- :BufferCloseAllButPinned
                -- :BufferCloseAllButCurrentOrPinned
                -- :BufferCloseBuffersLeft
                -- :BufferCloseBuffersRight
-- Magic buffer-picking mode
keymap.set("n", "<C-p>", "<Cmd>BufferPick<CR>")

-- Sort automatically by...
-- keymap.set("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>")
-- keymap.set("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>")
-- keymap.set("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>")
-- keymap.set("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>")

--Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
