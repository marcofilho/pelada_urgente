module Places
  class ArenasController < AdminController
    before_action :set_arena, only: [:show, :edit, :update, :destroy]

    def index
      @arenas = set_place.arenas
    end

    def new
      @arena = set_place.arenas.build
    end

    def edit
    end

    def create
      @arena = set_place.arenas.build(arena_params)

      if @arena.save
        redirect_to place_arenas_path(set_place), notice: 'Arena was successfully created.'
      else
        render :new
      end
    end

    def update
      if @arena.update(arena_params)
        redirect_to place_arenas_path(set_place), notice: 'Arena was successfully updated.'
      else
        render :edit
        render json: @places_arena.errors, status: :unprocessable_entity
      end
    end

    def destroy
      if @arena.destroy
        redirect_to place_arenas_path(set_place), notice: 'Arena was successfully destroyed.'
      else
        redirect_to place_arenas_path(set_place), error: 'Arena was not destroyed.'
      end
    end

    private
    def set_place
      @place ||= Place.find(params[:place_id])
    end

    def set_arena
      @arena = set_place.arenas.find(params[:id])
    end

    def arena_params
      params.require(:place_arena).permit(:name, :width, :length, :kind)
    end
  end

end
