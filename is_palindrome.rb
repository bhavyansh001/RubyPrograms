class StringUtils
  def self.is_palindrome(s)
    return true if s.empty?
    s = s.downcase.gsub(/[^a-z0-9]/, '')
    s == s.reverse
  end
end

s = "A man, a plan, a canal: Panama"
result = StringUtils.is_palindrome(s)
puts result
