require "open-uri"
require "time"

class LongestWordGameController < ApplicationController
  def longestword
    array = ('A'..'Z').to_a
    sample = array.sample(5) + array.sample(4)
    @sample = sample.join(', ')
  end

  def results
    t = URI.open("https://wagon-dictionary.herokuapp.com/#{params[:word]}")
    api_word = JSON.parse(t.string)

    # @real = false
    # count = 0

    # it kept breaking
    # [params[:letters]].each do |r|
    #   if (api_word['word'].upcase.count(r) >= [params[:letters]].count(r)) == true
    #     count = count + 1
    #   end
    # end

    # @real = true if count == api_word['word'].length

    if api_word['found'] == true
      @score = api_word['length']
      @message = 'Well done!'
    elsif api_word['found'] == false
      @score = 0
      @message = 'Failed! Try again.'
    end
    # raise
  end

end
# dlwgeogle
# google
