-- The early chapters use CSS-only callout classes. Preserve their source and
-- HTML while giving the PDF the corresponding coloured, page-breakable boxes.
local legacy = {
  ["callout-example"] = "example",
  ["callout-theorem"] = "theorem",
  ["callout-definition"] = "definition",
  ["callout-algorithm"] = "algorithm",
  ["callout-property"] = "property",
}

function Div(div)
  if not quarto.doc.is_format("pdf") then
    return nil
  end
  for _, class in ipairs(div.classes) do
    local kind = legacy[class]
    if kind then
      local title = div.attributes.title or ""
      -- Let Pandoc escape special characters and render any title mathematics.
      local title_doc = pandoc.read(title, "markdown")
      local title_tex = pandoc.write(title_doc, "latex"):gsub("%s+$", "")
      local environment = "courselegacy" .. kind
      div.content:insert(1, pandoc.RawBlock("latex",
        "\\begin{" .. environment .. "}{" .. title_tex .. "}"))
      div.content:insert(pandoc.RawBlock("latex", "\\end{" .. environment .. "}"))
      div.classes = div.classes:filter(function(value) return value ~= class end)
      return div
    end
  end
end
