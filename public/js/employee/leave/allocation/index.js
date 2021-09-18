(window.webpackJsonp=window.webpackJsonp||[]).push([[173],{Kppp:function(e,t,a){"use strict";var o={components:{},props:["uuid"],data:function(){return{leaveAllocationForm:new Form({employee_id:"",start_date:"",end_date:"",description:"",leave_types:[]}),employees:[],employee:{},leave_types:[],selected_employee:null}},mounted:function(){this.getPreRequisite()},methods:{getEmployeeNameWithCode:function(e){return helper.getEmployeeNameWithCode(e)},getEmployeeDesignationOnDate:function(e,t){return helper.getEmployeeDesignationOnDate(e,t)},populateLeaveTypes:function(){var e=this;this.leaveAllocationForm.leave_types=[],this.leave_types.forEach((function(t){e.leaveAllocationForm.leave_types.push({name:t.name,id:t.id,allotted:""})}))},getPreRequisite:function(){var e=this,t=this.$loading.show();axios.get("/api/employee/leave/allocation/pre-requisite").then((function(a){t.hide(),e.employees=a.employees,e.leave_types=a.leave_types,e.populateLeaveTypes(),e.uuid&&e.get()})).catch((function(e){t.hide(),helper.showErrorMsg(e)}))},getLeaveTypeName:function(e){return e+"_leave_type"},proceed:function(){this.uuid?this.update():this.store()},store:function(){var e=this,t=this.$loading.show();this.leaveAllocationForm.post("/api/employee/leave/allocation").then((function(a){toastr.success(a.message),t.hide(),e.selected_employee=null,e.populateLeaveTypes(),e.$emit("completed")})).catch((function(e){t.hide(),helper.showErrorMsg(e)}))},get:function(){var e=this,t=this.$loading.show();axios.get("/api/employee/leave/allocation/"+this.uuid).then((function(a){var o=a.leave_allocation;e.leaveAllocationForm.employee_id=o.employee_id,e.selected_employee=a.selected_employee,e.employee=o.employee,e.leaveAllocationForm.description=o.description,e.leaveAllocationForm.start_date=o.start_date,e.leaveAllocationForm.end_date=o.end_date,e.leaveAllocationForm.leave_types.forEach((function(e){var t=o.leave_allocation_details.find((function(t){return t.employee_leave_type_id==e.id}));e.allotted=void 0!==t?t.allotted:""})),t.hide()})).catch((function(a){t.hide(),helper.showErrorMsg(a),e.$router.push("/employee/leave/allocation")}))},update:function(){var e=this,t=this.$loading.show();this.leaveAllocationForm.patch("/api/employee/leave/allocation/"+this.uuid).then((function(a){toastr.success(a.message),t.hide(),e.$router.push("/employee/leave/allocation")})).catch((function(e){t.hide(),helper.showErrorMsg(e)}))},onEmployeeSelect:function(e){this.leaveAllocationForm.employee_id=e.id}}},l=a("KHd+"),n=Object(l.a)(o,(function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",[a("form",{on:{submit:function(t){return t.preventDefault(),e.proceed(t)},keydown:function(t){return e.leaveAllocationForm.errors.clear(t.target.name)}}},[a("div",{staticClass:"row"},[e.uuid?a("div",{staticClass:"col-12 col-sm-4"},[a("p",{staticClass:"m-t-20"},[e._v("\n                        "+e._s(e.getEmployeeNameWithCode(e.employee))+" "),a("br"),e._v("\n                        "+e._s(e.getEmployeeDesignationOnDate(e.employee,e.leaveAllocationForm.end_date))+" "),a("br")])]):a("div",{staticClass:"col-12 col-sm-4"},[a("div",{staticClass:"form-group"},[a("label",{attrs:{for:""}},[e._v(e._s(e.trans("employee.employee")))]),e._v(" "),a("v-select",{attrs:{label:"name",name:"employee_id",id:"employee_id",options:e.employees,placeholder:e.trans("employee.select_employee")},on:{select:e.onEmployeeSelect,close:function(t){return e.leaveAllocationForm.errors.clear("employee_id")},remove:function(t){e.leaveAllocationForm.employee_id=""}},model:{value:e.selected_employee,callback:function(t){e.selected_employee=t},expression:"selected_employee"}},[e.employees.length?e._e():a("div",{staticClass:"multiselect__option",attrs:{slot:"afterList"},slot:"afterList"},[e._v("\n                                "+e._s(e.trans("general.no_option_found"))+"\n                            ")])]),e._v(" "),a("show-error",{attrs:{"form-name":e.leaveAllocationForm,"prop-name":"employee_id"}})],1)]),e._v(" "),a("div",{staticClass:"col-12 col-sm-4"},[a("div",{staticClass:"form-group"},[a("label",{attrs:{for:""}},[e._v(e._s(e.trans("employee.leave_allocation_start_date")))]),e._v(" "),a("datepicker",{attrs:{bootstrapStyling:!0,placeholder:e.trans("employee.leave_allocation_start_date")},on:{selected:function(t){return e.leaveAllocationForm.errors.clear("start_date")}},model:{value:e.leaveAllocationForm.start_date,callback:function(t){e.$set(e.leaveAllocationForm,"start_date",t)},expression:"leaveAllocationForm.start_date"}}),e._v(" "),a("show-error",{attrs:{"form-name":e.leaveAllocationForm,"prop-name":"start_date"}})],1)]),e._v(" "),a("div",{staticClass:"col-12 col-sm-4"},[a("div",{staticClass:"form-group"},[a("label",{attrs:{for:""}},[e._v(e._s(e.trans("employee.leave_allocation_end_date")))]),e._v(" "),a("datepicker",{attrs:{bootstrapStyling:!0,placeholder:e.trans("employee.leave_allocation_end_date")},on:{selected:function(t){return e.leaveAllocationForm.errors.clear("end_date")}},model:{value:e.leaveAllocationForm.end_date,callback:function(t){e.$set(e.leaveAllocationForm,"end_date",t)},expression:"leaveAllocationForm.end_date"}}),e._v(" "),a("show-error",{attrs:{"form-name":e.leaveAllocationForm,"prop-name":"end_date"}})],1)])]),e._v(" "),a("div",{staticClass:"row"},e._l(e.leaveAllocationForm.leave_types,(function(t,o){return a("div",{staticClass:"col-12 col-sm-4"},[a("div",{staticClass:"form-group"},[a("label",{attrs:{for:""}},[e._v(e._s(t.name))]),e._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.allotted,expression:"leave_type.allotted"}],staticClass:"form-control",attrs:{type:"text",name:e.getLeaveTypeName(o),placeholder:e.trans("employee.leave_allotted")},domProps:{value:t.allotted},on:{input:function(a){a.target.composing||e.$set(t,"allotted",a.target.value)}}}),e._v(" "),a("show-error",{attrs:{"form-name":e.leaveAllocationForm,"prop-name":e.getLeaveTypeName(o)}})],1)])})),0),e._v(" "),a("div",{staticClass:"row"},[a("div",{staticClass:"col-12"},[a("div",{staticClass:"form-group"},[a("label",{attrs:{for:""}},[e._v(e._s(e.trans("employee.leave_allocation_description")))]),e._v(" "),a("autosize-textarea",{attrs:{rows:"1",name:"description",placeholder:e.trans("employee.leave_allocation_description")},model:{value:e.leaveAllocationForm.description,callback:function(t){e.$set(e.leaveAllocationForm,"description",t)},expression:"leaveAllocationForm.description"}}),e._v(" "),a("show-error",{attrs:{"form-name":e.leaveAllocationForm,"prop-name":"description"}})],1)])]),e._v(" "),a("div",{staticClass:"card-footer text-right"},[a("router-link",{directives:[{name:"show",rawName:"v-show",value:e.uuid,expression:"uuid"}],staticClass:"btn btn-danger waves-effect waves-light ",attrs:{to:"/employee/leave/allocation"}},[e._v(e._s(e.trans("general.cancel")))]),e._v(" "),a("button",{staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"submit"}},[e._v(e._s(e.trans("general.save")))])],1)])])}),[],!1,null,null,null);t.a=n.exports},L8ai:function(e,t,a){"use strict";a.r(t);var o={components:{leaveAllocationForm:a("Kppp").a},data:function(){return{leave_allocations:{total:0,data:[]},filter:{sort_by:"start_date",order:"desc",employee_id:[],page_length:helper.getConfig("page_length")},orderByOptions:[{value:"start_date",translation:i18n.employee.leave_allocation_start_date},{value:"end_date",translation:i18n.employee.leave_allocation_end_date}],employees:[],selected_employees:null,showFilterPanel:!1,showCreatePanel:!1,help_topic:""}},mounted:function(){helper.hasPermission("manage-leave-allocation")||(helper.notAccessibleMsg(),this.$router.push("/dashboard")),this.getLeaveAllocations()},methods:{hasPermission:function(e){return helper.hasPermission(e)},getEmployeeName:function(e){return helper.getEmployeeName(e)},getEmployeeCode:function(e){return helper.getEmployeeCode(e)},getEmployeeDesignationOnDate:function(e,t){return helper.getEmployeeDesignationOnDate(e,t)},getLeaveAllocations:function(e){var t=this,a=this.$loading.show();"number"!=typeof e&&(e=1);var o=helper.getFilterURL(this.filter);axios.get("/api/employee/leave/allocation?page="+e+o).then((function(e){t.leave_allocations=e.leave_allocations,t.employees=e.filters.employees,t.leave_types=e.filters.leave_types,a.hide()})).catch((function(e){a.hide(),helper.showErrorMsg(e)}))},editLeaveAllocation:function(e){this.$router.push("/employee/leave/allocation/"+e.uuid+"/edit")},confirmDelete:function(e){var t=this;return function(a){return t.deleteLeaveAllocation(e)}},deleteLeaveAllocation:function(e){var t=this,a=this.$loading.show();axios.delete("/api/employee/leave/allocation/"+e.uuid).then((function(e){toastr.success(e.message),t.getLeaveAllocations(),a.hide()})).catch((function(e){a.hide(),helper.showErrorMsg(e)}))},getConfig:function(e){return helper.getConfig(e)},print:function(){var e=this.$loading.show();axios.post("/api/employee/leave/allocation/print",{filter:this.filter}).then((function(t){var a=window.open("/print");e.hide(),a.document.write(t)})).catch((function(t){e.hide(),helper.showErrorMsg(t)}))},pdf:function(){var e=this,t=this.$loading.show();axios.post("/api/employee/leave/allocation/pdf",{filter:this.filter}).then((function(a){t.hide(),window.open("/download/report/"+a+"?token="+e.authToken)})).catch((function(e){t.hide(),helper.showErrorMsg(e)}))},onEmployeeSelect:function(e){this.filter.employee_id.push(e.id)},onEmployeeRemove:function(e){this.filter.employee_id.splice(this.filter.employee_id.indexOf(e.id),1)}},filters:{moment:function(e){return helper.formatDate(e)},momentDateTime:function(e){return helper.formatDateTime(e)}},watch:{"filter.sort_by":function(e){this.getLeaveAllocations()},"filter.order":function(e){this.getLeaveAllocations()},"filter.page_length":function(e){this.getLeaveAllocations()}},computed:{authToken:function(){return helper.getAuthToken()}}},l=a("KHd+"),n=Object(l.a)(o,(function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",[a("div",{staticClass:"page-titles"},[a("div",{staticClass:"row"},[a("div",{staticClass:"col-12 col-sm-6"},[a("h3",{staticClass:"text-themecolor"},[e._v(e._s(e.trans("employee.leave_allocation"))+" \n                    "),e.leave_allocations.total?a("span",{staticClass:"card-subtitle d-none d-sm-inline"},[e._v(e._s(e.trans("general.total_result_found",{count:e.leave_allocations.total,from:e.leave_allocations.from,to:e.leave_allocations.to})))]):a("span",{staticClass:"card-subtitle d-none d-sm-inline"},[e._v(e._s(e.trans("general.no_result_found")))])])]),e._v(" "),a("div",{staticClass:"col-12 col-sm-6"},[a("div",{staticClass:"action-buttons pull-right"},[e.leave_allocations.total&&!e.showCreatePanel?a("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:e.trans("general.add_new"),expression:"trans('general.add_new')"}],staticClass:"btn btn-info btn-sm",on:{click:function(t){e.showCreatePanel=!e.showCreatePanel}}},[a("i",{staticClass:"fas fa-plus"}),e._v(" "),a("span",{staticClass:"d-none d-sm-inline"},[e._v(e._s(e.trans("employee.add_new_leave_allocation")))])]):e._e(),e._v(" "),e.showFilterPanel?e._e():a("button",{staticClass:"btn btn-info btn-sm",on:{click:function(t){e.showFilterPanel=!e.showFilterPanel}}},[a("i",{staticClass:"fas fa-filter"}),e._v(" "),a("span",{staticClass:"d-none d-sm-inline"},[e._v(e._s(e.trans("general.filter")))])]),e._v(" "),a("sort-by",{attrs:{"order-by-options":e.orderByOptions,"sort-by":e.filter.sort_by,order:e.filter.order},on:{updateSortBy:function(t){e.filter.sort_by=t},updateOrder:function(t){e.filter.order=t}}}),e._v(" "),a("div",{staticClass:"btn-group"},[a("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:e.trans("general.more_option"),expression:"trans('general.more_option')"}],staticClass:"btn btn-info btn-sm dropdown-toggle no-caret ",attrs:{type:"button",role:"menu",id:"moreOption","data-toggle":"dropdown","aria-haspopup":"true","aria-expanded":"false"}},[a("i",{staticClass:"fas fa-ellipsis-h"}),e._v(" "),a("span",{staticClass:"d-none d-sm-inline"})]),e._v(" "),a("div",{class:["dropdown-menu","ltr"==e.getConfig("direction")?"dropdown-menu-right":""],attrs:{"aria-labelledby":"moreOption"}},[a("button",{staticClass:"dropdown-item custom-dropdown",on:{click:e.print}},[a("i",{staticClass:"fas fa-print"}),e._v(" "+e._s(e.trans("general.print")))]),e._v(" "),a("button",{staticClass:"dropdown-item custom-dropdown",on:{click:e.pdf}},[a("i",{staticClass:"fas fa-file-pdf"}),e._v(" "+e._s(e.trans("general.generate_pdf")))])])]),e._v(" "),a("help-button",{on:{clicked:function(t){e.help_topic="employee.leave.allocation"}}})],1)])])]),e._v(" "),a("div",{staticClass:"container-fluid"},[a("transition",{attrs:{name:"fade"}},[e.showFilterPanel?a("div",{staticClass:"card card-form"},[a("div",{staticClass:"card-body"},[a("h4",{staticClass:"card-title"},[e._v(e._s(e.trans("general.filter")))]),e._v(" "),a("div",{staticClass:"row"},[a("div",{staticClass:"col-12 col-sm-3"},[a("div",{staticClass:"form-group"},[a("label",{attrs:{for:""}},[e._v(e._s(e.trans("employee.employee")))]),e._v(" "),a("v-select",{attrs:{label:"name","track-by":"id",name:"employee_id",id:"employee_id",options:e.employees,placeholder:e.trans("employee.select_employee"),multiple:!0,"close-on-select":!1,"clear-on-select":!1,"hide-selected":!0,selected:e.selected_employees},on:{select:e.onEmployeeSelect,remove:e.onEmployeeRemove},model:{value:e.selected_employees,callback:function(t){e.selected_employees=t},expression:"selected_employees"}},[e.employees.length?e._e():a("div",{staticClass:"multiselect__option",attrs:{slot:"afterList"},slot:"afterList"},[e._v("\n                                        "+e._s(e.trans("general.no_option_found"))+"\n                                    ")])])],1)])]),e._v(" "),a("div",{staticClass:"card-footer text-right"},[a("button",{staticClass:"btn btn-danger",attrs:{type:"button"},on:{click:function(t){e.showFilterPanel=!1}}},[e._v(e._s(e.trans("general.cancel")))]),e._v(" "),a("button",{staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"button"},on:{click:e.getLeaveAllocations}},[e._v(e._s(e.trans("general.filter")))])])])]):e._e()]),e._v(" "),a("transition",{attrs:{name:"fade"}},[e.showCreatePanel?a("div",{staticClass:"card card-form"},[a("div",{staticClass:"card-body"},[a("h4",{staticClass:"card-title"},[e._v(e._s(e.trans("employee.add_new_leave_allocation")))]),e._v(" "),a("leave-allocation-form",{on:{completed:e.getLeaveAllocations,cancel:function(t){e.showCreatePanel=!e.showCreatePanel}}})],1)]):e._e()]),e._v(" "),a("div",{staticClass:"card"},[a("div",{staticClass:"card-body"},[e.leave_allocations.total?a("div",{staticClass:"table-responsive"},[a("table",{staticClass:"table table-sm"},[a("thead",[a("tr",[a("th",[e._v(e._s(e.trans("employee.name")))]),e._v(" "),a("th",[e._v(e._s(e.trans("employee.designation")))]),e._v(" "),a("th",[e._v(e._s(e.trans("employee.leave_allocation_period")))]),e._v(" "),a("th",[e._v("\n                                    "+e._s(e.trans("employee.leave_allotted"))+"\n                                ")]),e._v(" "),a("th",{staticClass:"table-option"},[e._v(e._s(e.trans("general.action")))])])]),e._v(" "),a("tbody",e._l(e.leave_allocations.data,(function(t){return a("tr",[a("td",{domProps:{textContent:e._s(e.getEmployeeName(t.employee)+" ("+e.getEmployeeCode(t.employee)+")")}}),e._v(" "),a("td",{domProps:{textContent:e._s(e.getEmployeeDesignationOnDate(t.employee,t.end_date))}}),e._v(" "),a("td",[e._v(e._s(e._f("moment")(t.start_date))+" "+e._s(e.trans("general.to"))+" "+e._s(e._f("moment")(t.end_date)))]),e._v(" "),a("td",[a("ul",{staticStyle:{"list-style":"none",padding:"0",margin:"0"}},e._l(t.leave_allocation_details,(function(t){return a("li",[e._v(e._s(t.leave_type.name+": "+t.used+"/"+t.allotted))])})),0)]),e._v(" "),a("td",{staticClass:"table-option"},[a("div",{staticClass:"btn-group"},[a("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:e.trans("employee.edit_leave_allocation"),expression:"trans('employee.edit_leave_allocation')"}],staticClass:"btn btn-info btn-sm",on:{click:function(a){return a.preventDefault(),e.editLeaveAllocation(t)}}},[a("i",{staticClass:"fas fa-edit"})]),e._v(" "),a("button",{directives:[{name:"confirm",rawName:"v-confirm",value:{ok:e.confirmDelete(t)},expression:"{ok: confirmDelete(leave_allocation)}"},{name:"tooltip",rawName:"v-tooltip",value:e.trans("employee.delete_leave_allocation"),expression:"trans('employee.delete_leave_allocation')"}],key:t.id,staticClass:"btn btn-danger btn-sm"},[a("i",{staticClass:"fas fa-trash"})])])])])})),0)])]):e._e(),e._v(" "),e.leave_allocations.total?e._e():a("module-info",{attrs:{module:"employee",title:"leave_allocation_module_title",description:"leave_allocation_module_description",icon:"list"}},[a("div",{attrs:{slot:"btn"},slot:"btn"},[e.showCreatePanel?e._e():a("button",{staticClass:"btn btn-info btn-md",on:{click:function(t){e.showCreatePanel=!e.showCreatePanel}}},[a("i",{staticClass:"fas fa-plus"}),e._v(" "+e._s(e.trans("general.add_new")))])])]),e._v(" "),a("pagination-record",{attrs:{"page-length":e.filter.page_length,records:e.leave_allocations},on:{"update:pageLength":function(t){return e.$set(e.filter,"page_length",t)},"update:page-length":function(t){return e.$set(e.filter,"page_length",t)},updateRecords:e.getLeaveAllocations}})],1)])],1),e._v(" "),a("right-panel",{attrs:{topic:e.help_topic}})],1)}),[],!1,null,null,null);t.default=n.exports}}]);
//# sourceMappingURL=index.js.map?id=da6fcfc3eff3a9191f96