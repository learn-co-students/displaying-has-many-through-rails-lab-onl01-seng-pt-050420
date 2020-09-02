class ChangeDepartementInDoctorsToDepartment < ActiveRecord::Migration[5.0]
  def change
    rename_column :doctors, :departement, :department
  end
end
