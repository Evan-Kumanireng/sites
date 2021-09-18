(window.webpackJsonp=window.webpackJsonp||[]).push([[351],{"Q+D8":function(t,r,e){var s=e("vtNv");"string"==typeof s&&(s=[[t.i,s,""]]);var a={hmr:!0,transform:void 0,insertInto:void 0};e("aET+")(s,a);s.locals&&(t.exports=s.locals)},Qjbi:function(t,r,e){"use strict";var s=e("Q+D8");e.n(s).a},TxgT:function(t,r,e){"use strict";var s={components:{transportCircleForm:e("cquL").a},data:function(){return{transportFeeForm:new Form({name:"",description:"",transport_circles:[]}),default_currency:helper.getConfig("default_currency"),transport_circles:[],showTransportCircleModal:!1}},props:["id"],mounted:function(){helper.hasPermission("create-transport-fee")||helper.hasPermission("edit-transport-fee")||(helper.notAccessibleMsg(),this.$router.push("/dashboard")),this.getPreRequisite()},methods:{hasPermission:function(t){return helper.hasPermission(t)},proceed:function(){this.id?this.update():this.store()},getPreRequisite:function(){var t=this,r=this.$loading.show();this.showTransportCircleModal=!1,axios.get("/api/transport/fee/pre-requisite").then((function(e){t.transport_circles=e,t.populateTransportCircle(),t.id&&t.get(),r.hide()})).catch((function(t){r.hide(),helper.showErrorMsg(t)}))},store:function(){var t=this,r=this.$loading.show();this.transportFeeForm.post("/api/transport/fee").then((function(e){toastr.success(e.message),t.transportFeeForm.transport_circles=[],t.populateTransportCircle(),t.$emit("completed"),r.hide()})).catch((function(t){r.hide(),helper.showErrorMsg(t)}))},get:function(){var t=this,r=this.$loading.show();axios.get("/api/transport/fee/"+this.id).then((function(e){t.transportFeeForm.name=e.name,t.transportFeeForm.description=e.description,t.transportFeeForm.transport_circles.forEach((function(t){var r=e.transport_fee_details.find((function(r){return r.transport_circle_id==t.transport_circle_id}));t.amount=r?r.amount:0})),r.hide()})).catch((function(e){r.hide(),helper.showErrorMsg(e),t.$router.push("/transport/fee")}))},update:function(){var t=this,r=this.$loading.show();this.transportFeeForm.patch("/api/transport/fee/"+this.id).then((function(e){toastr.success(e.message),r.hide(),t.$router.push("/transport/fee")})).catch((function(t){r.hide(),helper.showErrorMsg(t)}))},getConfig:function(t){return helper.getConfig(t)},populateTransportCircle:function(){var t=this;this.transport_circles.forEach((function(r){t.transportFeeForm.transport_circles.findIndex((function(t){return t.transport_circle_id==r.id}))<0&&t.transportFeeForm.transport_circles.push({transport_circle_id:r.id,transport_circle_name:r.name,amount:0})}))}}},a=(e("Qjbi"),e("KHd+")),o=Object(a.a)(s,(function(){var t=this,r=t.$createElement,e=t._self._c||r;return e("div",[e("form",{on:{submit:function(r){return r.preventDefault(),t.proceed(r)},keydown:function(r){return t.transportFeeForm.errors.clear(r.target.name)}}},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-12 col-sm-4"},[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v(t._s(t.trans("transport.fee_name")))]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.transportFeeForm.name,expression:"transportFeeForm.name"}],staticClass:"form-control",attrs:{type:"text",name:"name",placeholder:t.trans("transport.fee_name")},domProps:{value:t.transportFeeForm.name},on:{input:function(r){r.target.composing||t.$set(t.transportFeeForm,"name",r.target.value)}}}),t._v(" "),e("show-error",{attrs:{"form-name":t.transportFeeForm,"prop-name":"name"}})],1)]),t._v(" "),e("div",{staticClass:"col-12 col-sm-4"},[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v(t._s(t.trans("transport.fee_description")))]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.transportFeeForm.description,expression:"transportFeeForm.description"}],staticClass:"form-control",attrs:{type:"text",name:"description",placeholder:t.trans("transport.fee_description")},domProps:{value:t.transportFeeForm.description},on:{input:function(r){r.target.composing||t.$set(t.transportFeeForm,"description",r.target.value)}}}),t._v(" "),e("show-error",{attrs:{"form-name":t.transportFeeForm,"prop-name":"description"}})],1)])]),t._v(" "),t._l(t.transportFeeForm.transport_circles,(function(r){return e("div",{staticClass:"row"},[e("div",{staticClass:"col-12 col-sm-4"},[e("div",{staticClass:"form-group"},[e("label",{staticClass:"m-t-10",attrs:{for:""}},[t._v(t._s(r.transport_circle_name+" ("+t.trans("finance.per_installment")+")"))])])]),t._v(" "),e("div",{staticClass:"col-12 col-sm-4"},[e("div",{staticClass:"form-group"},[e("currency-input",{attrs:{position:t.default_currency.position,symbol:t.default_currency.symbol,name:"amount_"+r.transport_circle_id,placeholder:t.trans("transport.amount")},model:{value:r.amount,callback:function(e){t.$set(r,"amount",e)},expression:"transport_circle.amount"}}),t._v(" "),e("show-error",{attrs:{"form-name":t.transportFeeForm,"prop-name":"amount_"+r.transport_circle_id}})],1)])])})),t._v(" "),e("div",{staticClass:"card-footer"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-12 col-sm-6"},[t.hasPermission("access-configuration")?e("button",{staticClass:"btn btn-info",attrs:{type:"button"},on:{click:function(r){t.showTransportCircleModal=!0}}},[t._v(t._s(t.trans("transport.add_new_circle")))]):t._e()]),t._v(" "),e("div",{staticClass:"col-12 col-sm-6 text-right"},[e("router-link",{directives:[{name:"show",rawName:"v-show",value:t.id,expression:"id"}],staticClass:"btn btn-danger waves-effect waves-light ",attrs:{to:"/transport/fee"}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),t.id?t._e():e("button",{staticClass:"btn btn-danger waves-effect waves-light ",attrs:{type:"button"},on:{click:function(r){return t.$emit("cancel")}}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),e("button",{staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"submit"}},[t.id?e("span",[t._v(t._s(t.trans("general.update")))]):e("span",[t._v(t._s(t.trans("general.save")))])])],1)])])],2),t._v(" "),t.showTransportCircleModal?e("transition",{attrs:{name:"modal"}},[e("div",{staticClass:"modal-mask"},[e("div",{staticClass:"modal-wrapper"},[e("div",{staticClass:"modal-container modal-lg"},[e("div",{staticClass:"modal-header"},[t._t("header",[t._v("\n                            "+t._s(t.trans("transport.add_new_circle"))+"\n                            "),e("span",{staticClass:"float-right pointer",on:{click:function(r){t.showTransportCircleModal=!1}}},[t._v("x")])])],2),t._v(" "),e("div",{staticClass:"modal-body"},[t._t("body",[e("transport-circle-form",{on:{completed:t.getPreRequisite,cancel:function(r){t.showTransportCircleModal=!1}}}),t._v(" "),e("div",{staticClass:"clearfix"})])],2)])])])]):t._e()],1)}),[],!1,null,null,null);r.a=o.exports},cquL:function(t,r,e){"use strict";var s={data:function(){return{circleForm:new Form({name:"",description:""})}},props:["id"],mounted:function(){this.id&&this.get()},methods:{proceed:function(){this.id?this.update():this.store()},store:function(){var t=this,r=this.$loading.show();this.circleForm.post("/api/transport/circle").then((function(e){toastr.success(e.message),t.$emit("completed"),r.hide()})).catch((function(t){r.hide(),helper.showErrorMsg(t)}))},get:function(){var t=this,r=this.$loading.show();axios.get("/api/transport/circle/"+this.id).then((function(e){t.circleForm.name=e.name,t.circleForm.description=e.description,r.hide()})).catch((function(e){r.hide(),helper.showErrorMsg(e),t.$router.push("/transport/circle")}))},update:function(){var t=this,r=this.$loading.show();this.circleForm.patch("/api/transport/circle/"+this.id).then((function(e){toastr.success(e.message),r.hide(),t.$router.push("/transport/circle")})).catch((function(t){r.hide(),helper.showErrorMsg(t)}))}}},a=e("KHd+"),o=Object(a.a)(s,(function(){var t=this,r=t.$createElement,e=t._self._c||r;return e("form",{on:{submit:function(r){return r.preventDefault(),t.proceed(r)},keydown:function(r){return t.circleForm.errors.clear(r.target.name)}}},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-12 col-sm-6"},[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v(t._s(t.trans("transport.circle_name")))]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.circleForm.name,expression:"circleForm.name"}],staticClass:"form-control",attrs:{type:"text",name:"name",placeholder:t.trans("transport.circle_name")},domProps:{value:t.circleForm.name},on:{input:function(r){r.target.composing||t.$set(t.circleForm,"name",r.target.value)}}}),t._v(" "),e("show-error",{attrs:{"form-name":t.circleForm,"prop-name":"name"}})],1)]),t._v(" "),e("div",{staticClass:"col-12 col-sm-6"},[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v(t._s(t.trans("transport.circle_description")))]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.circleForm.description,expression:"circleForm.description"}],staticClass:"form-control",attrs:{type:"text",name:"description",placeholder:t.trans("transport.circle_description")},domProps:{value:t.circleForm.description},on:{input:function(r){r.target.composing||t.$set(t.circleForm,"description",r.target.value)}}}),t._v(" "),e("show-error",{attrs:{"form-name":t.circleForm,"prop-name":"description"}})],1)])]),t._v(" "),e("div",{staticClass:"card-footer text-right"},[e("router-link",{directives:[{name:"show",rawName:"v-show",value:t.id,expression:"id"}],staticClass:"btn btn-danger waves-effect waves-light ",attrs:{to:"/transport/circle"}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),t.id?t._e():e("button",{staticClass:"btn btn-danger waves-effect waves-light ",attrs:{type:"button"},on:{click:function(r){return t.$emit("cancel")}}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),e("button",{staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"submit"}},[t.id?e("span",[t._v(t._s(t.trans("general.update")))]):e("span",[t._v(t._s(t.trans("general.save")))])])],1)])}),[],!1,null,null,null);r.a=o.exports},hqRz:function(t,r,e){"use strict";e.r(r);var s={components:{transportFeeForm:e("TxgT").a},data:function(){return{id:this.$route.params.id}},mounted:function(){helper.hasPermission("edit-transport-fee")||(helper.notAccessibleMsg(),this.$router.push("/dashboard"))}},a=e("KHd+"),o=Object(a.a)(s,(function(){var t=this,r=t.$createElement,e=t._self._c||r;return e("div",[e("div",{staticClass:"page-titles"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-12 col-sm-6"},[e("h3",{staticClass:"text-themecolor"},[t._v(t._s(t.trans("transport.edit_fee")))])]),t._v(" "),e("div",{staticClass:"col-12 col-sm-6"},[e("div",{staticClass:"action-buttons pull-right"},[e("button",{staticClass:"btn btn-info btn-sm",on:{click:function(r){return t.$router.push("/transport/fee")}}},[e("i",{staticClass:"fas fa-list"}),t._v(" "),e("span",{staticClass:"d-none d-sm-inline"},[t._v(t._s(t.trans("transport.edit_fee")))])])])])])]),t._v(" "),e("div",{staticClass:"container-fluid"},[e("div",{staticClass:"card card-form"},[e("div",{staticClass:"card-body p-t-20"},[e("transport-fee-form",{attrs:{id:t.id}})],1)])])])}),[],!1,null,null,null);r.default=o.exports},vtNv:function(t,r,e){(t.exports=e("I1BE")(!1)).push([t.i,"\n.loading-overlay.is-full-page{\n    z-index: 1060;\n}\n",""])}}]);
//# sourceMappingURL=edit.js.map?id=641d6c8fee84ec654447