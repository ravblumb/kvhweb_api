Rails.application.routes.draw do
  resources :users
  resources :ukd_import_retries
  resources :trucking_logs
  resources :trucking_log_attachments
  resources :telcoms
  resources :running_processes
  resources :report_templates
  resources :regions
  resources :products
  resources :production_lines
  resources :product_uses_ingredients
  resources :product_plants
  resources :product_is_ingredients
  resources :product_groups
  resources :product_certification_letters
  resources :product_attachments
  resources :produces
  resources :produce_logs
  resources :personalizations
  resources :payments
  resources :params
  resources :organizations
  resources :organization_params
  resources :organization_organization_categories
  resources :organization_categories
  resources :organization_attachments
  resources :notes
  resources :notebooks
  resources :issues
  resources :issue_attachments
  resources :inspector_assignments
  resources :inspections
  resources :inspection_products
  resources :inspection_ingredients
  resources :inspection_attachments
  resources :inspected_events
  resources :inspected_event_dates
  resources :inspected_event_attachments
  resources :ingredients
  resources :ingredient_plants
  resources :ingredient_groups
  resources :ingredient_attachments
  resources :generated_certificates
  resources :failed_logins
  resources :failed_login_ips
  resources :emails
  resources :countries
  resources :copack_relationships
  resources :copack_relationship_attachments
  resources :contacts
  resources :contact_affiliations
  resources :company_brands
  resources :cities
  resources :challah_forms
  resources :certification_letters
  resources :certificates
  resources :brands
  resources :billing_rates
  resources :batches
  resources :batch_attachments
  resources :attachments
  resources :addresses
  resources :additional_inspector_assignments
  resources :actions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end