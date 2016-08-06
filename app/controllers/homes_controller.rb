class HomesController < ApplicationController

  def index
    @charlie = Charlie.order("created_at DESC").first(4)
    @list = ListOfImportance.includes(:items).first
  end
end