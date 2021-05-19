require "test_helper"

class RefineCalculatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @refine_calculator = refine_calculators(:one)
  end

  test "should get index" do
    get refine_calculators_url
    assert_response :success
  end

  test "should get new" do
    get new_refine_calculator_url
    assert_response :success
  end

  test "should create refine_calculator" do
    assert_difference('RefineCalculator.count') do
      post refine_calculators_url, params: { refine_calculator: { item: @refine_calculator.item, refine_fee: @refine_calculator.refine_fee, refined: @refine_calculator.refined, transmutation_fee: @refine_calculator.transmutation_fee, url_image: @refine_calculator.url_image, value: @refine_calculator.value } }
    end

    assert_redirected_to refine_calculator_url(RefineCalculator.last)
  end

  test "should show refine_calculator" do
    get refine_calculator_url(@refine_calculator)
    assert_response :success
  end

  test "should get edit" do
    get edit_refine_calculator_url(@refine_calculator)
    assert_response :success
  end

  test "should update refine_calculator" do
    patch refine_calculator_url(@refine_calculator), params: { refine_calculator: { item: @refine_calculator.item, refine_fee: @refine_calculator.refine_fee, refined: @refine_calculator.refined, transmutation_fee: @refine_calculator.transmutation_fee, url_image: @refine_calculator.url_image, value: @refine_calculator.value } }
    assert_redirected_to refine_calculator_url(@refine_calculator)
  end

  test "should destroy refine_calculator" do
    assert_difference('RefineCalculator.count', -1) do
      delete refine_calculator_url(@refine_calculator)
    end

    assert_redirected_to refine_calculators_url
  end
end
