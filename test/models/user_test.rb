require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "#full_name returns the capitalized user first and last name" do
    user = User.new(first_name: "john", last_name: "lennon")

    assert_equal "John Lennon", user.full_name
  end

  test "#full_name works with just first_name" do
    user = User.new(first_name: "john")

    assert_equal "John", user.full_name
  end
end
