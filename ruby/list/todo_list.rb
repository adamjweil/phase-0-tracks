class TodoList
  attr_reader :list

    def initialize(array)
	list = []
	list << array[0]
	list << array[1]
	@list = list
    end

    def get_items
		p list
    end

    def add_item(str)
	list << str
	p list
    end

    def delete_item(str)
	list.delete(str)
	p list	
    end

    def get_item(int)
	p list[int]
    end

end

# -->Identify the components of an Rspec test:
# 
#     RSpec uses the words "describe" and "it" so we can express concepts like a conversation. 
#     The descibe method creates an ExampleGroup. Within the block passed to describe, you can
#     declare examples using the it method. 
#     An example group is a class in which the block passed to describe is evaluated. The blocks passed
#     to it are exaluated in the context of an instance of that class. 
# 
# -------RELEASE: 2--------
# -->Good references/cheat sheets regarding RSpec:
#           1.  http://www.rubypigeon.com/posts/rspec-expectations-cheat-sheet/
# 	2. https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf
# -->RSpec documentation
# 	--  http://rspec.info/documentation/
# 	--  https://relishapp.com/rspec 
# 	--  http://www.rubydoc.info/gems/rspec-core       (<----Best documentation)
# -->Other matchers available aside from eq?
#           -- be_true / be_false / be_nil / be >= x ....
#           --  start_with / end_with ....
#           --  be_a <class>  / be_a_kind_of <class>  /  be_an_instance_of <class>
# 


