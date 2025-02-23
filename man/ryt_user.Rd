% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ryt_auth.R
\name{ryt_user}
\alias{ryt_user}
\title{Get info on current user}
\usage{
ryt_user()
}
\value{
An email address or, if no token has been loaded, \code{NULL}.
}
\description{
Reveals the email address of the user associated with the current token.
If no token has been loaded yet, this function does not initiate auth.
}
\seealso{
\code{\link[gargle:token-info]{gargle::token_userinfo()}}, \code{\link[gargle:token-info]{gargle::token_email()}},
\code{\link[gargle:token-info]{gargle::token_tokeninfo()}}
}
