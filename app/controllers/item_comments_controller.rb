class ItemCommentsController < ApplicationController

	def create
    item = Item.find(params[:item_id])
    comment = current_user.item_comments.new(item_comment_params)
    comment.item_id = item.id
    comment.score = Language.get_data(item_comment_params[:comment])
    comment.save
    redirect_to item_path(item)
	end


private
def item_comment_params
    params.require(:item_comment).permit(
    :user_id,
    :item_id,
    :comment
    	)
end

end
