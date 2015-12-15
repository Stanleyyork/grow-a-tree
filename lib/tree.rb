class Tree
	attr_reader :root

	def initialize(root_node)
		@root = root_node
	end

end

class Node
	attr_accessor :name, :children

	def initialize(name)
		@name = name
		@children = []
	end

	def <<(child)
		@children << child
	end

end

Michigan = Node.new("Michigan")
America = Tree.new(Michigan)
Oakland_County = Node.new("Oakland_County")
Wayne_County = Node.new("Wayne_County")
Michigan << Oakland_County
Michigan << Wayne_County
puts America.root.name
puts Michigan.name
puts Michigan.children[0].name
puts Michigan.children[1].name