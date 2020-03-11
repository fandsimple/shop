from django.contrib import admin
from django.conf.urls import url

from App import views
from App.models import Goods, MainWheel, MainNav, MainMustBuy, MainShop, MainShow, FoodType, AXFUser, Cart, Order, \
    OrderGoods, Address, OrderAddress, Count

admin.site.site_header = '电子商城'
admin.site.site_title = '电子商城'


class BaseAdmin(admin.ModelAdmin):
    list_per_page = 10  # 每页显示多少条
    actions_on_top = True  # 顶部操作显示
    actions_on_bottom = True  # 底部操作显示
    actions_selection_counter = True  # 选中条数显示
    empty_value_display = ' 空白 '  # 空白字段显示格式


@admin.register(MainWheel)
class MainWheelAdmin(BaseAdmin):
    list_display = (
        'img',
        'name',
        'trackid',
    )  # 显示字段
    # search_fields = ('userName', 'phone')  # 搜索条件配置
    # list_filter = ('sex', 'age', 'likeTag')  # 过滤字段配置
    # list_editable = ['taskName']
    # list_display_links = ('id', 'caption') # 配置点击进入详情字段



@admin.register(MainNav)
class MainNavAdmin(BaseAdmin):
    list_display = (
        'img',
        'name',
        'trackid',
    )  # 显示字段


@admin.register(MainMustBuy)
class MainMustBuyAdmin(BaseAdmin):
    list_display = (
        'img',
        'name',
        'trackid',
    )  # 显示字段

@admin.register(MainShop)
class MainShopAdmin(BaseAdmin):
    list_display = (
        'img',
        'name',
        'trackid',
    )  # 显示

@admin.register(MainShow)
class MainShowAdmin(BaseAdmin):
    list_display = (
        'categoryid',
        'brandname',
        'img1',
        'childcid1',
        'productid1',
        'longname1',
        'price1',
        'marketprice1',
        'img2',
        'childcid2',
        'productid2',
        'longname2',
        'price2',
        'marketprice2',
        'img3',
        'childcid3',
        'productid3',
        'longname3',
        'price3',
        'marketprice3',
    )  # 显示


@admin.register(FoodType)
class FoodTypeAdmin(BaseAdmin):
    list_display = (
        'typeid',
        'typename',
        'childtypenames',
        'typesort',
    )  # 显示



@admin.register(Goods)
class GoodsAdmin(BaseAdmin):
    list_display = (
        'productid',
        'productimg',
        'productname',
        'productlongname',
        'isxf',
        'pmdesc',
        'specifics',
        'price',
        'marketprice',
        'categoryid',
        'childcid',
        'childcidname',
        'dealerid',
        'storenums',
        'productnum',
    )  # 显示


@admin.register(AXFUser)
class GoodsAdmin(BaseAdmin):
    list_display = (
        'u_username',
        'u_password',
        'u_email',
        'u_icon',
        'is_active',
        'is_delete',
    )  # 显示


@admin.register(Cart)
class CartAdmin(BaseAdmin):
    list_display = (
        'c_user',
        'c_goods',
        'c_goods_num',
        'c_is_select',
    )  # 显示


@admin.register(Order)
class OrderAdmin(BaseAdmin):
    list_display = (
        'o_user',
        'o_price',
        'o_time',
        'o_status',
    )  # 显示



@admin.register(OrderGoods)
class OrderGoodsAdmin(BaseAdmin):
    list_display = (
        'o_order',
        'o_goods',
        'o_goods_num',
    )  # 显示


@admin.register(Address)
class AddressGoodsAdmin(BaseAdmin):
    list_display = (
        'a_province',
        'a_city',
        'a_county',
        'a_detailed_address',
        'a_phone',
        'a_username',
        'a_user',
    )  # 显示

@admin.register(OrderAddress)
class OrderAddressAdmin(BaseAdmin):
    list_display = (
        'o_address',
        'o_order',
    )  # 显示


@admin.register(Count)
class CountAdmin(admin.ModelAdmin):
    pass
