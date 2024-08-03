class TrieNode
  attr_accessor :children, :is_end_of_word

  def initialize
    @children = {}
    @is_end_of_word = false
  end
end

class Trie
  def initialize
    @root = TrieNode.new
  end

  def insert(word)
    node = @root
    word.each_char do |char|
      node.children[char] = TrieNode.new unless node.children.key?(char)
      node = node.children[char]
    end
    node.is_end_of_word = true
  end

  def search(word)
    node = find_node(word)
    node != nil && node.is_end_of_word
  end

  def starts_with(prefix)
    node = find_node(prefix)
    node != nil
  end

  private

  def find_node(prefix)
    node = @root
    prefix.each_char do |char|
      return nil unless node.children.key?(char)
      node = node.children[char]
    end
    node
  end
end

# Example Usage
trie = Trie.new
trie.insert("apple")
puts trie.search("apple")      # => true
puts trie.search("app")        # => false
puts trie.starts_with("app")   # => true
trie.insert("app")
puts trie.search("app")        # => true

