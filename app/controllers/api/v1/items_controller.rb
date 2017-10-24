class Api::V1::ItemsController < Api::UserBaseController

  def index
    @item = Item.all

    render json: @item, status: :ok
  end

  def create
    @item = Item.new item_params

    @item.save
    render json: @item, status: :created
  end

  def destroy
    @contact = Contact.where(id: params[:id]).first

    if @contact.destroy
      head(:ok)
    else
      head(:unprocessible_entity)
    end
  end

  def update
    @contact = Contact.where(id: params[:id]).first

    if @contact.update_attributes(item_params)
      render json: @contact, status: :ok
    else
      render json: @contact.errors, status: :unprocessible_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:id, :name, :description)
  end
end