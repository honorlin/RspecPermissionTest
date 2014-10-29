require 'spec_helper'

describe "root have any permissions", :type => :request do
 
  before do
    delete '/signout'
    visit "signin"
      within(".login_body") do
        fill_in 'username', :with => 'root'
        fill_in 'password', :with => 'root'
        click_button 'input-submit'
      end
  end
 
  describe "it can access any page" do
    it "can access /policy/policies" do
      visit "/policy/policies"
      
      expect(page).to have_content "Policy"
    end
 
    it "can access /agents" do
      visit "/agents"
       expect(page).to have_content "Agent"
    end
 
    it "can access //quote/start/" do
      visit "/quote/start/"
       expect(page).to have_content "Underwriter"
    end
 
    it "can access /customers" do
      visit "/customers"
       expect(page).to have_content "customers"
    end
 
    it "can access /tasks/dashboard" do
      visit "/tasks/dashboard"
       expect(page).to have_content "Task"
    end
 
    it "can access /admin/resources" do
      visit "/admin/resources"
       expect(page).to have_content "Resources"
    end
 
    it "can access /claims" do
      visit "/claims"
       expect(page).to have_content "Claims"
    end
 
    it "can access /system/dashboard" do
      visit "/system/dashboard"
       expect(page).to have_content "Policies"
    end
  end 
end

describe "with policies of Authorisations to ClientService_users of Role", :type => :request do
 
  before do
    delete '/signout'
    visit "signin"
    within(".login_body") do
      fill_in 'username', :with => '"Angela.Iserescu'
      fill_in 'password', :with => 'Angela'
      click_button 'input-submit'
    end
   end
 
  describe "Add policies of Authorisations to ClientService_users of Role" do
    it "can access /policy/policies" do
      visit "/policy/policies"
      
      expect(response.status).to eq(302)
    end
 
    it "can not access /agents" do
      visit "/agents"
      expect(response.status).to eq(302)
    end
 
    it "can not access /agents" do
      visit "/agents"
      expect(response.status).to eq(302)
    end
 
    it "can not access //quote/start/" do
      visit "/quote/start/"
      expect(response.status).to eq(302)
    end
 
    it "can not access /customers" do
      visit "/customers"
      expect(response.status).to eq(302)
    end
 
    it "can not access /tasks/dashboard" do
      visit "/tasks/dashboard"
      expect(response.status).to eq(302)
    end
 
    it "can not access /admin/resources" do
      visit "/admin/resources"
      expect(response.status).to eq(302)
    end
 
    it "can not access /claims" do
      visit "/claims"
      expect(response.status).to eq(302)
    end
 
    it "can not access /system/dashboard" do
      visit "/system/dashboard"
      expect(response.status).to eq(302)
    end
  end 
end