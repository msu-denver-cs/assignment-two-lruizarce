require "application_system_test_case"

class ModelsTest < ApplicationSystemTestCase
  setup do
    @model = models(:one)
  end

  test "visiting the index" do
    visit models_url
    assert_selector "h1", text: "Models"
  end

  test "creating a Model" do
    visit models_url
    click_on "New Model"

    fill_in "Carparts", with: @model.CarParts
    fill_in "Cars", with: @model.Cars_id
    fill_in "Parts", with: @model.Parts_id
    click_on "Create Model"

    assert_text "Model was successfully created"
    click_on "Back"
  end

  test "updating a Model" do
    visit models_url
    click_on "Edit", match: :first

    fill_in "Carparts", with: @model.CarParts
    fill_in "Cars", with: @model.Cars_id
    fill_in "Parts", with: @model.Parts_id
    click_on "Update Model"

    assert_text "Model was successfully updated"
    click_on "Back"
  end

  test "destroying a Model" do
    visit models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Model was successfully destroyed"
  end
end
