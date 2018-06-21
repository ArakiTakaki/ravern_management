require 'test_helper'

class FooedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fooed = fooeds(:one)
  end

  test "should get index" do
    get fooeds_url
    assert_response :success
  end

  test "should get new" do
    get new_fooed_url
    assert_response :success
  end

  test "should create fooed" do
    assert_difference('Fooed.count') do
      post fooeds_url, params: { fooed: { category_id: @fooed.category_id, content: @fooed.content, course_id: @fooed.course_id, image: @fooed.image, name: @fooed.name, price: @fooed.price } }
    end

    assert_redirected_to fooed_url(Fooed.last)
  end

  test "should show fooed" do
    get fooed_url(@fooed)
    assert_response :success
  end

  test "should get edit" do
    get edit_fooed_url(@fooed)
    assert_response :success
  end

  test "should update fooed" do
    patch fooed_url(@fooed), params: { fooed: { category_id: @fooed.category_id, content: @fooed.content, course_id: @fooed.course_id, image: @fooed.image, name: @fooed.name, price: @fooed.price } }
    assert_redirected_to fooed_url(@fooed)
  end

  test "should destroy fooed" do
    assert_difference('Fooed.count', -1) do
      delete fooed_url(@fooed)
    end

    assert_redirected_to fooeds_url
  end
end
