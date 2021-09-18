(window.webpackJsonp=window.webpackJsonp||[]).push([[25],{z4ed:function(t,e,s){"use strict";s.r(e);var a={components:{},data:function(){return{uuid:this.$route.params.uuid,timetable:{},timetableAllocationForm:new Form({days:[]},!1),subjects:[],subject_alloted_count:[]}},mounted:function(){var t=this,e=this.$loading.show();axios.get("/api/timetable/"+this.uuid).then((function(s){t.timetable=s.timetable,t.subjects=s.subjects,t.subjects.forEach((function(e){t.subject_alloted_count.push({subject_id:e.id,count:0})})),t.timetable.timetable_allocations.forEach((function(e){var s=[];e.class_timing&&e.class_timing.class_timing_sessions.forEach((function(t){var a=e.timetable_allocation_details.find((function(s){return s.timetable_allocation_id==e.id&&s.class_timing_session_id==t.id}));s.push({id:t.id,name:t.name,start:t.start,end:t.end,is_a_break:t.is_a_break,subject_id:a?a.subject_id:null,selected_subject:null})})),t.timetableAllocationForm.days.push({day:e.day,timetable_allocation_id:e.id,sessions:s})})),t.calculateAllottedSubject(),e.hide()})).catch((function(t){e.hide(),helper.showErrorMsg(t)})),helper.showDemoNotification(["academic_timetable"])},methods:{getSubjectName:function(t,e){return t+"_"+e+"_subject"},getSubjectDetail:function(t){var e=t.name+" ("+t.code+")",s=this.getSubjectTeacher(t);return e+(s?" "+s:"")},getEmployeeName:function(t){return helper.getEmployeeName(t)},getSubjectTeacher:function(t){var e=this,s=t.subject_teachers.filter((function(t){return t.date_effective<=e.timetable.date_effective}));return s.length?this.getEmployeeName(t.subject_teachers[s.length-1].employee):""},calculateAllottedSubject:function(){var t=this;this.subject_alloted_count.forEach((function(e){e.count=0,t.timetableAllocationForm.days.forEach((function(t){t.sessions.forEach((function(t){t.subject_id==e.subject_id&&e.count++}))}))}))},getSubjectCount:function(t){var e=this.subject_alloted_count.find((function(e){return e.subject_id==t.id}));return e?e.count:0},getSessionStartTime:function(t){return moment(t.start,"HH:mm:ss").format("h:mm a")},getSessionEndTime:function(t){return moment(t.end,"HH:mm:ss").format("h:mm a")},submit:function(){var t=this.$loading.show();this.timetableAllocationForm.post("/api/timetable/"+this.uuid+"/allocation").then((function(e){toastr.success(e.message),t.hide()})).catch((function(e){t.hide(),helper.showErrorMsg(e)}))},getTotalCount:function(){var t=this,e=0;this.subjects.forEach((function(s){e+=t.getSubjectCount(s)}));var s=0;return this.timetableAllocationForm.days.forEach((function(t){t.sessions.forEach((function(t){t.is_a_break||s++}))})),e+"/"+s}},filters:{moment:function(t){return helper.formatDate(t)},momentDateTime:function(t){return helper.formatDateTime(t)}}},i=s("KHd+"),n=Object(i.a)(a,(function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("div",{staticClass:"page-titles"},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-12 col-sm-6"},[s("h3",{staticClass:"text-themecolor"},[t._v(t._s(t.trans("academic.timetable_allocation"))+" "),t.timetable.batch?s("span",[t._v(" - "),s("small",[t._v(t._s(t.timetable.batch.course.name+" "+t.timetable.batch.name)+" "+t._s(t.trans("general.from"))+" "+t._s(t._f("moment")(t.timetable.date_effective)))])]):t._e()])]),t._v(" "),s("div",{staticClass:"col-12 col-sm-6"},[s("div",{staticClass:"action-buttons pull-right"},[s("button",{staticClass:"btn btn-info btn-sm",on:{click:function(e){return t.$router.push("/academic/timetable")}}},[s("i",{staticClass:"fas fa-list"}),t._v(" "),s("span",{staticClass:"d-none d-sm-inline"},[t._v(t._s(t.trans("academic.timetable")))])])])])])]),t._v(" "),s("div",{staticClass:"container-fluid"},[s("div",{staticClass:"card card-form"},[s("div",{staticClass:"card-body"},[t.timetable?s("form",{on:{submit:function(e){return e.preventDefault(),t.submit(e)},keydown:function(e){return t.timetableAllocationForm.errors.clear(e.target.name)}}},[t._l(t.timetableAllocationForm.days,(function(e,a){return s("div",{staticClass:"row"},[s("div",{staticClass:"col-12 col-sm-1"},[t._v("\n                    \t\t\t"+t._s(t.trans("list."+e.day))+"\n                    \t\t")]),t._v(" "),s("div",{staticClass:"col-12 col-sm-11"},[e.sessions.length?s("div",{staticClass:"row"},t._l(e.sessions,(function(e,i){return s("div",{staticClass:"col-12 col-sm-2"},[s("small",[t._v(t._s(e.name)+" ("+t._s(t.getSessionStartTime(e)+" "+t.trans("general.to")+" "+t.getSessionEndTime(e))+")")]),t._v(" "),e.is_a_break?s("div",{staticClass:"text-center"},[t._v("-")]):s("div",{staticClass:"form-group"},[s("select",{directives:[{name:"model",rawName:"v-model",value:e.subject_id,expression:"session.subject_id"}],staticClass:"custom-select col-12",attrs:{name:t.getSubjectName(a,i)},on:{change:[function(s){var a=Array.prototype.filter.call(s.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(e,"subject_id",s.target.multiple?a:a[0])},t.calculateAllottedSubject]}},[s("option",{attrs:{value:"null"}},[t._v(t._s(t.trans("academic.select_subject")))]),t._v(" "),t._l(t.subjects,(function(e){return s("option",{domProps:{value:e.id}},[t._v("\n                                                "+t._s(e.name+" ("+e.code+")")+"\n                                              ")])}))],2),t._v(" "),s("show-error",{attrs:{"form-name":t.timetableAllocationForm,"prop-name":"getSubjectName(index, index1)"}})],1)])})),0):s("div",{staticClass:"text-center m-4"},[t._v("-")])])])})),t._v(" "),s("div",{staticClass:"card-footer text-right"},[s("button",{staticClass:"btn btn-danger waves-effect waves-light ",attrs:{type:"button"},on:{click:function(e){return t.$router.push("/academic/timetable")}}},[t._v(t._s(t.trans("general.back")))]),t._v(" "),s("button",{staticClass:"btn btn-info waves-effect waves-light",attrs:{type:"submit"}},[t._v(t._s(t.trans("general.save")))])])],2):t._e()])]),t._v(" "),s("div",{staticClass:"card"},[s("div",{staticClass:"card-body"},[t.subjects.length?s("div",{staticClass:"table-responsive"},[s("table",{staticClass:"table table-sm"},[s("thead",[s("tr",[s("th",[t._v(t._s(t.trans("academic.subject")))]),t._v(" "),s("th",[t._v(t._s(t.trans("academic.subject_teacher")))]),t._v(" "),s("th",[t._v(t._s(t.trans("academic.subject_max_class_per_week")))]),t._v(" "),s("th",[t._v(t._s(t.trans("academic.subject_alloted_class_per_week")))])])]),t._v(" "),s("tbody",t._l(t.subjects,(function(e){return s("tr",[s("td",[t._v(t._s(e.name+" ("+e.code+")"))]),t._v(" "),s("td",[t._v(t._s(t.getSubjectTeacher(e)))]),t._v(" "),s("td",[t._v(t._s(e.max_class_per_week))]),t._v(" "),s("td",[t._v(t._s(t.getSubjectCount(e)))])])})),0),t._v(" "),s("tfoot",[s("tr",[s("td",{domProps:{textContent:t._s(t.trans("general.total"))}}),t._v(" "),s("td"),t._v(" "),s("td"),t._v(" "),s("td",[t._v(t._s(t.getTotalCount()))])])])])]):t._e()])])])])}),[],!1,null,null,null);e.default=n.exports}}]);
//# sourceMappingURL=allocation.js.map?id=91248cad0b3374825c61