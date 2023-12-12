require 'rails_helper'

RSpec.describe Sport, type: :model do

  before{@sport = Sport.new}

  describe 'Testes de preenchimento do model Sport' do

    it 'name consegue ser prenchido?' do
      @sport.name = 'basket'
      expect(@sport.name).to eq('basket')
    end

    it 'description consegue ser preenchido?' do
      @sport.description = 'esporte famoso no EUA'
      expect(@sport.description).to eq('esporte famoso no EUA')
    end

  end

  describe 'Testes de validação do model Sport' do

    it 'sport valido com campos obrigatorios preenchidos?' do
      @sport.name = ''
      @sport.description = ''
      expect(@sport).to be_valid
    end

  end

end