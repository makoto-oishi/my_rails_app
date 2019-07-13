require "application_system_test_case"

class HelloDockersTest < ApplicationSystemTestCase
  setup do
    @hello_docker = hello_dockers(:one)
  end

  test "visiting the index" do
    visit hello_dockers_url
    assert_selector "h1", text: "Hello Dockers"
  end

  test "creating a Hello docker" do
    visit hello_dockers_url
    click_on "New Hello Docker"

    fill_in "Name", with: @hello_docker.name
    click_on "Create Hello docker"

    assert_text "Hello docker was successfully created"
    click_on "Back"
  end

  test "updating a Hello docker" do
    visit hello_dockers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @hello_docker.name
    click_on "Update Hello docker"

    assert_text "Hello docker was successfully updated"
    click_on "Back"
  end

  test "destroying a Hello docker" do
    visit hello_dockers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hello docker was successfully destroyed"
  end
end
