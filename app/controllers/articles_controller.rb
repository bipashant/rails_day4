class ArticlesController < ApplicationController
  def index

    @articles=Article.list_all_articles
  end

  def showarticle
    params[:id]
    @article=Article.find_article_by_id (params[:id])
  end

  def tags
    params[:tag]
    @tag=Tag.list_all_article (params[:tag])
  end
  def searchresult
    @search_string=params[:title]

    @articles=Article.search (@search_string)
  end
end
