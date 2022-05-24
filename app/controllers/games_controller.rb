class GamesController < ApplicationController

  def new
    array = []
    @letters = ('a'..'z').to_a.sample(10)
    10.times do
      array << array.shuffle[0]
    end
  end

  def score
    @letters = params[:name]
    valid_letters = params[:name].split()
    @word = params[:score]
    valid_word = params[:word].split("")
    valid_word.each do |letter|
      if valid_letters.include?(letter) == false
        @wrong_answer = "Sorry but #{@word} can't be build out of #{@letters}"
      end
    end
  end


end
