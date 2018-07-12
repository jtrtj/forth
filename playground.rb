def interpret(source_code)
  source_code.split.inject([]) do |result, code|
    case code

    when /^\d+$/
      result << code.to_i

    when "+"
      result << result.pop() + result.pop()
    end
  end
end


###


def test(expected, instructions)
  actual = interpret(instructions)
  if expected != actual
    puts "FAILED #{instructions} SHOULD PRODUCE #{expected}, BUT PRODUCED #{actual}"
  end
end

test([1], "1")
test([1, 2], "1 2")
test([3, 4], "1 2 + 4")
test([2], "1 1 +")
test([1, 3], "1 1 2 +")
test([4], "1 1 2 + +")
test([4], "1 1 + 2 +")