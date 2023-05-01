module Admin::V1
  class TasksController < ApiController
    include Paginable
    def index
      @tasks = Task.sorted(params[:sort], params[:dir])
                   .page(current_page)
                   .per(per_page)
      render json: @tasks, meta: meta_attributes(@tasks),adapter: :json
    end

    def create
      @task = Task.create(task_params)
      if @task.save
        render json: @task, status: :created
      else
        render json: @task.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @task = Task.find(params[:id])
      @task.destroy
    end

    private

    def task_params
      puts params.inspect
      params.require(:task).permit(:name, :body, :is_completed)
    end

  end
end
