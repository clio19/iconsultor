class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!, except: [:all]
  before_action :authenticate_company!, only: [:all]

  respond_to :html

  layout 'dash', :only => [:all]

  def index
       @skills = current_user.skills
       respond_to do |format|
         format.html
         format.docx do
         render docx: 'word', filename: 'my_skills.docx'
        end
      end
  end

  def all
     @skills = Skill.all
  end

  def show
   @skill = current_user.skills.find(params[:id])
    respond_with(@skill)
  end

  def new
    @skill = Skill.new
    respond_with(@skill)
  end

  def edit
    @skill = current_user.skills.find(params[:id])
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    @skill.save
    respond_with(@skill)
  end

  def update
    @skill.user = current_user
    @skill.update(skill_params)
    respond_with(@skill)
  end

  def destroy
    @skill.user = current_user
    @skill.destroy
    respond_with(@skill)
  end

  private
    def set_skill
      @skill = Skill.find(params[:id])
    end

    def skill_params
      params.require(:skill).permit(:technology, :profiency, :scale, :user_id)
    end
end
