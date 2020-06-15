class VotesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_article

  def create
    @vote = current_user.votes.new(article_id: params[:article_id])
    if @vote.save
      flash[:notice] = 'Voted successfully.'
      redirect_to article_path(params[:article_id])
      #redirect_to article_path(params[:article_id], notice: 'Voted successfully.')
    else
      redirect_to root_path
    end
  end

  def destroy
    vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    if vote
      vote.destroy
      redirect_to root_path, notice: 'Your vote was removed.'
    else
      redirect_to root_path
    end
  end


  private

  def find_article
    @article = Article.find(params[:article_id])

  end
end
