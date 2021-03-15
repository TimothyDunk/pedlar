require "application_system_test_case"

class PedalsTest < ApplicationSystemTestCase
  setup do
    @pedal = pedals(:one)
  end

  test "visiting the index" do
    visit pedals_url
    assert_selector "h1", text: "Pedals"
  end

  test "creating a Pedal" do
    visit pedals_url
    click_on "New Pedal"

    fill_in "Description", with: @pedal.description
    fill_in "Price", with: @pedal.price
    fill_in "Title", with: @pedal.title
    click_on "Create Pedal"

    assert_text "Pedal was successfully created"
    click_on "Back"
  end

  test "updating a Pedal" do
    visit pedals_url
    click_on "Edit", match: :first

    fill_in "Description", with: @pedal.description
    fill_in "Price", with: @pedal.price
    fill_in "Title", with: @pedal.title
    click_on "Update Pedal"

    assert_text "Pedal was successfully updated"
    click_on "Back"
  end

  test "destroying a Pedal" do
    visit pedals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pedal was successfully destroyed"
  end
end
