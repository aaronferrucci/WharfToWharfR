#' Wharf to Wharf race data - 2015
#'
#' Data from the 2015 Wharf to Wharf race in Santa Cruz. This dataset is
#' filtered and cleaned. The code for scraping, filtering and cleaning 
#' is here:  https://github.com/aaronferrucci/wharf2wharf
#'
#' @docType data
#'
#' @usage w2w2015
#'
#' @format A data frame with fifteen variables: 
#'   \code{firstname}, \code{lastname}, \code{bib}, \code{city}, \code{state},
#'   \code{country}, \code{age}, \code{sex}, \code{overall}, \code{oversex},
#'   \code{overdiv}, \code{elapsed}, \code{elapsedTime}, \code{start},
#'   \code{startTime}
#' @keywords datasets
#'
#' @references 
#'
#' @source https://github.com/aaronferrucci/wharf2wharf
#'
#' @examples
#' # Look at the geneder balance...
#' table(w2w2015$sex)
#' # Most entrants are from the USA.
#' table(w2w2015$country)
#' #
#' Show the distribution of ages
#' library(ggplot2)
#' qplot(w2w2015$age, ylab = "", xlab = "age")
#' #
#' # Plot run time vs. age.
#' elapsed_ticks <- seq(0, max(w2w2015$elapsed), 900000)
#' ggplot(w2w2015, aes(x = age, y = elapsed, color=sex)) +
#'   scale_x_continuous(breaks = seq(0, 100, 10)) +
#'   scale_y_continuous(breaks = elapsed_ticks, name = "elapsed time (ms)") +
#'   geom_point() +
#'   expand_limits(y = 0.375 * 3600 * 1000) +
#'   stat_smooth(method = "gam", formula = y ~ s(x, bs="cs"))
#' #
#' # Plot start time vs. elapsed time
#' start_ticks <- seq(8.5 * 3600 * 1000, max(w2w2015$start), 0.0625 * 3600 * 1000)
#' ggplot(w2w2015, aes(x = elapsed, y = start, color = sex)) +
#'   scale_y_continuous(breaks = start_ticks) +
#'   scale_x_continuous(breaks = elapsed_ticks) +
#'   expand_limits(x = 0.25 * 3600 * 1000, y = 8.5 * 3600 * 1000) +
#'   geom_point()

"w2w2015"
