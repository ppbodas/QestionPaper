json.array!(@paper_items) do |paper_item|
  json.extract! paper_item, :id, :paper_id, :question_id
  json.url paper_item_url(paper_item, format: :json)
end
