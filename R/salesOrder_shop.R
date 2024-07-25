#' salesOrder_shop生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' salesOrder_shopUI()
salesOrder_shopUI <- function(tabTitle ='销售订单表',
                         colTitles =c('操作区域','操作区域','显示区域'),
                         widthRates =c(6,6,12),
                         func_left = salesOrder_shopUI_left,
                         func_right =salesOrder_shopUI_right,
                         func_bottom = salesOrder_shopUI_bottom
) {

  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)

}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' salesOrder_shopUI_left()
salesOrder_shopUI_left <- function() {


  res <- tagList(
    tsui::mdl_text2(id = 'text_salesOrder_shop_year',label = '销售年份',value = '2023'),

    tsui::mdl_text2(id = 'text_salesOrder_shop_month',label = '销售月份',value = '6')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' salesOrder_shopUI_bottom()
salesOrder_shopUI_right <- function() {
  res <- tagList(

    shiny::actionButton(inputId ='btn_salesOrder_shop_view' ,label ='按年月查询')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' salesOrder_shopUI_bottom()
salesOrder_shopUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'dt_salesOrder_shop_res'))

  )
  return(res)

}
