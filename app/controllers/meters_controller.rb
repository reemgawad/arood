class MetersController < ApplicationController
  # index method:
  #   look at each character in the word input
  #   for each character, translate it into binary
  #   put all the binaries into one pattern
  #   match that pattern to the database
  #   get all db records that match and assign to @meters

  def index
    if params[:query].present?
      word = params[:query]
      pattern = []
      word.chars.each do |char|
        pattern << translate(" #{char}")
        # raise
      end
      input_pattern = pattern.join('')
      @meters = Meter.search_by_pattern(input_pattern)
      raise
    else
      @meters = Meter.all
    end
  end

  def translate(character)
    tashkil = [' ُ', ' َ', ' ِ']
    tanween = [' ٌ', ' ً', ' ٍ']
    sokoon = ' ْ'
    shadda = ' ّ'
    madd = ' ٓ'

    case character
    when *tashkil
      '1'
    when *tanween
      '0'
    when sokoon
      '0'
    when shadda
      '01'
    when madd
      '10'
    else
      '0'
    end
  end
end
