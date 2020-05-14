require "application_system_test_case"

class ShapesTest < ApplicationSystemTestCase
  setup do
    @shape = shapes(:one)
  end

  test "visiting the index" do
    visit shapes_url
    assert_selector "h1", text: "Shapes"
  end

  test "creating a Application" do
    visit shapes_url
    click_on "New Application"

    fill_in "Color", with: @shape.color
    check "Default status" if @shape.default_status
    fill_in "Description", with: @shape.description
    fill_in "Link", with: @shape.link
    fill_in "Name", with: @shape.name
    click_on "Create Application"

    assert_text "Application was successfully created"
    click_on "Back"
  end

  test "updating a Application" do
    visit shapes_url
    click_on "Edit", match: :first

    fill_in "Color", with: @shape.color
    check "Default status" if @shape.default_status
    fill_in "Description", with: @shape.description
    fill_in "Link", with: @shape.link
    fill_in "Name", with: @shape.name
    click_on "Update Application"

    assert_text "Application was successfully updated"
    click_on "Back"
  end

  test "destroying a Application" do
    visit shapes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Application was successfully destroyed"
  end
end
