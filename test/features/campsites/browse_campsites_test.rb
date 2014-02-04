require "test_helper"

feature "BrowseCampsites" do
  scenario "As a visitor I want to browse campsites so
  that I can find the most recently rated campsites" do
    #given I visit the campsite index
    visit root_path
    #when I browse campsites
    #page.will_have_content "Goobye All!"
    #page.assert_selector('table tr')
    page.must_have_selector('table tr', :count => Campsite.all.count + 1)
    #then I find the highest rated campsites
    page.must_have_selector('tbody td[1]')
    @recentcampsiteid = Ratings.order(:created_at).last.campsite_id
    page.find('tbody td[1]').text.must_include(@recentcampsiteid)
  end
end
