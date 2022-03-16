class KojirasesController < ApplicationController
  def index; end

  def new
    @kojirase = Kojirase.new
  end


end
