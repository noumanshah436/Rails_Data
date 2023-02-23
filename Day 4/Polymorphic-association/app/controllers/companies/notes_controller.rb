class Companies::NotesController < NotesController
  before_action :set_notable

  def create
    puts "Companies::NotesController create action"
    super
  end

  private

  def set_notable
     @notable = Company.find(params[:company_id])
  end
end
