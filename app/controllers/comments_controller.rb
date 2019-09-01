class CommentsController < ApplicationController
  def create
    comment = current_user.comments.build(comment_params)
    tweet = Tweet.find(params[:tweet_id])
    comment.tweet_id = tweet.id
    comment.save
    redirect_to tweets_path(tweet.id)
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to tweets_path
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
