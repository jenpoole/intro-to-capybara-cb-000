class Application < Sinatra::Base

  # create a GET route at the / URL
  get '/' do
    # render views/index.erb
    erb :index
  end

  # create a response for requests to POST '/greet'
  post '/greet' do
    erb :greet
  end

end

=begin
  File: spec/application_integration_spec.rb

 describe "GET '/' - Greeting Form" do
   # write a test that checks that the get '/' route brings the user to the root path with the greeting form
   it 'welcomes the user' do
     # The visit method navigates the test's browser to a specific URL
     visit '/'

     # The page method in Capybara exposes the "session" or "browser" that is being used during the test
     expect(page.body).to include("Welcome!")
   end

   # add tests for the HTML form that will allow users to provide their name for the greeting
   it 'has a greeting form with a user_name field' do
     visit '/'

     # Capybara page objects respond to methods that relate to HTML and the DOM
     expect(page).to have_selector("form")

     # expect the page to have a form field called user_name
     expect(page).to have_field(:user_name)
   end

   # test what a user should see when they visit the greeting form, fill in the name, and click the 'Submit' button
   it 'greets the user personally based on their user_name in the form' do
     # visit '/' to load the form into the page object.
     visit '/'

     # use the Capybara method fill_in to fill in the input field user_name
     fill_in(:user_name, :with => "Avi")

     # submit the form
     click_button "Submit"

     # The HTML interaction of submitting a form will trigger a new HTTP request in the Capybara session and page object
     # When Capybara submits a form, the page object is appropriately updated. `page` no longer contains the original greeting form, but, rather, after click_button is called, `page` now contains the response to the greeting form.

     # In response to Capybara's submission of the greeting form, we can expect the page to have_text
     expect(page).to have_text("Hi Avi, nice to meet you!")
   end
 end
=end
