# Class Etablissement
class Etablissement < ApplicationRecord
  attr_accessor :csv_path

  searchable auto_index: false, auto_remove: false do
    text :nom_raison_sociale
  end
  # searchable do
  #   text :nom_raison_sociale
  # end
  def self.latest_mise_a_jour
    latest_entry.date_mise_a_jour
  end

  def self.latest_entry
    limit(1).order('date_mise_a_jour DESC').first
  end
end
