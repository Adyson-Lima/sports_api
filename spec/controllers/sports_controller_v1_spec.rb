require 'rails_helper'

RSpec.describe Api::V1::SportsController, type: :controller do

  before(@sport = Sport.create(name: 'voley', description: 'jogo com disputa atraves de uma rede'))

  describe 'GET /api/v1/sports' do
    it 'Consegue listar todos os sports e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end