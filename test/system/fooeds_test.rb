require "application_system_test_case"

class FooedsTest < ApplicationSystemTestCase
  setup do
    @fooed = fooeds(:one)
  end

  test "visiting the index" do
    visit fooeds_url
    assert_selector "h1", text: "Fooeds"
  end

  test "creating a Fooed" do
    visit fooeds_url
    click_on "New Fooed"

    fill_in "Category", with: @fooed.category_id
    fill_in "Content", with: @fooed.content
    fill_in "Course", with: @fooed.course_id
    fill_in "Image", with: @fooed.image
    fill_in "Name", with: @fooed.name
    fill_in "Price", with: @fooed.price
    click_on "Create Fooed"

    assert_text "Fooed was successfully created"
    click_on "Back"
  end

  test "updating a Fooed" do
    visit fooeds_url
    click_on "Edit", match: :first

    fill_in "Category", with: @fooed.category_id
    fill_in "Content", with: @fooed.content
    fill_in "Course", with: @fooed.course_id
    fill_in "Image", with: @fooed.image
    fill_in "Name", with: @fooed.name
    fill_in "Price", with: @fooed.price
    click_on "Update Fooed"

    assert_text "Fooed was successfully updated"
    click_on "Back"
  end

  test "destroying a Fooed" do
    visit fooeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fooed was successfully destroyed"
  end
end
