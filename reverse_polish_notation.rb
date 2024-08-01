class MathUtils
  def self.eval_rpn(tokens)
    stack = []
    tokens.each do |token|
      if token.match?(/-?\d+/)
        stack.push(token.to_i)
      else
        a, b = stack.pop(2)
        result = case token
                 when '+' then a + b
                 when '-' then a - b
                 when '*' then a * b
                 when '/' then (a.to_f / b).to_i
                 end
        stack.push(result)
      end
    end
    stack.pop
  end
end

tokens = ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]
answer = MathUtils.eval_rpn(tokens)
puts answer
