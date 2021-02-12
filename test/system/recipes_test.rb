require "application_system_test_case"

class RecipesTest < ApplicationSystemTestCase
  setup do
    @recipe = recipes(:one)
  end

  test "visiting the index" do
    visit recipes_url
    assert_selector "h1", text: "Recipes"
  end

  test "creating a Recipe" do
    visit recipes_url
    click_on "New Recipe"

    fill_in "Calories", with: @recipe.calories
    fill_in "Carbs", with: @recipe.carbs
    fill_in "Fat", with: @recipe.fat
    fill_in "Ingredients", with: @recipe.ingredients
    fill_in "Instructions", with: @recipe.instructions
    fill_in "Name", with: @recipe.name
    fill_in "Protein", with: @recipe.protein
    fill_in "User", with: @recipe.user_id
    click_on "Create Recipe"

    assert_text "Recipe was successfully created"
    click_on "Back"
  end

  test "updating a Recipe" do
    visit recipes_url
    click_on "Edit", match: :first

    fill_in "Calories", with: @recipe.calories
    fill_in "Carbs", with: @recipe.carbs
    fill_in "Fat", with: @recipe.fat
    fill_in "Ingredients", with: @recipe.ingredients
    fill_in "Instructions", with: @recipe.instructions
    fill_in "Name", with: @recipe.name
    fill_in "Protein", with: @recipe.protein
    fill_in "User", with: @recipe.user_id
    click_on "Update Recipe"

    assert_text "Recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipe" do
    visit recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipe was successfully destroyed"
  end
end