Kaminari.configure do |config|
  # Needed this to see the CRUD from RailsAdmin
  config.page_method_name = :per_page_kaminari
end