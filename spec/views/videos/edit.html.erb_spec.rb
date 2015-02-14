require 'rails_helper'

RSpec.describe "videos/edit", :type => :view do
  before(:each) do
    @video = assign(:video, Video.create!(
      :title => "MyString",
      :description => "MyText",
      :duration => "MyString"
    ))
  end

  it "renders the edit video form" do
    render

    assert_select "form[action=?][method=?]", video_path(@video), "post" do

      assert_select "input#video_title[name=?]", "video[title]"

      assert_select "textarea#video_description[name=?]", "video[description]"

      assert_select "input#video_duration[name=?]", "video[duration]"
    end
  end
end
