return{
  -- NOTE:ColorScheme configuration
  {
    'marko-cerovac/material.nvim',
    priority = 1000,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('material').setup {

        styles = { -- Give comments style such as bold, italic, underline etc.
          comments = { italic = true },
          strings = {},
          keywords = {},
          functions = {},
          variables = {},
          operators = {},
          types = {},
        },

        plugins = { -- Uncomment the plugins that you use to highlight them
          'blink',
          'indent-blankline',
          'telescope',
          'which-key',
          --'mini',
          -- "harpoon",
          -- "hop",
          -- "illuminate",
        },

        custom_highlights = {
          -- UI
          Normal = { fg = '#E6E1CF', bg = '#0A0E14' },
          LineNr = { fg = '#d4d4d4' },
          CursorLine = { bg = '#1f1f2e' },
          CursorLineNr = { fg = '#FFB454', bold = true },
          Cursor = { bg = '#FFB454' },
          VertSplit = { fg = '#3B4260' },
          WinSeparator = { fg = '#3B4260' },
          Comment = { fg = '#5C6773', italic = true },

          -- Syntax (Tree-sitter)
          ['@variable'] = { fg = '#E6E1CF' },
          ['@variable.member'] = { fg = '#E6E1CF' },
          ['@field'] = { fg = '#E6E1CF' },
          ['@string'] = { fg = '#AAD94C' },
          ['@function'] = { fg = '#39BAE6' },
          ['@function.call'] = { fg = '#39BAE6' },
          ['@method'] = { fg = '#39BAE6' },
          ['@type'] = { fg = '#39BAE6' },
          ['@number'] = { fg = '#ff7733' },
          ['@boolean'] = { fg = '#ff7733' },
          ['@operator'] = { fg = '#fc9b52' },
          ['@parameter'] = { fg = '#fc9b52' },
          ['@keyword'] = { fg = '#fc9b52' },
          ['@tag'] = { fg = '#fc9b52' },
          ['@tag.attribute'] = { fg = '#fe59c2' },
          ['@property'] = { fg = '#fe59c2' },
        },
      }

      vim.cmd.colorscheme 'material-deep-ocean'
      -- mini.statusline modes color
      vim.api.nvim_set_hl(0, 'MiniStatuslineModeNormal', { fg = '#000000', bg = '#aad94c', bold = true })
      vim.api.nvim_set_hl(0, 'MiniStatuslineModeInsert', { fg = '#000000', bg = '#ff7733', bold = true })
      vim.api.nvim_set_hl(0, 'MiniStatuslineModeReplace', { fg = '#000000', bg = '#f960ff', bold = true })
      vim.api.nvim_set_hl(0, 'MiniStatuslineModeVisual', { fg = '#000000', bg = '#fe59c2', bold = true })
      vim.api.nvim_set_hl(0, 'MiniStatuslineModeCommand', { fg = '#000000', bg = '#e03939', bold = true })
      vim.api.nvim_set_hl(0, 'MiniStatuslineFilename', { fg = '#aad94c', bg = '#0A0E14', bold = true })
    end,
  },
}
