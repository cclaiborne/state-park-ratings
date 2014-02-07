require "test_helper"

feature "RateCampsites" do
  scenario "As a visitor I want to rate campsites so
  that others may find a well ranked campsite." do
    #given I visit the campsite show page
    visit campsite_path(campsites(:good_campsite))
    #when I  a campsite with a number and comment
    select '5', :from => 'Stars'
    fill_in 'Comment', :with => 'This is a great campsite!'
    #then I may be redirected to the campsite show page
    click_on 'Submit'
    page.text.must_include "Thanks for rating this campsite!"
  end
end
