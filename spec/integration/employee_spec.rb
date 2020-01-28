require 'swagger_helper'

describe 'Employees API' do

  path '/api/v1/employee/GetPersonByEmail' do

    post 'Creates a employee' do
      tags 'Employees'
      consumes 'application/json', 'application/xml'
      parameter name: :employee, in: :body, schema: {
        type: :object,
        properties: {
          firstName: { type: :string },
          lastName: { type: :string },
          email: { type: :string },
          phone: { type: :string },
          name: { type: :string }
        },
        required: [ 'firstName', 'email' ]
      }

      response '201', 'employee created' do
        let(:employee) { { firstName: 'Dodo', email: 'available' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:employee) { { firstName: 'foo' } }
        run_test!
      end
    end
  end

  path '/api/v1/employee/GetPersonDetails/{id}' do

    get 'Retrieves a employee' do
      tags 'Employees'
      produces 'application/json', 'application/xml'
      parameter name: :employee, :in => :path, :type => :string

      response '200', 'name found' do
        schema type: :object,
          properties: {
            id: { type: :integer},
            firstName: { type: :string },
            lastName: { type: :string },
            email: { type: :string },
            phone: { type: :string },
            name: { type: :string }
          },
          required: [ 'id', 'firstName', 'name' ]

        let(:id) { Employee.create(id: '1', firstName: 'foo', lastName: 'bar', email: 'alonso@wehner.biz', phone: '631-998-3712', name: 'foo').id }
        run_test!
      end

      response '404', 'empioyee not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end