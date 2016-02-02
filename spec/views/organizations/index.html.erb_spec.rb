require 'rails_helper'

RSpec.describe "organizations/index", :type => :view do
  before(:each) do
    assign(:organizations, [
      Organization.create!(
        :class_name => "Class Name",
        :quarter => "Quarter",
        :instructor => "Instructor"
      ),
      Organization.create!(
        :class_name => "Class Name",
        :quarter => "Quarter",
        :instructor => "Instructor"
      )
    ])
  end

  it "renders a list of organizations" do
    render
    assert_select "tr>td", :text => "Class Name".to_s, :count => 2
    assert_select "tr>td", :text => "Quarter".to_s, :count => 2
    assert_select "tr>td", :text => "Instructor".to_s, :count => 2
  end
end
