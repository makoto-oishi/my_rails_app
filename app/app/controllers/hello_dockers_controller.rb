class HelloDockersController < ApplicationController
  before_action :set_hello_docker, only: [:show, :edit, :update, :destroy]

  # GET /hello_dockers
  # GET /hello_dockers.json
  def index
    @hello_dockers = HelloDocker.all
  end

  # GET /hello_dockers/1
  # GET /hello_dockers/1.json
  def show
  end

  # GET /hello_dockers/new
  def new
    @hello_docker = HelloDocker.new
  end

  # GET /hello_dockers/1/edit
  def edit
  end

  # POST /hello_dockers
  # POST /hello_dockers.json
  def create
    @hello_docker = HelloDocker.new(hello_docker_params)

    respond_to do |format|
      if @hello_docker.save
        format.html { redirect_to @hello_docker, notice: 'Hello docker was successfully created.' }
        format.json { render :show, status: :created, location: @hello_docker }
      else
        format.html { render :new }
        format.json { render json: @hello_docker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hello_dockers/1
  # PATCH/PUT /hello_dockers/1.json
  def update
    respond_to do |format|
      if @hello_docker.update(hello_docker_params)
        format.html { redirect_to @hello_docker, notice: 'Hello docker was successfully updated.' }
        format.json { render :show, status: :ok, location: @hello_docker }
      else
        format.html { render :edit }
        format.json { render json: @hello_docker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hello_dockers/1
  # DELETE /hello_dockers/1.json
  def destroy
    @hello_docker.destroy
    respond_to do |format|
      format.html { redirect_to hello_dockers_url, notice: 'Hello docker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hello_docker
      @hello_docker = HelloDocker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hello_docker_params
      params.require(:hello_docker).permit(:name)
    end
end
