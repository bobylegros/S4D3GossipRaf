class GossipsController < ApplicationController

  def create()
    #instance de la class Gossips
    @gossip = Gossip.new(gossip_params)
    @gossip.save
    redirect_to @gossip
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy

    redirect_to gossips_path
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def new()
    #instance de la class Gossips
    @gossip = Gossip.new

  end

  def index()
    @gossips = Gossip.all
  end

  def show()
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])

    if @gossip.update(gossip_params)
      redirect_to @gossip
    else
      render 'edit'
    end
  end

  private
  def gossip_params
    params.require(:gossip).permit(:anonimous_autor, :content)
  end

end
