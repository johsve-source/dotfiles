local abbreviations = {
  Wq = 'wq',
  WQ = 'wq',
  Wqa = 'wqa',
  W = 'w',
  Q = 'q',
  Qa = 'qa',
  Bd = 'bd',
  E = 'e',

  -- Git
  Gco = 'Git checkout',
  Gcb = 'Git checkout -b',
  Gbe = 'Git blame',
  Gct = 'Git commit',
  Gcm = 'Git commit -m',
  Gpl = 'Git pull',
  Gph = 'Git push',
  Gss = 'Git status',
  Gad = 'Git add',
  Gdf = 'Git diff',
}

for left, right in pairs(abbreviations) do
  vim.cmd.cnoreabbrev(('%s %s'):format(left, right))
end
