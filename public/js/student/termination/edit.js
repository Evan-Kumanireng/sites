(window.webpackJsonp=window.webpackJsonp||[]).push([[346],{BiSZ:function(t,e,r){"use strict";r.r(e);var a={components:{},data:function(){return{student_record:{},uuid:this.$route.params.uuid,record_id:this.$route.params.record_id,transfer_certificate_formats:[],transferCertificateForm:new Form({transfer_certificate_format:"",date_of_application:"",date_of_issue:"",book_number:"",number:"",prefix:"",variables:[],memo:""},!1),selected_transfer_certificate_format:null,numbers:[],working_days:0,attendance:0}},mounted:function(){helper.hasPermission("terminate-student")||(helper.notAccessibleMsg(),this.$router.push("/dashboard")),this.getPreRequisite()},methods:{getPreRequisite:function(){var t=this,e=this.$loading.show();axios.get("/api/student/"+this.uuid+"/transfer-certificate/"+this.record_id).then((function(r){t.student_record=r.student_record,t.transfer_certificate_formats=r.transfer_certificate_formats,t.numbers=r.numbers,t.working_days=r.working_days,t.attendance=r.attendance,t.transferCertificateForm.prefix=helper.getConfig("transfer_certificate_prefix");var a=r.student_record.transfer_certificate;if(a){t.transferCertificateForm.date_of_application=a.date_of_application,t.transferCertificateForm.date_of_issue=a.date_of_issue,t.transferCertificateForm.prefix=a.prefix,t.transferCertificateForm.number=a.number,t.transferCertificateForm.book_number=a.options.hasOwnProperty("book_number")?a.options.book_number:"",t.transferCertificateForm.transfer_certificate_format=a.format;var s=a.format,i=t.transfer_certificate_formats.find((function(t){return t.id==s}));t.selected_transfer_certificate_format=i||null,t.transferCertificateForm.variables=[],t.transferCertificateForm.variables=a.options.transfer_certificate}e.hide()})).catch((function(t){e.hide(),helper.showErrorMsg(t)}))},submit:function(){var t=this.$loading.show();this.transferCertificateForm.post("/api/student/"+this.uuid+"/transfer-certificate/"+this.record_id).then((function(e){toastr.success(e.message),t.hide()})).catch((function(e){t.hide(),helper.showErrorMsg(e)}))},onTransferCertificateFormatSelect:function(t){var e=this;this.transferCertificateForm.transfer_certificate_format=t.id,this.transferCertificateForm.variables=[],t.variables.forEach((function(t){e.transferCertificateForm.variables.push({name:t,value:""})}))},onTransferCertificateFormatRemove:function(){this.transferCertificateForm.transfer_certificate_format="",this.transferCertificateForm.variables=[]},getStudentName:function(t){return helper.getStudentName(t)},getAdmissionNumber:function(t){return helper.getAdmissionNumber(t.admission)}},watch:{"transferCertificateForm.prefix":function(t){var e=this.numbers.find((function(e){return e.prefix==t}));this.transferCertificateForm.number=void 0===e?helper.formatWithPadding(1,helper.getConfig("transfer_certificate_digit")):helper.formatWithPadding(e.number+1,helper.getConfig("transfer_certificate_digit"))}}},s=r("KHd+"),i=Object(s.a)(a,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",[r("div",{staticClass:"page-titles"},[r("div",{staticClass:"row"},[r("div",{staticClass:"col-12 col-sm-6"},[r("h3",{staticClass:"text-themecolor"},[t._v(t._s(t.trans("academic.edit_transfer_certificate"))+"\n                        "),r("button",{staticClass:"btn btn-info btn-sm",on:{click:function(e){return t.$router.push("/student/termination")}}},[r("i",{staticClass:"fas fa-list"}),t._v(" "),r("span",{staticClass:"d-none d-sm-inline"},[t._v(t._s(t.trans("student.termination")))])])])])])]),t._v(" "),r("div",{staticClass:"container-fluid"},[r("div",{staticClass:"card card-form"},[r("form",{on:{submit:function(e){return e.preventDefault(),t.submit(e)},keydown:function(e){return t.transferCertificateForm.errors.clear(e.target.name)}}},[r("div",{staticClass:"card-body p-t-20"},[t.student_record.id?r("div",{staticClass:"row"},[r("div",{staticClass:"col-12 col-sm-3"},[r("p",[t._v(t._s(t.trans("student.name"))+": "),r("strong",[t._v(t._s(t.getStudentName(t.student_record.student)))])])]),t._v(" "),r("div",{staticClass:"col-12 col-sm-3"},[r("p",[t._v(t._s(t.trans("student.admission_number"))+": "),r("strong",[t._v(t._s(t.getAdmissionNumber(t.student_record)))])])]),t._v(" "),r("div",{staticClass:"col-12 col-sm-3"},[r("p",[t._v(t._s(t.trans("academic.batch"))+": "),r("strong",[t._v(t._s(t.student_record.batch.course.name+" "+t.student_record.batch.name))])])]),t._v(" "),r("div",{staticClass:"col-12 col-sm-3"},[r("p",[t._v(t._s(t.trans("student.tc_props.total_working_days"))+": "),r("strong",[t._v(t._s(t.working_days))])])]),t._v(" "),r("div",{staticClass:"col-12 col-sm-3"},[r("p",[t._v(t._s(t.trans("student.tc_props.total_present_days"))+": "),r("strong",[t._v(t._s(t.attendance))])])])]):t._e(),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"col-12 col-sm-3"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[t._v(t._s(t.trans("academic.transfer_certificate_format")))]),t._v(" "),r("v-select",{attrs:{label:"name",name:"transfer_certificate_format",id:"transfer_certificate_format",options:t.transfer_certificate_formats,placeholder:t.trans("academic.select_transfer_certificate_format")},on:{select:t.onTransferCertificateFormatSelect,close:function(e){return t.transferCertificateForm.errors.clear("transfer_certificate_format")},remove:t.onTransferCertificateFormatRemove},model:{value:t.selected_transfer_certificate_format,callback:function(e){t.selected_transfer_certificate_format=e},expression:"selected_transfer_certificate_format"}},[t.transfer_certificate_formats.length?t._e():r("div",{staticClass:"multiselect__option",attrs:{slot:"afterList"},slot:"afterList"},[t._v("\n\t\t\t\t                            "+t._s(t.trans("general.no_option_found"))+"\n\t\t\t\t                        ")])]),t._v(" "),r("show-error",{attrs:{"form-name":t.transferCertificateForm,"prop-name":"transfer_certificate_format"}})],1)]),t._v(" "),r("div",{staticClass:"col-12 col-sm-3"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[t._v(t._s(t.trans("student.date_of_application")))]),t._v(" "),r("datepicker",{attrs:{name:"date_of_application",bootstrapStyling:!0,placeholder:t.trans("student.date_of_application")},on:{selected:function(e){return t.transferCertificateForm.errors.clear("date_of_application")}},model:{value:t.transferCertificateForm.date_of_application,callback:function(e){t.$set(t.transferCertificateForm,"date_of_application",e)},expression:"transferCertificateForm.date_of_application"}}),t._v(" "),r("show-error",{attrs:{"form-name":t.transferCertificateForm,"prop-name":"date_of_application"}})],1)]),t._v(" "),r("div",{staticClass:"col-12 col-sm-3"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[t._v(t._s(t.trans("student.date_of_issue")))]),t._v(" "),r("datepicker",{attrs:{name:"date_of_issue",bootstrapStyling:!0,placeholder:t.trans("student.date_of_issue")},on:{selected:function(e){return t.transferCertificateForm.errors.clear("date_of_issue")}},model:{value:t.transferCertificateForm.date_of_issue,callback:function(e){t.$set(t.transferCertificateForm,"date_of_issue",e)},expression:"transferCertificateForm.date_of_issue"}}),t._v(" "),r("show-error",{attrs:{"form-name":t.transferCertificateForm,"prop-name":"date_of_issue"}})],1)]),t._v(" "),r("div",{staticClass:"col-12 col-sm-3"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[t._v(t._s(t.trans("student.transfer_certificate_book_number")))]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.transferCertificateForm.book_number,expression:"transferCertificateForm.book_number"}],staticClass:"form-control",attrs:{type:"text",name:"book_number",placeholder:t.trans("student.transfer_certificate_book_number")},domProps:{value:t.transferCertificateForm.book_number},on:{input:function(e){e.target.composing||t.$set(t.transferCertificateForm,"book_number",e.target.value)}}}),t._v(" "),r("show-error",{attrs:{"form-name":t.transferCertificateForm,"prop-name":"book_number"}})],1)]),t._v(" "),r("div",{staticClass:"col-12 col-sm-3"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[t._v(t._s(t.trans("student.transfer_certificate_number")))]),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"col-12 col-sm-4"},[r("input",{directives:[{name:"model",rawName:"v-model",value:t.transferCertificateForm.prefix,expression:"transferCertificateForm.prefix"}],staticClass:"form-control",attrs:{type:"text",name:"prefix",placeholder:t.trans("student.transfer_certificate_prefix")},domProps:{value:t.transferCertificateForm.prefix},on:{input:function(e){e.target.composing||t.$set(t.transferCertificateForm,"prefix",e.target.value)}}})]),t._v(" "),r("div",{staticClass:"col-12 col-sm-8"},[r("input",{directives:[{name:"model",rawName:"v-model",value:t.transferCertificateForm.number,expression:"transferCertificateForm.number"}],staticClass:"form-control",attrs:{type:"text",name:"number",placeholder:t.trans("student.transfer_certificate_number")},domProps:{value:t.transferCertificateForm.number},on:{input:function(e){e.target.composing||t.$set(t.transferCertificateForm,"number",e.target.value)}}})])]),t._v(" "),r("show-error",{attrs:{"form-name":t.transferCertificateForm,"prop-name":"number"}})],1)])]),t._v(" "),r("div",{staticClass:"row"},t._l(t.transferCertificateForm.variables,(function(e){return r("div",{key:e.name,staticClass:"col-12"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[t._v(t._s(t.trans("student.tc_props."+e.name)))]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:e.value,expression:"variable.value"}],staticClass:"form-control",attrs:{type:"text",placeholder:t.trans("student.tc_props."+e.name)},domProps:{value:e.value},on:{input:function(r){r.target.composing||t.$set(e,"value",r.target.value)}}})])])})),0),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"col-12"},[r("div",{staticClass:"form-group"},[r("label",{attrs:{for:""}},[t._v(t._s(t.trans("student.transfer_certificate_memo")))]),t._v(" "),r("autosize-textarea",{attrs:{rows:"2",name:"memo",placeholder:t.trans("student.transfer_certificate_memo")},model:{value:t.transferCertificateForm.memo,callback:function(e){t.$set(t.transferCertificateForm,"memo",e)},expression:"transferCertificateForm.memo"}}),t._v(" "),r("show-error",{attrs:{"form-name":t.transferCertificateForm,"prop-name":"memo"}})],1)])])]),t._v(" "),r("div",{staticClass:"card-footer text-right"},[r("router-link",{staticClass:"btn btn-danger waves-effect waves-light",attrs:{to:"/student/termination"}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),r("button",{staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"submit"}},[r("span",[t._v(t._s(t.trans("general.save")))])])],1)])])])])}),[],!1,null,null,null);e.default=i.exports}}]);
//# sourceMappingURL=edit.js.map?id=204c64d497b3247a8114