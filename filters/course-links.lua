-- Keep authored chapter titles while making course links work inside the PDF.
-- HTML keeps the ordinary QMD-to-HTML links supplied by Quarto.
local identifiers = {}

local function chapter_identifier(path)
  if identifiers[path] ~= nil then
    return identifiers[path]
  end
  local root = quarto.project.directory or "."
  local file = io.open(root .. "/" .. path, "r")
  if not file then
    return nil
  end
  local contents = file:read("*a")
  file:close()
  local document = pandoc.read(contents, "markdown")
  for _, block in ipairs(document.blocks) do
    if block.t == "Header" and block.level == 1 then
      identifiers[path] = block.identifier
      return block.identifier
    end
  end
end

function Link(link)
  if not FORMAT:match("latex") then
    return nil
  end
  local path, fragment = link.target:match("^([^:#?]+%.qmd)#?(.*)$")
  if not path then
    return nil
  end
  local identifier = chapter_identifier(path)
  if identifier then
    link.target = "#" .. (fragment ~= "" and fragment or identifier)
    return link
  end
end
