class TreeNode
  attr_accessor :val, :left, :right
  
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

class Solution
  def invert_tree(root)
    return nil if root.nil?
    
    left = invert_tree(root.left)
    right = invert_tree(root.right)
    root.left, root.right = right, left
    root 
  end

  def create_binary_tree(arr, index = 0)
    return nil if index >= arr.length || arr[index].nil?

    node = TreeNode.new(arr[index])
    node.left = create_binary_tree(arr, 2 * index + 1)
    node.right = create_binary_tree(arr, 2 * index + 2)
    node
  end

  def print_tree(root)
    return if root.nil?
    
    puts root.val
    print_tree(root.left)
    print_tree(root.right)
  end
end


solution = Solution.new

tree_array = [4, 2, 7, 1, 3, 6, 9]
root = solution.create_binary_tree(tree_array)

puts "Original tree:"
solution.print_tree(root)

inverted_root = solution.invert_tree(root)

puts "\nInverted tree:"
solution.print_tree(inverted_root)
