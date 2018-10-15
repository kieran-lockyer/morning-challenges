require "test/unit"
require_relative "../todo_list"

class TodoListTest < Test::Unit::TestCase
    def setup
        @todo_list = TodoList.new("My List")
        item = @todo_list.add_item("Get cat food")
    end

    # Can create a new todo list
    def test_create_todo_list
        assert_equal(1,@todo_list.count)
        assert_equal("My List",@todo_list.title)
    end

    # Can create a todo item in an existing list
    def test_create_todo_item
        item = @todo_list.add_item("Update resume")
        assert_equal(2, @todo_list.count)
    end

    # Can update the title of a todo list
    def test_update_todo_list_title
        @todo_list.title = "My Updated List"
        assert_equal("My Updated List", @todo_list.title)
    end

    # Can update the description of a todo list
    def test_update_todo_list_description
        @todo_list.description = "Things I want to do this week"
        assert_equal("Things I want to do this week", @todo_list.description)
    end

    # Can check if all items are done on list
    def test_get_items_not_all_done
        assert_equal(false, @todo_list.all_done?)
    end

    def test_get_items_all_done
        @todo_list.update_done("Get cat food")
        assert_equal(true, @todo_list.all_done?)
    end


    # Can delete an item from a list
    def test_delete_todo_item
        @todo_list.delete_item("Get cat food")
        assert_equal(0,@todo_list.count)
    end

    # Can update an item to done on the list
    def test_update_todo_item_done
        @todo_list.update_done("Get cat food")
        assert_equal(true, @todo_list.get_item("Get cat food").done?)
    end
end