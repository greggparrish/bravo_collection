require 'rails_helper'

RSpec.describe "films/index", :type => :view do
  before(:each) do
    assign(:films, [
      Film.create!(
        :title => "Title",
        :year => 1,
        :time => "Time",
        :description => "MyText"
      ),
      Film.create!(
        :title => "Title",
        :year => 1,
        :time => "Time",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of films" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
