function sum(num)
  local total = 0
  for i = 1, num, 1 do
    total = total + i
  end
  return total
end

print(sum(100))
