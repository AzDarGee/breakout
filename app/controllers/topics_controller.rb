class TopicsController < ApplicationController
  def index
    @topic = Topic.new
    @topics = Topic.all.order("created_at DESC")
  end
  def new
    # @topic = Topic.new
  end
  def edit
    @topic = Topic.find(params[:id])
  end
  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path, :notice => "Topic created!"
    else
      render :new
    end
  end
  def update
    @topic = Topic.find(params[:id])
    if @topic.update_attributes(topic_params)
      redirect_to (topics_path)
    else
      render :edit
    end
  end
  def show
    @topic = Topic.find(params[:id])
  end
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_path
  end
  private
  def topic_params
    params.require(:topic).permit(:title,:decription)
  end
end
