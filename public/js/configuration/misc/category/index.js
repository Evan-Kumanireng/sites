(window.webpackJsonp=window.webpackJsonp||[]).push([[127],{rNEH:function(t,e,a){"use strict";var s={data:function(){return{categoryForm:new Form({name:"",description:""})}},props:["id"],mounted:function(){this.id&&this.get()},methods:{proceed:function(){this.id?this.update():this.store()},store:function(){var t=this,e=this.$loading.show();this.categoryForm.post("/api/misc/category").then((function(a){toastr.success(a.message),t.$emit("completed"),e.hide()})).catch((function(t){e.hide(),helper.showErrorMsg(t)}))},get:function(){var t=this,e=this.$loading.show();axios.get("/api/misc/category/"+this.id).then((function(a){t.categoryForm.name=a.name,t.categoryForm.description=a.description,e.hide()})).catch((function(a){e.hide(),helper.showErrorMsg(a),t.$router.push("/configuration/misc/category")}))},update:function(){var t=this,e=this.$loading.show();this.categoryForm.patch("/api/misc/category/"+this.id).then((function(a){toastr.success(a.message),e.hide(),t.$router.push("/configuration/misc/category")})).catch((function(t){e.hide(),helper.showErrorMsg(t)}))}}},o=a("KHd+"),r=Object(o.a)(s,(function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("form",{on:{submit:function(e){return e.preventDefault(),t.proceed(e)},keydown:function(e){return t.categoryForm.errors.clear(e.target.name)}}},[a("div",{staticClass:"row"},[a("div",{staticClass:"col-12 col-sm-6"},[a("div",{staticClass:"form-group"},[a("label",{attrs:{for:""}},[t._v(t._s(t.trans("misc.category_name")))]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.categoryForm.name,expression:"categoryForm.name"}],staticClass:"form-control",attrs:{type:"text",name:"name",placeholder:t.trans("misc.category_name")},domProps:{value:t.categoryForm.name},on:{input:function(e){e.target.composing||t.$set(t.categoryForm,"name",e.target.value)}}}),t._v(" "),a("show-error",{attrs:{"form-name":t.categoryForm,"prop-name":"name"}})],1)]),t._v(" "),a("div",{staticClass:"col-12 col-sm-6"},[a("div",{staticClass:"form-group"},[a("label",{attrs:{for:""}},[t._v(t._s(t.trans("misc.category_description")))]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.categoryForm.description,expression:"categoryForm.description"}],staticClass:"form-control",attrs:{type:"text",name:"description",placeholder:t.trans("misc.category_description")},domProps:{value:t.categoryForm.description},on:{input:function(e){e.target.composing||t.$set(t.categoryForm,"description",e.target.value)}}}),t._v(" "),a("show-error",{attrs:{"form-name":t.categoryForm,"prop-name":"description"}})],1)])]),t._v(" "),a("div",{staticClass:"card-footer text-right"},[a("router-link",{directives:[{name:"show",rawName:"v-show",value:t.id,expression:"id"}],staticClass:"btn btn-danger waves-effect waves-light ",attrs:{to:"/configuration/misc/category"}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),t.id?t._e():a("button",{staticClass:"btn btn-danger waves-effect waves-light ",attrs:{type:"button"},on:{click:function(e){return t.$emit("cancel")}}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),a("button",{staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"submit"}},[t.id?a("span",[t._v(t._s(t.trans("general.update")))]):a("span",[t._v(t._s(t.trans("general.save")))])])],1)])}),[],!1,null,null,null);e.a=r.exports},"u+j8":function(t,e,a){"use strict";a.r(e);var s={components:{categoryForm:a("rNEH").a},data:function(){return{categories:{total:0,data:[]},filter:{sort_by:"name",order:"asc",page_length:helper.getConfig("page_length")},orderByOptions:[{value:"name",translation:i18n.misc.category_name}],showCreatePanel:!1,help_topic:""}},mounted:function(){helper.hasPermission("access-configuration")||(helper.notAccessibleMsg(),this.$router.push("/dashboard")),this.getCategories()},methods:{getConfig:function(t){return helper.getConfig(t)},getCategories:function(t){var e=this,a=this.$loading.show();"number"!=typeof t&&(t=1);var s=helper.getFilterURL(this.filter);axios.get("/api/misc/category?page="+t+s).then((function(t){e.categories=t,a.hide()})).catch((function(t){a.hide(),helper.showErrorMsg(t)}))},editCategory:function(t){this.$router.push("/configuration/misc/category/"+t.id+"/edit")},confirmDelete:function(t){var e=this;return function(a){return e.deleteCategory(t)}},deleteCategory:function(t){var e=this,a=this.$loading.show();axios.delete("/api/misc/category/"+t.id).then((function(t){toastr.success(t.message),e.getCategories(),a.hide()})).catch((function(t){a.hide(),helper.showErrorMsg(t)}))},print:function(){var t=this.$loading.show();axios.post("/api/misc/category/print",{filter:this.filter}).then((function(e){var a=window.open("/print");t.hide(),a.document.write(e)})).catch((function(e){t.hide(),helper.showErrorMsg(e)}))},pdf:function(){var t=this,e=this.$loading.show();axios.post("/api/misc/category/pdf",{filter:this.filter}).then((function(a){e.hide(),window.open("/download/report/"+a+"?token="+t.authToken)})).catch((function(t){e.hide(),helper.showErrorMsg(t)}))}},filters:{momentDateTime:function(t){return helper.formatDateTime(t)}},watch:{"filter.sort_by":function(t){this.getCategories()},"filter.order":function(t){this.getCategories()},"filter.page_length":function(t){this.getCategories()}},computed:{authToken:function(){return helper.getAuthToken()}}},o=a("KHd+"),r=Object(o.a)(s,(function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",[a("div",{staticClass:"page-titles"},[a("div",{staticClass:"row"},[a("div",{staticClass:"col-12 col-sm-6"},[a("h3",{staticClass:"text-themecolor"},[t._v(t._s(t.trans("misc.category"))+" \n                    "),t.categories.total?a("span",{staticClass:"card-subtitle d-none d-sm-inline"},[t._v(t._s(t.trans("general.total_result_found",{count:t.categories.total,from:t.categories.from,to:t.categories.to})))]):a("span",{staticClass:"card-subtitle d-none d-sm-inline"},[t._v(t._s(t.trans("general.no_result_found")))])])]),t._v(" "),a("div",{staticClass:"col-12 col-sm-6"},[a("div",{staticClass:"action-buttons pull-right"},[t.categories.total&&!t.showCreatePanel?a("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.trans("general.add_new"),expression:"trans('general.add_new')"}],staticClass:"btn btn-info btn-sm",on:{click:function(e){t.showCreatePanel=!t.showCreatePanel}}},[a("i",{staticClass:"fas fa-plus"}),t._v(" "),a("span",{staticClass:"d-none d-sm-inline"},[t._v(t._s(t.trans("misc.add_new_category")))])]):t._e(),t._v(" "),a("sort-by",{attrs:{"order-by-options":t.orderByOptions,"sort-by":t.filter.sort_by,order:t.filter.order},on:{updateSortBy:function(e){t.filter.sort_by=e},updateOrder:function(e){t.filter.order=e}}}),t._v(" "),a("div",{staticClass:"btn-group"},[a("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.trans("general.more_option"),expression:"trans('general.more_option')"}],staticClass:"btn btn-info btn-sm dropdown-toggle no-caret ",attrs:{type:"button",role:"menu",id:"moreOption","data-toggle":"dropdown","aria-haspopup":"true","aria-expanded":"false"}},[a("i",{staticClass:"fas fa-ellipsis-h"}),t._v(" "),a("span",{staticClass:"d-none d-sm-inline"})]),t._v(" "),a("div",{class:["dropdown-menu","ltr"==t.getConfig("direction")?"dropdown-menu-right":""],attrs:{"aria-labelledby":"moreOption"}},[a("button",{staticClass:"dropdown-item custom-dropdown",on:{click:t.print}},[a("i",{staticClass:"fas fa-print"}),t._v(" "+t._s(t.trans("general.print")))]),t._v(" "),a("button",{staticClass:"dropdown-item custom-dropdown",on:{click:t.pdf}},[a("i",{staticClass:"fas fa-file-pdf"}),t._v(" "+t._s(t.trans("general.generate_pdf")))])])]),t._v(" "),a("help-button",{on:{clicked:function(e){t.help_topic="configuration.misc.category"}}})],1)])])]),t._v(" "),a("div",{staticClass:"container-fluid"},[a("transition",{attrs:{name:"fade"}},[t.showCreatePanel?a("div",{staticClass:"card card-form"},[a("div",{staticClass:"card-body"},[a("h4",{staticClass:"card-title"},[t._v(t._s(t.trans("misc.add_new_category")))]),t._v(" "),a("category-form",{on:{completed:t.getCategories,cancel:function(e){t.showCreatePanel=!t.showCreatePanel}}})],1)]):t._e()]),t._v(" "),a("div",{staticClass:"card"},[a("div",{staticClass:"card-body"},[t.categories.total?a("div",{staticClass:"table-responsive"},[a("table",{staticClass:"table table-sm"},[a("thead",[a("tr",[a("th",[t._v(t._s(t.trans("misc.category_name")))]),t._v(" "),a("th",[t._v(t._s(t.trans("misc.category_description")))]),t._v(" "),a("th",{staticClass:"table-option"},[t._v(t._s(t.trans("general.action")))])])]),t._v(" "),a("tbody",t._l(t.categories.data,(function(e){return a("tr",[a("td",{domProps:{textContent:t._s(e.name)}}),t._v(" "),a("td",{domProps:{textContent:t._s(e.description)}}),t._v(" "),a("td",{staticClass:"table-option"},[a("div",{staticClass:"btn-group"},[a("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.trans("misc.edit_category"),expression:"trans('misc.edit_category')"}],staticClass:"btn btn-info btn-sm",on:{click:function(a){return a.preventDefault(),t.editCategory(e)}}},[a("i",{staticClass:"fas fa-edit"})]),t._v(" "),a("button",{directives:[{name:"confirm",rawName:"v-confirm",value:{ok:t.confirmDelete(e)},expression:"{ok: confirmDelete(category)}"},{name:"tooltip",rawName:"v-tooltip",value:t.trans("misc.delete_category"),expression:"trans('misc.delete_category')"}],key:e.id,staticClass:"btn btn-danger btn-sm"},[a("i",{staticClass:"fas fa-trash"})])])])])})),0)])]):t._e(),t._v(" "),t.categories.total?t._e():a("module-info",{attrs:{module:"misc",title:"category_module_title",description:"category_module_description",icon:"list"}},[a("div",{attrs:{slot:"btn"},slot:"btn"},[t.showCreatePanel?t._e():a("button",{staticClass:"btn btn-info btn-md",on:{click:function(e){t.showCreatePanel=!t.showCreatePanel}}},[a("i",{staticClass:"fas fa-plus"}),t._v(" "+t._s(t.trans("general.add_new")))])])]),t._v(" "),a("pagination-record",{attrs:{"page-length":t.filter.page_length,records:t.categories},on:{"update:pageLength":function(e){return t.$set(t.filter,"page_length",e)},"update:page-length":function(e){return t.$set(t.filter,"page_length",e)},updateRecords:t.getCategories},nativeOn:{change:function(e){return t.getCategories(e)}}})],1)])],1),t._v(" "),a("right-panel",{attrs:{topic:t.help_topic}})],1)}),[],!1,null,null,null);e.default=r.exports}}]);
//# sourceMappingURL=index.js.map?id=a0a22ef3b1024d3d8a9f