class MetersController < ApplicationController
  def index
    @meters = Meter.all
  end

  def new
  end

  def create
    word = params[:word]
    # look at each character in the word input
    # for each character, translate it into binary
    # put all the binaries into one pattern
    # match that pattern to the database
    # get all db records that match and assign to @meters
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
