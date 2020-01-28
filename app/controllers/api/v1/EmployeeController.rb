module Api
    module V1
        class EmployeeController < ApplicationController

            def GetPersonDetails
                employee = Organization.joins(:employees).where(id: params[:id])
                .select('employees.id', 'employees.firstName', 'employees.lastName', 'employees.email', 'employees.phone',  'organizations.name')
                render json: employee, status: :ok
            end

            def GetPersonByEmail
                employee = Employee.joins(:organization)
                .select('id', 'firstName', 'lastName', 'email', 'phone', 'organizations.name').where(email: params[:email])
                render json: employee, status: :ok
            end

        end
    end    
end