vim.diagnostic.config {
  virtual_text = {
    prefix = '●',
  },
  signs = true,
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    border = 'rounded',
  },
}

-- Diagnostic sigsn
local signs = {
  { name = 'DiagnosticSignError', text = ' ' },
  { name = 'DiagnosticSignWarn', text = ' ' },
  { name = 'DiagnosticSignInfo', text = ' ' },
  { name = 'DiagnosticSignHint', text = ' ' },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { text = sign.text, texthl = sign.name, numhl = sign.name })
end
