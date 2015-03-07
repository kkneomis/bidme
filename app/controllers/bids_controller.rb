class BidsController < ApplicationController
  before_action :set_bid, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  
  respond_to :html
  

  def index
    @bids = Bid.all
    respond_with(@bids)
  end

  def show
    respond_with(@bid)
  end

  def new
    @bid = Bid.new
    @event = Event.find(params[:event_id])
     @bid.bidder_id = current_user.id
  end

  def edit
  end

  def create
    @bid = Bid.new(bid_params)
   
    @event = Event.find(params[:event_id])
    @bid.event_id = @event.id
    @customer=@event.user
    
    @bid.bidder_id= current_user.id
    @bid.customer_id= @customer.id
        if @event.lowbid==0.0  
           @event.lowbid=@bid.price
        else
          
        end
    respond_to do |format|
     if @bid.save
       format.html { redirect_to @event, notice: 'bid was successfully created.' }
         
     end
   end
  end

  def update
    @bid.update(bid_params)
    respond_with(@bid)
  end

  def destroy
    @bid.destroy
    respond_with(@bid)
  end

  private
    def set_bid
      @bid = Bid.find(params[:id])
    end

    def bid_params
      params.require(:bid).permit(:price)
    end
  def check_user
    if current_user != @event.user
      redirect_to root_url, alert: "Sorry, this event belongs to someone else"\
      end
  end
end
