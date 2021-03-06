class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
    @people = Person.all
  end

  def show
  end

  # GET /peoples/new
  def new
    @people = Person.new
  end

  # GET /peoples/1/edit
  def edit
  end


  # POST /peoples
  # POST /peoples.json
  def create
    @people = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @people, notice: 'people was successfully created.' }
        format.json { render :show, status: :created, location: @people }
      else
        format.html { render :new }
        format.json { render json: @people.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
# DELETE /people/1.json
def destroy
  @person.destroy
  respond_to do |format|
    format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
    format.json { head :no_content }
  end
end



  # PATCH/PUT /peoples/1
  # PATCH/PUT /peoples/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to root_path, notice: 'people was successfully updated.' }
        format.json { respond_with_bip(@person) }
      else
        format.html { render :edit }
        format.json { respond_with_bip(@person) }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:nom, :email, :tel, :group_id, :sensei)
    end
end
