require 'date'

class PagesController < ApplicationController
  def home
    @matches_running = Match.includes(place: :arenas).where("start <= :now AND end >= :now", now: DateTime.now).where(visibility: "public")
  end
end
