require 'application_system_test_case'

class CategoriesTransacsTest < ApplicationSystemTestCase
  setup do
    @categories_transac = categories_transacs(:one)
  end

  test 'visiting the index' do
    visit categories_transacs_url
    assert_selector 'h1', text: 'Categories transacs'
  end

  test 'should create categories transac' do
    visit categories_transacs_url
    click_on 'New categories transac'

    fill_in 'Categories', with: @categories_transac.categories_id
    fill_in 'Transacs', with: @categories_transac.transacs_id
    click_on 'Create Categories transac'

    assert_text 'Categories transac was successfully created'
    click_on 'Back'
  end

  test 'should update Categories transac' do
    visit categories_transac_url(@categories_transac)
    click_on 'Edit this categories transac', match: :first

    fill_in 'Categories', with: @categories_transac.categories_id
    fill_in 'Transacs', with: @categories_transac.transacs_id
    click_on 'Update Categories transac'

    assert_text 'Categories transac was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Categories transac' do
    visit categories_transac_url(@categories_transac)
    click_on 'Destroy this categories transac', match: :first

    assert_text 'Categories transac was successfully destroyed'
  end
end
