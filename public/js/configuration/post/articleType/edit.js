(window.webpackJsonp=window.webpackJsonp||[]).push([[134],{W5Be:function(t,e,s){"use strict";s.r(e);var a={components:{articleTypeForm:s("t1P2").a},data:function(){return{id:this.$route.params.id}},mounted:function(){helper.hasPermission("access-configuration")||(helper.notAccessibleMsg(),this.$router.push("/dashboard"))}},i=s("KHd+"),r=Object(i.a)(a,(function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("div",{staticClass:"page-titles"},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-12 col-sm-6"},[s("h3",{staticClass:"text-themecolor"},[t._v(t._s(t.trans("post.edit_article_type")))])]),t._v(" "),s("div",{staticClass:"col-12 col-sm-6"},[s("div",{staticClass:"action-buttons pull-right"},[s("button",{staticClass:"btn btn-info btn-sm",on:{click:function(e){return t.$router.push("/configuration/post/article/type")}}},[s("i",{staticClass:"fas fa-list"}),t._v(" "),s("span",{staticClass:"d-none d-sm-inline"},[t._v(t._s(t.trans("post.article_type")))])])])])])]),t._v(" "),s("div",{staticClass:"container-fluid"},[s("div",{staticClass:"card card-form"},[s("div",{staticClass:"card-body p-t-20"},[s("article-type-form",{attrs:{id:t.id}})],1)])])])}),[],!1,null,null,null);e.default=r.exports},t1P2:function(t,e,s){"use strict";var a={data:function(){return{articleTypeForm:new Form({name:"",description:""})}},props:["id"],mounted:function(){this.id&&this.get()},methods:{proceed:function(){this.id?this.update():this.store()},store:function(){var t=this,e=this.$loading.show();this.articleTypeForm.post("/api/post/article/type").then((function(s){toastr.success(s.message),t.$emit("completed"),e.hide()})).catch((function(t){e.hide(),helper.showErrorMsg(t)}))},get:function(){var t=this,e=this.$loading.show();axios.get("/api/post/article/type/"+this.id).then((function(s){t.articleTypeForm.name=s.name,t.articleTypeForm.description=s.description,e.hide()})).catch((function(s){e.hide(),helper.showErrorMsg(s),t.$router.push("/configuration/post/article/type")}))},update:function(){var t=this,e=this.$loading.show();this.articleTypeForm.patch("/api/post/article/type/"+this.id).then((function(s){toastr.success(s.message),e.hide(),t.$router.push("/configuration/post/article/type")})).catch((function(t){e.hide(),helper.showErrorMsg(t)}))}}},i=s("KHd+"),r=Object(i.a)(a,(function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("form",{on:{submit:function(e){return e.preventDefault(),t.proceed(e)},keydown:function(e){return t.articleTypeForm.errors.clear(e.target.name)}}},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-12 col-sm-6"},[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:""}},[t._v(t._s(t.trans("post.article_type_name")))]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.articleTypeForm.name,expression:"articleTypeForm.name"}],staticClass:"form-control",attrs:{type:"text",name:"name",placeholder:t.trans("post.article_type_name")},domProps:{value:t.articleTypeForm.name},on:{input:function(e){e.target.composing||t.$set(t.articleTypeForm,"name",e.target.value)}}}),t._v(" "),s("show-error",{attrs:{"form-name":t.articleTypeForm,"prop-name":"name"}})],1)]),t._v(" "),s("div",{staticClass:"col-12 col-sm-6"},[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:""}},[t._v(t._s(t.trans("post.article_type_description")))]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.articleTypeForm.description,expression:"articleTypeForm.description"}],staticClass:"form-control",attrs:{type:"text",name:"description",placeholder:t.trans("post.article_type_description")},domProps:{value:t.articleTypeForm.description},on:{input:function(e){e.target.composing||t.$set(t.articleTypeForm,"description",e.target.value)}}}),t._v(" "),s("show-error",{attrs:{"form-name":t.articleTypeForm,"prop-name":"description"}})],1)])]),t._v(" "),s("div",{staticClass:"card-footer text-right"},[s("router-link",{directives:[{name:"show",rawName:"v-show",value:t.id,expression:"id"}],staticClass:"btn btn-danger waves-effect waves-light ",attrs:{to:"/configuration/post/article/type"}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),t.id?t._e():s("button",{staticClass:"btn btn-danger waves-effect waves-light ",attrs:{type:"button"},on:{click:function(e){return t.$emit("cancel")}}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),s("button",{staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"submit"}},[t.id?s("span",[t._v(t._s(t.trans("general.update")))]):s("span",[t._v(t._s(t.trans("general.save")))])])],1)])}),[],!1,null,null,null);e.a=r.exports}}]);
//# sourceMappingURL=edit.js.map?id=7a0cc7d7faa1b70e10df