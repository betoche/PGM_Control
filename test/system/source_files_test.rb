require "application_system_test_case"

class SourceFilesTest < ApplicationSystemTestCase
  setup do
    @source_file = source_files(:one)
  end

  test "visiting the index" do
    visit source_files_url
    assert_selector "h1", text: "Source Files"
  end

  test "creating a Source file" do
    visit source_files_url
    click_on "New Source File"

    fill_in "Library", with: @source_file.library_id
    fill_in "Name", with: @source_file.name
    click_on "Create Source file"

    assert_text "Source file was successfully created"
    click_on "Back"
  end

  test "updating a Source file" do
    visit source_files_url
    click_on "Edit", match: :first

    fill_in "Library", with: @source_file.library_id
    fill_in "Name", with: @source_file.name
    click_on "Update Source file"

    assert_text "Source file was successfully updated"
    click_on "Back"
  end

  test "destroying a Source file" do
    visit source_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Source file was successfully destroyed"
  end
end
