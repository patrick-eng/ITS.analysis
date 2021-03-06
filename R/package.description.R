#' @import forecast
#' @import boot
#' @import ggplot2
#'
#' @details Interrupted Time Series Analysis (ITSA) serves as a replacement for traditional time series modelling techniques when sample sizes are too small for such approaches (including ARIMA and other OLS-orientated methods).
#'
#' The ITSA model offered in this package is a Type-II sum-squares ANCOVA Lagged Dependent Variable model. The main function produces a range of additional bolt-ons which provide further detailed information and test assumptions relative to both ANOVA and time series analysis.
#'
#' The key independent variable must, if it is not already, be converted into a factor whereby periods of significant change in the behaviour or direction of the variable are identified and coded as separate periods (with one numeric identifier for their entire length). This creates the 'interruption framework'.
#'
#' The ITSA model will automatically calculate and apply the lag of the dependent variable to as a covariate, accounting for the trend in the series itself before estimating the variance accounted for from the interruption. Further covariates may be specified, but caution should be used not to over-fit.
#'
#' A number of post-estimation checks are ran on the model, including examining residual normality, homogeneous variances, and residual autocorrelation. The results of each test can be seen using the itsa.postest function. If there is potential evidence of violation in the first two assumptions, or if there is evidence of residual autocorrelation in the first three lags, a warning message will appear under the results from the itsa.model function. This warning does not necessarily mean that the model is invalid, but that researchers ought to run and pay careful attention to the results of the post-estimation.
#'
#' By default, 1000 bootstrap replications of the model are estimated using randomly drawn samples. Returned from this model are the 90 per cent confidence intervals and a trimmed median (10 per cent removed). The bootstrap replications can be visualised using the post-estimation function.
#'
#' Note: The package will handle time series where only two periods are defined (i.e. a 'normal' (0) period and an 'interrupted' (1) period), or time series with multiple different periods (i.e 'pre', 'during' and 'post' interruption, or perhaps multiple different interruptions). Users should also keep in mind that a minimum of between 7 and 10 cases per interruption variable level should ideally be followed to allow for enough power.
#'
#' @keywords internal
#'
"_PACKAGE"
#> [1] "_PACKAGE"
