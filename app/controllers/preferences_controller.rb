class PreferencesController < ApplicationController
  def index
    @preferences = Preference.where("category = ?", params[:category]).map do |preference|
      [preference.name, preference.id]
    end
  end
end
