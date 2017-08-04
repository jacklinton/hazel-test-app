require_relative "spec_helper"
require_relative "../test_app.rb"

def app
  TestApp
end

describe TestApp do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
