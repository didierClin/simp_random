class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_action :nb_group, only: :random_people
  before_action :clear_gpe, only: :destroy


  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
    @people = Person.all
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def random_people
      idperson = Person.all.map{|x| x.id}

      if Group.all.count > 0
        #tantque le nbre de personne != 0
        while idperson.count > 0
          Group.all.each do |grp|
            a = idperson.sample
            Person.find(a).update_attributes(group_id: grp.id) unless a.nil?
            idperson.delete(a)
          end
        end
      else
        redirect_to :root, notice: "ther have to be a least one group .Dumbass!"
      end
      redirect_to :root, notice: "Yataî  all has been randomized!!!"
  end




  private
    # Supprime 
    def clear_gpe
    @people = Person.all
      @group = Group.find(params[:id])
      @people.each do |p|
        p.group_id = 0 unless p.group_id != @group.id
        p.save
      end

    end
    def  nb_group
      if Group.all.size < 2
         redirect_to root_path, notice: 'Vous devez créer deux groupes pour affecter les utilisateurs.'
       end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:nom, :salle, :tache)
    end
end
