require "application_system_test_case"

class BoardsTest < ApplicationSystemTestCase
  setup do
    @board = boards(:one)
  end

  test "visiting the index" do
    visit boards_url
    assert_selector "h1", text: "Boards"
  end

  test "creating a Board" do
    visit boards_url
    click_on "New Board"

    fill_in "Accomplishment", with: @board.accomplishment
    fill_in "Challenges", with: @board.challenges
    fill_in "Resources", with: @board.resources
    fill_in "Task", with: @board.task
    fill_in "Text", with: @board.text
    fill_in "User", with: @board.user_id
    click_on "Create Board"

    assert_text "Board was successfully created"
    click_on "Back"
  end

  test "updating a Board" do
    visit boards_url
    click_on "Edit", match: :first

    fill_in "Accomplishment", with: @board.accomplishment
    fill_in "Challenges", with: @board.challenges
    fill_in "Resources", with: @board.resources
    fill_in "Task", with: @board.task
    fill_in "Text", with: @board.text
    fill_in "User", with: @board.user_id
    click_on "Update Board"

    assert_text "Board was successfully updated"
    click_on "Back"
  end

  test "destroying a Board" do
    visit boards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Board was successfully destroyed"
  end
end
