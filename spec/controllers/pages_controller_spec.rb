require 'spec_helper'
require 'rails_helper'

describe PagesController do

render_views

  before (:each) do
   @base_title = "Ruby on Rails Tutorial Sample App"
  end 	  


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

  describe "Get 'help'" do
    it "should be successful" do
    get 'help'
    expect(response).to be_success    
  end 
 end

  it "should have the right title" do
      get 'home'
      expect(response.body).to have_title(@base_title +" | Home")
  end

   it "should have the right title" do
      get 'contact'               
      expect(response.body).to have_title(@base_title +" | Contact")
   end           

  it "should have the right title" do
      get 'about'               
      expect(response.body).to have_title(@base_title+" | About")
  end           	 
  
  it "should have the right title" do
  get 'help'
  expect(response.body).to have_title(@base_title+" | Help")  
  end
end
