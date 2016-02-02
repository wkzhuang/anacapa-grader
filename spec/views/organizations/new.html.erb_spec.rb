require 'rails_helper'

RSpec.describe "organizations/new", :type => :view do
  before(:each) do
    assign(:organization, Organization.new(
      :class_name => "MyString",
      :quarter => "MyString",
      :instructor => "MyString"
    ))
  end

  it "renders new organization form" do
    render

    assert_select "form[action=?][method=?]", organizations_path, "post" do

      assert_select "input#organization_class_name[name=?]", "organization[class_name]"

      assert_select "input#organization_quarter[name=?]", "organization[quarter]"

      assert_select "input#organization_instructor[name=?]", "organization[instructor]"
    end
  end
end
