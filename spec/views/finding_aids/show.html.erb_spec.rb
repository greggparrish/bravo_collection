require 'rails_helper'

RSpec.describe "finding_aids/show", :type => :view do
  before(:each) do
    @finding_aid = assign(:finding_aid, FindingAid.create!(
      :body_text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
