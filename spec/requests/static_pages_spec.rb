require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'This is Your Life'" do
      visit '/static_pages/home'
      page.should have_content('This is Your Life')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "This is Your Life | Home")
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "This is Your Life | About")
    end
  end
 
  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "This is Your Life | Contact")
    end
  end
end
