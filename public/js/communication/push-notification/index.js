(window.webpackJsonp=window.webpackJsonp||[]).push([[51],{"/29v":function(e,t,s){(e.exports=s("I1BE")(!1)).push([e.i,".topbar .top-navbar .app-search input[data-v-74374d6a] {\n  background: rgba(0, 20, 40, 0.1);\n  color: #f1f2f4;\n  border: 1px solid rgba(0, 20, 40, 0.1);\n  border-radius: 2px;\n  width: 240px;\n}\n.topbar .top-navbar .app-search input[data-v-74374d6a]::-webkit-input-placeholder {\n  color: rgba(255, 255, 255, 0.4);\n}\n.topbar .top-navbar .app-search input[data-v-74374d6a]::-moz-placeholder {\n  color: rgba(255, 255, 255, 0.4);\n}\n.topbar .top-navbar .app-search input[data-v-74374d6a]:-ms-input-placeholder {\n  color: rgba(255, 255, 255, 0.4);\n}\n.topbar .top-navbar .app-search input[data-v-74374d6a]::-ms-input-placeholder {\n  color: rgba(255, 255, 255, 0.4);\n}\n.topbar .top-navbar .app-search input[data-v-74374d6a]::placeholder {\n  color: rgba(255, 255, 255, 0.4);\n}\n.topbar .top-navbar .app-search input[data-v-74374d6a]:focus {\n  background: rgba(0, 20, 40, 0.2);\n  color: #ffffff;\n  border: 1px solid rgba(0, 20, 40, 0.2);\n}\nul.autocomplete-results[data-v-74374d6a] {\n  padding: 0;\n  margin: 0;\n  max-height: 350px;\n  overflow: auto;\n  position: absolute;\n  width: 100%;\n  background: #ffffff;\n  border: 1px solid #d1d2d5;\n  border-top: none;\n  box-shadow: 0 2px 10px rgba(0, 20, 40, 0.2);\n  border-radius: 0 0 6px 6px;\n  z-index: 999999;\n}\nul.autocomplete-results li.autocomplete-heading[data-v-74374d6a] {\n  font-size: 16px;\n  padding: 8px;\n  letter-spacing: 0.2px;\n  color: rgba(0, 20, 40, 0.4);\n  border-bottom: 1px solid rgba(0, 20, 40, 0.2);\n}\nul.autocomplete-results li.autocomplete-no-result[data-v-74374d6a] {\n  font-size: 12px;\n  padding: 8px;\n  letter-spacing: 0.2px;\n  color: rgba(0, 20, 40, 0.4);\n  border-bottom: 1px solid rgba(0, 20, 40, 0.2);\n}\nul.autocomplete-results > li.autocomplete-result[data-v-74374d6a] {\n  display: flex;\n  list-style: none;\n  text-align: left;\n  width: 100%;\n}\nul.autocomplete-results > li.autocomplete-result .item-info[data-v-74374d6a] {\n  margin: 0;\n  flex-grow: 2;\n  padding: 5px 8px;\n}\nul.autocomplete-results > li.autocomplete-result .item-info .item-heading[data-v-74374d6a] {\n  font-size: 13px;\n  margin-bottom: 0;\n}\nul.autocomplete-results > li.autocomplete-result .item-info .item-meta[data-v-74374d6a] {\n  font-size: 11px;\n}\nul.autocomplete-results > li.autocomplete-result[data-v-74374d6a]:nth-child(even) {\n  background: rgba(210, 215, 220, 0.2);\n}\nul.autocomplete-results > li.autocomplete-result + li.autocomplete-result[data-v-74374d6a] {\n  border-top: 1px solid rgba(0, 20, 40, 0.1);\n}\nul.autocomplete-results > li.autocomplete-result[data-v-74374d6a]:hover {\n  background: rgba(200, 205, 215, 0.5);\n  color: rgba(0, 20, 40, 0.8);\n}\nul.autocomplete-results > li.autocomplete-result:hover .item-heading[data-v-74374d6a], ul.autocomplete-results > li.autocomplete-result:hover .item-meta[data-v-74374d6a] {\n  color: inherit;\n}",""])},Ck6K:function(e,t,s){"use strict";var o={data:function(){return{search:"",student_search_results:[],employee_search_results:[],displayResult:!1,resultLoading:!1,timeout:null}},methods:{searchResult:function(){this.resultLoading=!0,clearTimeout(this.timeout);var e=this;this.timeout=setTimeout((function(){e.search.length<3||axios.get("/api/search?q="+e.search).then((function(t){e.student_search_results=t.student_records,e.employee_search_results=t.employees,e.resultLoading=!1})).catch((function(t){e.resultLoading=!1,helper.showErrorMsg(t)}))}),1e3)},getStudentName:function(e){return helper.getStudentName(e)},getEmployeeName:function(e){return helper.getEmployeeName(e)},getEmployeeDesignationOnDate:function(e){return helper.getEmployeeDesignationOnDate(e)},submitStudent:function(e){this.$emit("searched",{type:"student",id:e.id,key:"student_"+e.id,name:e.student.name,description_1:e.batch.course.name+" "+e.batch.name,description_2:e.student.parent.first_guardian_name,contact_number:e.student.contact_number}),this.displayResult=!1,this.search=""},submitEmployee:function(e){this.$emit("searched",{type:"employee",key:"employee_"+e.id,id:e.id,name:e.name,description_1:this.getEmployeeDesignationOnDate(e),description_2:e.employee_code,contact_number:e.contact_number}),this.displayResult=!1,this.search=""}},watch:{search:function(e){e.length>=3?this.searchResult():(this.student_search_results=[],this.employee_search_results=[])}}},a=(s("WrBh"),s("KHd+")),n=Object(a.a)(o,(function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"form-group"},[s("input",{directives:[{name:"model",rawName:"v-model",value:e.search,expression:"search"}],staticClass:"form-control",attrs:{type:"text",placeholder:"Search Student or Employee"},domProps:{value:e.search},on:{keydown:function(t){e.displayResult=!0},focus:function(t){e.displayResult=!0},input:function(t){t.target.composing||(e.search=t.target.value)}}}),e._v(" "),e.displayResult?[e.search.length?s("ul",{staticClass:"autocomplete-results"},[e.search.length&&e.search.length<3?s("li",{staticClass:"autocomplete-no-result"},[e._v(e._s(e.trans("general.type_min_3_char_for_search_result")))]):e.search.length>=3&&e.resultLoading?s("li",{staticClass:"autocomplete-no-result"},[e._v(e._s(e.trans("general.loading_progress")))]):e.search.length>=3&&!e.student_search_results.length&&!e.employee_search_results.length&&e.search.length&&!e.resultLoading?s("li",{staticClass:"autocomplete-no-result"},[e._v(e._s(e.trans("general.no_result_found")))]):e._e(),e._v(" "),e.student_search_results.length?[s("li",{staticClass:"autocomplete-heading"},[e._v(e._s(e.trans("student.student")))]),e._v(" "),e._l(e.student_search_results,(function(t){return s("li",{staticClass:"autocomplete-result pointer"},[s("div",{staticClass:"item-info",on:{click:function(s){return e.submitStudent(t)}}},[s("h5",{staticClass:"item-heading"},[e._v(e._s(e.getStudentName(t.student)))]),e._v(" "),s("div",{staticClass:"item-meta"},[s("span",{staticClass:"father-name"},[e._v(e._s(t.student.parent.first_guardian_name))]),e._v(" "),s("span",{staticClass:"contact"},[e._v(" / "+e._s(t.student.contact_number))])]),e._v(" "),s("div",{staticClass:"item-meta"},[s("span",{staticClass:"course-batch"},[e._v(e._s(t.batch.course.name+" "+t.batch.name))])])])])}))]:e._e(),e._v(" "),e.employee_search_results.length?[s("li",{staticClass:"autocomplete-heading"},[e._v(e._s(e.trans("employee.employee")))]),e._v(" "),e._l(e.employee_search_results,(function(t){return s("li",{staticClass:"autocomplete-result pointer"},[s("div",{staticClass:"item-info",on:{click:function(s){return e.submitEmployee(t)}}},[s("h5",{staticClass:"item-heading"},[e._v(e._s(e.getEmployeeName(t)))]),e._v(" "),s("div",{staticClass:"item-meta"},[s("span",{staticClass:"contact"},[e._v(" / "+e._s(t.contact_number))])]),e._v(" "),s("div",{staticClass:"item-meta"},[s("span",{staticClass:"course-batch"},[e._v(e._s(e.getEmployeeDesignationOnDate(t)))])])])])}))]:e._e()],2):e._e()]:e._e()],2)}),[],!1,null,"74374d6a",null);t.a=n.exports},D1uv:function(e,t,s){var o=s("/29v");"string"==typeof o&&(o=[[e.i,o,""]]);var a={hmr:!0,transform:void 0,insertInto:void 0};s("aET+")(o,a);o.locals&&(e.exports=o.locals)},Fo8R:function(e,t,s){"use strict";s.r(t);var o={components:{userSearch:s("Ck6K").a},data:function(){return{sendPushNotificationForm:new Form({type:"push_notification",audience:null,title:"",body:"",send_to_admin:0,course_id:[],batch_id:[],employee_category_id:[],department_id:[],individual_students:[],individual_employees:[]}),audiences:[],courses:[],batches:[],employee_categories:[],departments:[],selected_courses:null,selected_batches:null,selected_departments:null,selected_employee_categories:null,searchResults:[]}},mounted:function(){helper.hasPermission("send-push-notification")||(helper.notAccessibleMsg(),this.$router.push("/dashboard")),this.getPreRequisite(),helper.showDemoNotification(["push-notification"])},methods:{getConfig:function(e){return helper.getConfig(e)},hasPermission:function(e){return helper.hasPermission(e)},getPreRequisite:function(){var e=this,t=this.$loading.show();axios.get("/api/communication/pre-requisite").then((function(s){e.employee_categories=s.employee_categories,e.departments=s.departments,e.courses=s.courses,e.batches=s.batches,e.audiences=s.audiences,t.hide()})).catch((function(e){t.hide(),helper.showErrorMsg(e)}))},submit:function(){var e=this,t=this.$loading.show();this.searchResults.forEach((function(t){"student"===t.type?e.sendPushNotificationForm.individual_students.push(t.id):e.sendPushNotificationForm.individual_employees.push(t.id)})),this.sendPushNotificationForm.post("/api/push-notification").then((function(s){toastr.success(s.message),e.sendPushNotificationForm.type="push_notification",e.sendPushNotificationForm.audience=null,e.sendPushNotificationForm.course_id=[],e.sendPushNotificationForm.batch_id=[],e.sendPushNotificationForm.department_id=[],e.sendPushNotificationForm.employee_category_id=[],e.sendPushNotificationForm.individual_students=[],e.sendPushNotificationForm.individual_employees=[],e.searchResults=[],e.selected_courses=null,e.selected_batches=null,e.selected_departments=null,e.selected_employee_categories=null,t.hide()})).catch((function(e){t.hide(),helper.showErrorMsg(e)}))},onCourseSelect:function(e){this.sendPushNotificationForm.errors.clear("course_id"),this.sendPushNotificationForm.course_id.push(e.id)},onCourseRemove:function(e){this.sendPushNotificationForm.course_id.splice(this.sendPushNotificationForm.course_id.indexOf(e.id),1)},onBatchSelect:function(e){this.sendPushNotificationForm.errors.clear("batch_id"),this.sendPushNotificationForm.batch_id.push(e.id)},onBatchRemove:function(e){this.sendPushNotificationForm.batch_id.splice(this.sendPushNotificationForm.batch_id.indexOf(e.id),1)},onDepartmentSelect:function(e){this.sendPushNotificationForm.errors.clear("department_id"),this.sendPushNotificationForm.department_id.push(e.id)},onDepartmentRemove:function(e){this.sendPushNotificationForm.department_id.splice(this.sendPushNotificationForm.department_id.indexOf(e.id),1)},onEmployeeCategorySelect:function(e){this.sendPushNotificationForm.errors.clear("employee_category_id"),this.sendPushNotificationForm.employee_category_id.push(e.id)},onEmployeeCategoryRemove:function(e){this.sendPushNotificationForm.employee_category_id.splice(this.sendPushNotificationForm.employee_category_id.indexOf(e.id),1)},addToSearchResult:function(e){this.searchResults.findIndex((function(t){return t.type===e.type&&t.id===e.id}))<0&&this.searchResults.push(e)},deleteResult:function(e){var t=this.searchResults.findIndex((function(t){return t.type===e.type&&t.id===e.id}));this.searchResults.splice(t,1)}},filters:{moment:function(e){return helper.formatDate(e)},momentDateTime:function(e){return helper.formatDateTime(e)}},watch:{},computed:{authToken:function(){return helper.getAuthToken()},characterCount:function(){return this.sendPushNotificationForm.body.length}}},a=s("KHd+"),n=Object(a.a)(o,(function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",[s("div",{staticClass:"page-titles"},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-12 col-sm-6"},[s("h3",{staticClass:"text-themecolor"},[e._v(e._s(e.trans("communication.push_notification")))])]),e._v(" "),s("div",{staticClass:"col-12 col-sm-6"},[s("div",{staticClass:"action-buttons pull-right"},[s("router-link",{staticClass:"btn btn-info btn-sm",attrs:{to:"/communication"}},[s("i",{staticClass:"fas fa-list"}),e._v(" "),s("span",{staticClass:"d-none d-sm-inline"},[e._v(e._s(e.trans("communication.history")))])])],1)])])]),e._v(" "),s("div",{staticClass:"container-fluid"},[s("div",{staticClass:"card card-form"},[s("div",{staticClass:"card-body"},[s("h4",{staticClass:"card-title"},[e._v(e._s(e.trans("communication.send_push_notification")))]),e._v(" "),s("form",{on:{submit:function(t){return t.preventDefault(),e.submit(t)},keydown:function(t){return e.sendPushNotificationForm.errors.clear(t.target.name)}}},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-12"},[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:""}},[e._v(e._s(e.trans("communication.title")))]),e._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:e.sendPushNotificationForm.title,expression:"sendPushNotificationForm.title"}],staticClass:"form-control",attrs:{type:"text",name:"title",placeholder:e.trans("communication.title")},domProps:{value:e.sendPushNotificationForm.title},on:{input:function(t){t.target.composing||e.$set(e.sendPushNotificationForm,"title",t.target.value)}}}),e._v(" "),s("show-error",{attrs:{"form-name":e.sendPushNotificationForm,"prop-name":"title"}})],1)]),e._v(" "),s("div",{staticClass:"col-12 col-sm-6"},[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:""}},[e._v(e._s(e.trans("communication.audience")))]),e._v(" "),s("select",{directives:[{name:"model",rawName:"v-model",value:e.sendPushNotificationForm.audience,expression:"sendPushNotificationForm.audience"}],staticClass:"custom-select col-12",attrs:{name:"audience"},on:{change:[function(t){var s=Array.prototype.filter.call(t.target.options,(function(e){return e.selected})).map((function(e){return"_value"in e?e._value:e.value}));e.$set(e.sendPushNotificationForm,"audience",t.target.multiple?s:s[0])},function(t){return e.sendPushNotificationForm.errors.clear("audience")}]}},[s("option",{attrs:{value:"null",selected:""}},[e._v(e._s(e.trans("general.select_one")))]),e._v(" "),e._l(e.audiences,(function(t){return s("option",{domProps:{value:t.value}},[e._v("\n                                    "+e._s(t.text)+"\n                                  ")])}))],2),e._v(" "),s("show-error",{attrs:{"form-name":e.sendPushNotificationForm,"prop-name":"audience"}})],1),e._v(" "),"selected_course"==e.sendPushNotificationForm.audience?[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:""}},[e._v(e._s(e.trans("academic.course")))]),e._v(" "),s("v-select",{attrs:{label:"name","track-by":"id","group-values":"courses","group-label":"course_group","group-select":!1,name:"course_id",id:"course_id",options:e.courses,placeholder:e.trans("academic.select_course"),multiple:!0,"close-on-select":!1,"clear-on-select":!1,"hide-selected":!0,selected:e.selected_courses},on:{select:e.onCourseSelect,remove:e.onCourseRemove},model:{value:e.selected_courses,callback:function(t){e.selected_courses=t},expression:"selected_courses"}},[e.courses.length?e._e():s("div",{staticClass:"multiselect__option",attrs:{slot:"afterList"},slot:"afterList"},[e._v("\n                                            "+e._s(e.trans("general.no_option_found"))+"\n                                        ")])]),e._v(" "),s("show-error",{attrs:{"form-name":e.sendPushNotificationForm,"prop-name":"course_id"}})],1)]:e._e(),e._v(" "),"selected_batch"==e.sendPushNotificationForm.audience?[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:""}},[e._v(e._s(e.trans("academic.batch")))]),e._v(" "),s("v-select",{attrs:{label:"name","track-by":"id","group-values":"batches","group-label":"course_group","group-select":!1,name:"batch_id",id:"batch_id",options:e.batches,placeholder:e.trans("academic.select_batch"),multiple:!0,"close-on-select":!1,"clear-on-select":!1,"hide-selected":!0,selected:e.selected_batches},on:{select:e.onBatchSelect,remove:e.onBatchRemove},model:{value:e.selected_batches,callback:function(t){e.selected_batches=t},expression:"selected_batches"}},[e.batches.length?e._e():s("div",{staticClass:"multiselect__option",attrs:{slot:"afterList"},slot:"afterList"},[e._v("\n                                            "+e._s(e.trans("general.no_option_found"))+"\n                                        ")])]),e._v(" "),s("show-error",{attrs:{"form-name":e.sendPushNotificationForm,"prop-name":"batch_id"}})],1)]:e._e(),e._v(" "),"selected_department"==e.sendPushNotificationForm.audience?[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:""}},[e._v(e._s(e.trans("employee.department")))]),e._v(" "),s("v-select",{attrs:{label:"name","track-by":"id",name:"department_id",id:"department_id",options:e.departments,placeholder:e.trans("employee.select_department"),multiple:!0,"close-on-select":!1,"clear-on-select":!1,"hide-selected":!0,selected:e.selected_departments},on:{select:e.onDepartmentSelect,remove:e.onDepartmentRemove},model:{value:e.selected_departments,callback:function(t){e.selected_departments=t},expression:"selected_departments"}},[e.departments.length?e._e():s("div",{staticClass:"multiselect__option",attrs:{slot:"afterList"},slot:"afterList"},[e._v("\n                                            "+e._s(e.trans("general.no_option_found"))+"\n                                        ")])]),e._v(" "),s("show-error",{attrs:{"form-name":e.sendPushNotificationForm,"prop-name":"department_id"}})],1)]:e._e(),e._v(" "),"selected_employee_category"==e.sendPushNotificationForm.audience?[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:""}},[e._v(e._s(e.trans("employee.category")))]),e._v(" "),s("v-select",{attrs:{label:"name","track-by":"id",name:"employee_category_id",id:"employee_category_id",options:e.employee_categories,placeholder:e.trans("employee.select_category"),multiple:!0,"close-on-select":!1,"clear-on-select":!1,"hide-selected":!0,selected:e.selected_employee_categories},on:{select:e.onEmployeeCategorySelect,remove:e.onEmployeeCategoryRemove},model:{value:e.selected_employee_categories,callback:function(t){e.selected_employee_categories=t},expression:"selected_employee_categories"}},[e.employee_categories.length?e._e():s("div",{staticClass:"multiselect__option",attrs:{slot:"afterList"},slot:"afterList"},[e._v("\n                                            "+e._s(e.trans("general.no_option_found"))+"\n                                        ")])]),e._v(" "),s("show-error",{attrs:{"form-name":e.sendPushNotificationForm,"prop-name":"employee_category_id"}})],1)]:e._e(),e._v(" "),s("user-search",{on:{searched:e.addToSearchResult}}),e._v(" "),s("div",{staticClass:"form-group"},[s("ul",{staticClass:"font-80pc"},e._l(e.searchResults,(function(t){return s("li",{key:t.key},[e._v("\n                                        "+e._s(t.name+" "+t.description_1)+" "),s("span",{staticClass:"text-right text-danger",on:{click:function(s){return e.deleteResult(t)}}},[s("i",{staticClass:"fas fa-times-circle"})]),e._v(" "),s("span",{staticClass:"d-block"},[e._v(e._s(t.description_2)+" "+e._s(t.contact_number))])])})),0)]),e._v(" "),s("div",{staticClass:"form-group"},[s("label",{staticClass:"custom-control custom-checkbox"},[s("input",{directives:[{name:"model",rawName:"v-model",value:e.sendPushNotificationForm.send_to_admin,expression:"sendPushNotificationForm.send_to_admin"}],staticClass:"custom-control-input",attrs:{type:"checkbox",value:"1"},domProps:{checked:Array.isArray(e.sendPushNotificationForm.send_to_admin)?e._i(e.sendPushNotificationForm.send_to_admin,"1")>-1:e.sendPushNotificationForm.send_to_admin},on:{change:function(t){var s=e.sendPushNotificationForm.send_to_admin,o=t.target,a=!!o.checked;if(Array.isArray(s)){var n=e._i(s,"1");o.checked?n<0&&e.$set(e.sendPushNotificationForm,"send_to_admin",s.concat(["1"])):n>-1&&e.$set(e.sendPushNotificationForm,"send_to_admin",s.slice(0,n).concat(s.slice(n+1)))}else e.$set(e.sendPushNotificationForm,"send_to_admin",a)}}}),e._v(" "),s("span",{staticClass:"custom-control-label"},[e._v(e._s(e.trans("communication.send_to_admin")))])])])],2),e._v(" "),s("div",{staticClass:"col-12 col-sm-6"},[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:""}},[e._v(e._s(e.trans("communication.body"))+" ("+e._s(e.trans("communication.character_count",{count:e.characterCount}))+") ")]),e._v(" "),s("textarea",{directives:[{name:"model",rawName:"v-model",value:e.sendPushNotificationForm.body,expression:"sendPushNotificationForm.body"}],staticClass:"form-control",attrs:{rows:"4",name:"body",placeholder:e.trans("communication.body")},domProps:{value:e.sendPushNotificationForm.body},on:{input:function(t){t.target.composing||e.$set(e.sendPushNotificationForm,"body",t.target.value)}}}),e._v(" "),s("show-error",{attrs:{"form-name":e.sendPushNotificationForm,"prop-name":"body"}})],1)])]),e._v(" "),s("div",{staticClass:"card-footer text-right"},[s("button",{staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"submit"}},[e._v(e._s(e.trans("general.submit")))])])])])])])])}),[],!1,null,null,null);t.default=n.exports},WrBh:function(e,t,s){"use strict";var o=s("D1uv");s.n(o).a}}]);
//# sourceMappingURL=index.js.map?id=f5f33566f96c967e2a74