(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/yonghu/add-or-update"],{"0194":function(e,n,t){"use strict";(function(e){t("b883");r(t("66fd"));var n=r(t("aef8"));function r(e){return e&&e.__esModule?e:{default:e}}e(n.default)}).call(this,t("543d")["createPage"])},"20fc":function(e,n,t){"use strict";(function(e){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r=i(t("a34a"));function i(e){return e&&e.__esModule?e:{default:e}}function u(e,n,t,r,i,u,a){try{var o=e[u](a),c=o.value}catch(s){return void t(s)}o.done?n(c):Promise.resolve(c).then(r,i)}function a(e){return function(){var n=this,t=arguments;return new Promise((function(r,i){var a=e.apply(n,t);function o(e){u(a,r,i,o,c,"next",e)}function c(e){u(a,r,i,o,c,"throw",e)}o(void 0)}))}}var o=function(){Promise.all([t.e("common/vendor"),t.e("components/w-picker/w-picker")]).then(function(){return resolve(t("7505"))}.bind(null,t)).catch(t.oe)},c={data:function(){return{ruleForm:{yonghuming:"",mima:"",xingming:"",xingbie:"",touxiang:"",shouji:""},xingbieOptions:[],xingbieIndex:0,user:{},ro:{yonghuming:!1,mima:!1,xingming:!1,xingbie:!1,touxiang:!1,shouji:!1}}},components:{wPicker:o},computed:{},onLoad:function(n){var t=this;return a(r.default.mark((function i(){var u,a,o,c;return r.default.wrap((function(i){while(1)switch(i.prev=i.next){case 0:return u=e.getStorageSync("nowTable"),i.next=3,t.$api.session(u);case 3:if(a=i.sent,t.user=a.data,t.xingbieOptions="男,女".split(","),t.ruleForm.userid=e.getStorageSync("userid"),n.refid&&(t.ruleForm.refid=n.refid),!n.id){i.next=14;break}return t.ruleForm.id=n.id,i.next=12,t.$api.info("yonghu",t.ruleForm.id);case 12:a=i.sent,t.ruleForm=a.data;case 14:if(!n.cross){i.next=45;break}o=e.getStorageSync("crossObj"),i.t0=r.default.keys(o);case 17:if((i.t1=i.t0()).done){i.next=45;break}if(c=i.t1.value,"yonghuming"!=c){i.next=23;break}return t.ruleForm.yonghuming=o[c],t.ro.yonghuming=!0,i.abrupt("continue",17);case 23:if("mima"!=c){i.next=27;break}return t.ruleForm.mima=o[c],t.ro.mima=!0,i.abrupt("continue",17);case 27:if("xingming"!=c){i.next=31;break}return t.ruleForm.xingming=o[c],t.ro.xingming=!0,i.abrupt("continue",17);case 31:if("xingbie"!=c){i.next=35;break}return t.ruleForm.xingbie=o[c],t.ro.xingbie=!0,i.abrupt("continue",17);case 35:if("touxiang"!=c){i.next=39;break}return t.ruleForm.touxiang=o[c],t.ro.touxiang=!0,i.abrupt("continue",17);case 39:if("shouji"!=c){i.next=43;break}return t.ruleForm.shouji=o[c],t.ro.shouji=!0,i.abrupt("continue",17);case 43:i.next=17;break;case 45:t.styleChange();case 46:case"end":return i.stop()}}),i)})))()},methods:{styleChange:function(){this.$nextTick((function(){}))},xingbieChange:function(e){this.xingbieIndex=e.target.value,this.ruleForm.xingbie=this.xingbieOptions[this.xingbieIndex]},touxiangTap:function(){var e=this;this.$api.upload((function(n){e.ruleForm.touxiang=e.$base.url+"upload/"+n.file,e.$forceUpdate(),e.$nextTick((function(){e.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var e=this;return a(r.default.mark((function n(){return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if(e.ruleForm.yonghuming){n.next=3;break}return e.$utils.msg("用户名不能为空"),n.abrupt("return");case 3:if(e.ruleForm.mima){n.next=6;break}return e.$utils.msg("密码不能为空"),n.abrupt("return");case 6:if(!e.ruleForm.id){n.next=11;break}return n.next=9,e.$api.update("yonghu",e.ruleForm);case 9:n.next=13;break;case 11:return n.next=13,e.$api.add("yonghu",e.ruleForm);case 13:e.$utils.msgBack("提交成功");case 14:case"end":return n.stop()}}),n)})))()},optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var n=new Date,t=n.getFullYear(),r=n.getMonth()+1,i=n.getDate();return"start"===e?t-=60:"end"===e&&(t+=2),r=r>9?r:"0"+r,i=i>9?i:"0"+i,"".concat(t,"-").concat(r,"-").concat(i)},toggleTab:function(e){this.$refs[e].show()}}};n.default=c}).call(this,t("543d")["default"])},"3aea":function(e,n,t){"use strict";t.r(n);var r=t("20fc"),i=t.n(r);for(var u in r)"default"!==u&&function(e){t.d(n,e,(function(){return r[e]}))}(u);n["default"]=i.a},a103:function(e,n,t){"use strict";var r=t("efbc"),i=t.n(r);i.a},aef8:function(e,n,t){"use strict";t.r(n);var r=t("f2f7"),i=t("3aea");for(var u in i)"default"!==u&&function(e){t.d(n,e,(function(){return i[e]}))}(u);t("a103");var a,o=t("f0c5"),c=Object(o["a"])(i["default"],r["b"],r["c"],!1,null,"fe5d3582",null,!1,r["a"],a);n["default"]=c.exports},efbc:function(e,n,t){},f2f7:function(e,n,t){"use strict";var r;t.d(n,"b",(function(){return i})),t.d(n,"c",(function(){return u})),t.d(n,"a",(function(){return r}));var i=function(){var e=this,n=e.$createElement;e._self._c},u=[]}},[["0194","common/runtime","common/vendor"]]]);