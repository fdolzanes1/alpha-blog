class RemoveColumsOfPersonInArticles < ActiveRecord::Migration[6.0]
  def change
  	  remove_column :articles, :person_id
  end
end
