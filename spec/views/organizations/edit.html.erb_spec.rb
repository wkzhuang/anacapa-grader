require 'rails_helper'

RSpec.describe "organizations/edit", :type => :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      :class_name => "MyString",
      :quarter => "MyString",
      :instructor => "MyString"
    ))
  end

  it "renders the edit organization form" do
    render

    assert_select "form[action=?][method=?]", organization_path(@organization), "post" do

      assert_select "input#organization_class_name[name=?]", "organization[class_name]"

      assert_select "input#organization_quarter[name=?]", "organization[quarter]"

      assert_select "input#organization_instructor[name=?]", "organization[instructor]"
    end
  end
end
