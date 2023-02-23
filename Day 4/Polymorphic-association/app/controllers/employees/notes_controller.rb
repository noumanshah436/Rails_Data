class Employees::NotesController < NotesController
  before_action :set_notable

  private

  def set_notable
     @notable = Employee.find(params[:employee_id])
  end
end
