class NovelsController < ApplicationController
    def index
    @novels=Novel.all 
    end
    def new
    end
    def show
    @novel=Novel.find(params[:id])
    end
    def create
    @novel=Novel.new(novel_params)
    if @novel.save
    redirect_to novels_path
    else
    render 'new'
    end
end
    private
    def novel_params
    params.require(:novel).permit(:title, :genre_id, :author_id, :publication_id, :isbn, :price, :publication, :format, :description, :pages) 
    end
    def edit
    @novel = Novel.find(params[:id])
    end
    def update
    @novel = Novel.find(params[:id])
    if @novel.update(novel_params)
    redirect_to @novel
    else
    render 'edit'
    end
    end
    def destroy
    @novel = Novel.find(params[:id])
    @novel.destroy
    redirect_to novels_path
    end
    def search
        @novels = if params[:term]
            Novel.where('title LIKE ?', "%#{params[:term]}")
        else Novel.all
        end
    end
end

