class RatingReviewsController < ApplicationController
  # before_action :set_current_user, only: [:cart, :add_to_cart, :remove_from_cart]

 def create
      @product = Product.find(params[:product_id])
   if params[:rating_reviews][:rating_review_id].present?
        @rating_review = RatingReview.find(params[:rating_reviews][:rating_review_id])
        @rating_review.update(rating_review_params)
   else
       @rating_review = RatingReview.new(rating_review_params)
       @rating_review.user = current_user
       @rating_review.product = @product
       @rating_review.save
   end
   redirect_to "/products/#{@product.id}"
 end

 private

 def rating_review_params
      params.require(:rating_reviews).permit(:rating, :review)
 end
end  


# class RatingReviewsController < ApplicationController
#   before_action :set_rating_review, only: [:show, :edit, :update, :destroy]

#   # GET /rating_reviews
#   # GET /rating_reviews.json
#   def index
#     @rating_reviews = RatingReview.all
#   end

#   # GET /rating_reviews/1
#   # GET /rating_reviews/1.json
#   def show
#   end

#   # GET /rating_reviews/new
#   def new
#     @rating_review = RatingReview.new
#   end

#   # GET /rating_reviews/1/edit
#   def edit
#   end

#   # POST /rating_reviews
#   # POST /rating_reviews.json
#   def create
#     @rating_review = RatingReview.new(rating_review_params)

#     respond_to do |format|
#       if @rating_review.save
#         format.html { redirect_to @rating_review, notice: 'Rating review was successfully created.' }
#         format.json { render :show, status: :created, location: @rating_review }
#       else
#         format.html { render :new }
#         format.json { render json: @rating_review.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /rating_reviews/1
#   # PATCH/PUT /rating_reviews/1.json
#   def update
#     respond_to do |format|
#       if @rating_review.update(rating_review_params)
#         format.html { redirect_to @rating_review, notice: 'Rating review was successfully updated.' }
#         format.json { render :show, status: :ok, location: @rating_review }
#       else
#         format.html { render :edit }
#         format.json { render json: @rating_review.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /rating_reviews/1
#   # DELETE /rating_reviews/1.json
#   def destroy
#     @rating_review.destroy
#     respond_to do |format|
#       format.html { redirect_to rating_reviews_url, notice: 'Rating review was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_rating_review
#       @rating_review = RatingReview.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def rating_review_params
#       params.require(:rating_review).permit(:product_id, :user_id, :review, :comment)
#     end
# end
