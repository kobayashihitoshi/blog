class DocumentsController < ApplicationController
  def new
    @document = Document.new
  end
  
  def index
    @document = Document.all
  end

  def show
    @document = Document.find(params[:id])
  end

  def edit
    @document = Document.find(params[:id])
  end
  
  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to document_path(@post)
    else
      @documents = Document.all
      render :new
    end
  end
  
  def delete
    
  end
  
  def update
    
  end

  private
  
  def document_params
    params.require(:document).permit(:title, :body)
  end
  
end
