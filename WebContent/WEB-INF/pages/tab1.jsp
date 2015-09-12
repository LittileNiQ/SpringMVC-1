<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h2>admin发表于 2015-08-20 15:20:56</h2>
<h4>百度云的消息推送</h4>
<div>这两周没怎么写文章，梳理一下这两周的东西吧。任务：主要实现的功能是消息推送，使用的是百度云推送SDK，
接收服务端的发送的消息和通知，并把这些消息显示在listview中，已读消息和未读消息要有明显的标识。
难点：区分已读和未读消息这个功能。一般是通过服务端发送的数据中的一个字段来判断消息的已读和未读，但是我做的这个服务端返回的数据中没有标识消息状态的字段，
所以实现这个功能就需要自己来想办法了。思路：通过在手机本地建立数据表，来记录消息已读未读的状态。创建消息数据表message，设置四个字段_id（自增，主键)，userID（用户id，VARCHAR(255) ，由于项目项目中设置的类型是UUID于是其他表中是这样设置的照搬），createTime （ 消息id，DateTime,项目中这样设置的照搬 ），status(消息状态，int ，默认1 已读1，未读 0)问题：1.当第一次点开该消息Activity时，加载数据，同时把这些数据插入到数据库。当离开该消息Activity又重新回到该消息Activity时，需要重新查找数据库中是否存在该数据</div>