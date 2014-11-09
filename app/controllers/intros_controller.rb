class IntrosController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_intro, only: [:show, :edit, :update, :destroy]

  def index
    @intros = Intro.all
    respond_with(@intros)
  end

  def show
    respond_with(@intro)
  end

  def new
    @intro = Intro.new
    respond_with(@intro)
  end

  def edit
  end

  def create
    @intro = Intro.new(intro_params)
    @intro.save
    respond_with(@intro)
  end

  def update
    @intro.update(intro_params)
    respond_with(@intro)
  end

  def destroy
    @intro.destroy
    respond_with(@intro)
  end

  private
    def set_intro
      @intro = Intro.find(params[:id])
    end

    def intro_params
      params[:intro]
    end
end
