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

data = {}

n = gets.chomp.to_i

n.times do
  r, k, *t = gets.chomp.split.map(&:to_i)
  data[r] ||= []
  k.times do |i|
    data[r] << [t[i], 1]
  end
end

p = gets.chomp.to_i

p.times do
  s, d, v = gets.chomp.split.map(&:to_i)
  clone = Marshal.load(Marshal.dump(data))
  dijkstra = Dijkstra.new(clone)
  dijkstra.start(s)
  puts (dijkstra.nodes[d].cost != -1 && dijkstra.nodes[d].cost + 1 <= v) ? dijkstra.nodes[d].cost + 1 : :NA
end
