require 'spec_helper'

describe "actors/edit" do
  before(:each) do
    @actor = assign(:actor, stub_model(Actor,
      :login => "MyString",
      :avatar_url => "MyString",
      :gravatar_id => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit actor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", actor_path(@actor), "post" do
      assert_select "input#actor_login[name=?]", "actor[login]"
      assert_select "input#actor_avatar_url[name=?]", "actor[avatar_url]"
      assert_select "input#actor_gravatar_id[name=?]", "actor[gravatar_id]"
      assert_select "input#actor_url[name=?]", "actor[url]"
    end
  end
end
