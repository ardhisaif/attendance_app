require "test_helper"

class UserTest < ActiveSupport::TestCase
  # Test validasi nama harus ada
  test "should not save user without name" do
    user = User.new(email: "test@example.com")
    assert_not user.save, "Saved the user without a name"
  end

  # Test validasi email harus ada
  test "should not save user without email" do
    user = User.new(name: "Test User")
    assert_not user.save, "Saved the user without an email"
  end

  # Test validasi email harus unik
  test "should not save user with duplicate email" do
    user1 = User.create(name: "User One", email: "test@example.com")
    user2 = User.new(name: "User Two", email: "test@example.com")
    assert_not user2.save, "Saved the user with a duplicate email"
  end

  # Test user valid dengan nama dan email yang benar
  test "should save user with valid attributes" do
    user = User.new(name: "Valid User", email: "valid@example.com")
    assert user.save, "Failed to save the user with valid attributes"
  end
end
