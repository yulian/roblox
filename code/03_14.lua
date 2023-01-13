my_print = function(param)
  print(param)
end

function add(num1, num2, print_function)
  local result = num1 + num2
  print_function(result)
end

add(10, 5, my_print)
