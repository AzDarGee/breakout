class TopicsController < ApplicationController
  def index
    @topics = Topic.all.order("created-at DESC")
  end
  def new
    @topic = Topic.new
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
  end

  def show
  end

  def destroy
  end

  private
  def topic_params
    params.require(:topic).permit(:title,:decription)
  end
end
