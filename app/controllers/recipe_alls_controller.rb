class RecipeAllsController < ApplicationController
  # GET /recipe_alls
  # GET /recipe_alls.json
  def index
    @search = RecipeAll.search do
      fulltext params[:search]
    end
    @recipe_alls = @search.results 
    #@recipe_alls = RecipeAll.paginate page: params[:page], order: 'created_at desc',
    # per_page: 10

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipe_alls }
    end
  end

  # GET /recipe_alls/1
  # GET /recipe_alls/1.json
  def show
    @recipe_all = RecipeAll.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe_all }
    end
  end

  # GET /recipe_alls/new
  # GET /recipe_alls/new.json
  def new
    @recipe_all = RecipeAll.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recipe_all }
    end
  end

  # GET /recipe_alls/1/edit
  def edit
    @recipe_all = RecipeAll.find(params[:id])
  end

  # POST /recipe_alls
  # POST /recipe_alls.json
  def create
    @recipe_all = RecipeAll.new(params[:recipe_all])

    respond_to do |format|
      if @recipe_all.save
        format.html { redirect_to @recipe_all, notice: 'Recipe all was successfully created.' }
        format.json { render json: @recipe_all, status: :created, location: @recipe_all }
      else
        format.html { render action: "new" }
        format.json { render json: @recipe_all.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipe_alls/1
  # PUT /recipe_alls/1.json
  def update
    @recipe_all = RecipeAll.find(params[:id])

    respond_to do |format|
      if @recipe_all.update_attributes(params[:recipe_all])
        format.html { redirect_to @recipe_all, notice: 'Recipe all was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipe_all.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_alls/1
  # DELETE /recipe_alls/1.json
  def destroy
    @recipe_all = RecipeAll.find(params[:id])
    @recipe_all.destroy

    respond_to do |format|
      format.html { redirect_to recipe_alls_url }
      format.json { head :no_content }
    end
  end
end
