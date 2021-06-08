require "application_system_test_case"

class WorktypesTest < ApplicationSystemTestCase
  setup do
    @worktype = worktypes(:one)
  end

  test "visiting the index" do
    visit worktypes_url
    assert_selector "h1", text: "Worktypes"
  end

  test "creating a Worktype" do
    visit worktypes_url
    click_on "New Worktype"

    fill_in "Type", with: @worktype.type
    click_on "Create Worktype"

    assert_text "Worktype was successfully created"
    click_on "Back"
  end

  test "updating a Worktype" do
    visit worktypes_url
    click_on "Edit", match: :first

    fill_in "Type", with: @worktype.type
    click_on "Update Worktype"

    assert_text "Worktype was successfully updated"
    click_on "Back"
  end

  test "destroying a Worktype" do
    visit worktypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Worktype was successfully destroyed"
  end
end
