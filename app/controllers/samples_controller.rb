class SamplesController < ApplicationController
  include Operations::ControllerHelpers

  def index
    execute(Operations::SampleOperations::Index)
  end

  def create
    if execute(Operations::SampleOperations::Create)
      Log.debug 'Sample#create happy path'
      return redirect_to action: :index
    end

    Log.debug 'Sample#create error handling'
    render action: :index
  end
end
