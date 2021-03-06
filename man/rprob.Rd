\name{rprob}
\alias{rprob}

\title{Produces Pairwise Correlation and its Probability 
}
\description{Computes the pairwise correlations for all valid cases (!NA) in a data frame and find the probabilities for each combination. This function parses the correlations below the diagonal and the significance probabilities above it. 
}
\usage{
rprob(x, df = nrow(x) - 2)
}
\arguments{
  \item{x}{ A data object.
}
  \item{df}{an optional value for degrees of freedom. The default assumes you have a common degrees of freedom (n-2) for all correlations in the table.
}
}
\details{ The connexion between correlation and t-statistics is
  known to be \eqn{t = \frac{r \sqrt{(n-2)}} {\sqrt{(1-r^2)}}}. Or then, F = t^2 = r^2 * (n - 2)/(1 - r^2) ~ F(1, n-2). By solving this, it
  is possible to find the probabilities.
}
\value{ A data frame object with the Pearson's product-moment
  coefficient and its probabilitie. \bold{The first diagonal display the correlations, while the probabilities are shown in the second uppper diagonal.} 
}

\references{

%TODO verify other sources
Aldrich, John (1995) Correlations Genuine and Spurious in Pearson and Yule. \emph{Statistical Science,} \bold{10(4),} 364--376.

}
\author{Daniel Marcelino
}
\note{You can print the whole matrix using cor(t(x))
}

\seealso{\code{\link{rstack}}. 
}
\examples{
data(nerlove63)

rprob(nerlove63)

# a stacked up table

rstack(rprob(nerlove63)) 

summary(lm(output ~ plabor + totcost, data = nerlove63))

# The final p-value of the OLS compares to the probabilities in the
# intersection of output and plabor and output and totcost in the matrix.

}
\keyword{ correlation }
\keyword{ probabilities }
\keyword{ descriptive stats }
