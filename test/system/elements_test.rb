require "application_system_test_case"

class ElementsTest < ApplicationSystemTestCase
  setup do
    @element = elements(:one)
  end

  test "visiting the index" do
    visit elements_url
    assert_selector "h1", text: "Elements"
  end

  test "creating a Element" do
    visit elements_url
    click_on "New Element"

    fill_in "Content", with: @element.content
    fill_in "Element type", with: @element.element_type
    fill_in "Position", with: @element.position
    fill_in "Post", with: @element.post_id
    click_on "Create Element"

    assert_text "Element was successfully created"
    click_on "Back"
  end

  test "updating a Element" do
    visit elements_url
    click_on "Edit", match: :first

    fill_in "Content", with: @element.content
    fill_in "Element type", with: @element.element_type
    fill_in "Position", with: @element.position
    fill_in "Post", with: @element.post_id
    click_on "Update Element"

    assert_text "Element was successfully updated"
    click_on "Back"
  end

  test "destroying a Element" do
    visit elements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Element was successfully destroyed"
  end
end
