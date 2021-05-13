
do
  local t = {}
  for i=1,100 do t[#t+1] = i end
  assert(#t == 100)
  for i=1,100 do t[#t] = nil end
end

do
  local t = {}
  t[90] = 999
  for i=1,100 do t[#t+1] = i end
  assert(#t > 100 and t[#t] == 100)
end

do
  local t = {}
  for i=1,100 do t[i] = i end
  t[10] = nil
  for i=1,99 do t[#t] = nil end
  assert(#t == 0)
end

