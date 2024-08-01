class DirUtil
  def self.simplify_path(path)
    stack = []
    path.split('/').each do |component|
      case component
      when '', '.'
        next
      when '..'
        stack.pop if !stack.empty?
      else
        stack.push(component)
      end
    end
    '/' + stack.join('/')
  end
end

path = "//home/user/.//Documents/../Pictures"
result = DirUtil.simplify_path(path)
puts result
