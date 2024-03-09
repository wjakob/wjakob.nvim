-- disable block quote highlighting. The tree-sitter grammar incorrectly
-- generates lots of block-quotes Dr.Jit's reference.rst autoclass/..
-- declarations
vim.cmd('hi link @markup.quote.rst NONE')
