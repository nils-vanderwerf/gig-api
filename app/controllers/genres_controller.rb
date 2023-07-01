class GenresController < ApplicationController
  before_action :set_create_genre, only: %i[ show update destroy ]

  # GET /create_genres
  def index
    @create_genres = CreateGenre.all

    render json: @create_genres
  end

  # GET /create_genres/1
  def show
    render json: @create_genre
  end

  # POST /create_genres
  def create
    @create_genre = CreateGenre.new(create_genre_params)

    if @create_genre.save
      render json: @create_genre, status: :created, location: @create_genre
    else
      render json: @create_genre.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /create_genres/1
  def update
    if @create_genre.update(create_genre_params)
      render json: @create_genre
    else
      render json: @create_genre.errors, status: :unprocessable_entity
    end
  end

  # DELETE /create_genres/1
  def destroy
    @create_genre.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_genre
      @create_genre = CreateGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_genre_params
      params.require(:create_genre).permit(:name, :address)
    end
end
