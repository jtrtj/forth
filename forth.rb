class Forth
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
end