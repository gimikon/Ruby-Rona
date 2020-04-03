class RecordsController < ApplicationController

    def index
      @records = Record.all
      render(json: @records)



    end

    def new
      @record = Record.new
    end

    def create
      record = Record.create record_params
      redirect_to records_path

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
    end

    def destroy
      record = Record.find params[:id]
      record.destroy
      redirect_to records_path

      respond_to do |format|

        format.html
        format.json { render json: @record }

      end

    end

    private # The following methods aren't accessible outside of this class.
    def record_params
      # Strong params: white list of sanitised input -- stuff we are happy to let the user provide.
      params.require(:record).permit(:date, :note)
    end
  end
