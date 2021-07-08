module ApplicationHelper
  def top_letters_cache_key
    "to-letters/" + Letter.maximum(:updated_at).to_i.to_s
  end
end
