require 'spec_helper'

describe "actors/new" do
  before(:each) do
    assign(:actor, stub_model(Actor,
      :login => "MyString",
      :avatar_url => "MyString",
      :gravatar_id => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new actor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", actors_path, "post" do
      assert_select "input#actor_login[name=?]", "actor[login]"
      assert_select "input#actor_avatar_url[name=?]", "actor[avatar_url]"
      assert_select "input#actor_gravatar_id[name=?]", "actor[gravatar_id]"
      assert_select "input#actor_url[name=?]", "actor[url]"
    end
  end
end
