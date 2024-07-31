class AnagramFinder
  def self.group_anagrams(strs)
    anagrams = Hash.new{|hash, key| hash[key] = []}

    strs.each do |str|
      sorted_str = str.chars.sort.join
      anagrams[sorted_str] << str
    end
    anagrams.values
    # anagrams
  end
end

strs = ["eat","tea","tan","ate","nat","bat"]
result = AnagramFinder.group_anagrams(strs)
puts result.inspect
