require 'spec_helper'
require 'rails_helper'

describe PagesController do

render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      expect(response).to be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      expect(response).to be_success
    end
  end

  describe "GET 'about'" do  
    it "should be successful" do    
      get 'about'            
      expect(response).to be_success  
    end
 end   


  it "should have the right title" do
      get 'home'
      expect(response.body).to have_title('Ruby on Rails Tutorial Sample App | Home')
#      response.should have_selector("title", :content =>"Ruby on Rails Tutorial Sample App | Home")
  end

   it "should have the right title" do
      get 'contact'               
      expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | Contact")
   end           

  it "should have the right title" do
      get 'about'               
      expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | About")
  end           	 
end
