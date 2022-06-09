require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/" # root_path

    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: 2 # from fixtures
    assert_text "Le Wagon" # from products fixtures
    assert_text "Electrolit" # from products fixtures
  end

  test "user adds a product" do
    login_as users(:george)

    visit "/"

    click_on "Add Product"

    fill_in "Name", with: "Hello World"
    fill_in "Tagline", with: "Here we go!"

    click_on "Create Product"

    assert_text "Hello World"
    assert_text "Here we go!"
  end
end
