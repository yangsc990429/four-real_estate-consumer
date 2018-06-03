﻿/**
 * author: snow
 * description: localStorage和cookie的封装
 * time: 2017-07-12
 *
 dataProxy.setItem("name",value,1) ;  // 存储数据，1、2、3...表示天数，0不限制过期，-1设置过期
 *
 dataProxy.getItem('name') // 获取数据
 *
 dataProxy.removeItem('name') // 清除该条数据
 *
 dataProxy.showStorage() // 得到所有保存的数据
 *
 dataProxy.clear() // 清除所有存储数据
 */
;(function(global,undefined){
    "use strict"; // 使用js严格模式检查，使语法更规范
    var _global;
    var dataProxy = {
       supportLocalStorage: function () {
           if (window.localStorage) {
               return true;
           }
           return false;
       },
       setItem: function (name, value, expiredate) {
           if (this.supportLocalStorage()) {
             if(expiredate===null || expiredate===0){
                    window.localStorage.setItem(name, value);
                } else {
                   var v = null;
                   try{
                       v = JSON.parse(value);
                   }catch(e){
                       v = {"defaultname": value};
                   }
                   var expire = new Date();
                   expire.setTime(expire.getTime() + expiredate * 24 * 3600 * 1000);
                   v.expires=expire.getTime();
                   window.localStorage.setItem(name,JSON.stringify(v));
                   return;
               }
             
           } else {
               if (expiredate < 0) {
                   var expire = new Date();
                   expire.setTime(expire.getTime() - 1000);
                   document.cookie = name + "=" + escape(value) + ";expires=" + expire.toUTCString();
                   return;
               }
               //默认path 根路径
               if (expiredate > 0) {
                   var expire = new Date();
                   expire.setTime(expire.getTime() + expiredate * 24 * 3600 * 1000);
                   document.cookie = name + "=" + escape(value) + ";expires=" + expire.toUTCString() + ";path=/";
               } else {
                   document.cookie = name + "=" + escape(value) + ";path=/";
               }
           }
       },
       getItem: function (name) {
           if (this.supportLocalStorage()) {
               var v = window.localStorage.getItem(name);
               if(v!==null && v!==""){
                   try{
                       var value = JSON.parse(v);
                      var expires = value.expires;
                       if(expires !== null && expires !== ""){
                          if(new Date().getTime()-expires>0){
                              window.localStorage.removeItem(name);
                              return "";
                          }
                       }
                       if(value.defaultname === undefined ||value.defaultname===null ||value.defaultname===""){
                           return v;
                       }else{
                           return value.defaultname;
                       }
                   }catch(e){

                   }
               }
               return v;
           }
           if (document.cookie.length > 0) {
               var cookieStr = document.cookie;
               var nameIndex = cookieStr.indexOf(name);
               if (nameIndex === -1) {
                   return "";
               }
               var lastIndex = cookieStr.indexOf(";", nameidnex);
               if (lastIndex = -1) {
                   lastIndex = cookieStr.length;
               }
               return unescape(cookieStr.substring(nameidnex + name.length + 1, lastIndex));
           }
           return "";
       },
       removeItem: function (name) {
           if (this.supportLocalStorage()) {
               window.localStorage.removeItem(name);
               return;
           }
           var value = this.getItem(name);
           if (value === "") {
               return;
           }
           this.setItem(name, value, -1);
       },
       clear: function () {
           if (this.supportLocalStorage()) {
               window.localStorage.clear();
               return;
           }
           if (document.cookie.length > 0) {
               var cookieStr = document.cookie;
               var cookieArray = cookieStr.split(";");
               for (var c in cookieArray) {
                   var arr = cookieArray[c].split("=");
                   this.setItem(arr[0], arr[1], -1);
               }
           }
       },
       showStorage: function () {
           if (this.supportLocalStorage()) {
               var localStorage = window.localStorage;
               var len = localStorage.length;
               var storyArray = new Array();
               for (var i = 0; i < len; i++) {
                   storyArray.push(localStorage.key(i) + "=" + localStorage.getItem(localStorage.key(i)));
               }
               return storyArray.join(";");
           }
           return document.cookie;
       }
    };
    // 最后将插件对象暴露给全局对象
    _global = (function(){ return this || (0, eval)('this'); }());
    !('dataProxy' in _global) && (_global.dataProxy = dataProxy);
}());

// dataProxy.setItem("xxx",xxxx,1) ;  //1表示天数，0不限制过期，-1设置过期


