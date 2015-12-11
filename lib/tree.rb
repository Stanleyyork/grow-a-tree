class Node
  attr_reader :name, :children

  def initialize(name)
    @name = name
    @children = []
  end

  def <<(child)
    @children << child
  end
end

class Tree
  attr_reader :root

  def initialize(root)
    @root = root
  end
end
