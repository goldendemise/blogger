class TagsController < ApplicationController
  def index
    @tags = Tag.all #for controller and view to both see articles it must be an instance variable
  end
  def show
    @tag = Tag.find(params[:id])
  end
  def destroy

    @tag = Tag.find(params[:id])
    @tag.destroy
      flash.notice = "Tag '#{@tag.name}' destroyed!"
    redirect_to tag_path(@tag)

  end
end
