(window.webpackJsonp=window.webpackJsonp||[]).push([[238],{"5/u7":function(t,e,n){"use strict";n.r(e);var a={components:{},data:function(){return{list:{total:0,data:[]},footer:[],filter:{sort_by:"date",order:"desc",date:"",page_length:helper.getConfig("page_length")},orderByOptions:[{value:"created_at",translation:i18n.general.created_at}],showFilterPanel:!0,help_topic:""}},mounted:function(){helper.hasPermission("access-transaction-report")||(helper.notAccessibleMsg(),this.$router.push("/dashboard")),this.filter.date=helper.today(),this.getReport()},methods:{hasPermission:function(t){return helper.hasPermission(t)},getReport:function(t){var e=this,n=this.$loading.show();"number"!=typeof t&&(t=1),this.filter.date=helper.toDate(this.filter.date);var a=helper.getFilterURL(this.filter);axios.get("/api/transaction/report/day-book?page="+t+a).then((function(t){e.list=t.list,e.footer=t.footer,n.hide()})).catch((function(t){n.hide(),helper.showErrorMsg(t)}))},getConfig:function(t){return helper.getConfig(t)},print:function(){var t=this.$loading.show();axios.post("/api/transaction/report/day-book/print",{filter:this.filter}).then((function(e){var n=window.open("/print");t.hide(),n.document.write(e)})).catch((function(e){t.hide(),helper.showErrorMsg(e)}))},pdf:function(){var t=this,e=this.$loading.show();axios.post("/api/transaction/report/day-book/pdf",{filter:this.filter}).then((function(n){e.hide(),window.open("/download/report/"+n+"?token="+t.authToken)})).catch((function(t){e.hide(),helper.showErrorMsg(t)}))}},filters:{moment:function(t){return helper.formatDate(t)},momentDateTime:function(t){return helper.formatDateTime(t)}},watch:{"filter.sort_by":function(t){this.getReport()},"filter.order":function(t){this.getReport()},"filter.page_length":function(t){this.getReport()}},computed:{authToken:function(){return helper.getAuthToken()}}},s=n("KHd+"),o=Object(s.a)(a,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("div",{staticClass:"page-titles"},[n("div",{staticClass:"row"},[n("div",{staticClass:"col-12 col-sm-6"},[n("h3",{staticClass:"text-themecolor"},[t._v(t._s(t.trans("finance.transaction_day_book_report"))+" \n                    "),t.list.total?n("span",{staticClass:"card-subtitle d-none d-sm-inline"},[t._v(t._s(t.trans("general.total_result_found",{count:t.list.total,from:t.list.from,to:t.list.to})))]):n("span",{staticClass:"card-subtitle d-none d-sm-inline"},[t._v(t._s(t.trans("general.no_result_found")))])])]),t._v(" "),n("div",{staticClass:"col-12 col-sm-6"},[n("div",{staticClass:"action-buttons pull-right"},[t.showFilterPanel?t._e():n("button",{staticClass:"btn btn-info btn-sm",on:{click:function(e){t.showFilterPanel=!t.showFilterPanel}}},[n("i",{staticClass:"fas fa-filter"}),t._v(" "),n("span",{staticClass:"d-none d-sm-inline"},[t._v(t._s(t.trans("general.filter")))])]),t._v(" "),n("sort-by",{attrs:{"order-by-options":t.orderByOptions,"sort-by":t.filter.sort_by,order:t.filter.order},on:{updateSortBy:function(e){t.filter.sort_by=e},updateOrder:function(e){t.filter.order=e}}}),t._v(" "),n("div",{staticClass:"btn-group"},[n("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.trans("general.more_option"),expression:"trans('general.more_option')"}],staticClass:"btn btn-info btn-sm dropdown-toggle no-caret ",attrs:{type:"button",role:"menu",id:"moreOption","data-toggle":"dropdown","aria-haspopup":"true","aria-expanded":"false"}},[n("i",{staticClass:"fas fa-ellipsis-h"}),t._v(" "),n("span",{staticClass:"d-none d-sm-inline"})]),t._v(" "),n("div",{class:["dropdown-menu","ltr"==t.getConfig("direction")?"dropdown-menu-right":""],attrs:{"aria-labelledby":"moreOption"}},[n("button",{staticClass:"dropdown-item custom-dropdown",on:{click:t.print}},[n("i",{staticClass:"fas fa-print"}),t._v(" "+t._s(t.trans("general.print")))]),t._v(" "),n("button",{staticClass:"dropdown-item custom-dropdown",on:{click:t.pdf}},[n("i",{staticClass:"fas fa-file-pdf"}),t._v(" "+t._s(t.trans("general.generate_pdf")))])])]),t._v(" "),n("help-button",{on:{clicked:function(e){t.help_topic="finance.transaction.report.day_book"}}})],1)])])]),t._v(" "),n("div",{staticClass:"container-fluid"},[n("transition",{attrs:{name:"fade"}},[t.showFilterPanel?n("div",{staticClass:"card card-form"},[n("div",{staticClass:"card-body"},[n("h4",{staticClass:"card-title"},[t._v(t._s(t.trans("general.filter")))]),t._v(" "),n("div",{staticClass:"row"},[n("div",{staticClass:"col-12 col-sm-4"},[n("div",{staticClass:"form-group"},[n("datepicker",{attrs:{bootstrapStyling:!0},model:{value:t.filter.date,callback:function(e){t.$set(t.filter,"date",e)},expression:"filter.date"}})],1)])]),t._v(" "),n("div",{staticClass:"card-footer text-right"},[n("button",{staticClass:"btn btn-danger",attrs:{type:"button"},on:{click:function(e){t.showFilterPanel=!1}}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),n("button",{staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"button"},on:{click:t.getReport}},[t._v(t._s(t.trans("general.filter")))])])])]):t._e()]),t._v(" "),n("div",{staticClass:"card"},[n("div",{staticClass:"card-body"},[t.list.total?n("div",{staticClass:"table-responsive"},[n("table",{staticClass:"table table-sm"},[n("thead",[n("tr",[n("th",[t._v("#")]),t._v(" "),n("th",[t._v(t._s(t.trans("finance.voucher_number")))]),t._v(" "),n("th",[t._v(t._s(t.trans("finance.date")))]),t._v(" "),n("th",[t._v(t._s(t.trans("finance.payment")))]),t._v(" "),n("th",[t._v(t._s(t.trans("finance.receipt")))]),t._v(" "),n("th",[t._v(t._s(t.trans("general.description")))]),t._v(" "),n("th",[t._v(t._s(t.trans("finance.account")))]),t._v(" "),n("th",[t._v(t._s(t.trans("finance.payment_method")))]),t._v(" "),n("th",[t._v(t._s(t.trans("general.entry_by")))])])]),t._v(" "),n("tbody",t._l(t.list.data,(function(e,a){return n("tr",[n("td",[t._v(t._s(e.sno))]),t._v(" "),n("td",[t._v(t._s(e.voucher_number))]),t._v(" "),n("td",[t._v(t._s(t._f("moment")(e.date)))]),t._v(" "),n("td",[t._v(t._s("payment"==e.type?e.amount:"-"))]),t._v(" "),n("td",[t._v(t._s("receipt"==e.type?e.amount:"-"))]),t._v(" "),n("td",[t._v(t._s(e.head))]),t._v(" "),n("td",[t._v(t._s(e.account))]),t._v(" "),n("td",[t._v("\n                                    "+t._s(e.payment_method)+" "),e.payment_method_detail?n("p",{domProps:{innerHTML:t._s(e.payment_method_detail)}}):t._e()]),t._v(" "),n("td",[t._v(t._s(e.employee))])])})),0),t._v(" "),n("tfoot",[n("tr",[n("th",{attrs:{colspan:"3"}}),t._v(" "),n("th",[t._v(t._s(t.footer.total_payments))]),t._v(" "),n("th",[t._v(t._s(t.footer.total_receipts))]),t._v(" "),n("th",{attrs:{colspan:"4"}})])])])]):t._e(),t._v(" "),t.list.total?t._e():n("module-info",{attrs:{module:"finance",title:"transaction_day_book_report_module_title",description:"transaction_day_book_report_module_description",icon:"list"}}),t._v(" "),n("pagination-record",{attrs:{"page-length":t.filter.page_length,records:t.list},on:{"update:pageLength":function(e){return t.$set(t.filter,"page_length",e)},"update:page-length":function(e){return t.$set(t.filter,"page_length",e)},updateRecords:t.getReport}})],1)])],1),t._v(" "),n("right-panel",{attrs:{topic:t.help_topic}})],1)}),[],!1,null,null,null);e.default=o.exports}}]);
//# sourceMappingURL=dayBook.js.map?id=6c3549e07648d3a89d94