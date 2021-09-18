(window.webpackJsonp=window.webpackJsonp||[]).push([[273],{VVGG:function(e,t,r){"use strict";r.r(t);var n;function a(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}var o={components:{},data:function(){return{uuid:this.$route.params.uuid,book_log:{},returnForm:new Form({ids:[],is_non_returnable:0,date_of_return:"",late_fee:0,return_remarks:"",non_returnable_charge:"",non_returnable_charge_applicable:0,non_returnable_remarks:"",account_id:"",payment_method_id:"",instrument_date:"",instrument_number:"",instrument_clearing_date:"",instrument_bank_detail:"",reference_number:""}),selected_account:null,accounts:[],payment_methods:[],selected_payment_method:null,payment_method_details:[],payment_method_detail:{},default_currency:helper.getConfig("default_currency")}},mounted:function(){helper.hasPermission("issue-book")||helper.hasPermission("return-book")||(helper.notAccessibleMsg(),this.$router.push("/dashboard")),this.getBookLog()},methods:(n={hasPermission:function(e){return helper.hasPermission(e)},getStudentName:function(e){return helper.getStudentName(e)},getEmployeeNameWithCode:function(e){return helper.getEmployeeNameWithCode(e)},getStudentBatch:function(e){return e.course.name+" "+e.name},getBookLog:function(){var e=this;axios.get("/api/book/log/"+this.uuid).then((function(t){e.book_log=t.book_log,e.getFeePreRequisite()})).catch((function(e){helper.showErrorMsg(e)}))},getFeePreRequisite:function(){var e=this;axios.get("/api/book/log/fee/pre-requisite").then((function(t){e.accounts=t.accounts,e.payment_methods=t.payment_methods,e.payment_method_details=t.payment_method_details})).catch((function(e){helper.showErrorMsg(e)}))},formatCurrency:function(e){return helper.formatCurrency(e)}},a(n,"getStudentBatch",(function(e){return e.batch.course.name+" "+e.batch.name})),a(n,"getEmployeeDesignation",(function(e){return helper.getEmployeeDesignationOnDate(e,this.book_log.date_of_issue)})),a(n,"confirmReturn",(function(){var e=this;return function(t){return e.returnAction()}})),a(n,"returnAction",(function(){var e=this,t=this.$loading.show();this.returnForm.is_non_returnable||(this.returnForm.non_returnable_charge_applicable=0,this.returnForm.non_returnable_charge=0,this.returnForm.non_returnable_remarks="",this.returnForm.late_fee=this.calculateLateFee),this.returnForm.non_returnable_charge_applicable||(this.returnForm.non_returnable_charge=0),this.returnForm.post("/api/book/log/"+this.book_log.uuid+"/return").then((function(r){toastr.success(r.message),e.selected_account=null,e.selected_payment_method=null,e.payment_method_detail=null,e.returnForm.ids=[],e.getBookLog(),t.hide()})).catch((function(e){t.hide(),helper.showErrorMsg(e)}))})),a(n,"getPaymentMethodDetail",(function(e){return helper.getPaymentMethodDetail(this.payment_method_detail,e)})),a(n,"onAccountSelect",(function(e){this.returnForm.account_id=e.id})),a(n,"onPaymentMethodSelect",(function(e){this.returnForm.payment_method_id=e.id,this.payment_method_detail=this.payment_method_details.find((function(t){return t.id==e.id}))})),a(n,"onPaymentMethodRemove",(function(e){this.returnForm.payment_method_id="",this.payment_method_detail=null})),a(n,"submit",(function(){})),n),computed:{getBookReturnCount:function(){return this.book_log.book_log_details.filter((function(e){return null!=e.date_of_return||e.is_non_returnable})).length},isOverDue:function(){var e=this.returnForm.date_of_return?helper.toDate(this.returnForm.date_of_return):helper.today();return this.book_log.book_log_details.length>this.getBookReturnCount&&helper.toDate(this.book_log.due_date)<e},overdueDay:function(){var e=this.returnForm.date_of_return?helper.toDate(this.returnForm.date_of_return):helper.today();return this.isOverDue?helper.getDateDiff(this.book_log.due_date,e):0},calculateLateFee:function(){return this.isOverDue?Math.floor(this.overdueDay/helper.getLateFeeFrequencyIntoNumber(this.book_log.late_fee_frequency))*this.returnForm.ids.length*this.book_log.late_fee_charge:0}},filters:{moment:function(e){return helper.formatDate(e)},momentDateTime:function(e){return helper.formatDateTime(e)}},watch:{"returnForm.ids":function(e){e.length>1&&(this.returnForm.is_non_returnable=0)}}},s=r("KHd+"),_=Object(s.a)(o,(function(){var e=this,t=e.$createElement,r=e._self._c||t;return e.book_log.id?r("div",[r("div",{staticClass:"page-titles"},[r("div",{staticClass:"row"},[r("div",{staticClass:"col-12 col-sm-6"},[r("h3",{staticClass:"text-themecolor"},[e._v(e._s(e.trans("library.issue_detail"))+" "),r("span",{staticClass:"card-subtitle"},[e._v("#"+e._s(e.book_log.id))])])]),e._v(" "),r("div",{staticClass:"col-12 col-sm-6"},[r("div",{staticClass:"action-buttons pull-right"},[r("button",{staticClass:"btn btn-info btn-sm",on:{click:function(t){return e.$router.push("/library/return")}}},[r("i",{staticClass:"fas fa-undo"}),e._v(" "),r("span",{staticClass:"d-none d-sm-inline"},[e._v(e._s(e.trans("library.return_list")))])]),e._v(" "),r("button",{staticClass:"btn btn-info btn-sm",on:{click:function(t){return e.$router.push("/library/issue/list")}}},[r("i",{staticClass:"fas fa-book"}),e._v(" "),r("span",{staticClass:"d-none d-sm-inline"},[e._v(e._s(e.trans("library.issue_list")))])]),e._v(" "),r("help-button",{on:{clicked:function(t){e.help_topic="book-issue-detail"}}})],1)])])]),e._v(" "),r("div",{staticClass:"container-fluid"},[r("div",{staticClass:"row"},[r("div",{staticClass:"col-12 col-sm-4 pr-0"},[r("div",{staticClass:"card border-right"},[r("div",{staticClass:"card-body"},[r("h4",{staticClass:"card-title m-3"},[e._v(e._s(e.trans("library.issue_to")))]),e._v(" "),r("div",{staticClass:"table-responsive"},[r("table",{staticClass:"table table-sm custom-show-table"},[r("tbody",[r("tr",[r("td",[e._v(e._s(e.trans("library.issue"))+" #")]),e._v(" "),r("td",[e._v(e._s(e.book_log.id))])]),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("library.date_of_issue")))]),e._v(" "),r("td",[e._v(e._s(e._f("moment")(e.book_log.date_of_issue)))])]),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("library.due_date")))]),e._v(" "),r("td",[e.book_log.due_date?r("span",[e._v("\n                                                "+e._s(e._f("moment")(e.book_log.due_date))+"\n                                                "),e.isOverDue?r("span",{staticClass:"label label-danger"},[e._v(e._s(e.trans("library.overdue_by_days",{day:e.overdueDay})))]):e._e()]):r("span",[e._v("-")])])]),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("library.issue_to")))]),e._v(" "),r("td",[e.book_log.student_record_id?r("span",[e._v(e._s(e.trans("student.student")))]):e._e(),e._v(" "),e.book_log.employee_id?r("span",[e._v(e._s(e.trans("employee.employee")))]):e._e()])]),e._v(" "),e.book_log.student_record_id?[r("tr",[r("td",[e._v(e._s(e.trans("student.name")))]),e._v(" "),r("td",[e._v(e._s(e.getStudentName(e.book_log.student_record.student)))])]),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("student.first_guardian_name")))]),e._v(" "),r("td",[e._v(e._s(e.book_log.student_record.student.parent.first_guardian_name))])]),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("student.contact_number")))]),e._v(" "),r("td",[e._v(e._s(e.book_log.student_record.student.contact_number))])]),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("student.batch")))]),e._v(" "),r("td",[e._v(e._s(e.getStudentBatch(e.book_log.student_record)))])])]:e._e(),e._v(" "),e.book_log.employee_id?[r("tr",[r("td",[e._v(e._s(e.trans("employee.name")))]),e._v(" "),r("td",[e._v(e._s(e.getEmployeeNameWithCode(e.book_log.employee)))])]),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("employee.father_name")))]),e._v(" "),r("td",[e._v(e._s(e.book_log.employee.father_name))])]),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("employee.contact_number")))]),e._v(" "),r("td",[e._v(e._s(e.book_log.employee.contact_number))])]),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("employee.designation")))]),e._v(" "),r("td",[e._v(e._s(e.getEmployeeDesignation(e.book_log.employee)))])])]:e._e(),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("library.no_of_books_issued")))]),e._v(" "),r("td",[e._v(e._s(e.book_log.book_log_details.length))])]),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("library.no_of_books_returned")))]),e._v(" "),r("td",[e._v(e._s(e.getBookReturnCount))])]),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("library.late_fee_applicable")))]),e._v(" "),r("td",[e.book_log.late_fee_applicable?r("span",[e._v(e._s(e.trans("list.yes")))]):r("span",[e._v(e._s(e.trans("list.no")))])])]),e._v(" "),e.book_log.late_fee_applicable?r("tr",[r("td",[e._v(e._s(e.trans("library.late_fee_charge")))]),e._v(" "),r("td",[e._v("\n                                            "+e._s(e.formatCurrency(e.book_log.late_fee_charge))+" /"+e._s(e.trans("list."+e.book_log.late_fee_frequency))+" /"+e._s(e.trans("library.book"))+"\n                                        ")])]):e._e(),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("library.issue_remarks")))]),e._v(" "),r("td",[e._v(e._s(e.book_log.issue_remarks))])]),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("general.created_at")))]),e._v(" "),r("td",[e._v(e._s(e._f("momentDateTime")(e.book_log.created_at)))])]),e._v(" "),r("tr",[r("td",[e._v(e._s(e.trans("general.updated_at")))]),e._v(" "),r("td",[e._v(e._s(e._f("momentDateTime")(e.book_log.updated_at)))])])],2)])])])])]),e._v(" "),r("div",{staticClass:"col-12 col-sm-8 p-0"},[r("div",{staticClass:"card"},[r("div",{staticClass:"card-body"},[r("div",{staticClass:"table-responsive p-2"},[r("table",{staticClass:"table font-90pc"},[r("thead",[r("tr",[r("th"),e._v(" "),r("th",[e._v(e._s(e.trans("library.book")+" #"))]),e._v(" "),r("th",[e._v(e._s(e.trans("library.book_title")))]),e._v(" "),r("th",[e._v(e._s(e.trans("library.book_author")))]),e._v(" "),r("th",[e._v(e._s(e.trans("library.book_price")))]),e._v(" "),r("th",[e._v(e._s(e.trans("library.book_condition")))]),e._v(" "),r("th",[e._v(e._s(e.trans("library.date_of_return")))]),e._v(" "),r("th")])]),e._v(" "),r("tbody",e._l(e.book_log.book_log_details,(function(t){return r("tr",[r("td",[t.date_of_return||t.is_non_returnable?e._e():[r("label",{staticClass:"custom-control custom-checkbox"},[r("input",{directives:[{name:"model",rawName:"v-model",value:e.returnForm.ids,expression:"returnForm.ids"}],staticClass:"custom-control-input",attrs:{type:"checkbox"},domProps:{value:t.id,checked:Array.isArray(e.returnForm.ids)?e._i(e.returnForm.ids,t.id)>-1:e.returnForm.ids},on:{change:function(r){var n=e.returnForm.ids,a=r.target,o=!!a.checked;if(Array.isArray(n)){var s=t.id,_=e._i(n,s);a.checked?_<0&&e.$set(e.returnForm,"ids",n.concat([s])):_>-1&&e.$set(e.returnForm,"ids",n.slice(0,_).concat(n.slice(_+1)))}else e.$set(e.returnForm,"ids",o)}}}),e._v(" "),r("span",{staticClass:"custom-control-label"})])]],2),e._v(" "),r("td",[e._v(e._s(t.book_post_detail.number))]),e._v(" "),r("td",[e._v(e._s(t.book_post_detail.book_post.book.title))]),e._v(" "),r("td",[e._v(e._s(t.book_post_detail.book_post.book.book_author.name))]),e._v(" "),r("td",[e._v(e._s(e.formatCurrency(t.book_post_detail.book_post.book.price)))]),e._v(" "),r("td",[e._v(e._s(t.book_post_detail.book_condition.name))]),e._v(" "),r("td",[t.date_of_return?r("span",[e._v(e._s(e._f("moment")(t.date_of_return)))]):t.is_non_returnable?r("span",{staticClass:"label label-danger"},[e._v(e._s(e.trans("library.non_returnable")))]):r("span",[e._v("-")])]),e._v(" "),r("td",[t.date_of_return?[e._v("\n                                                "+e._s(e.trans("library.remarks")+": "+t.return_remarks)+" "),r("br"),e._v(" "),t.late_fee?r("span",[e._v(e._s(e.trans("library.late_fee")+": "+e.formatCurrency(t.late_fee)))]):e._e()]:e._e(),e._v(" "),t.is_non_returnable?[e._v("\n                                                "+e._s(e.trans("library.remarks")+": "+t.non_returnable_remarks)+" "),r("br"),e._v(" "),t.non_returnable_charge?r("span",[e._v(e._s(e.trans("library.non_returnable_charge")+": "+e.formatCurrency(t.non_returnable_charge)))]):e._e()]:e._e()],2)])})),0)])]),e._v(" "),e.returnForm.ids.length?[r("form",{staticClass:"p-4",on:{submit:function(t){return t.preventDefault(),e.submit(t)},keydown:function(t){return e.returnForm.errors.clear(t.target.name)}}},[r("div",{staticClass:"form-group"},[r("label",{staticClass:"custom-control custom-checkbox"},[r("input",{directives:[{name:"model",rawName:"v-model",value:e.returnForm.is_non_returnable,expression:"returnForm.is_non_returnable"}],staticClass:"custom-control-input",attrs:{type:"checkbox",value:"1"},domProps:{checked:Array.isArray(e.returnForm.is_non_returnable)?e._i(e.returnForm.is_non_returnable,"1")>-1:e.returnForm.is_non_returnable},on:{change:function(t){var r=e.returnForm.is_non_returnable,n=t.target,a=!!n.checked;if(Array.isArray(r)){var o=e._i(r,"1");n.checked?o<0&&e.$set(e.returnForm,"is_non_returnable",r.concat(["1"])):o>-1&&e.$set(e.returnForm,"is_non_returnable",r.slice(0,o).concat(r.slice(o+1)))}else e.$set(e.returnForm,"is_non_returnable",a)}}}),e._v(" "),r("span",{staticClass:"custom-control-label"},[e._v(e._s(e.trans("library.is_non_returnable")))])])]),e._v(" "),e.returnForm.is_non_returnable?[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[e._v(e._s(e.trans("library.non_returnable_remarks")))]),e._v(" "),r("autosize-textarea",{attrs:{rows:"1",name:"non_returnable_remarks",placeholder:e.trans("library.non_returnable_remarks")},model:{value:e.returnForm.non_returnable_remarks,callback:function(t){e.$set(e.returnForm,"non_returnable_remarks",t)},expression:"returnForm.non_returnable_remarks"}}),e._v(" "),r("show-error",{attrs:{"form-name":e.returnForm,"prop-name":"non_returnable_remarks"}})],1),e._v(" "),r("div",{staticClass:"form-group"},[r("label",{staticClass:"custom-control custom-checkbox"},[r("input",{directives:[{name:"model",rawName:"v-model",value:e.returnForm.non_returnable_charge_applicable,expression:"returnForm.non_returnable_charge_applicable"}],staticClass:"custom-control-input",attrs:{type:"checkbox",value:"1"},domProps:{checked:Array.isArray(e.returnForm.non_returnable_charge_applicable)?e._i(e.returnForm.non_returnable_charge_applicable,"1")>-1:e.returnForm.non_returnable_charge_applicable},on:{change:function(t){var r=e.returnForm.non_returnable_charge_applicable,n=t.target,a=!!n.checked;if(Array.isArray(r)){var o=e._i(r,"1");n.checked?o<0&&e.$set(e.returnForm,"non_returnable_charge_applicable",r.concat(["1"])):o>-1&&e.$set(e.returnForm,"non_returnable_charge_applicable",r.slice(0,o).concat(r.slice(o+1)))}else e.$set(e.returnForm,"non_returnable_charge_applicable",a)}}}),e._v(" "),r("span",{staticClass:"custom-control-label"},[e._v(e._s(e.trans("library.non_returnable_charge_applicable")))])])])]:[r("div",{staticClass:"row"},[r("div",{staticClass:"col-12 col-sm-3"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[e._v(e._s(e.trans("library.date_of_return")))]),e._v(" "),r("datepicker",{attrs:{bootstrapStyling:!0,placeholder:e.trans("library.date_of_return")},on:{selected:function(t){return e.returnForm.errors.clear("date_of_return")}},model:{value:e.returnForm.date_of_return,callback:function(t){e.$set(e.returnForm,"date_of_return",t)},expression:"returnForm.date_of_return"}}),e._v(" "),r("show-error",{attrs:{"form-name":e.returnForm,"prop-name":"date_of_return"}})],1)]),e._v(" "),r("div",{staticClass:"col-12 col-sm-6"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[e._v(e._s(e.trans("library.return_remarks")))]),e._v(" "),r("autosize-textarea",{attrs:{rows:"1",name:"return_remarks",placeholder:e.trans("library.return_remarks")},model:{value:e.returnForm.return_remarks,callback:function(t){e.$set(e.returnForm,"return_remarks",t)},expression:"returnForm.return_remarks"}}),e._v(" "),r("show-error",{attrs:{"form-name":e.returnForm,"prop-name":"return_remarks"}})],1)])]),e._v(" "),e.book_log.late_fee_applicable&&e.isOverDue?r("div",{staticClass:"form-group"},[r("p",[e._v(e._s(e.trans("library.late_fee")+": "+e.formatCurrency(e.book_log.late_fee_charge)+" ("+e.trans("list."+e.book_log.late_fee_frequency)+")")+" x "+e._s(e.returnForm.ids.length+" "+e.trans("library.book"))+" = "+e._s(e.formatCurrency(e.calculateLateFee)))])]):e._e()],e._v(" "),!e.returnForm.is_non_returnable&&e.book_log.late_fee_applicable&&e.calculateLateFee||e.returnForm.is_non_returnable&&e.returnForm.non_returnable_charge_applicable?[r("div",{staticClass:"row"},[e.returnForm.is_non_returnable&&e.returnForm.non_returnable_charge_applicable?r("div",{staticClass:"col-12 col-sm-4"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[e._v(e._s(e.trans("library.non_returnable_charge")))]),e._v(" "),r("currency-input",{attrs:{position:e.default_currency.position,symbol:e.default_currency.symbol,name:"non_returnable_charge",placeholder:e.trans("library.non_returnable_charge")},nativeOn:{input:function(t){return e.returnForm.errors.clear("non_returnable_charge")}},model:{value:e.returnForm.non_returnable_charge,callback:function(t){e.$set(e.returnForm,"non_returnable_charge",t)},expression:"returnForm.non_returnable_charge"}}),e._v(" "),r("show-error",{attrs:{"form-name":e.returnForm,"prop-name":"non_returnable_charge"}})],1)]):e._e(),e._v(" "),r("div",{staticClass:"col-12 col-sm-4"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[e._v(e._s(e.trans("finance.account")))]),e._v(" "),r("v-select",{attrs:{label:"name",name:"account_id",id:"account_id",options:e.accounts,placeholder:e.trans("account.select_account")},on:{select:e.onAccountSelect,close:function(t){return e.returnForm.errors.clear("account_id")},remove:function(t){e.returnForm.account_id=""}},model:{value:e.selected_account,callback:function(t){e.selected_account=t},expression:"selected_account"}},[e.accounts.length?e._e():r("div",{staticClass:"multiselect__option",attrs:{slot:"afterList"},slot:"afterList"},[e._v("\n                                                        "+e._s(e.trans("general.no_option_found"))+"\n                                                    ")])]),e._v(" "),r("show-error",{attrs:{"form-name":e.returnForm,"prop-name":"account_id"}})],1)]),e._v(" "),r("div",{staticClass:"col-12 col-sm-4"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[e._v(e._s(e.trans("finance.payment_method")))]),e._v(" "),r("v-select",{attrs:{label:"name",name:"payment_method_id",id:"payment_method_id",options:e.payment_methods,placeholder:e.trans("payment_method.select_payment_method")},on:{select:e.onPaymentMethodSelect,close:function(t){return e.returnForm.errors.clear("payment_method_id")},remove:e.onPaymentMethodRemove},model:{value:e.selected_payment_method,callback:function(t){e.selected_payment_method=t},expression:"selected_payment_method"}},[e.payment_methods.length?e._e():r("div",{staticClass:"multiselect__option",attrs:{slot:"afterList"},slot:"afterList"},[e._v("\n                                                        "+e._s(e.trans("general.no_option_found"))+"\n                                                    ")])]),e._v(" "),r("show-error",{attrs:{"form-name":e.returnForm,"prop-name":"payment_method_id"}})],1)]),e._v(" "),e.getPaymentMethodDetail("instrument_number")?r("div",{staticClass:"col-12 col-sm-4"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[e._v(e._s(e.trans("finance.instrument_number")))]),e._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:e.returnForm.instrument_number,expression:"returnForm.instrument_number"}],staticClass:"form-control",attrs:{type:"text",name:"instrument_number",placeholder:e.trans("finance.instrument_number")},domProps:{value:e.returnForm.instrument_number},on:{input:function(t){t.target.composing||e.$set(e.returnForm,"instrument_number",t.target.value)}}}),e._v(" "),r("show-error",{attrs:{"form-name":e.returnForm,"prop-name":"instrument_number"}})],1)]):e._e(),e._v(" "),e.getPaymentMethodDetail("instrument_date")?r("div",{staticClass:"col-12 col-sm-4"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[e._v(e._s(e.trans("finance.instrument_date")))]),e._v(" "),r("datepicker",{attrs:{bootstrapStyling:!0,placeholder:e.trans("finance.instrument_date")},on:{selected:function(t){return e.returnForm.errors.clear("instrument_date")}},model:{value:e.returnForm.instrument_date,callback:function(t){e.$set(e.returnForm,"instrument_date",t)},expression:"returnForm.instrument_date"}}),e._v(" "),r("show-error",{attrs:{"form-name":e.returnForm,"prop-name":"instrument_date"}})],1)]):e._e(),e._v(" "),e.getPaymentMethodDetail("instrument_bank_detail")?r("div",{staticClass:"col-12 col-sm-4"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[e._v(e._s(e.trans("finance.instrument_bank_detail")))]),e._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:e.returnForm.instrument_bank_detail,expression:"returnForm.instrument_bank_detail"}],staticClass:"form-control",attrs:{type:"text",name:"instrument_bank_detail",placeholder:e.trans("finance.instrument_bank_detail")},domProps:{value:e.returnForm.instrument_bank_detail},on:{input:function(t){t.target.composing||e.$set(e.returnForm,"instrument_bank_detail",t.target.value)}}}),e._v(" "),r("show-error",{attrs:{"form-name":e.returnForm,"prop-name":"instrument_bank_detail"}})],1)]):e._e(),e._v(" "),e.getPaymentMethodDetail("instrument_clearing_date")?r("div",{staticClass:"col-12 col-sm-4"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[e._v(e._s(e.trans("finance.instrument_clearing_date")))]),e._v(" "),r("datepicker",{attrs:{bootstrapStyling:!0,placeholder:e.trans("finance.instrument_clearing_date")},on:{selected:function(t){return e.returnForm.errors.clear("instrument_clearing_date")}},model:{value:e.returnForm.instrument_clearing_date,callback:function(t){e.$set(e.returnForm,"instrument_clearing_date",t)},expression:"returnForm.instrument_clearing_date"}}),e._v(" "),r("show-error",{attrs:{"form-name":e.returnForm,"prop-name":"instrument_clearing_date"}})],1)]):e._e(),e._v(" "),e.getPaymentMethodDetail("reference_number")?r("div",{staticClass:"col-12 col-sm-4"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[e._v(e._s(e.trans("finance.reference_number")))]),e._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:e.returnForm.reference_number,expression:"returnForm.reference_number"}],staticClass:"form-control",attrs:{type:"text",name:"reference_number",placeholder:e.trans("finance.reference_number")},domProps:{value:e.returnForm.reference_number},on:{input:function(t){t.target.composing||e.$set(e.returnForm,"reference_number",t.target.value)}}}),e._v(" "),r("show-error",{attrs:{"form-name":e.returnForm,"prop-name":"reference_number"}})],1)]):e._e()])]:e._e(),e._v(" "),r("div",{staticClass:"form-group"},[r("button",{directives:[{name:"confirm",rawName:"v-confirm",value:{ok:e.confirmReturn()},expression:"{ok: confirmReturn()}"}],key:"return-action",staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"button"}},[e._v(e._s(e.trans("general.save")))])])],2)]:e._e()],2)])])])])]):e._e()}),[],!1,null,null,null);t.default=_.exports}}]);
//# sourceMappingURL=show.js.map?id=a03abb9685a5581c79dd