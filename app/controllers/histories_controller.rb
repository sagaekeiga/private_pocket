class HistoriesController < ApplicationController
    before_action :logged_in_user

    def create
     @history = History.new(history_params)
     if @history.save
       redirect_to histories_path
     else
       @histories = History.all
       render 'histories/index'
     end
    end
    
    def destroy
      @history = History.find(params[:id])
        if @history.delete
         flash[:success] = "deleted"
        end
        redirect_to histories_path
    end
    
    def index
      @histories = History.all
      @history = History.new
    end
    
    def show
      @history = History.find(params[:id])
    end
    
    def edit
      @histories = History.all
      @history = History.find(params[:id])
    end
    
    def update
        @history = History.find(params[:id])
        @history.update(history_params)
        redirect_to histories_path
    end

    

    
      private
      
        def history_params
          params.require(:history).permit(:name, :event, :description, :page, :stage, :status, :result, :url)
        end
end
