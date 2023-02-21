require 'test_helper'

class StartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @start = starts(:one)
  end

  test 'should get index' do
    get starts_url
    assert_response :success
  end

  test 'should get new' do
    get new_start_url
    assert_response :success
  end

  test 'should create start' do
    assert_difference('Start.count') do
      post starts_url, params: { start: {} }
    end

    assert_redirected_to start_url(Start.last)
  end

  test 'should show start' do
    get start_url(@start)
    assert_response :success
  end

  test 'should get edit' do
    get edit_start_url(@start)
    assert_response :success
  end

  test 'should update start' do
    patch start_url(@start), params: { start: {} }
    assert_redirected_to start_url(@start)
  end

  test 'should destroy start' do
    assert_difference('Start.count', -1) do
      delete start_url(@start)
    end

    assert_redirected_to starts_url
  end
end
