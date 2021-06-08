class Task < ApplicationRecord
    after_create :calc_time_diff 

    has_one :worktype

    private 

    def calc_time_diff       
        prev_task = Task.where( "id < ?", id ).last
        if prev_task
            prev_task.update(time_spent: self.created_at - prev_task.created_at)
        end 
    end 

end
