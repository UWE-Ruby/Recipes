require 'spec_helper'

describe "Recipes" do
  describe "GET /recipes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get recipes_path
      response.status.should be(200)
    end
  end

  describe "New Recipe" do
    it "should require a name" do
      visit new_recipe_path
      click_on "Create Recipe"
      page.body.downcase.should have_content "name can't be blank"
    end

    it "should require that the description be longer than 5 characters" do
      visit new_recipe_path
      fill_in "Description", with: "1234"
      click_on "Create Recipe"
      page.body.downcase.should have_content "description is too short"
    end

    it "should require a name using client side validation", js: true do
      visit new_recipe_path
      find_field('Name').click
      find_field('Description').click
      page.body.should have_content "can't be blank"
    end

  end

end
