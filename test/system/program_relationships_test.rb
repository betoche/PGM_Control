require "application_system_test_case"

class ProgramRelationshipsTest < ApplicationSystemTestCase
  setup do
    @program_relationship = program_relationships(:one)
  end

  test "visiting the index" do
    visit program_relationships_url
    assert_selector "h1", text: "Program Relationships"
  end

  test "creating a Program relationship" do
    visit program_relationships_url
    click_on "New Program Relationship"

    fill_in "Child", with: @program_relationship.child_id
    fill_in "Parent", with: @program_relationship.parent_id
    click_on "Create Program relationship"

    assert_text "Program relationship was successfully created"
    click_on "Back"
  end

  test "updating a Program relationship" do
    visit program_relationships_url
    click_on "Edit", match: :first

    fill_in "Child", with: @program_relationship.child_id
    fill_in "Parent", with: @program_relationship.parent_id
    click_on "Update Program relationship"

    assert_text "Program relationship was successfully updated"
    click_on "Back"
  end

  test "destroying a Program relationship" do
    visit program_relationships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Program relationship was successfully destroyed"
  end
end
