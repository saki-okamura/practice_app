class KojirasesController < ApplicationController
  def index; end

  def new
    @kojirase = Kojirase.new
  end

  def show
    @kojirase = Kojirase.find(params[:id])
  end

  def create
    @kojirase = Kojirase.new(kojirase_params)
    @kojirase.question = params[:kojirase][:question].join("")
    if @kojirase.save!
      flash[:success] = '診断が完了しました'
      redirect_to kojirase_path(@kojirase)
    else
      render :new
    end
  end

  private

  def kojirase_params
    params.require(:kojirase).permit(question: [])
  end

end
