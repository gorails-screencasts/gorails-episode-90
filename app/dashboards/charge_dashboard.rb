require "administrate/base_dashboard"

class ChargeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    stripe_id: Field::String,
    amount: Field::Number,
    card_last4: Field::String,
    card_type: Field::String,
    card_exp_month: Field::String,
    card_exp_year: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :stripe_id,
    :amount,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :stripe_id,
    :amount,
    :card_last4,
    :card_type,
    :card_exp_month,
    :card_exp_year,
  ]

  # Overwrite this method to customize how charges are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(charge)
  #   "Charge ##{charge.id}"
  # end
end
