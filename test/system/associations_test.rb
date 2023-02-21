require 'application_system_test_case'

class AssociationsTest < ApplicationSystemTestCase
  setup do
    @association = associations(:one)
  end

  test 'visiting the index' do
    visit associations_url
    assert_selector 'h1', text: 'Associations'
  end

  test 'should create association' do
    visit associations_url
    click_on 'New association'

    click_on 'Create Association'

    assert_text 'Association was successfully created'
    click_on 'Back'
  end

  test 'should update Association' do
    visit association_url(@association)
    click_on 'Edit this association', match: :first

    click_on 'Update Association'

    assert_text 'Association was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Association' do
    visit association_url(@association)
    click_on 'Destroy this association', match: :first

    assert_text 'Association was successfully destroyed'
  end
end
