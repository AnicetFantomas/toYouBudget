require 'application_system_test_case'

class TransacsTest < ApplicationSystemTestCase
  setup do
    @transac = transacs(:one)
  end

  test 'visiting the index' do
    visit transacs_url
    assert_selector 'h1', text: 'Transacs'
  end

  test 'should create transac' do
    visit transacs_url
    click_on 'New transac'

    fill_in 'Amount', with: @transac.amount
    fill_in 'Name', with: @transac.name
    fill_in 'User', with: @transac.user_id
    click_on 'Create Transac'

    assert_text 'Transac was successfully created'
    click_on 'Back'
  end

  test 'should update Transac' do
    visit transac_url(@transac)
    click_on 'Edit this transac', match: :first

    fill_in 'Amount', with: @transac.amount
    fill_in 'Name', with: @transac.name
    fill_in 'User', with: @transac.user_id
    click_on 'Update Transac'

    assert_text 'Transac was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Transac' do
    visit transac_url(@transac)
    click_on 'Destroy this transac', match: :first

    assert_text 'Transac was successfully destroyed'
  end
end
