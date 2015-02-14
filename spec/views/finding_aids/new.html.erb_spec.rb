require 'rails_helper'

RSpec.describe "finding_aids/new", :type => :view do
  before(:each) do
    assign(:finding_aid, FindingAid.new(
      :body_text => "MyText"
    ))
  end

  it "renders new finding_aid form" do
    render

    assert_select "form[action=?][method=?]", finding_aids_path, "post" do

      assert_select "textarea#finding_aid_body_text[name=?]", "finding_aid[body_text]"
    end
  end
end
