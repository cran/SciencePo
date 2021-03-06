\name{kurtosis}
\alias{kurtosis}
\title{Computes the Kurtosis
}
\description{Returns the kurtosis test for object x. For vectors, kurtosis(x) is the kurtosis of the elements in the vector x. For matrices kurtosis(x) returns the sample kurtosis for each column of x. For N-dimensional arrays, kurtosis operates along the first nonsingleton dimension of x.Returns the kurtosis test for object x. For vectors, kurtosis(x) is the kurtosis of the elements in the vector x. For matrices kurtosis(x) returns the sample kurtosis for each column of x. For N-dimensional arrays, kurtosis operates along the first nonsingleton dimension of x.
}
\usage{
kurtosis(x, na.rm = FALSE, type = 2)
}
\arguments{
  \item{x}{A numeric vector containing the values whose kurtosis is to be computed.
}
  \item{na.rm}{A logical value indicating whether NA values should be stripped before the computation proceeds, the default is FALSE.
}
  \item{type}{An integer between 1 and 3 selecting one of the algorithms for computing kurtosis detailed below.
}
}
\details{In a similar way of skewness, kurtosis measures the peakedness
  of a data distribution. A distribution with zero kurtosis has a shape
  as the normal curve. Such type of kurtosis is called mesokurtic, or
  mesokurtotic. A positive kurtosis has a curve more peaked about the
  mean and the its shape is narrower than the normal curve. Such type is
  called leptokurtic, or leptokurtotic. Finally, a distribution with
  negative kurtosis has a curve less peaked about the mean and the its
  shape is flatter than the normal curve. Such type is called
  platykurtic, or platykurtotic. To be consistent with classical use of
  kurtosis in political science analyses, the default \bold{type} is the
  same equation used in SPSS and SAS, which is the bias-corrected
  formula: \bold{Type 2:} G_2 = ((n + 1) g_2+6) * (n-1)/(n-2)(n-3). When you set type to 1, the following equation applies: \bold{Type 1:} g_2 = m_4/m_2^2-3. When you set type to 3, the following equation applies: \bold{Type 3:} b_2 = m_4/s^4-3 = (g_2+3)(1-1/n)^2-3. You must have at least 4 observations in your vector to apply this function.
}
\value{ An object of the same type as \code{x}.
}
\references{
Balanda, K. P. and H. L. MacGillivray. (1988) Kurtosis: A Critical Review. \emph{The American Statistician,} \bold{42(2), pp. 111--119.}
}
\author{Daniel Marcelino
}
\note{\bold{Skewness} and \bold{Kurtosis} are functions to measure the third and fourth \bold{central moment} of a data distribution. 
}
\seealso{\code{\link{detail}}.
}
\examples{
kurtosis(c(100,200,300, 400), type = 2)

kurtosis(c(100,200,300, 400), type = 1)

kurtosis(c(100,200,300, 400), type = 3)

w<-sample(4,10, TRUE)

x <- sample(10, 1000, replace=TRUE, prob=w)

kurtosis(x, type=2)

kurtosis(x, type=3)

# see it in context.
detail(x) 
}

\keyword{ leptokurtic}
\keyword{ mesokurtic }
\keyword{ descriptive stats }
