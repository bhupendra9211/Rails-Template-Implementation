class ErrorsController < ApplicationController
  def not_found; end

  def internal_server_error; end

  def unprocessable_entity; end
end
