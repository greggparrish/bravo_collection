require 'rails_helper'

RSpec.describe "finding_aids/index", :type => :view do
  before(:each) do
    assign(:finding_aids, [
      FindingAid.create!(
        :body_text => "MyText"
      ),
      FindingAid.create!(
        :body_text => "MyText"
      )
    ])
  end

  it "renders a list of finding_aids" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
