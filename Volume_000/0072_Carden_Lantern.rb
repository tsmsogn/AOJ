# Node
class Node
  attr_accessor :id, :edges, :done

  def initialize(id, edges = [], done = false)
    @id, @edges, @done = id, edges, done
  end
end

# Edge
class Edge
  attr_accessor :to, :cost

  def initialize(to, cost)
    @to, @cost = to, cost
  end
end

# Prim
class Prim
  attr_accessor :nodes

  def initialize(data)
    @nodes = {}
    data.each do |id, edges|
      edges.map! { |edge| Edge.new(*edge) }
      @nodes[id] = Node.new(id, edges)
    end
  end

  def start(id)
    cost = 0
    edges = []

    @nodes.each do |id, node|
      node.done = false
    end

    node = @nodes[id]
    node.done = true
    queue = node.edges

    until queue.empty?
      queue.sort! { |l, r| r.cost <=> l.cost }
      edge = queue.pop
      done_node = @nodes[edge.to]
      next if done_node.done
      done_node.done = true
      cost += edge.cost
      queue += done_node.edges
      edges << edge
    end

    [cost, edges]
  end
end

loop do
  n = gets.chomp.to_i
  break if n == 0

  data = {}

  m = gets.chomp.to_i
  m.times do
    a, b, d = gets.chomp.split(',').map(&:to_i)

    data[a] ||= []
    data[b] ||= []
    data[a] << [b, d]
    data[b] << [a, d]
  end

  prim = Prim.new(data)
  res = prim.start 0  

  puts res[0] / 100 - res[1].size
end