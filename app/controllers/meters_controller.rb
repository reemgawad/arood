class MetersController < ApplicationController
  def index
    @meters = Meter.all
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
