require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  let(:article) {FactoryGirl.create(:article)}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id: article.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: article.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #update" do
    it 'updates article successfully' do
      new_title = 'Different Title'
      put :update, id: article.id, article: {title: new_title}
      expect(article.reload.title).to eq(new_title)
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "DELETE #destroy" do
    it 'deletes article successfully' do
      delete :destroy, id: article.id
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "POST #create" do
    it 'creates new article successfully' do
      new_title = 'Create New Article'
      post :create, article: {title: new_title}
      expect(article.save).to eq(true)
      expect(response).to have_http_status(:redirect)
    end
  end

end
