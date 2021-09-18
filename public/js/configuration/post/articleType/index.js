(window.webpackJsonp=window.webpackJsonp||[]).push([[135],{"3ZnB":function(t,e,s){"use strict";s.r(e);var a={components:{articleTypeForm:s("t1P2").a},data:function(){return{article_types:{total:0,data:[]},filter:{sort_by:"name",order:"asc",page_length:helper.getConfig("page_length")},orderByOptions:[{value:"name",translation:i18n.post.article_type_name}],showCreatePanel:!1,help_topic:""}},mounted:function(){helper.hasPermission("access-configuration")||(helper.notAccessibleMsg(),this.$router.push("/dashboard")),this.getArticleTypes()},methods:{getConfig:function(t){return helper.getConfig(t)},getArticleTypes:function(t){var e=this,s=this.$loading.show();"number"!=typeof t&&(t=1);var a=helper.getFilterURL(this.filter);axios.get("/api/post/article/type?page="+t+a).then((function(t){e.article_types=t,s.hide()})).catch((function(t){s.hide(),helper.showErrorMsg(t)}))},editArticleType:function(t){this.$router.push("/configuration/post/article/type/"+t.id+"/edit")},confirmDelete:function(t){var e=this;return function(s){return e.deleteArticleType(t)}},deleteArticleType:function(t){var e=this,s=this.$loading.show();axios.delete("/api/post/article/type/"+t.id).then((function(t){toastr.success(t.message),e.getArticleTypes(),s.hide()})).catch((function(t){s.hide(),helper.showErrorMsg(t)}))},print:function(){var t=this.$loading.show();axios.post("/api/post/article/type/print",{filter:this.filter}).then((function(e){var s=window.open("/print");t.hide(),s.document.write(e)})).catch((function(e){t.hide(),helper.showErrorMsg(e)}))},pdf:function(){var t=this,e=this.$loading.show();axios.post("/api/post/article/type/pdf",{filter:this.filter}).then((function(s){e.hide(),window.open("/download/report/"+s+"?token="+t.authToken)})).catch((function(t){e.hide(),helper.showErrorMsg(t)}))}},filters:{momentDateTime:function(t){return helper.formatDateTime(t)}},watch:{"filter.sort_by":function(t){this.getArticleTypes()},"filter.order":function(t){this.getArticleTypes()},"filter.page_length":function(t){this.getArticleTypes()}},computed:{authToken:function(){return helper.getAuthToken()}}},i=s("KHd+"),r=Object(i.a)(a,(function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("div",{staticClass:"page-titles"},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-12 col-sm-6"},[s("h3",{staticClass:"text-themecolor"},[t._v(t._s(t.trans("post.article_type"))+" \n                    "),t.article_types.total?s("span",{staticClass:"card-subtitle d-none d-sm-inline"},[t._v(t._s(t.trans("general.total_result_found",{count:t.article_types.total,from:t.article_types.from,to:t.article_types.to})))]):s("span",{staticClass:"card-subtitle d-none d-sm-inline"},[t._v(t._s(t.trans("general.no_result_found")))])])]),t._v(" "),s("div",{staticClass:"col-12 col-sm-6"},[s("div",{staticClass:"action-buttons pull-right"},[t.article_types.total&&!t.showCreatePanel?s("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.trans("general.add_new"),expression:"trans('general.add_new')"}],staticClass:"btn btn-info btn-sm",on:{click:function(e){t.showCreatePanel=!t.showCreatePanel}}},[s("i",{staticClass:"fas fa-plus"}),t._v(" "),s("span",{staticClass:"d-none d-sm-inline"},[t._v(t._s(t.trans("post.add_new_article_type")))])]):t._e(),t._v(" "),s("sort-by",{attrs:{"order-by-options":t.orderByOptions,"sort-by":t.filter.sort_by,order:t.filter.order},on:{updateSortBy:function(e){t.filter.sort_by=e},updateOrder:function(e){t.filter.order=e}}}),t._v(" "),s("div",{staticClass:"btn-group"},[s("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.trans("general.more_option"),expression:"trans('general.more_option')"}],staticClass:"btn btn-info btn-sm dropdown-toggle no-caret ",attrs:{type:"button",role:"menu",id:"moreOption","data-toggle":"dropdown","aria-haspopup":"true","aria-expanded":"false"}},[s("i",{staticClass:"fas fa-ellipsis-h"}),t._v(" "),s("span",{staticClass:"d-none d-sm-inline"})]),t._v(" "),s("div",{class:["dropdown-menu","ltr"==t.getConfig("direction")?"dropdown-menu-right":""],attrs:{"aria-labelledby":"moreOption"}},[s("button",{staticClass:"dropdown-item custom-dropdown",on:{click:t.print}},[s("i",{staticClass:"fas fa-print"}),t._v(" "+t._s(t.trans("general.print")))]),t._v(" "),s("button",{staticClass:"dropdown-item custom-dropdown",on:{click:t.pdf}},[s("i",{staticClass:"fas fa-file-pdf"}),t._v(" "+t._s(t.trans("general.generate_pdf")))])])]),t._v(" "),s("help-button",{on:{clicked:function(e){t.help_topic="configuration.post.article-type"}}})],1)])])]),t._v(" "),s("div",{staticClass:"container-fluid"},[s("transition",{attrs:{name:"fade"}},[t.showCreatePanel?s("div",{staticClass:"card card-form"},[s("div",{staticClass:"card-body"},[s("h4",{staticClass:"card-title"},[t._v(t._s(t.trans("post.add_new_article_type")))]),t._v(" "),s("article-type-form",{on:{completed:t.getArticleTypes,cancel:function(e){t.showCreatePanel=!t.showCreatePanel}}})],1)]):t._e()]),t._v(" "),s("div",{staticClass:"card"},[s("div",{staticClass:"card-body"},[t.article_types.total?s("div",{staticClass:"table-responsive"},[s("table",{staticClass:"table table-sm"},[s("thead",[s("tr",[s("th",[t._v(t._s(t.trans("post.article_type_name")))]),t._v(" "),s("th",[t._v(t._s(t.trans("post.article_type_description")))]),t._v(" "),s("th",{staticClass:"table-option"},[t._v(t._s(t.trans("general.action")))])])]),t._v(" "),s("tbody",t._l(t.article_types.data,(function(e){return s("tr",[s("td",{domProps:{textContent:t._s(e.name)}}),t._v(" "),s("td",{domProps:{textContent:t._s(e.description)}}),t._v(" "),s("td",{staticClass:"table-option"},[s("div",{staticClass:"btn-group"},[s("button",{directives:[{name:"tooltip",rawName:"v-tooltip",value:t.trans("post.edit_article_type"),expression:"trans('post.edit_article_type')"}],staticClass:"btn btn-info btn-sm",on:{click:function(s){return!s.type.indexOf("key")&&t._k(s.keyCode,"prarticle",void 0,s.key,void 0)?null:t.editArticleType(e)}}},[s("i",{staticClass:"fas fa-edit"})]),t._v(" "),s("button",{directives:[{name:"confirm",rawName:"v-confirm",value:{ok:t.confirmDelete(e)},expression:"{ok: confirmDelete(article_type)}"},{name:"tooltip",rawName:"v-tooltip",value:t.trans("post.delete_article_type"),expression:"trans('post.delete_article_type')"}],key:e.id,staticClass:"btn btn-danger btn-sm"},[s("i",{staticClass:"fas fa-trash"})])])])])})),0)])]):t._e(),t._v(" "),t.article_types.total?t._e():s("module-info",{attrs:{module:"post",title:"article_type_module_title",description:"article_type_module_description",icon:"list"}},[s("div",{attrs:{slot:"btn"},slot:"btn"},[t.showCreatePanel?t._e():s("button",{staticClass:"btn btn-info btn-md",on:{click:function(e){t.showCreatePanel=!t.showCreatePanel}}},[s("i",{staticClass:"fas fa-plus"}),t._v(" "+t._s(t.trans("general.add_new")))])])]),t._v(" "),s("pagination-record",{attrs:{"page-length":t.filter.page_length,records:t.article_types},on:{"update:pageLength":function(e){return t.$set(t.filter,"page_length",e)},"update:page-length":function(e){return t.$set(t.filter,"page_length",e)},updateRecords:t.getArticleTypes},nativeOn:{change:function(e){return t.getArticleTypes(e)}}})],1)])],1),t._v(" "),s("right-panel",{attrs:{topic:t.help_topic}})],1)}),[],!1,null,null,null);e.default=r.exports},t1P2:function(t,e,s){"use strict";var a={data:function(){return{articleTypeForm:new Form({name:"",description:""})}},props:["id"],mounted:function(){this.id&&this.get()},methods:{proceed:function(){this.id?this.update():this.store()},store:function(){var t=this,e=this.$loading.show();this.articleTypeForm.post("/api/post/article/type").then((function(s){toastr.success(s.message),t.$emit("completed"),e.hide()})).catch((function(t){e.hide(),helper.showErrorMsg(t)}))},get:function(){var t=this,e=this.$loading.show();axios.get("/api/post/article/type/"+this.id).then((function(s){t.articleTypeForm.name=s.name,t.articleTypeForm.description=s.description,e.hide()})).catch((function(s){e.hide(),helper.showErrorMsg(s),t.$router.push("/configuration/post/article/type")}))},update:function(){var t=this,e=this.$loading.show();this.articleTypeForm.patch("/api/post/article/type/"+this.id).then((function(s){toastr.success(s.message),e.hide(),t.$router.push("/configuration/post/article/type")})).catch((function(t){e.hide(),helper.showErrorMsg(t)}))}}},i=s("KHd+"),r=Object(i.a)(a,(function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("form",{on:{submit:function(e){return e.preventDefault(),t.proceed(e)},keydown:function(e){return t.articleTypeForm.errors.clear(e.target.name)}}},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-12 col-sm-6"},[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:""}},[t._v(t._s(t.trans("post.article_type_name")))]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.articleTypeForm.name,expression:"articleTypeForm.name"}],staticClass:"form-control",attrs:{type:"text",name:"name",placeholder:t.trans("post.article_type_name")},domProps:{value:t.articleTypeForm.name},on:{input:function(e){e.target.composing||t.$set(t.articleTypeForm,"name",e.target.value)}}}),t._v(" "),s("show-error",{attrs:{"form-name":t.articleTypeForm,"prop-name":"name"}})],1)]),t._v(" "),s("div",{staticClass:"col-12 col-sm-6"},[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:""}},[t._v(t._s(t.trans("post.article_type_description")))]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.articleTypeForm.description,expression:"articleTypeForm.description"}],staticClass:"form-control",attrs:{type:"text",name:"description",placeholder:t.trans("post.article_type_description")},domProps:{value:t.articleTypeForm.description},on:{input:function(e){e.target.composing||t.$set(t.articleTypeForm,"description",e.target.value)}}}),t._v(" "),s("show-error",{attrs:{"form-name":t.articleTypeForm,"prop-name":"description"}})],1)])]),t._v(" "),s("div",{staticClass:"card-footer text-right"},[s("router-link",{directives:[{name:"show",rawName:"v-show",value:t.id,expression:"id"}],staticClass:"btn btn-danger waves-effect waves-light ",attrs:{to:"/configuration/post/article/type"}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),t.id?t._e():s("button",{staticClass:"btn btn-danger waves-effect waves-light ",attrs:{type:"button"},on:{click:function(e){return t.$emit("cancel")}}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),s("button",{staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"submit"}},[t.id?s("span",[t._v(t._s(t.trans("general.update")))]):s("span",[t._v(t._s(t.trans("general.save")))])])],1)])}),[],!1,null,null,null);e.a=r.exports}}]);
//# sourceMappingURL=index.js.map?id=cbdf2012aa89eb6e0030