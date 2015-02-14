require 'rails_helper'

RSpec.describe "films/show", :type => :view do
  before(:each) do
    @film = assign(:film, Film.create!(
      :title => "Title",
      :year => 1,
      :time => "Time",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/MyText/)
  end
end
