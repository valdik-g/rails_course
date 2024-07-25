require "application_system_test_case"

class TodosTest < ApplicationSystemTestCase
  setup do
    @todo = todos(:first) # Reference to the first fixture task
  end

  test "New ToDo" do
    visit todos_path
    assert_selector "h1", text: "Todos"

    click_on "New task"
    assert_selector "h1", text: "New To Do"

    fill_in "Task", with: "Brush teath"
    click_on "Create todo"
    assert_selector  "h1", text: "Todos"
    assert_text "Brush teath"
  end

  test "Show ToDo" do
    visit todos_path
    click_link @todo.task

    assert_selector "h1", text: "Task: #{@todo.task}"
  end

  test "Edit ToDo" do
    visit todos_path
    assert_selector "h1", text: "Todos"

    click_on "Edit", match: :first
    assert_selector "h1", text: "Edit To Do"

    fill_in "Task", with: "Updated todo"
    click_on "Update todo"

    assert_selector "h1", text: "Todos"
    assert_text "Updated todo"
  end

  test "Destroy ToDo" do
    visit todos_path
    assert_text @todo.task

    click_on "Delete", match: :first
    assert_no_text @todo.task
  end
end
