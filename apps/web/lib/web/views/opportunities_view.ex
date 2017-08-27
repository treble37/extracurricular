defmodule Web.OpportunitiesView do
  use Web, :view

  # rather than dynamically creating the gettext key, this function
  # has static gettext keys so that the `mix gettext.extract` can
  # properly locate them and pull them out into the translation
  # files
  def translated_difficulty(opportunity) do
    case opportunity.level do
      1 -> gettext("difficulty-starter")
      5 -> gettext("difficulty-intermediate")
      9 -> gettext("difficulty-advanced")
      _ -> gettext("difficulty-unknown")
    end
  end

  def translated_type(%{type: "type-bug"}), do: gettext("type-bug")
  def translated_type(%{type: "type-documentation"}), do: gettext("type-documentation")
  def translated_type(%{type: "type-enhancement"}), do: gettext("type-enhancement")
  def translated_type(%{type: "type-feature"}), do: gettext("type-feature")
  def translated_type(%{type: "type-unknown"}), do: gettext("type-unknown")
end
