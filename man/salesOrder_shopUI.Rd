% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/salesOrder_shop.R
\name{salesOrder_shopUI}
\alias{salesOrder_shopUI}
\title{salesOrder_shop生成器界面}
\usage{
salesOrder_shopUI(
  tabTitle = "销售订单表",
  colTitles = c("操作区域", "操作区域", "显示区域"),
  widthRates = c(6, 6, 12),
  func_left = salesOrder_shopUI_left,
  func_right = salesOrder_shopUI_right,
  func_bottom = salesOrder_shopUI_bottom
)
}
\arguments{
\item{tabTitle}{标题}

\item{colTitles}{主页标题}

\item{widthRates}{左右比例}

\item{func_left}{左函数}

\item{func_right}{右函数}

\item{func_bottom}{下面一栏}
}
\value{
返回值
}
\description{
salesOrder_shop生成器界面
}
\examples{
salesOrder_shopUI()
}
