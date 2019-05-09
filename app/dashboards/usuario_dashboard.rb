require "administrate/base_dashboard"

class UsuarioDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    nome: Field::String,
    role: Field::Select.with_options(collection: [:adm, :basico]),#modificado
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    email: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [ #moficação: itens exibidos em index
    :id,
    :email, 
    :nome,
    :role,
    :created_at,
    
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [ #moficação: Itens exibidos em show
    :id, 
    :nome,
    :role,
    :email,
    :created_at,

  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [ # itens exibidos em edit
    :nome,
    :role,
    :email,
  ].freeze

  # Overwrite this method to customize how usuarios are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(usuario)
  #   "Usuario ##{usuario.id}"
  # end
end
