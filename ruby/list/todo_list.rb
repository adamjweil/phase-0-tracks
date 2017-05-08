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

