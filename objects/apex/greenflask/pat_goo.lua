function build(d,c,p, ...)
  if c.pat_goo_oldBuilder then
    local this = build
    require(c.pat_goo_oldBuilder)
    if this ~= build then
      c,p = build(d,c,p, ...)
    end
  end
  
  local races = root.assetJson("/player.config:species")
  for _,race in pairs(races) do
    p[race.."Description"] = c.pat_gooStrings[race] or c.pat_gooStrings.__default
  end
  
  return c,p
end