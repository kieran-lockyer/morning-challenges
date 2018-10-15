# For this challenge, your Todo List should be able to perform all actions
# given in the test. Namely you should be able to:
# 1. create a new todo list with a title and description
# 2. update the title or description
# 3. get a count of items in the list
# 4. check to see if all items in the list are marked done
# 5. mark all items in the list as done
# 6. add items to the list
# 7. mark a single item in the list as done
# 8. delete items from the list

# To accomplish this, you should define two classes - a TodoList class
# and a TodoListItem class.

class TodoList
    attr_accessor :title, :description

    def initialize(title)
        @list = {}
        @title = title
        @description = ""
    end

    def add_item(item)
        @list[item] = TodoListItem.new(item)
    end

    def delete_item(item)
        @list.delete(item)
    end

    def update_done(item)
        @list[item].done = true
    end

    def count
        @list.length
    end

    def all_done?
        all_items_done = true
        for key, value in @list
            if value.done? == false
                all_items_done = false
            end
        end
        return all_items_done
    end

    def get_item(item)
        @list[item]
    end
end

class TodoListItem
    attr_accessor :item, :done

    def initialize(item)
        @item = item
        @done = false
    end

    def done?
        @done
    end
end