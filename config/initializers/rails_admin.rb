RailsAdmin.config do |config|
  # config.authenticate_with do
  #   devise.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    history_index
    bulk_delete
    show
    edit
    delete
    history_show
    show_in_app
    # publish

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Product' do
    list do
      field :name
      field :price
      field :qty
    end
    show do
      field :name
      field :price
      field :qty
    end
    edit do
      field :name
      field :price
      field :qty
    end
  end

  module RailsAdmin
    class CSVConverter
      remove_const(:UTF8_ENCODINGS) if (defined?(UTF8_ENCODINGS))
      UTF8_ENCODINGS = [nil, '', 'utf8', 'utf-8', 'unicode', 'UTF8', 'UTF-8', 'UNICODE', 'utf8mb4', 'latin1']
      UTF8_ENCODINGS
    end
  end
end
