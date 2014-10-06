require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do
  describe "GET /static_pages" do
    it "home page exists" do
	get root_path
	expect(response).to have_http_status(200)
	end
	
	it "help page exists" do
	get help_path
	expect(response).to have_http_status(200)
	end
	
	it "about page exists" do
	get about_path
	expect(response).to have_http_status(200)
	end
	
	it "contact page exists" do
	get contact_path
	expect(response).to have_http_status(200)
	end
  end
end


describe "Static pages" do

	let(:base_title) { "USMA CS450" }
	
  #See Hartl Listing 3.18
  describe "Home page" do
    it "should have the h1 'USMA CS450 HomeWork5 App'" do
      visit root_path
      expect(page).to have_selector('h1', :text => 'USMA CS450 HomeWork5 App')
    end
	it "should have the title 'Home'" do
		visit root_path
		expect(page).to have_title "#{base_title} | Home"
	end
  end

  describe "Help page" do
    it "should have the h1 'USMA CS450 HomeWork5 App'" do
      visit help_path
      expect(page).to have_selector('h1', :text => 'USMA CS450 HomeWork5 App')
    end
	it "should have the title 'Help'" do
		visit help_path
		expect(page).to have_title "#{base_title} | Help"
	end
  end

  describe "About page" do
    it "should have the h1 'USMA CS450 HomeWork5 App'" do
      visit about_path
      expect(page).to have_selector('h1', :text => 'USMA CS450 HomeWork5 App')
    end
	it "should have the title 'About Us'" do
		visit about_path
		expect(page).to have_title "#{base_title} |  About Us"
	end
  end

end 
