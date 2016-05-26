# https://www.sitepoint.com/graph-algorithms-ruby/
def depth_first_search(adj_matrix, source_index, end_index)
  node_stack = [source_index]

  loop do
    curr_node = node_stack.pop
    puts "1. #{node_stack}"
    puts curr_node
    return false if curr_node == nil
    return true if curr_node == end_index

    children = (0..adj_matrix.length-1).to_a.select do |i|
      adj_matrix[curr_node][i] == 1
    end

    puts "2. #{node_stack}"

    node_stack = node_stack + children
  end
end

adj_matrix = [
  [0, 0, 1, 0, 1, 0],
  [0, 0, 1, 0, 0, 1],
  [0, 0, 0, 1, 0, 0],
  [0, 0, 0, 0, 1, 1],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0]
]

p depth_first_search(adj_matrix, 0, 4)