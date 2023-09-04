class CategoriesController < ApplicationController
    def create 
        @tool = Tool.find(params[:tool_id])
        @category = @tool.categories.create(category_params)
        redirect_to tool_path(@tool)
    end

    private
        def category_params
            params.require(:category).permit(:category)
        end
end
