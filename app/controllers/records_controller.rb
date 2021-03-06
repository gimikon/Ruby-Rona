class RecordsController < ApplicationController

    def index
      @records = Record.all.order(:id)
      respond_to do |format|
        format.html
        format.json {render json: @records}
      end
    end

    def new
      @record = Record.new
    end

    def create
      record = Record.create record_params


      respond_to do |format|

        format.html
        format.json { render json: @record }

      end
    end

    def edit
      @record = Record.find params[:id]
    end

    def update
      record = Record.find params[:id]
      record.update record_params

      respond_to do |format|

        format.html
        format.json { render json: @record }

      end

    end

    def show
      @record = Record.find params[:id]
      respond_to do |format|
        format.html
        format.json{render json: @record}
      end
    end

    def destroy
      record = Record.find params[:id]
      record.destroy

      respond_to do |format|
        format.html {redirect_to records_path, notice: 'Record was successfully destroyed.' }
        format.json { render json: @record }

      end

    end

    private
    def record_params

      params.require(:record).permit(:user_id, :category_id, :note, :date)
    end
  end
