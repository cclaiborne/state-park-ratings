require "test_helper"

feature "ViewUsers" do
  scenario "As a visitor I want to see user's pages so that
  I can see their activity." do
    #given a a campsite rater (user)
    @user = users(:happy_camper)
    #when I visit the user's show page
    visit user_path(@camper)
    #then I will see all of the campsite names that the user has rated
    @user.campsites.each do |campsite|
      page.text.must_include campsite.name
    end
  end
end
