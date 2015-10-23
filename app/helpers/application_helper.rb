module ApplicationHelper
  def card_fields_class
    "hidden" if current_user.card_last4?
  end
end
