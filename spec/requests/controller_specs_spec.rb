require 'rails-controller-testing'


RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "renders the index template with correct placeholder text" do
      get '/users'
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:index)
      expect(response.body).to include('Here is a list of all users')
    end
  end
end
