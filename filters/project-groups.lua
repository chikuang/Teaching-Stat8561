-- Keep each group's members and topic together in the PDF. HTML retains
-- separate member rows and merged group/topic cells.
function Div(div)
  if not FORMAT:match('latex') or not div.classes:includes('project-groups') then
    return nil
  end
  return div:walk({Table = function(tbl)
    tbl.colspecs = {
      {pandoc.AlignCenter, 0.10},
      {pandoc.AlignLeft, 0.37},
      {pandoc.AlignCenter, 0.53},
    }
    for _, body in ipairs(tbl.bodies) do
      local rows = pandoc.List()
      local i = 1
      while i <= #body.body do
        local row = body.body[i]
        local span = row.cells[1].row_span
        if span > 1 then
          local members = pandoc.Inlines({})
          for j = 0, span - 1 do
            if j > 0 then members:insert(pandoc.LineBreak()) end
            local cell = j == 0 and row.cells[2] or body.body[i + j].cells[1]
            for _, block in ipairs(cell.contents) do
              members:extend(block.content)
            end
          end
          row.cells[1].row_span = 1
          row.cells[2].contents = {pandoc.Plain(members)}
          row.cells[3].row_span = 1
        end
        rows:insert(row)
        i = i + span
      end
      body.body = rows
    end
    return tbl
  end})
end
