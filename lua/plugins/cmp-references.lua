return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "jmbuhr/cmp-pandoc-references" },
    opts = function(_, opts)
      -- Add "pandoc_references" to the list of completion sources
      table.insert(opts.sources, {
        name = "pandoc_references",
      })
    end,
  },
}
