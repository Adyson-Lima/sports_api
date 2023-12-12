require 'rails_helper'

RSpec.describe Api::V1::SportsController, type: :controller do

  before{@sport = Sport.create(name: 'voley', description: 'jogo com disputa atraves de uma rede')}

  describe 'GET /api/v1/sports' do
    it 'Consegue listar todos os sports e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/sports/id' do
    it 'Consegue listar um sport especifico e retornar status 200?' do
      get :show, params: {id: @sport.id}
      expect(response.body).to include_json(id: @sport.id)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/sports' do
    it 'Consegue criar um sport e retornar status 201?' do
      post :create, params: {sport: {name: 'futsal', description: 'futbol de salão'}, format: :json}
      expect(response.body).to include_json(name: 'futsal')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/sports/id' do
    it 'Consegue atualizar um sport e retornar status 200?' do
      sport = Sport.last
      patch :update, params: {sport: {name: 'baseball', description: 'sport famoso no EUA'}, id: sport.id}
      expect(response.body).to include_json(name: 'baseball')
      expect(response).to have_http_status(200)
    end
  end

  describe 'DELETE /api/v1/sports/id' do
    it 'Consegue excluir um sport e retornar status 204?' do
      sport = Sport.last
      delete :destroy, params: {id: sport.id}
      expect(Sport.all).not_to include(sport)
      expect(response).to have_http_status(204)
    end
  end

end