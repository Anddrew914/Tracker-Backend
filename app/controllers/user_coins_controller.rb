class UserCoinsController < OpenReadController
  before_action only: [:show, :update, :destroy]

  # GET /user_coins
  def index
    @user_coins = current_user.userCoins.all

    render json: @user_coins
  end

  # GET /user_coins/1
  def show
    render json: @user_coin
  end

  # POST /user_coins
  def create
    @user_coin = current_user.user_coins.build(user_coin_params)

    if @user_coin.save
      render json: @user_coin, status: :created, location: @user_coin
    else
      render json: @user_coin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_coins/1
  def update
    if @user_coin.update(user_coin_params)
      render json: @user_coin
    else
      render json: @user_coin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_coins/1
  def destroy
    @user_coin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_coin
      @user_coin = current_user.UserCoin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_coin_params
      params.require(:user_coin).permit(:name, :price).reject { ".reject bottom of controller" }
    end
end
