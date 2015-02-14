require 'rails_helper'

RSpec.describe "videos/index", :type => :view do
  before(:each) do
    assign(:videos, [
      Video.create!(
        :title => "Title",
        :description => "MyText",
        :duration => "Duration"
      ),
      Video.create!(
        :title => "Title",
        :description => "MyText",
        :duration => "Duration"
      )
    ])
  end

  it "renders a list of videos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
  end
end
