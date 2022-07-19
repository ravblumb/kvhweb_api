class CreateReportTemplates < ActiveRecord::Migration[6.1]
  def change
    create_table :report_templates do |t|
       t.integer  :user_id,                                                           :null => false
    t.string   :report,                          :limit => 250
    t.string   :name,                            :limit => 250
    t.boolean  :is_public
    t.integer  :columns_per_page
    t.string   :new_page_for_group,              :limit => 250
    t.integer  :font_size
    t.string   :paper_orientation,               :limit => 20
    t.boolean  :group_headers_on_separate_lines
    t.boolean  :repeat_all_group_headers
    t.boolean  :repeat_table_header
    t.string   :column_list,                     :limit => 1000
    t.string   :report_column_list,              :limit => 1000
    t.string   :group_list,                      :limit => 1000
    t.string   :sort_list,                       :limit => 1000
    t.boolean  :include_in_menu
    t.boolean  :use_table
    t.integer  :created_by_id
    t.integer  :updated_by_id
    t.boolean  :small_header
    t.boolean  :remove_space
    t.text     :filter
    t.boolean  :show_filter,                                     :default => true

      t.timestamps
    end
  end
end
