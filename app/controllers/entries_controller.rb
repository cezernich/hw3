class EntriesController < ApplicationController
  def new
    @place_id = params.fetch("place_id")
    render({ :template => "entries/new" })
  end

  def create
    the_entry = Entry.new
    the_entry.title = params.fetch("title")
    the_entry.description = params.fetch("description")
    the_entry.occurred_on = params.fetch("occurred_on")
    the_entry.place_id = params.fetch("place_id")
    the_entry.save

    redirect_to("/places/" + the_entry.place_id.to_s)
  end
end
