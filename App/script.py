#!/usr/bin/python
# -*- coding: utf-8 -*-
import os
import sys
from random import random,randrange

import django
import requests
from lxml import etree
import pdb

sys.path.append('/Users/fanding/gitProjects/GPAXF')  # 将项目路径添加到系统搜寻路径当中
os.environ['DJANGO_SETTINGS_MODULE'] = 'GPAXF.settings'  # 设置项目的配置文件
django.setup()  # 加载项目配置

from App.models import Goods


def getDataOne():  # 获取电脑数据-mac
    headers = {
        'authority': 'search.jd.com',
        'pragma': 'no-cache',
        'cache-control': 'no-cache',
        'upgrade-insecure-requests': '1',
        'user-agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36',
        'sec-fetch-dest': 'document',
        'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
        'sec-fetch-site': 'same-origin',
        'sec-fetch-mode': 'navigate',
        'sec-fetch-user': '?1',
        'referer': 'https://search.jd.com/Search?keyword=%E7%94%B5%E8%84%91&enc=utf-8&wq=%E7%94%B5%E8%84%91&pvid=428a00f787634278b3c483a286ce7504',
        'accept-language': 'zh-CN,zh;q=0.9',
        'cookie': 'shshshfpa=b1669764-0cb5-1aba-690c-4612f556474d-1567403211; shshshfpb=u0OlDT3qS%20GRAIYqgm4kcAw%3D%3D; qrsc=3; areaId=6; ipLoc-djd=6-309-313-0; PCSYCityID=CN_140000_140200_140221; xtest=6533.cf6b6759; rkv=V0100; __jdv=122270672|google|AmericaBrandC01|cpc|not set|1583752306893; __jdu=156740321156397634167; __jdc=122270672; __jda=122270672.156740321156397634167.1567403212.1583812940.1583820903.35; __jdb=122270672.7.156740321156397634167|35.1583820903; shshshfp=8a9c2fa77460f9b741d05449262851ba; shshshsID=3a7cb79385ddfba17eeb20f1c88144b6_7_1583822602395; 3AB9D23F7A4B3C9B=KYALSGGQOSXZBOZZHLMZZ3LZNBU2URJJ6EO2XESCUNXMV57NQ5HUAIPR5KKSOL7ZIK5LRGEI6OYBYVLW7LUIZU5CNI',
    }
    params = (
        ('keyword', '\u7535\u8111'),
        ('enc', 'utf-8'),
        ('qrst', '1'),
        ('rt', '1'),
        ('stop', '1'),
        ('vt', '2'),
        ('wq', '\u7535\u8111'),
        ('ev', 'exbrand_Apple^'),
        ('uc', '0'),
    )

    # 电脑-->苹果
    response = requests.get('https://search.jd.com/search', headers=headers, params=params)
    html = etree.HTML(response.content)
    divList = html.xpath('//div[@class="gl-i-wrap"]')
    for div in divList:
        productId = div.xpath('../@data-sku')[0].strip()[0:5]
        picUrl = 'https:' + div.xpath('.//div[@class="p-img"]/a/img/@source-data-lazy-img')[0].strip()
        currentPrice = float(div.xpath('.//div[@class="p-price"]/strong/i/text()')[0].strip())
        marketPrice = currentPrice + 50
        pname = ''.join(div.xpath('.//div[contains(@class,"p-name")]/a/em//text()'))

        goods = Goods()
        goods.productid = productId
        goods.productimg = picUrl
        goods.categoryid = 1
        goods.childcid = 11
        goods.price = currentPrice
        goods.marketprice = marketPrice
        goods.productlongname = pname
        goods.storenums = 100
        goods.productnum = randrange(100, 1000)
        goods.specifics = 10
        goods.childcidname = 'apple mac'
        goods.save()


