require "application_system_test_case"

class ProgramDummiesTest < ApplicationSystemTestCase
  setup do
    @program_dummy = program_dummies(:one)
  end

  test "visiting the index" do
    visit program_dummies_url
    assert_selector "h1", text: "Program Dummies"
  end

  test "creating a Program dummy" do
    visit program_dummies_url
    click_on "New Program Dummy"

    fill_in "Name", with: @program_dummy.name
    click_on "Create Program dummy"

    assert_text "Program dummy was successfully created"
    click_on "Back"
  end

  test "updating a Program dummy" do
    visit program_dummies_url
    click_on "Edit", match: :first

    fill_in "Name", with: @program_dummy.name
    click_on "Update Program dummy"

    assert_text "Program dummy was successfully updated"
    click_on "Back"
  end

  test "destroying a Program dummy" do
    visit program_dummies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Program dummy was successfully destroyed"
  end
end
