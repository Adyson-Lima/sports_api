require 'rails_helper'

RSpec.describe Sport, type: :model do

  before{@sport = Sport.new}

  describe 'Testes de validação do model Sport' do

    it 'name consegue ser prenchido?' do
      @sport.name = ''
      expect(@sport.name).to eq('basket')
    end

  end

end