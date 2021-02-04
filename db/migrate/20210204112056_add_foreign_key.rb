class AddForeignKey < ActiveRecord::Migration[5.2]
  def change
    #relie les tables entre elles par le biais d'une clé étrangère
    add_reference :appointments, :doctor, foreign_key: true
    add_reference :appointments, :patient, foreign_key: true
  end
end
