class FreelancemyDocumentsController < ApplicationController
  before_action :set_freelancemy_document, only: [:show, :update, :destroy]

  # GET /freelancemy_documents
  def index
    @freelancemy_documents = FreelancemyDocument.all

    render json: @freelancemy_documents
  end

  # GET /freelancemy_documents/1
  def show
    render json: @freelancemy_document
  end

  # POST /freelancemy_documents
  def create
    @freelancemy_document = FreelancemyDocument.new(freelancemy_document_params)

    if @freelancemy_document.save
      render json: @freelancemy_document, status: :created, location: @freelancemy_document
    else
      render json: @freelancemy_document.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /freelancemy_documents/1
  def update
    if @freelancemy_document.update(freelancemy_document_params)
      render json: @freelancemy_document
    else
      render json: @freelancemy_document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /freelancemy_documents/1
  def destroy
    @freelancemy_document.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freelancemy_document
      @freelancemy_document = FreelancemyDocument.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def freelancemy_document_params
      params.require(:freelancemy_document).permit(:title, :description, :file_url, :image_url)
    end
end
