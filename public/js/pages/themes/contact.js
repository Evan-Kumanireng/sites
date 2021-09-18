(window.webpackJsonp=window.webpackJsonp||[]).push([[279],{"7BDS":function(t,a,e){"use strict";var o=e("gqqp");e.n(o).a},AXvB:function(t,a,e){"use strict";e.r(a);var o={components:{},data:function(){return{page:{},contactForm:new Form({name:"",email:"",contact_number:"",subject:"",message:""})}},mounted:function(){this.getData()},methods:{getData:function(){var t=this,a=this.$loading.show();axios.get("/api/frontend/page/contact/content").then((function(e){t.page=e.page,a.hide()})).catch((function(e){a.hide(),helper.showErrorMsg(e),422==e.response.status&&t.$router.push("/")}))},getConfig:function(t){return helper.getConfig(t)},submit:function(){var t=this.$loading.show();this.contactForm.post("/api/frontend/contact").then((function(a){toastr.success(a.message),t.hide()})).catch((function(a){t.hide(),helper.showErrorMsg(a)}))}},filters:{moment:function(t){return helper.formatDate(t)},momentDateTime:function(t){return helper.formatDateTime(t)}}},n=(e("7BDS"),e("KHd+")),s=Object(n.a)(o,(function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",[e("div",{staticClass:"page-title"},[e("div",{staticClass:"fix-width fix-width-mobile"},[e("h2",[t._v(t._s(t.page.title))])])]),t._v(" "),t.page.body?e("div",{staticClass:"fix-width fix-width-mobile p-t-80"},[e("div",{staticClass:"page-body",domProps:{innerHTML:t._s(t.page.body)}})]):t._e(),t._v(" "),e("div",{staticClass:"fix-width fix-width-mobile p-t-80"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-12 col-md-7"},[e("form",{on:{submit:function(a){return a.preventDefault(),t.submit(a)},keydown:function(a){return t.contactForm.errors.clear(a.target.name)}}},[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v(t._s(t.trans("frontend.contact_name")))]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.contactForm.name,expression:"contactForm.name"}],staticClass:"form-control",attrs:{type:"text",name:"name",placeholder:t.trans("frontend.contact_name")},domProps:{value:t.contactForm.name},on:{input:function(a){a.target.composing||t.$set(t.contactForm,"name",a.target.value)}}}),t._v(" "),e("show-error",{attrs:{"form-name":t.contactForm,"prop-name":"name"}})],1),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-12 div col-lg-6"},[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v(t._s(t.trans("frontend.contact_email")))]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.contactForm.email,expression:"contactForm.email"}],staticClass:"form-control",attrs:{type:"text",name:"email",placeholder:t.trans("frontend.contact_email")},domProps:{value:t.contactForm.email},on:{input:function(a){a.target.composing||t.$set(t.contactForm,"email",a.target.value)}}}),t._v(" "),e("show-error",{attrs:{"form-name":t.contactForm,"prop-name":"email"}})],1)]),t._v(" "),e("div",{staticClass:"col-12 div col-lg-6"},[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v(t._s(t.trans("frontend.contact_number")))]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.contactForm.contact_number,expression:"contactForm.contact_number"}],staticClass:"form-control",attrs:{type:"text",name:"contact_number",placeholder:t.trans("frontend.contact_number")},domProps:{value:t.contactForm.contact_number},on:{input:function(a){a.target.composing||t.$set(t.contactForm,"contact_number",a.target.value)}}}),t._v(" "),e("show-error",{attrs:{"form-name":t.contactForm,"prop-name":"contact_number"}})],1)])]),t._v(" "),e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v(t._s(t.trans("frontend.contact_subject")))]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.contactForm.subject,expression:"contactForm.subject"}],staticClass:"form-control",attrs:{type:"text",name:"subject",placeholder:t.trans("frontend.contact_subject")},domProps:{value:t.contactForm.subject},on:{input:function(a){a.target.composing||t.$set(t.contactForm,"subject",a.target.value)}}}),t._v(" "),e("show-error",{attrs:{"form-name":t.contactForm,"prop-name":"subject"}})],1),t._v(" "),e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v(t._s(t.trans("frontend.contact_message")))]),t._v(" "),e("autosize-textarea",{staticClass:"form-control",attrs:{rows:"5",placeholder:t.trans("frontend.contact_message"),name:"message"},model:{value:t.contactForm.message,callback:function(a){t.$set(t.contactForm,"message",a)},expression:"contactForm.message"}}),t._v(" "),e("show-error",{attrs:{"form-name":t.contactForm,"prop-name":"message"}})],1),t._v(" "),e("div",{staticClass:"form-group"},[e("button",{staticClass:"btn btn-info btn-lg waves-effect waves-light m-t-10",attrs:{type:"submit"}},[t._v(t._s(t.trans("general.submit")))])])])]),t._v(" "),e("div",{staticClass:"col-12 col-md-1"}),t._v(" "),e("div",{staticClass:"col-12 col-md-4"},[e("h3",{staticClass:"m-b-20 p-b-20 border-bottom"},[t._v(" "+t._s(t.trans("configuration.contact_information"))+" ")]),t._v(" "),e("h4",{staticClass:"m-b-10"},[t._v(" "+t._s(t.getConfig("institute_name"))+" ")]),t._v(" "),e("div",{staticClass:"contact-info-box"},[e("p",[e("i",{staticClass:"fas fa-map-marker-alt m-r-5"}),t._v(" "),e("span",[t._v(t._s(t.getConfig("address_line_1")))]),t._v(" "),t.getConfig("address_line_2")?e("span",{staticClass:"comma"},[t._v(t._s(t.getConfig("address_line_2")))]):t._e(),t._v(" "),t.getConfig("city")?e("span",{staticClass:"comma"},[t._v(t._s(t.getConfig("city")))]):t._e(),t._v(" "),t.getConfig("state")?e("span",{staticClass:"comma"},[t._v(t._s(t.getConfig("state")))]):t._e(),t._v(" "),t.getConfig("zipcode")?e("span",{staticClass:"comma"},[t._v(t._s(t.getConfig("zipcode")))]):t._e(),t._v(" "),t.getConfig("country")?e("span",{staticClass:"d-block"},[t._v(t._s(t.getConfig("country")))]):t._e()]),t._v(" "),e("p",[e("i",{staticClass:"fas fa-phone m-r-5"}),t._v("\n                        "+t._s(t.getConfig("phone"))+"\n                    ")]),t._v(" "),e("p",[e("i",{staticClass:"fas fa-envelope m-r-5"}),t._v("\n                        "+t._s(t.getConfig("email"))+"\n                    ")]),t._v(" "),e("p",[e("i",{staticClass:"fas fa-globe m-r-5"}),t._v("\n                        "+t._s(t.getConfig("website"))+"\n                    ")])])])])])])}),[],!1,null,null,null);a.default=s.exports},Ydpw:function(t,a,e){(t.exports=e("I1BE")(!1)).push([t.i,'.contact-info-box .comma:before {\n  content: ", ";\n}',""])},gqqp:function(t,a,e){var o=e("Ydpw");"string"==typeof o&&(o=[[t.i,o,""]]);var n={hmr:!0,transform:void 0,insertInto:void 0};e("aET+")(o,n);o.locals&&(t.exports=o.locals)}}]);
//# sourceMappingURL=contact.js.map?id=ad40accb98fffd604dd4