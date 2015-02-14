require 'rails_helper'

RSpec.describe "films/new", :type => :view do
  before(:each) do
    assign(:film, Film.new(
      :title => "MyString",
      :year => 1,
      :time => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new film form" do
    render

    assert_select "form[action=?][method=?]", films_path, "post" do

      assert_select "input#film_title[name=?]", "film[title]"

      assert_select "input#film_year[name=?]", "film[year]"

      assert_select "input#film_time[name=?]", "film[time]"

      assert_select "textarea#film_description[name=?]", "film[description]"
    end
  end
end
