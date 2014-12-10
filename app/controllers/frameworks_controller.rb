class FrameworksController < ApplicationController
  before_action :set_framework, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :update]

  # GET /frameworks
  # GET /frameworks.json
  def index
    @category = Category.find(params[:category_id]) unless params[:category_id].blank?
    if @category.nil?
      @frameworks = Framework.includes(:categories).includes(:user).order(vote: :desc, created_at: :desc).page(params[:page]).per(24)
    else
      @frameworks = Framework.includes(:categories).includes(:user).order(vote: :desc, created_at: :desc).where(categories: {name: @category.name}).page(params[:page]).per(24) unless @category.nil?
    end


  end

  # GET /frameworks/1
  # GET /frameworks/1.json
  def show
    @comment = Comment.new
  end

  # GET /frameworks/new
  def new
    if no_right
      message_no_access
      return
    end
    @framework = Framework.new
  end

  # GET /frameworks/1/edit
  def edit
  end

  # POST /frameworks
  # POST /frameworks.json
  def create
    if no_right
      message_no_access
      return
    end
    categories = params[:categories]
    @framework = Framework.new(framework_params)
    p categories
    categories.split(',').each do |category|
      logger.debug 'helloooo'
      category_id = category.to_i
      if(category_id != 0)
       @framework.categories << Category.find(category_id)
      end
    end if categories.respond_to? :split
    @framework.user = current_user
    respond_to do |format|
      if @framework.save
        format.html { redirect_to @framework, notice: 'Framework was successfully created.' }
        format.json { render :show, status: :created, location: @framework }
      else
        format.html { render :new }
        format.json { render json: @framework.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frameworks/1
  # PATCH/PUT /frameworks/1.json
  def update
    respond_to do |format|
      vote = params[:framework][:vote].to_i
      if not vote.nil? or vote != 0
        @framework.decrease_vote if vote < @framework.vote
        @framework.increase_vote if vote > @framework.vote
      end
      if @framework.save
        @id = "framework-#{@framework.id}"
        current_user.points += 1
        current_user.save
        format.html { redirect_to :back, notice: t('frameworks.update.success', framework: @framework.name) }
        format.js { render :show }
      else
        format.html { redirect_to :back, notice: t('frameworks.update.error') }
        format.json { render json: @framework.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
    @frameworks = Framework.full_text_search(params[:q]).page(params[:page])
  end

  # DELETE /frameworks/1
  # DELETE /frameworks/1.json
  def destroy
    @framework.destroy
    respond_to do |format|
      format.html { redirect_to frameworks_url, notice: 'Framework was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_framework
      @framework = Framework.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def framework_params
      params.require(:framework).permit(:name, :description)
    end

    def no_right
      not current_user.enough_points?
    end

    def message_no_access
      redirect_to :back, notice: t('frameworks.no_rights')
    end
end
