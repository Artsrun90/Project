module Api
    module V1
        class EmployeeController < ApplicationController
            def GetPersonDetails
                employee = Organization.joins(:employees).where(id: params[:id])
                .select('employees.id', 'employees.firstName', 'employees.lastName', 'employees.email', 'employees.phone')
                render json: employee, status: :ok
            end
        end
    end    
end