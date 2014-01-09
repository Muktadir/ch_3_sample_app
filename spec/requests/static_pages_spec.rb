
require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Sample App" }


  describe "Home page" do

    it "should have the content 'Ch3 Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Ch3 Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}|Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title." do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title}|Help")
    end
  end

  describe "About page" do

    it "should have the content 'About us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title}|About Us")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title}|Contact")
    end
  end
end

