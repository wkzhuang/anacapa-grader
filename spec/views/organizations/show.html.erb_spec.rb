require 'rails_helper'

RSpec.describe "organizations/show", :type => :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      :class_name => "Class Name",
      :quarter => "Quarter",
      :instructor => "Instructor"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Class Name/)
    expect(rendered).to match(/Quarter/)
    expect(rendered).to match(/Instructor/)
  end
end
