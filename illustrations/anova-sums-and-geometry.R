# Deterministic, vector-based teaching figures. All SS labels denote squared
# lengths or sums of squared deviations, never signed deviations.

draw_anova_sums <- function(y, yhat) {
  stopifnot(length(y) == 4L, length(yhat) == 4L)
  ybar <- mean(y)
  differences <- list(y - ybar, yhat - ybar, y - yhat)
  totals <- vapply(differences, function(d) sum(d^2), numeric(1))
  colors <- c("#0072B2", "#007A55", "#B84400")
  fills <- c("#F1F7FC", "#F0F8F4", "#FFF5EE")
  titles <- c("A   TOTAL / SST", "B   EXPLAINED / SSR", "C   RESIDUAL / SSE")
  formulas <- list(expression(t[i] == y[i] - bar(y)),
                   expression(g[i] == hat(y)[i] - bar(y)),
                   expression(e[i] == y[i] - hat(y)[i]))
  names <- c("SST", "SSR", "SSE")
  text <- function(label, x, y, size = 11, col = "#202A35",
                   face = "plain", just = "centre") {
    grid::grid.text(label, x, y, just = just,
      gp = grid::gpar(fontsize = size, col = col,
        fontface = face, fontfamily = "sans"))
  }
  grid::grid.newpage()
  text("Subtract, square, then add", .5, .968, 18, face = "bold")
  text(sprintf("Observed: (%s)     Fitted: (%s)     Mean: %g",
       paste(sprintf("%g", y), collapse = ", "),
       paste(sprintf("%g", yhat), collapse = ", "), ybar),
       .5, .915, 10.5)
  centers <- c(.735, .465, .195)
  xx <- c(.29, .42, .55, .68)
  for (k in seq_along(differences)) {
    grid::pushViewport(grid::viewport(x = .5, y = centers[k],
                                     width = .99, height = .247))
    grid::grid.roundrect(width = .99, height = .99,
      r = grid::unit(.08, "inches"),
      gp = grid::gpar(fill = fills[k], col = NA))
    text(titles[k], .025, .88, 12, colors[k], "bold", "left")
    text(formulas[[k]], .71, .88, 14)
    text("Observation", .025, .68, 9.5, just = "left")
    for (j in seq_along(xx)) text(paste("i =", j), xx[j], .68, 9.5)
    text("1  Difference", .025, .50, 10, just = "left")
    text("2  Square", .025, .20, 10, just = "left")
    d <- differences[[k]]
    signed <- ifelse(abs(d) < 1e-10, "0.0", sprintf("%+.1f", d))
    for (j in seq_along(xx)) {
      text(signed[j], xx[j], .50, 15)
      grid::grid.segments(xx[j], .405, xx[j], .325,
        arrow = grid::arrow(length = grid::unit(.045, "inches"),
                            type = "closed"),
        gp = grid::gpar(col = "#687786", fill = "#687786", lwd = 1))
      text(sprintf("%.2f", d[j]^2), xx[j], .20, 15, colors[k], "bold")
    }
    for (x in head(xx, -1) + diff(xx) / 2) text("+", x, .20, 12, colors[k])
    grid::grid.segments(.741, .20, .768, .20,
      arrow = grid::arrow(length = grid::unit(.045, "inches"), type = "closed"),
      gp = grid::gpar(col = colors[k], fill = colors[k], lwd = 1.4))
    grid::grid.roundrect(x = .876, y = .21, width = .205, height = .27,
      r = grid::unit(.045, "inches"),
      gp = grid::gpar(fill = "white", col = colors[k], lwd = 1.4))
    text("3  ADD", .876, .49, 10, colors[k], "bold")
    text(sprintf("%s = %.2f", names[k], totals[k]),
         .876, .21, 13, colors[k], "bold")
    grid::popViewport()
  }
  text("The minus signs belong to differences. Every square and every SS is nonnegative.",
       .5, .025, 10)
  invisible(list(differences = differences, sums_of_squares = totals))
}

draw_nested_ss_geometry <- function() {
  blue <- "#0072B2"; green <- "#007A55"; orange <- "#B84400"
  text <- function(label, x, y, size = 11, col = "#202A35",
                   face = "plain", just = "centre") {
    grid::grid.text(label, x, y, just = just,
      gp = grid::gpar(fontsize = size, col = col,
        fontface = face, fontfamily = "sans"))
  }
  edge <- function(x0, y0, x1, y1, col) {
    grid::grid.segments(x0, y0, x1, y1,
      arrow = grid::arrow(length = grid::unit(.055, "inches"), type = "closed"),
      gp = grid::gpar(col = col, fill = col, lwd = 2.4))
  }
  grid::grid.newpage()
  text("Each side label is a SQUARED vector length", .5, .97, 16, face = "bold")
  text("Orthogonal triangles in observation space; schematic, not to scale.",
       .5, .929, 10)
  for (k in 1:2) {
    grid::pushViewport(grid::viewport(x = .5, y = c(.697, .271)[k],
                                     width = .99, height = .409))
    grid::grid.roundrect(width = .99, height = .99,
      r = grid::unit(.08, "inches"),
      gp = grid::gpar(fill = "#F7F9FB", col = "#E1E7ED"))
    text(c("A   GENERAL NESTED MODELS", "B   REDUCED MODEL: INTERCEPT ONLY")[k],
         .025, .935, 12, face = "bold", just = "left")
    xr <- .18; xf <- .68; yr <- .30; yy <- .76
    edge(xr, yr, xf, yy, blue)
    edge(xr, yr, xf, yr, green)
    edge(xf, yr, xf, yy, orange)
    dx <- grid::convertWidth(grid::unit(.09, "inches"), "npc", valueOnly = TRUE)
    dy <- grid::convertHeight(grid::unit(.09, "inches"), "npc", valueOnly = TRUE)
    grid::grid.lines(c(xf - dx, xf - dx, xf), c(yr, yr + dy, yr + dy),
      gp = grid::gpar(col = "#596876", lwd = 1))
    grid::grid.points(c(xr, xf, xf), c(yr, yr, yy), pch = 16,
      size = grid::unit(.045, "inches"), gp = grid::gpar(col = "#202A35"))
    text(expression(bold(Y)), xf, yy + .065, 14)
    text(if (k == 1) expression(hat(bold(Y))[R]) else expression(bar(Y)*bold(1)),
         xr, yr - .10, 14)
    text(expression(hat(bold(Y))[F]), xf, yr - .10, 14)
    text(if (k == 1) expression(SSE[R]) else expression(SST),
         .365, .65, 15, blue)
    text(if (k == 1) expression(SSE[F]) else expression(SSE),
         .81, .54, 15, orange)
    text(if (k == 1) expression(SSE[R] - SSE[F]) else expression(SSR),
         .43, .37, 15, green)
    text(if (k == 1)
           expression(SSE[R] == (SSE[R] - SSE[F]) + SSE[F])
         else expression(SST == SSR + SSE),
         .50, .065, 13)
    grid::popViewport()
  }
  text("The GREEN side joins the two fitted vectors; its squared length is the extra SS.",
       .5, .028, 10)
}
