require 'rails_helper'

RSpec.describe "collections/edit", :type => :view do
  before(:each) do
    @collection = assign(:collection, Collection.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit collection form" do
    render

    assert_select "form[action=?][method=?]", collection_path(@collection), "post" do

      assert_select "input#collection_title[name=?]", "collection[title]"

      assert_select "textarea#collection_description[name=?]", "collection[description]"
    end
  end
end
