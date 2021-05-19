require "application_system_test_case"

class RefineCalculatorsTest < ApplicationSystemTestCase
  setup do
    @refine_calculator = refine_calculators(:one)
  end

  test "visiting the index" do
    visit refine_calculators_url
    assert_selector "h1", text: "Refine Calculators"
  end

  test "creating a Refine calculator" do
    visit refine_calculators_url
    click_on "New Refine Calculator"

    fill_in "Item", with: @refine_calculator.item
    fill_in "Refine fee", with: @refine_calculator.refine_fee
    fill_in "Refined", with: @refine_calculator.refined
    fill_in "Transmutation fee", with: @refine_calculator.transmutation_fee
    fill_in "Url image", with: @refine_calculator.url_image
    fill_in "Value", with: @refine_calculator.value
    click_on "Create Refine calculator"

    assert_text "Refine calculator was successfully created"
    click_on "Back"
  end

  test "updating a Refine calculator" do
    visit refine_calculators_url
    click_on "Edit", match: :first

    fill_in "Item", with: @refine_calculator.item
    fill_in "Refine fee", with: @refine_calculator.refine_fee
    fill_in "Refined", with: @refine_calculator.refined
    fill_in "Transmutation fee", with: @refine_calculator.transmutation_fee
    fill_in "Url image", with: @refine_calculator.url_image
    fill_in "Value", with: @refine_calculator.value
    click_on "Update Refine calculator"

    assert_text "Refine calculator was successfully updated"
    click_on "Back"
  end

  test "destroying a Refine calculator" do
    visit refine_calculators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Refine calculator was successfully destroyed"
  end
end
