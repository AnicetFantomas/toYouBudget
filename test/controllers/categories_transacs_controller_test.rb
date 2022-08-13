require "test_helper"

class CategoriesTransacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categories_transac = categories_transacs(:one)
  end

  test "should get index" do
    get categories_transacs_url
    assert_response :success
  end

  test "should get new" do
    get new_categories_transac_url
    assert_response :success
  end

  test "should create categories_transac" do
    assert_difference("CategoriesTransac.count") do
      post categories_transacs_url, params: { categories_transac: { categories_id: @categories_transac.categories_id, transacs_id: @categories_transac.transacs_id } }
    end

    assert_redirected_to categories_transac_url(CategoriesTransac.last)
  end

  test "should show categories_transac" do
    get categories_transac_url(@categories_transac)
    assert_response :success
  end

  test "should get edit" do
    get edit_categories_transac_url(@categories_transac)
    assert_response :success
  end

  test "should update categories_transac" do
    patch categories_transac_url(@categories_transac), params: { categories_transac: { categories_id: @categories_transac.categories_id, transacs_id: @categories_transac.transacs_id } }
    assert_redirected_to categories_transac_url(@categories_transac)
  end

  test "should destroy categories_transac" do
    assert_difference("CategoriesTransac.count", -1) do
      delete categories_transac_url(@categories_transac)
    end

    assert_redirected_to categories_transacs_url
  end
end
