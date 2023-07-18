module Api
  class GigsController < ApplicationController
    def index
      @gigs = Gig.all
      render json: @gigs
    end
  end
end