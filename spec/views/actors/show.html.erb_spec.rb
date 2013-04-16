require 'spec_helper'

describe "actors/show" do
  before(:each) do
    @actor = assign(:actor, stub_model(Actor,
      :login => "Login",
      :avatar_url => "Avatar Url",
      :gravatar_id => "Gravatar",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Login/)
    rendered.should match(/Avatar Url/)
    rendered.should match(/Gravatar/)
    rendered.should match(/Url/)
  end
end
