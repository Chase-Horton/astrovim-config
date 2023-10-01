-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    ["<leader>b"] = { name = "Buffers" },
    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>w"] = { name = "Window" },
    ["<leader>wd"] = { "<cmd>:wincmd q<cr>", desc = "Close Window" },
    ["<leader>wq"] = { "<cmd>:wincmd q<cr>", desc = "Close Window" },
    ["<leader>wl"] = { "<cmd>:wincmd v<cr>", desc = "Split Right" },
    ["<leader>wj"] = { "<cmd>:wincmd s<cr>", desc = "Split Down" },

    ["<leader>r"] = { name = "Rust" },
    ["<leader>rt"] = { "<cmd>:RustTest<cr>", desc = "Run selected test(s) under cursor" },
    ["<leader>rT"] = { "<cmd>:RustTest!<cr>", desc = "Run all tests in file" },
    ["<leader>rr"] = { "<cmd>:RustRun<cr>", desc = "Run rust file" },
    ["<leader>rc"] = {
      '<cmd>:TermExec direction="vertical" cmd="cargo run"<cr>',
      desc = "Cargo run in split window",
    },
    ["<leader>rb"] = { name = "Bacon" },
    ["<leader>rbb"] = {
      '<cmd>:TermExec direction="vertical" cmd="bacon"<cr>',
      desc = "Run Bacon Base",
    },
    ["<leader>rbc"] = {
      '<cmd>:TermExec direction="vertical" cmd="bacon clippy"<cr>',
      desc = "Run Bacon Clippy",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
