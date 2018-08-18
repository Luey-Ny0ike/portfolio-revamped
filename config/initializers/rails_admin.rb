RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.model Project do
    edit do
      field :title
      field :category
      field :slogan
      field :cover_photo do
        label 'Cover Photo'
      end
      field :challenge, :text do
        html_attributes do
          {rows: 7, cols: 50}
        end
      end
      field :link
      field :description, :ck_editor do
        html_attributes do
          {rows: 12, cols: 100}
        end
      end
    end
  end

  config.model Blog do
    edit do
      field :title
      field :blog_category
      field :blog_photo do
        label 'Cover Photo'
      end
      field :synopsis, :text do
        html_attributes do
          {rows: 7, cols: 50}
        end
      end
      field :description, :ck_editor do
        html_attributes do
          {rows: 12, cols: 100}
        end
      end
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
