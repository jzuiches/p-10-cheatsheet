require_relative '../spec_helper'

describe 'Cheatsheet App Routes' do
  describe 'GET /' do
    it 'should give a 200 status' do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end

  describe 'GET /' do
    it 'should render a sweet main page' do
      get :index
      expect(response)to render_template(:index)
    end
  end

  describe 'POST /' do
    it 'should also have a 200 response' do
      post '/signin'
      expect(last_response.status).to eq(200)
    end
  end
  describe '#index' do
    it 'displays some of the posts' do
      post.create(title: "title", content: "content")
      get :index
      expect(assigns(:posts)).to have(1).post
    end
  end

end