def getData(url, categoryid, childcid):  # 获取电脑数据-华为
    headers = {
        'authority': 'search.jd.com',
        'pragma': 'no-cache',
        'cache-control': 'no-cache',
        'upgrade-insecure-requests': '1',
        'user-agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36',
        'sec-fetch-dest': 'document',
        'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
        'sec-fetch-site': 'same-origin',
        'sec-fetch-mode': 'navigate',
        'sec-fetch-user': '?1',
        'referer': 'https://search.jd.com/Search?keyword=%E7%94%B5%E8%84%91&enc=utf-8&wq=%E7%94%B5%E8%84%91&pvid=428a00f787634278b3c483a286ce7504',
        'accept-language': 'zh-CN,zh;q=0.9',
        'cookie': 'shshshfpa=b1669764-0cb5-1aba-690c-4612f556474d-1567403211; shshshfpb=u0OlDT3qS%20GRAIYqgm4kcAw%3D%3D; qrsc=3; areaId=6; ipLoc-djd=6-309-313-0; PCSYCityID=CN_140000_140200_140221; xtest=6533.cf6b6759; rkv=V0100; __jdv=122270672|google|AmericaBrandC01|cpc|not set|1583752306893; __jdu=156740321156397634167; __jdc=122270672; __jda=122270672.156740321156397634167.1567403212.1583812940.1583820903.35; __jdb=122270672.7.156740321156397634167|35.1583820903; shshshfp=8a9c2fa77460f9b741d05449262851ba; shshshsID=3a7cb79385ddfba17eeb20f1c88144b6_7_1583822602395; 3AB9D23F7A4B3C9B=KYALSGGQOSXZBOZZHLMZZ3LZNBU2URJJ6EO2XESCUNXMV57NQ5HUAIPR5KKSOL7ZIK5LRGEI6OYBYVLW7LUIZU5CNI',
    }

    # 电脑-->苹果
    response = requests.get(url, headers=headers)
    html = etree.HTML(response.content)
    divList = html.xpath('//div[@class="gl-i-wrap"]')
    for div in divList:
        productId = div.xpath('../@data-sku')[0].strip()[0:5]
        picUrl = 'https:' + div.xpath('.//div[@class="p-img"]/a/img/@source-data-lazy-img')[0].strip()
        currentPrice = float(div.xpath('.//div[@class="p-price"]/strong/i/text()')[0].strip())
        marketPrice = currentPrice + 50
        pname = ''.join(div.xpath('.//div[contains(@class,"p-name")]/a/em//text()'))

        goods = Goods()
        goods.productid = productId
        goods.productimg = picUrl
        goods.categoryid = categoryid
        goods.childcid = childcid
        goods.price = currentPrice
        goods.marketprice = marketPrice
        goods.productlongname = pname
        goods.storenums = 100
        goods.productnum = randrange(100, 1000)
        goods.specifics = 10
        goods.childcidname = ''
        goods.save()


if __name__ == '__main__':
    # getDataOne()
    # getData(
    #     url='https://search.jd.com/search?keyword=%E7%94%B5%E8%84%91&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&wq=%E7%94%B5%E8%84%91&ev=exbrand_%E5%8D%8E%E4%B8%BA%EF%BC%88HUAWEI%EF%BC%89%5E&uc=0',
    #     categoryid=1,
    #     childcid=12
    # )  # 获取华为牌子电脑
    #
    # getData(
    #     url='https://search.jd.com/search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&wq=%E6%89%8B%E6%9C%BA&ev=exbrand_Apple%5E&uc=0',
    #     categoryid=2,
    #     childcid=21
    # ) # 获取苹果手机
    #
    #
    # getData(
    #     url='https://search.jd.com/search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&wq=%E6%89%8B%E6%9C%BA&ev=exbrand_%E5%B0%8F%E7%B1%B3%EF%BC%88MI%EF%BC%89%5E&uc=0',
    #     categoryid=2,
    #     childcid=22
    # ) # 获取小米手机

    getData(
        url='https://search.jd.com/search?keyword=%E6%89%8B%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&wq=%E6%89%8B%E6%9C%BA&ev=exbrand_%E5%8D%8E%E4%B8%BA%EF%BC%88HUAWEI%EF%BC%89%5E&page=13&s=361&click=0',
        categoryid=3,
        childcid=31,
    )

    # getData(
    #     url='https://search.jd.com/search?keyword=ipad&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&bs=1&wq=ipad&ev=exbrand_Apple%5E&uc=0',
    #     categoryid=3,
    #     childcid=32,
    # )
    #
    # getData(
    #     url='https://search.jd.com/search?keyword=%E8%80%B3%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&wq=%E8%80%B3%E6%9C%BA&ev=exbrand_Apple%5E&uc=0',
    #     categoryid=4,
    #     childcid=41,
    # )
    #
    # getData(
    #     url='https://search.jd.com/search?keyword=%E8%80%B3%E6%9C%BA&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&wq=%E8%80%B3%E6%9C%BA&ev=exbrand_%E5%B0%8F%E7%B1%B3%EF%BC%88MI%EF%BC%89%5E&uc=0',
    #     categoryid=4,
    #     childcid=42,
    # )
    #
    # getData(
    #     url='https://search.jd.com/search?keyword=%E7%A1%AC%E7%9B%98&enc=utf-8&qrst=1&rt=1&stop=1&vt=2&wq=%E7%A1%AC%E7%9B%98&cid3=11303',
    #     categoryid=5,
    #     childcid=51,
    # )
    #
    # getData(
    #     url='https://search.jd.com/Search?keyword=%E7%A1%AC%E7%9B%98%20%E6%9C%BA%E6%A2%B0&enc=utf-8&wq=%E7%A1%AC%E7%9B%98%20%E6%9C%BA%E6%A2%B0&pvid=30c9472c8b3b46f9b5e50a2df01c97d1',
    #     categoryid=5,
    #     childcid=52,
    # )
    #
    #
