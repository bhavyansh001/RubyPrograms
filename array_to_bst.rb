class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

class BinarySearchTree
  def self.sorted_array_to_bst(nums)
    return nil if nums.empty?

    mid = nums.length / 2
    root = TreeNode.new(nums[mid])

    root.left = sorted_array_to_bst(nums[0...mid])
    root.right = sorted_array_to_bst(nums[(mid + 1)..-1])

    root
  end

  def self.preorder_traversal(node)
    return [] unless node
    [node.val] + preorder_traversal(node.left) + preorder_traversal(node.right)
  end
end

sorted_array = [1, 2, 3, 4, 5, 6, 7]
bst_root = BinarySearchTree.sorted_array_to_bst(sorted_array)

preorder_result = BinarySearchTree.preorder_traversal(bst_root)
puts "Preorder Traversal: #{preorder_result}"

