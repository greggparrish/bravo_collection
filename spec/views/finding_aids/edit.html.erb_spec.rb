require 'rails_helper'

RSpec.describe "finding_aids/edit", :type => :view do
  before(:each) do
    @finding_aid = assign(:finding_aid, FindingAid.create!(
      :body_text => "MyText"
    ))
  end

  it "renders the edit finding_aid form" do
    render

    assert_select "form[action=?][method=?]", finding_aid_path(@finding_aid), "post" do

      assert_select "textarea#finding_aid_body_text[name=?]", "finding_aid[body_text]"
    end
  end
end
