class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout "portfolio"
  access all: [:show, :index, :angular], user: {except: [:destroy,:new,:create, :update, :edit]}, site_admin: :all
  def index
    @portfolio_items = Portfolio.all
  end
  
  def angular
    @angular_portfolio_items = Portfolio.angular
  end
  
  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end
  
  def create
    @portfolio = Portfolio.new(portfolio_params)
    
    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio Item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def edit
    #Lookup Item (via before action of: set_portfolio_item)
    
    3.times { @portfolio_item.technologies.build }
  end
  
  def update
    #Lookup Item (via before action of: set_portfolio_item)
    
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  
  def show
    #Lookup Item (via before action of: set_portfolio_item)
  end
  
  def destroy
    #Lookup Item (via before action of: set_portfolio_item)
    #Destroy/delete record
    @portfolio_item.destroy
    #Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was removed.' }
    #no json, because we aren't building an API
    end
  end
  
  private
  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:name]
                                     )
  end
  
  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end
end
