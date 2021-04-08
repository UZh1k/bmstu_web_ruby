require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "creating a User" do
    visit "/users/new"

    fill_in "Email", with: 'email'
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create User"

    assert_text "User was successfully created."
    click_on "Back"
  end
#
#   test "updating a User" do
#     visit users_url
#     click_on "Edit", match: :first
#
#     fill_in "Email", with: @user.email
#     fill_in "Password", with: 'secret'
#     fill_in "Password confirmation", with: 'secret'
#     click_on "Update User"
#
#     assert_text "User was successfully updated"
#     click_on "Back"
#   end
#
#   test "destroying a User" do
#     visit users_url
#     page.accept_confirm do
#       click_on "Destroy", match: :first
#     end
#
#     assert_text "User was successfully destroyed"
#   end
end
