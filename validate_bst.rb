class TreeNode
  attr_accessor :val, :left, :right
  
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

class Solution
  def is_valid_bst(root)
    validate(root, -Float::INFINITY, Float::INFINITY)
  end

  private

  def validate(node, low, high)
    return true if node.nil?
    return false if node.val <= low || node.val >= high
    validate(node.left, low, node.val) && validate(node.right, node.val, high)
  end

  def create_binary_tree(arr, index = 0)
    return nil if index >= arr.length || arr[index].nil?

    node = TreeNode.new(arr[index])
    node.left = create_binary_tree(arr, 2 * index + 1)
    node.right = create_binary_tree(arr, 2 * index + 2)
    node
  end
end

solution = Solution.new

test_cases = [
  [2, 1, 3],           # Valid BST
  [5, 1, 4, nil, nil, 3, 6],  # Invalid BST
  [5, 4, 6, nil, nil, 3, 7]   # Invalid BST
]

test_cases.each_with_index do |arr, index|
  root = solution.send(:create_binary_tree, arr)
  result = solution.is_valid_bst(root)
  puts "Test case #{index + 1}: #{result ? 'Valid BST' : 'Invalid BST'}"
end
