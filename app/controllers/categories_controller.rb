class CategoriesController < ApplicationController
  def index
    @categories = Category.all.order(:id)
    respond_to do |format|
      format.html
      format.json {render json: @categories}
    end
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create category_params
    respond_to do |format|
      if category.valid?
        format.html { redirect_to categories_path, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: category }
      else
        format.html { render :new }
        format.json { render json: category.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    category = Category.find params[:id]
    respond_to do |format|
      if category.update category_params
        format.html { redirect_to categories_path, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: category }
      else
        format.html { render :edit }
        format.json { render json: category.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @category = Category.find params[:id]
    respond_to do |format|
      format.html
      format.json{render json: @category}
    end
  end

  def destroy
    category = Category.find params[:id]
    category.destroy
    respond_to do |format|
      format.html { redirect_to categories_path, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def category_params
    params.require(:category).permit(:symptom, :level, :icon)
  end
end
