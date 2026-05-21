class PlacesController < ApplicationController
  def index
    @list_of_places = Place.all
    render({ :template => "places/index" })
  end

  def show
    @the_place = Place.find(params.fetch("id"))
    render({ :template => "places/show" })
  end

  def new
    render({ :template => "places/new" })
  end

  def create
    the_place = Place.new
    the_place.name = params.fetch("name")
    the_place.save

    redirect_to("/places")
  end
end
