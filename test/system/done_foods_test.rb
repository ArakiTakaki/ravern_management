require "application_system_test_case"

class DoneFoodsTest < ApplicationSystemTestCase
  setup do
    @done_food = done_foods(:one)
  end

  test "visiting the index" do
    visit done_foods_url
    assert_selector "h1", text: "Done Foods"
  end

  test "creating a Done food" do
    visit done_foods_url
    click_on "New Done Food"

    fill_in "Client", with: @done_food.Client_id
    fill_in "Food", with: @done_food.Food_id
    fill_in "Count", with: @done_food.count
    click_on "Create Done food"

    assert_text "Done food was successfully created"
    click_on "Back"
  end

  test "updating a Done food" do
    visit done_foods_url
    click_on "Edit", match: :first

    fill_in "Client", with: @done_food.Client_id
    fill_in "Food", with: @done_food.Food_id
    fill_in "Count", with: @done_food.count
    click_on "Update Done food"

    assert_text "Done food was successfully updated"
    click_on "Back"
  end

  test "destroying a Done food" do
    visit done_foods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Done food was successfully destroyed"
  end
end
