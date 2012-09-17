module QuotesHelper

  def quote_icon_links(quote)
    content_tag :h1 do
      [ quote.text,
        link_to_icon('show', quote),
        link_to_icon('edit', edit_quote_path(quote)),
        link_to_icon('destroy', quote, {
          confirm: "Sure you wanna destroy this Quote, Brett?",
          method: :delete
          })
      ].join(' ').html_safe
    end
  end

end
