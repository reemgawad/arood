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
        pattern << translate(" #{char}") # space before the char necessary for recognition of arabic harakat
      end
      input_pattern = pattern.join('')
      @meters = Meter.search_by_pattern(input_pattern)
      # raise
    else
      @meters = []
    end

    # implementing ajax in search
    respond_to do |format|
      format.html
      format.json do
        render json: {
          meters: render_to_string('meters/_meters_list.html', layout: false, locals: { meters: @meters }),
        }
      end
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
      '10'
    when sokoon
      '0'
    when shadda
      '01'
    when madd
      '10'
    end
  end
end
