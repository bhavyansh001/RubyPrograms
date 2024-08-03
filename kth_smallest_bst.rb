class TreeNode
  attr_accessor :val, :left, :right
  
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

class Solution
  def kth_smallest(root, k)
    @k = k
    @result = nil
    inorder_traversal(root)
    @result
  end

  private

  def inorder_traversal(node)
    return if node.nil? || @result
    inorder_traversal(node.left)
    @k -= 1
    if @k == 0
      @result = node.val
      return
    end
    inorder_traversal(node.right)
  end

  def create_binary_search_tree(arr)
    return nil if arr.empty?
    root = TreeNode.new(arr[0])
    arr[1..-1].each { |val| insert_node(root, val) }
    root
  end

  def insert_node(root, val)
    if val < root.val
      root.left.nil? ? root.left = TreeNode.new(val) : insert_node(root.left, val)
    else
      root.right.nil? ? root.right = TreeNode.new(val) : insert_node(root.right, val)
    end
  end
end

solution = Solution.new

# Create a sample binary search tree
tree_array = [5, 3, 6, 2, 4, 1]
root = solution.send(:create_binary_search_tree, tree_array)

# Find the kth smallest element
k = 3
result = solution.kth_smallest(root, k)
puts "The #{k}th smallest element in the BST is: #{result}"
