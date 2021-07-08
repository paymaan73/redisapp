class LettersController < ApplicationController
  def index
    @letters = Letter.all
  end
end
