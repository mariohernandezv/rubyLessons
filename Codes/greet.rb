=begin
joe = Person.new('Joe')
joe.greet('Kate') # should return 'Hello Kate, my name is Joe'
joe.name # should == 'Joe'
=end

class Person
	attr_accessor :name
	def initialize(name)
		@name = name
	end

	def greet(toName)
		"Hello #{toName}, my name is #{name}"
	end

end