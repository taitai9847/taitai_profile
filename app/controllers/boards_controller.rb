class BoardsController < ApplicationController
    before_action :set_target_board, only: %i[show edit update destroy] 

    def index
        desc = Board.all.order(id: :desc)
        @boards = desc.page(params[:page]).per(5)
    end

    def new
        @board = Board.new(flash[:board])
    end

    def create
        board = Board.new(board_params)
        if board.save
            flash[:notice] = "「#{board.title}」を作成しました"
            redirect_to boards_path
        else
            redirect_to new_board_path, flash: {
                board: board,
                error_messages: board.errors.full_messages
            }
        end

    end

    def show
    end

    def edit 
    end

    def update
        @board.update(board_params)
        
        redirect_to boards_path
    end

    def destroy
        @board.delete

        redirect_to boards_path
    end

    private

    def board_params
        params.require(:board).permit(:title, :body)    
    end

    def set_target_board
        @board = Board.find(params[:id])
    end
end
