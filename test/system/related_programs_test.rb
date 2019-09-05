require "application_system_test_case"

class RelatedProgramsTest < ApplicationSystemTestCase
  setup do
    @related_program = related_programs(:one)
  end

  test "visiting the index" do
    visit related_programs_url
    assert_selector "h1", text: "Related Programs"
  end

  test "creating a Related program" do
    visit related_programs_url
    click_on "New Related Program"

    fill_in "Child", with: @related_program.child
    fill_in "Parent", with: @related_program.parent
    click_on "Create Related program"

    assert_text "Related program was successfully created"
    click_on "Back"
  end

  test "updating a Related program" do
    visit related_programs_url
    click_on "Edit", match: :first

    fill_in "Child", with: @related_program.child
    fill_in "Parent", with: @related_program.parent
    click_on "Update Related program"

    assert_text "Related program was successfully updated"
    click_on "Back"
  end

  test "destroying a Related program" do
    visit related_programs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Related program was successfully destroyed"
  end
end
