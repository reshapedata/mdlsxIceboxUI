#' FestivalShop生成器界面
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
#' FestivalShopUI()
FestivalShopUI <- function(tabTitle ='嗨购物节',
                         colTitles =c('操作区域','操作区域','显示区域'),
                         widthRates =c(6,6,12),
                         func_left = FestivalShopUI_left,
                         func_right =FestivalShopUI_right,
                         func_bottom = FestivalShopUI_bottom
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
#' FestivalShopUI_left()
FestivalShopUI_left <- function() {


  res <- tagList(
    tsui::mdl_text2(id = 'text_FestivalShop_year',label = '年份',value = '2023')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' FestivalShopUI_bottom()
FestivalShopUI_right <- function() {
  res <- tagList(

    shiny::actionButton(inputId ='btn_FestivalShop_view' ,label ='按年份查询')

  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' FestivalShopUI_bottom()
FestivalShopUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'dt_FestivalShop_res'))

  )
  return(res)

}
