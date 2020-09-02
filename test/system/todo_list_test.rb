require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @todo_list = todo_lists(:one)
  end

  test "visiting the index" do
    visit todo_lists_url
    assert_selector "h1", text: "TodoList"
  end

  test "creating a TodoList" do
    visit users_url
    click_on "New TodoList"

    fill_in "Name", with: @todo_list.name
    click_on "Create TodoList"

    assert_text "TodoList was successfully created"
    click_on "Back"
  end

  test "updating a TodoList" do
    visit todo_list_url
    click_on "Edit", match: :first

    fill_in "Name", with: @todo_list.name
    click_on "Update TodoList"

    assert_text "TodoList was successfully updated"
    click_on "Back"
  end

  test "destroying a TodoList" do
    visit todo_list_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "TodoList was successfully destroyed"
  end
end
