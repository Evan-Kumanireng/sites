(window.webpackJsonp=window.webpackJsonp||[]).push([[152],{VvFc:function(t,s,e){"use strict";var n={data:function(){return{studentGroupForm:new Form({name:"",description:""})}},props:["id"],mounted:function(){this.id&&this.get()},methods:{proceed:function(){this.id?this.update():this.store()},store:function(){var t=this,s=this.$loading.show();this.studentGroupForm.post("/api/student/group").then((function(e){toastr.success(e.message),t.$emit("completed"),s.hide()})).catch((function(t){s.hide(),helper.showErrorMsg(t)}))},get:function(){var t=this,s=this.$loading.show();axios.get("/api/student/group/"+this.id).then((function(e){t.studentGroupForm.name=e.name,t.studentGroupForm.description=e.description,s.hide()})).catch((function(e){s.hide(),helper.showErrorMsg(e),t.$router.push("/configuration/student/group")}))},update:function(){var t=this,s=this.$loading.show();this.studentGroupForm.patch("/api/student/group/"+this.id).then((function(e){toastr.success(e.message),s.hide(),t.$router.push("/configuration/student/group")})).catch((function(t){s.hide(),helper.showErrorMsg(t)}))}}},r=e("KHd+"),o=Object(r.a)(n,(function(){var t=this,s=t.$createElement,e=t._self._c||s;return e("form",{on:{submit:function(s){return s.preventDefault(),t.proceed(s)},keydown:function(s){return t.studentGroupForm.errors.clear(s.target.name)}}},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-12 col-sm-6"},[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v(t._s(t.trans("student.student_group_name")))]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.studentGroupForm.name,expression:"studentGroupForm.name"}],staticClass:"form-control",attrs:{type:"text",name:"name",placeholder:t.trans("student.student_group_name")},domProps:{value:t.studentGroupForm.name},on:{input:function(s){s.target.composing||t.$set(t.studentGroupForm,"name",s.target.value)}}}),t._v(" "),e("show-error",{attrs:{"form-name":t.studentGroupForm,"prop-name":"name"}})],1)]),t._v(" "),e("div",{staticClass:"col-12 col-sm-6"},[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v(t._s(t.trans("student.student_group_description")))]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.studentGroupForm.description,expression:"studentGroupForm.description"}],staticClass:"form-control",attrs:{type:"text",name:"description",placeholder:t.trans("student.student_group_description")},domProps:{value:t.studentGroupForm.description},on:{input:function(s){s.target.composing||t.$set(t.studentGroupForm,"description",s.target.value)}}}),t._v(" "),e("show-error",{attrs:{"form-name":t.studentGroupForm,"prop-name":"description"}})],1)])]),t._v(" "),e("div",{staticClass:"card-footer text-right"},[e("router-link",{directives:[{name:"show",rawName:"v-show",value:t.id,expression:"id"}],staticClass:"btn btn-danger waves-effect waves-light ",attrs:{to:"/configuration/student/group"}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),t.id?t._e():e("button",{staticClass:"btn btn-danger waves-effect waves-light ",attrs:{type:"button"},on:{click:function(s){return t.$emit("cancel")}}},[t._v(t._s(t.trans("general.cancel")))]),t._v(" "),e("button",{staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"submit"}},[t.id?e("span",[t._v(t._s(t.trans("general.update")))]):e("span",[t._v(t._s(t.trans("general.save")))])])],1)])}),[],!1,null,null,null);s.a=o.exports},dwJI:function(t,s,e){"use strict";e.r(s);var n={components:{studentGroupForm:e("VvFc").a},data:function(){return{id:this.$route.params.id}},mounted:function(){helper.hasPermission("access-configuration")||(helper.notAccessibleMsg(),this.$router.push("/dashboard"))}},r=e("KHd+"),o=Object(r.a)(n,(function(){var t=this,s=t.$createElement,e=t._self._c||s;return e("div",[e("div",{staticClass:"page-titles"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-12 col-sm-6"},[e("h3",{staticClass:"text-themecolor"},[t._v(t._s(t.trans("student.edit_student_group")))])]),t._v(" "),e("div",{staticClass:"col-12 col-sm-6"},[e("div",{staticClass:"action-buttons pull-right"},[e("button",{staticClass:"btn btn-info btn-sm",on:{click:function(s){return t.$router.push("/configuration/student/group")}}},[e("i",{staticClass:"fas fa-list"}),t._v(" "),e("span",{staticClass:"d-none d-sm-inline"},[t._v(t._s(t.trans("student.student_group")))])])])])])]),t._v(" "),e("div",{staticClass:"container-fluid"},[e("div",{staticClass:"card card-form"},[e("div",{staticClass:"card-body p-t-20"},[e("student-group-form",{attrs:{id:t.id}})],1)])])])}),[],!1,null,null,null);s.default=o.exports}}]);
//# sourceMappingURL=edit.js.map?id=b78f11cc193bf9ef024d