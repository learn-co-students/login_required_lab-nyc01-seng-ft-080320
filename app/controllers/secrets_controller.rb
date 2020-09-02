class SecretsController < ApplicationController
  def show
    if !session.include? :name
      redirect_to sessions_new_path
    else
    end
  end
end
