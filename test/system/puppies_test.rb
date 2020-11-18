require "application_system_test_case"

class PuppiesTest < ApplicationSystemTestCase
  setup do
    @puppy = puppies(:one)
  end

  test "visiting the index" do
    visit puppies_url
    assert_selector "h1", text: "Puppies"
  end

  test "creating a Puppy" do
    visit puppies_url
    click_on "New Puppy"

    click_on "Create Puppy"

    assert_text "Puppy was successfully created"
    click_on "Back"
  end

  test "updating a Puppy" do
    visit puppies_url
    click_on "Edit", match: :first

    click_on "Update Puppy"

    assert_text "Puppy was successfully updated"
    click_on "Back"
  end

  test "destroying a Puppy" do
    visit puppies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Puppy was successfully destroyed"
  end
end
