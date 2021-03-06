\encoding{latin1}
\name{SciencePo-package}
\alias{SciencePo}
\docType{package}
\title{A Tool for Analyzing Political Behaviour
}
\description{SciencePo is a facility package to make using R even more intuitive for political scientists. The very objective of the package is covering standard analyses for random and nonrandom data.
}
\details{
\tabular{ll}{
Package: \tab SciencePo\cr
Type: \tab Package\cr
Version: \tab 0.13.6.12\cr
Date: \tab 2013-06-12\cr
License: \tab LGPL (>= 2.0, < 3)\cr }
}

\author{Daniel Marcelino <dmarcelino@live.com>
}
\references{

Marcelino, Daniel. (2010) \emph{Sobre dinheiro e eleicoes: um estudo dos gastos de campanha para o Congresso Nacional em 2002 e 2006.}
}

\keyword{ descriptive stats }
\keyword{ experiments }
\keyword{ political systems }
\keyword{ simulations }

\seealso{ \code{\link{detail}},  \code{\link{shift}},\code{\link{outtags}}, \code{\link{soundexBR}}, \code{\link{tableau}}, \code{\link{accent}}, \code{\link{beta.coef}}, \code{\link{outliers}}, \code{\link{anonymize}}, \code{\link{lsq}}, \code{\link{get.poly}}, \code{\link{rprob}}, \code{\link{rstack}}, \code{\link{winsor.mean}}, \code{\link{get.ci}}, \code{\link{get.ipc}}. 
}

\examples{
# Loading some data 
data(montreal)

detail(montreal) 

data(galton)

(model <- lm(child ~ parent, data = galton) )

beta.coef(model)

anonymize(montreal)

outliers(galton)

rprob(nerlove63)

rstack(rprob(nerlove63))

lsq(4, 3, seed = 123)


get.ci(sample = 800, n = 1, mu = .29)


sids <- maptools::readShapePoly(system.file("shapes/sids.shp",
package="maptools") )

get.poly(sids)

plot(poly <- get.poly(sids))

}