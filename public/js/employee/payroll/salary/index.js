(window.webpackJsonp=window.webpackJsonp||[]).push([[186],{Fb0w:function(t,e,a){"use strict";a.r(e);var s={components:{},props:["uuid"],mounted:function(){this.uuid&&this.get()},data:function(){return{salary:{}}},methods:{get:function(){var t=this,e=this.$loading.show();axios.get("/api/employee/payroll/salary/"+this.uuid).then((function(a){t.salary=a.salary,e.hide()})).catch((function(t){e.hide(),helper.showErrorMsg(t)}))},formatCurrency:function(t){return helper.formatCurrency(t)},getEmployeeNameWithCode:function(t){return helper.getEmployeeNameWithCode(t)},getEmployeeDesignationOnDate:function(t,e){return helper.getEmployeeDesignationOnDate(t,e)}},computed:{authToken:function(){return helper.getAuthToken()}},filters:{momentDateTime:function(t){return helper.formatDateTime(t)},moment:function(t){return helper.formatDate(t)}}},r=a("KHd+"),l={components:{salaryDetail:Object(r.a)(s,(function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("transition",{attrs:{name:"modal"}},[a("div",{staticClass:"modal-mask"},[a("div",{staticClass:"modal-wrapper"},[a("div",{staticClass:"modal-container modal-lg"},[t.salary.id?a("div",{staticClass:"modal-header"},[t._t("header",[a("span",[t._v(t._s(t.trans("employee.salary_structure")))]),t._v(" "),a("span",{staticClass:"float-right pointer",on:{click:function(e){return t.$emit("close")}}},[t._v("x")])])],2):t._e(),t._v(" "),t.salary.id?a("div",{staticClass:"modal-body"},[t._t("body",[a("p",[t._v(t._s(t.getEmployeeNameWithCode(t.salary.employee)))]),t._v(" "),a("p",{staticClass:"font-80pc"},[t._v(t._s(t.getEmployeeDesignationOnDate(t.salary.employee,t.salary.date_effective)))]),t._v(" "),a("p",[t._v(t._s(t.trans("employee.salary_structure_date_effective"))+": "+t._s(t._f("moment")(t.salary.date_effective)))]),t._v(" "),a("div",{staticClass:"row"},[a("div",{staticClass:"col-6"},[a("div",{staticClass:"table-responsive"},[a("table",{staticClass:"table table-sm"},[a("thead",[a("tr",[a("th",{attrs:{width:"50%"}},[t._v(t._s(t.trans("employee.pay_head_type_earning")))]),t._v(" "),a("th",{staticClass:"text-right",attrs:{width:"50%"}},[t._v(t._s(t.trans("employee.salary_structure_amount")))])])]),t._v(" "),a("tbody",t._l(t.salary.payroll_template.payroll_template_details,(function(e){return"earning"==e.pay_head.type&&"not_applicable"!=e.category?a("tr",[a("td",{staticClass:"text-success"},[t._v("\n                                                    "+t._s(e.pay_head.name)+" ("+t._s(e.pay_head.alias)+")\n                                                ")]),t._v(" "),a("td",{staticClass:"text-right"},[t._v(t._s(t.formatCurrency(e.value)))])]):t._e()})),0)])])]),t._v(" "),a("div",{staticClass:"col-6"},[a("div",{staticClass:"table-responsive"},[a("table",{staticClass:"table table-sm"},[a("thead",[a("tr",[a("th",{attrs:{width:"50%"}},[t._v(t._s(t.trans("employee.pay_head_type_deduction")))]),t._v(" "),a("th",{staticClass:"text-right",attrs:{width:"50%"}},[t._v(t._s(t.trans("employee.salary_structure_amount")))])])]),t._v(" "),a("tbody",t._l(t.salary.payroll_template.payroll_template_details,(function(e){return"deduction"==e.pay_head.type&&"not_applicable"!=e.category?a("tr",[a("td",{staticClass:"text-danger"},[t._v("\n                                                    "+t._s(e.pay_head.name)+" ("+t._s(e.pay_head.alias)+")\n                                                ")]),t._v(" "),a("td",{staticClass:"text-right"},[t._v(t._s(t.formatCurrency(e.value)))])]):t._e()})),0)])])])]),t._v(" "),a("div",{staticClass:"row"},[a("div",{staticClass:"col-6"},[a("div",{staticClass:"table-responsive"},[a("table",{staticClass:"table"},[a("thead",[a("tr",[a("th",{attrs:{width:"50%"}},[t._v(t._s(t.trans("employee.total_earning")))]),t._v(" "),a("th",{staticClass:"text-right",attrs:{width:"50%"}},[t._v(t._s(t.formatCurrency(t.salary.earning)))])]),t._v(" "),a("tr",[a("th",[t._v(t._s(t.trans("employee.net_salary")))]),t._v(" "),a("th",{staticClass:"text-right"},[t._v(t._s(t.formatCurrency(t.salary.net_salary)))])])])])])]),t._v(" "),a("div",{staticClass:"col-6"},[a("div",{staticClass:"table-responsive"},[a("table",{staticClass:"table"},[a("thead",[a("tr",[a("th",{attrs:{width:"50%"}},[t._v(t._s(t.trans("employee.total_deduction")))]),t._v(" "),a("th",{staticClass:"text-right",attrs:{width:"50%"}},[t._v(t._s(t.formatCurrency(t.salary.deduction)))])])])])])])]),t._v(" "),a("div",{staticClass:"m-b-20",domProps:{innerHTML:t._s(t.salary.description)}}),t._v(" "),a("hr"),t._v(" "),a("p",[a("i",{staticClass:"far fa-clock"}),t._v(" "),a("small",[t._v(t._s(t.trans("general.created_at"))+" "+t._s(t._f("momentDateTime")(t.salary.created_at)))]),t._v(" "),a("span",{staticClass:"pull-right"},[a("i",{staticClass:"far fa-clock"}),t._v(" "),a("small",[t._v(t._s(t.trans("general.updated_at"))+" "+t._s(t._f("momentDateTime")(t.salary.updated_at)))])])])])],2):t._e()])])])])}),[],!1,null,null,null).exports},data:function(){return{salaries:{total:0,data:[]},filter:{sort_by:"date_effective",order:"desc",employee_id:[],page_length:helper.getConfig("page_length")},orderByOptions:[{value:"date_effective",translation:i18n.employee.salary_structure_date_effective},{value:"created_at",translation:i18n.general.created_at}],employees:[],selected_employees:null,showFilterPanel:!1,showUuid:"",help_topic:"",showModal:!1}},mounted:function(){helper.hasPermission("define-employee-salary")||(helper.notAccessibleMsg(),this.$router.push("/dashboard")),this.getSalaries()},methods:{hasPermission:function(t){return helper.hasPermission(t)},getEmployeeNameWithCode:function(t){return helper.getEmployeeNameWithCode(t)},getEmployeeDesignationOnDate:function(t,e){return helper.getEmployeeDesignationOnDate(t,e)},showAction:function(t){this.showUuid=t.uuid,this.showModal=!0},getSalaries:function(t){var e=this,a=this.$loading.show();"number"!=typeof t&&(t=1);var s=helper.getFilterURL(this.filter);axios.get("/api/employee/payroll/salary?page="+t+s).then((function(t){e.salaries=t.salaries,e.employees=t.filters.employees,a.hide()})).catch((function(t){a.hide(),helper.showErrorMsg(t)}))},editSalary:function(t){this.$router.push("/employee/payroll/salary/"+t.uuid+"/edit")},confirmDelete:function(t){var e=this;return function(a){return e.deleteSalary(t)}},deleteSalary:function(t){var e=this,a=this.$loading.show();axios.delete("/api/employee/payroll/salary/"+t.uuid).then((function(t){toastr.success(t.message),e.getSalaries(),a.hide()})).catch((function(t){a.hide(),helper.showErrorMsg(t)}))},getConfig:function(t){return helper.getConfig(t)},print:function(){var t=this.$loading.show();axios.post("/api/employee/payroll/salary/print",{filter:this.filter}).then((function(e){var a=window.open("/print");t.hide(),a.document.write(e)})).catch((function(e){t.hide(),helper.showErrorMsg(e)}))},pdf:function(){var t=this,e=this.$loading.show();axios.post("/api/employee/payroll/salary/pdf",{filter:this.filter}).then((function(a){e.hide(),window.open("/download/report/"+a+"?token="+t.authToken)})).catch((function(t){e.hide(),helper.showErrorMsg(t)}))},formatCurrency:function(t){return helper.formatCurrency(t)},onEmployeeSelect:function(t){this.filter.employee_id.push(t.id)},onEmployeeRemove:function(t){this.filter.employee_id.splice(this.filter.employee_id.indexOf(t.id),1)}},filters:{moment:function(t){return helper.formatDate(t)},momentDateTime:function(t){return helper.formatDateTime(t)}},watch:{"filter.sort_by":function(t){this.getSalaries()},"filter.order":function(t){this.getSalaries()},"filter.page_length":function(t){this.getSalaries()}},computed:{authToken:function(){return helper.getAuthToken()}}},i=Object(r.a)(l,(function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",[a("div",{staticClass:"page-titles"},[a("div",{staticClass:"row"},[a("div",{staticClass:"col-12 col-sm-6"},[a("h3",{staticClass:"text-themecolor"},[t._v(t._s(t.trans("employee.salary_structure"))+" \n                    "),t.salaries.total?a("span",{staticClass:"card-subtitle d-none d-sm-inline"},[t._v(t._s(t.trans("general.total_result_found",{count:t.salaries.total,from:t.salaries.from,to:t.salaries.to})))]):a("span",{staticClass:"card-subtitle d-none d-sm-inline"},[t._v(t._s(t.trans("general.no_result_found")))])])]),t._v(" "),a("div",{staticClass:"col-12 col-sm-6"},[a("div",{staticClass:"action-buttons pull-right"},[t.salaries.total?a("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.trans("general.add_new"),expression:"trans('general.add_new')"}],staticClass:"btn btn-info btn-sm",on:{click:function(e){return t.$router.push("/employee/payroll/salary/create")}}},[a("i",{staticClass:"fas fa-plus"}),t._v(" "),a("span",{staticClass:"d-none d-sm-inline"},[t._v(t._s(t.trans("employee.add_new_salary_structure")))])]):t._e(),t._v(" "),t.showFilterPanel?t._e():a("button",{staticClass:"btn btn-info btn-sm",on:{click:function(e){t.showFilterPanel=!t.showFilterPanel}}},[a("i",{staticClass:"fas fa-filter"}),t._v(" "),a("span",{staticClass:"d-none d-sm-inline"},[t._v(t._s(t.trans("general.filter")))])]),t._v(" "),a("sort-by",{attrs:{"order-by-options":t.orderByOptions,"sort-by":t.filter.sort_by,order:t.filter.order},on:{updateSortBy:function(e){t.filter.sort_by=e},updateOrder:function(e){t.filter.order=e}}}),t._v(" "),a("div",{staticClass:"btn-group"},[a("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.trans("general.more_option"),expression:"trans('general.more_option')"}],staticClass:"btn btn-info btn-sm dropdown-toggle no-caret ",attrs:{type:"button",role:"menu",id:"moreOption","data-toggle":"dropdown","aria-haspopup":"true","aria-expanded":"false"}},[a("i",{staticClass:"fas fa-ellipsis-h"}),t._v(" "),a("span",{staticClass:"d-none d-sm-inline"})]),t._v(" "),a("div",{class:["dropdown-menu","ltr"==t.getConfig("direction")?"dropdown-menu-right":""],attrs:{"aria-labelledby":"moreOption"}},[a("button",{staticClass:"dropdown-item custom-dropdown",on:{click:t.print}},[a("i",{staticClass:"fas fa-print"}),t._v(" "+t._s(t.trans("general.print")))]),t._v(" "),a("button",{staticClass:"dropdown-item custom-dropdown",on:{click:t.pdf}},[a("i",{staticClass:"fas fa-file-pdf"}),t._v(" "+t._s(t.trans("general.generate_pdf")))])])]),t._v(" "),a("help-button",{on:{clicked:function(e){t.help_topic="employee.payroll.salary"}}})],1)])])]),t._v(" "),a("div",{staticClass:"container-fluid"},[a("transition",{attrs:{name:"fade"}},[t.showFilterPanel?a("div",{staticClass:"card card-form"},[a("div",{staticClass:"card-body"},[a("h4",{staticClass:"card-title"},[t._v(t._s(t.trans("general.filter")))]),t._v(" "),a("div",{staticClass:"row"},[a("div",{staticClass:"col-12 col-sm-3"},[a("div",{staticClass:"form-group"},[a("label",{attrs:{for:""}},[t._v(t._s(t.trans("employee.employee")))]),t._v(" "),a("v-select",{attrs:{label:"name","track-by":"id",name:"employee_id",id:"employee_id",options:t.employees,placeholder:t.trans("employee.select_employee"),multiple:!0,"close-on-select":!1,"clear-on-select":!1,"hide-selected":!0,selected:t.selected_employees},on:{select:t.onEmployeeSelect,remove:t.onEmployeeRemove},model:{value:t.selected_employees,callback:function(e){t.selected_employees=e},expression:"selected_employees"}},[t.employees.length?t._e():a("div",{staticClass:"multiselect__option",attrs:{slot:"afterList"},slot:"afterList"},[t._v("\n                                        "+t._s(t.trans("general.no_option_found"))+"\n                                    ")])])],1)])]),t._v(" "),a("div",{staticClass:"card-footer text-right"},[a("button",{staticClass:"btn btn-danger",attrs:{type:"button"},on:{click:function(e){t.showFilterPanel=!1}}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),a("button",{staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"button"},on:{click:t.getSalaries}},[t._v(t._s(t.trans("general.filter")))])])])]):t._e()]),t._v(" "),a("div",{staticClass:"card"},[a("div",{staticClass:"card-body"},[t.salaries.total?a("div",{staticClass:"table-responsive"},[a("table",{staticClass:"table table-sm"},[a("thead",[a("tr",[a("th",[t._v(t._s(t.trans("employee.employee")))]),t._v(" "),a("th",[t._v(t._s(t.trans("employee.payroll_template")))]),t._v(" "),a("th",[t._v(t._s(t.trans("employee.salary_structure_date_effective")))]),t._v(" "),a("th",[t._v(t._s(t.trans("employee.net_salary")))]),t._v(" "),a("th",[t._v(t._s(t.trans("employee.salary_structure_description")))]),t._v(" "),a("th",{staticClass:"table-option"},[t._v(t._s(t.trans("general.action")))])])]),t._v(" "),a("tbody",t._l(t.salaries.data,(function(e){return a("tr",[a("td",[t._v("\n                                    "+t._s(t.getEmployeeNameWithCode(e.employee))+" "),a("br"),t._v(" "),a("span",{staticClass:"font-90pc"},[t._v(t._s(t.getEmployeeDesignationOnDate(e.employee,e.date_effective)))])]),t._v(" "),a("td",{domProps:{textContent:t._s(e.payroll_template.name)}}),t._v(" "),a("td",[t._v(t._s(t._f("moment")(e.date_effective)))]),t._v(" "),a("td",[t._v(t._s(t.formatCurrency(e.net_salary)))]),t._v(" "),a("td",{domProps:{textContent:t._s(e.description)}}),a("td",{staticClass:"table-option"},[a("div",{staticClass:"btn-group"},[a("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.trans("general.view"),expression:"trans('general.view')"}],staticClass:"btn btn-success btn-sm",on:{click:function(a){return a.preventDefault(),t.showAction(e)}}},[a("i",{staticClass:"fas fa-arrow-circle-right"})]),t._v(" "),a("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.trans("employee.edit_salary_structure"),expression:"trans('employee.edit_salary_structure')"}],staticClass:"btn btn-info btn-sm",on:{click:function(a){return a.preventDefault(),t.editSalary(e)}}},[a("i",{staticClass:"fas fa-edit"})]),t._v(" "),a("button",{directives:[{name:"confirm",rawName:"v-confirm",value:{ok:t.confirmDelete(e)},expression:"{ok: confirmDelete(salary)}"},{name:"tooltip",rawName:"v-tooltip",value:t.trans("employee.delete_salary_structure"),expression:"trans('employee.delete_salary_structure')"}],key:e.id,staticClass:"btn btn-danger btn-sm"},[a("i",{staticClass:"fas fa-trash"})])])])])})),0)])]):t._e(),t._v(" "),t.salaries.total?t._e():a("module-info",{attrs:{module:"employee",title:"salary_structure_module_title",description:"salary_structure_module_description",icon:"list"}},[a("div",{attrs:{slot:"btn"},slot:"btn"},[a("button",{staticClass:"btn btn-info btn-md",on:{click:function(e){return t.$router.push("/employee/payroll/salary/create")}}},[a("i",{staticClass:"fas fa-plus"}),t._v(" "+t._s(t.trans("general.add_new")))])])]),t._v(" "),a("pagination-record",{attrs:{"page-length":t.filter.page_length,records:t.salaries},on:{"update:pageLength":function(e){return t.$set(t.filter,"page_length",e)},"update:page-length":function(e){return t.$set(t.filter,"page_length",e)},updateRecords:t.getSalaries}})],1)])],1),t._v(" "),t.showModal?a("salary-detail",{attrs:{uuid:t.showUuid},on:{close:function(e){t.showModal=!1}}}):t._e(),t._v(" "),a("right-panel",{attrs:{topic:t.help_topic}})],1)}),[],!1,null,null,null);e.default=i.exports}}]);
//# sourceMappingURL=index.js.map?id=63092cb3682c23a7dca1