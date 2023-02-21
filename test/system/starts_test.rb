require 'application_system_test_case'

class StartsTest < ApplicationSystemTestCase
  setup do
    @start = starts(:one)
  end

  test 'visiting the index' do
    visit starts_url
    assert_selector 'h1', text: 'Starts'
  end

  test 'should create start' do
    visit starts_url
    click_on 'New start'

    click_on 'Create Start'

    assert_text 'Start was successfully created'
    click_on 'Back'
  end

  test 'should update Start' do
    visit start_url(@start)
    click_on 'Edit this start', match: :first

    click_on 'Update Start'

    assert_text 'Start was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Start' do
    visit start_url(@start)
    click_on 'Destroy this start', match: :first

    assert_text 'Start was successfully destroyed'
  end
end
