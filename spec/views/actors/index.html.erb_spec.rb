require 'spec_helper'

describe "actors/index" do
  before(:each) do
    assign(:actors, [
      stub_model(Actor,
        :login => "Login",
        :avatar_url => "Avatar Url",
        :gravatar_id => "Gravatar",
        :url => "Url"
      ),
      stub_model(Actor,
        :login => "Login2",
        :avatar_url => "Avatar Url",
        :gravatar_id => "Gravatar",
        :url => "Url"
      )
    ])
  end

  it "renders a list of actors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Login*".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar Url".to_s, :count => 2
    assert_select "tr>td", :text => "Gravatar".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
