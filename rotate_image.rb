class RotateImage
  def self.rotate(matrix)
    n = matrix.length

    # Step 1: Transpose
    (0...n).each do |i|
      (i...n).each do |j|
        matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
      end
    end
    # Setp 2: Reverse each row
    (0...n).each do |i|
      matrix[i].reverse!
    end
  end
end

matrix = [[1,2,3],[4,5,6],[7,8,9]]
result = RotateImage.rotate(matrix)
puts matrix.inspect
