# A deterministic vector illustration of the variables in datasets::trees.
# No geometric volume formula is implied by the timber sketch.
local({
  grid::grid.newpage()
  ink <- "#253D35"
  muted <- "#60756B"
  green <- "#34745B"
  blue <- "#33718C"
  brown <- "#926642"
  label <- function(x, y, text, size = 11, color = ink,
                    face = "plain", just = "centre", rot = 0) {
    grid::grid.text(text, x, y, just = just, rot = rot,
      gp = grid::gpar(fontsize = size, col = color,
                      fontface = face, fontfamily = "sans"))
  }
  line <- function(x, y, color = ink, width = 1.2, type = 1) {
    grid::grid.lines(x, y,
      gp = grid::gpar(col = color, lwd = width, lty = type,
                      lineend = "round"))
  }
  ellipse <- function(x, y, rx, ry, fill, border = NA, width = 1) {
    angle <- seq(0, 2 * pi, length.out = 101)
    grid::grid.polygon(x + rx * cos(angle), y + ry * sin(angle),
      gp = grid::gpar(fill = fill, col = border, lwd = width))
  }
  card <- function(x, width, fill) {
    grid::grid.roundrect(x = x, y = 0.515, width = width,
      height = 0.65, r = grid::unit(0.12, "inches"),
      gp = grid::gpar(fill = fill, col = NA))
  }
  arrow <- function(x0, y0, x1, y1, color, ends = "both") {
    grid::grid.segments(x0, y0, x1, y1,
      arrow = grid::arrow(length = grid::unit(0.06, "inches"),
                          ends = ends, type = "closed"),
      gp = grid::gpar(col = color, fill = color, lwd = 1.3))
  }
  label(0.5, 0.952, "From a tree to a regression model", 18,
        face = "bold")
  label(0.5, 0.897, "Predict timber volume before felling", 11,
        color = muted)
  card(0.332, 0.615, "#F0F6F0")
  card(0.820, 0.310, "#FBF3E8")
  label(0.332, 0.790, "INPUTS", 10, green, "bold")
  label(0.820, 0.790, "OUTCOME", 10, brown, "bold")

  # Standing broadleaf tree: tapered trunk, branches, and layered canopy.
  ellipse(0.256, 0.247, 0.105, 0.014, "#DCE8D9")
  grid::grid.polygon(
    c(0.230, 0.278, 0.266, 0.260, 0.254, 0.247),
    c(0.253, 0.253, 0.450, 0.628, 0.628, 0.440),
    gp = grid::gpar(fill = "#A67B52", col = "#826244", lwd = 1))
  line(c(0.255, 0.206, 0.184), c(0.490, 0.566, 0.624),
       "#826244", 4)
  line(c(0.258, 0.302, 0.327), c(0.524, 0.580, 0.642),
       "#826244", 4)
  foliage <- data.frame(
    x = c(.205, .299, .173, .328, .220, .282, .253, .199, .304),
    y = c(.569, .571, .623, .622, .641, .652, .694, .687, .688),
    rx = c(.066, .063, .065, .064, .074, .074, .067, .051, .051),
    ry = c(.061, .061, .070, .070, .079, .078, .056, .043, .043),
    fill = c("#498564", "#498564", "#568F68", "#4D8862",
             "#6BA16F", "#75A977", "#83B77F", "#8BB985", "#7AAD79"))
  for (i in seq_len(nrow(foliage))) {
    with(foliage[i, ], ellipse(x, y, rx, ry, fill))
  }
  line(c(.147, .361), c(.249, .249), "#9BAF96", 1)
  line(c(.094, .185), c(.750, .750), "#84A3B2", 0.8, 3)
  line(c(.094, .177), c(.249, .249), "#84A3B2", 0.8, 3)
  arrow(.098, .259, .098, .740, blue)
  label(.062, .500, "H: Height (feet)", 11, blue, rot = 90)

  # Diameter is measured across the trunk, not around its circumference.
  line(c(.221, .286), c(.343, .343), "#FFFFFF", 5)
  arrow(.238, .343, .271, .343, brown)
  line(c(.278, .341, .385), c(.343, .385, .385), brown, 1)
  label(.397, .404, "D: Diameter", 11, brown, "bold", "left")
  label(.397, .359, "(inches)", 10, brown, just = "left")
  label(.397, .280, "At 4 ft 6 in\nabove the ground", 9.5,
        muted, just = "left")

  # Stacked timber: a conceptual illustration of the measured response.
  log <- function(x, y, length = .14) {
    grid::grid.polygon(c(x, x + length, x + length, x),
      c(y - .035, y + .019, y + .089, y + .035),
      gp = grid::gpar(fill = "#A37850", col = "#805E3F", lwd = 1))
    line(c(x + .010, x + length), c(y + .012, y + .064),
         "#BF9770", 1)
    ellipse(x, y, .036, .035, "#E8C798", "#805E3F")
    ellipse(x, y, .023, .023, NA, "#B38B61", .8)
    ellipse(x, y, .011, .011, NA, "#B38B61", .7)
  }
  ellipse(.817, .484, .116, .015, "#EADCC7")
  log(.746, .525, .130)
  log(.812, .525, .130)
  log(.779, .590, .130)
  label(.820, .405, "V: Timber volume", 11.5, brown, "bold")
  label(.820, .358, "(cubic feet)", 10.5, brown)
  label(.820, .278, "Measured from\nfelled trees", 10, muted)
  arrow(.587, .593, .682, .593, green, "last")
  label(.633, .641, "predict", 9.5, green)

  label(.5, .115,
        "At the same diameter, does height help predict volume?",
        12, green, "bold")
  label(.5, .061,
        "Conceptual sketch, not to scale or a formula for volume.",
        9, muted)
})
