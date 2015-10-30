# Node
class Node
  attr_accessor :id, :edges, :cost, :done

  def initialize(id, edges = [], cost = nil, done = false)
    @id, @edges, @cost, @done = id, edges, cost, done
  end
end

# Edge
class Edge
  attr_accessor :to, :cost

  def initialize(to, cost)
    @to, @cost = to, cost
  end
end

# Dijkstra
class Dijkstra
  attr_accessor :nodes

  def initialize(data)
    @nodes = {}
    data.each do |id, edges|
      edges.map! { |edge| Edge.new(*edge) }
      @nodes[id] = Node.new(id, edges)
    end
  end

  def start(start_id)
    @nodes.each do |id, node|
      node.done = false
      node.cost = node.id == start_id ? 0 : -1
    end

    loop do
      done_node = nil
      @nodes.each do |id, node|
        next if node.done || node.cost < 0
        done_node = node if done_node.nil? || node.cost < done_node.cost
      end
      break if done_node.nil?
      done_node.done = true
      done_node.edges.each do |edge|
        node = @nodes[edge.to]
        cost = done_node.cost + edge.cost
        node.cost = cost if node.cost < 0 || cost < node.cost
      end
    end
  end
end

data1, data2 = {}, {}

n = gets.chomp.to_i
m = gets.chomp.to_i

m.times do
  a1, b1, c1, d1 = gets.chomp.split(',').map(&:to_i)
  data1[a1] ||= []
  data1[b1] ||= []
  data1[a1] << [b1, c1]
  data1[b1] << [a1, d1]
  data2[a1] ||= []
  data2[b1] ||= []
  data2[a1] << [b1, c1]
  data2[b1] << [a1, d1]
end

x1, x2, y1, y2 = gets.chomp.split(',').map(&:to_i)

dijkstra1 = Dijkstra.new(data1)
dijkstra2 = Dijkstra.new(data2)

dijkstra1.start(x1)
dijkstra2.start(x2)

forward_path_cost = dijkstra1.nodes[x2].cost
backward_path_cost = dijkstra2.nodes[x1].cost

puts y1 - y2 - forward_path_cost - backward_path_cost
