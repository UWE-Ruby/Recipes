require 'spec_helper'

describe "home page" do
  it "displays a list of recipes" do
    recipe = Factory(:recipe, name: "greens and beans")
    recipe2 = Factory(:recipe, name: "surf and turf" )
    visit "/"
    page.should have_content( "greens and beans" )
    page.should have_content( "surf and turf" )
  end
end
