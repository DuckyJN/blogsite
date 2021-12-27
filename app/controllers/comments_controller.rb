class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = Comment.create(comment_params)
        @comment.article_id = @article.id
        if @comment.save
          redirect_to article_path(@article)
        end
    end


    private
    def comment_params
        params.require(:comment).permit(:user_id, :body)
    end

end
