require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = []
    counter = 0
    while counter <= 10
      @letters << ('A'..'Z').to_a.sample
      counter += 1
    end
  end

  def score
    @url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    @word_api = URI.open(@url).read
    @checked_word = JSON.parse(@word_api)
    if @checked_word['found']
  end
end
