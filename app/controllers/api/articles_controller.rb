module Api
  class ArticlesController < ApplicationController

    def index
      articles = Article.all
      render json: articles, status: 200
    end

    private

      # Never trust parameters from the scary internet, only allow the white list through.
      def article_params
        params.require(:article).permit(:title, :content, :published)
      end
  end
end