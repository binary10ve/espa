!function(t){"use strict";var e=function(t){this.messages={defaultMessage:"This value seems to be invalid.",type:{email:"This value should be a valid email.",url:"This value should be a valid url.",urlstrict:"This value should be a valid url.",number:"This value should be a valid number.",digits:"This value should be digits.",dateIso:"This value should be a valid date (YYYY-MM-DD).",alphanum:"This value should be alphanumeric.",phone:"This value should be a valid phone number."},notnull:"This value should not be null.",notblank:"This value should not be blank.",required:"This value is required.",regexp:"This value seems to be invalid.",min:"This value should be greater than or equal to %s.",max:"This value should be lower than or equal to %s.",range:"This value should be between %s and %s.",minlength:"This value is too short. It should have %s characters or more.",maxlength:"This value is too long. It should have %s characters or less.",rangelength:"This value length is invalid. It should be between %s and %s characters long.",mincheck:"You must select at least %s choices.",maxcheck:"You must select %s choices or less.",rangecheck:"You must select between %s and %s choices.",equalto:"This value should be the same."},this.init(t)};e.prototype={constructor:e,validators:{notnull:function(t){return t.length>0},notblank:function(t){return"string"==typeof t&&""!==t.replace(/^\s+/g,"").replace(/\s+$/g,"")},required:function(t){if("object"==typeof t){for(var e in t)if(this.required(t[e]))return!0;return!1}return this.notnull(t)&&this.notblank(t)},type:function(t,e){var i;switch(e){case"number":i=/^-?(?:\d+|\d{1,3}(?:,\d{3})+)?(?:\.\d+)?$/;break;case"digits":i=/^\d+$/;break;case"alphanum":i=/^\w+$/;break;case"email":i=/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))){2,6}$/i;break;case"url":t=new RegExp("(https?|s?ftp|git)","i").test(t)?t:"http://"+t;case"urlstrict":i=/^(https?|s?ftp|git):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i;break;case"dateIso":i=/^(\d{4})\D?(0[1-9]|1[0-2])\D?([12]\d|0[1-9]|3[01])$/;break;case"phone":i=/^((\+\d{1,3}(-| )?\(?\d\)?(-| )?\d{1,5})|(\(?\d{2,6}\)?))(-| )?(\d{3,4})(-| )?(\d{4})(( x| ext)\d{1,5}){0,1}$/;break;default:return!1}return""!==t?i.test(t):!1},regexp:function(t,e,i){return new RegExp(e,i.options.regexpFlag||"").test(t)},minlength:function(t,e){return t.length>=e},maxlength:function(t,e){return t.length<=e},rangelength:function(t,e){return this.minlength(t,e[0])&&this.maxlength(t,e[1])},min:function(t,e){return Number(t)>=e},max:function(t,e){return Number(t)<=e},range:function(t,e){return t>=e[0]&&t<=e[1]},equalto:function(e,i,s){return s.options.validateIfUnchanged=!0,e===t(i).val()},remote:function(e,i,s){var n=null,r={},a={};r[s.$element.attr("name")]=e,"undefined"!=typeof s.options.remoteDatatype&&(a={dataType:s.options.remoteDatatype});var o=function(e,i){"undefined"!=typeof i&&"undefined"!=typeof s.Validator.messages.remote&&i!==s.Validator.messages.remote&&t(s.ulError+" .remote").remove(),s.updtConstraint({name:"remote",valid:e},i),s.manageValidationResult()},u=function(e){if("object"==typeof e)return e;try{e=t.parseJSON(e)}catch(i){}return e},h=function(t){return"object"==typeof t&&null!==t?"undefined"!=typeof t.error?t.error:"undefined"!=typeof t.message?t.message:null:null};return t.ajax(t.extend({},{url:i,data:r,type:s.options.remoteMethod||"GET",success:function(t){t=u(t),o(1===t||!0===t||"object"==typeof t&&null!==t&&"undefined"!=typeof t.success,h(t))},error:function(t){t=u(t),o(!1,h(t))}},a)),n},mincheck:function(t,e){return this.minlength(t,e)},maxcheck:function(t,e){return this.maxlength(t,e)},rangecheck:function(t,e){return this.rangelength(t,e)}},init:function(t){var e,i=t.validators,s=t.messages;for(e in i)this.addValidator(e,i[e]);for(e in s)this.addMessage(e,s[e])},formatMesssage:function(t,e){if("object"==typeof e){for(var i in e)t=this.formatMesssage(t,e[i]);return t}return"string"==typeof t?t.replace(new RegExp("%s","i"),e):""},addValidator:function(t,e){this.validators[t]=e},addMessage:function(t,e,i){if("undefined"!=typeof i&&!0===i)return void(this.messages.type[t]=e);if("type"!==t)this.messages[t]=e;else for(var s in e)this.messages.type[s]=e[s]}};var i=function(t,i,s){return this.options=i,this.Validator=new e(i),"ParsleyFieldMultiple"===s?this:void this.init(t,s||"ParsleyField")};i.prototype={constructor:i,init:function(e,i){this.type=i,this.valid=!0,this.element=e,this.validatedOnce=!1,this.$element=t(e),this.val=this.$element.val(),this.isRequired=!1,this.constraints={},"undefined"==typeof this.isRadioOrCheckbox&&(this.isRadioOrCheckbox=!1,this.hash=this.generateHash(),this.errorClassHandler=this.options.errors.classHandler(e,this.isRadioOrCheckbox)||this.$element),this.ulErrorManagement(),this.bindHtml5Constraints(),this.addConstraints(),this.hasConstraints()&&this.bindValidationEvents()},setParent:function(e){this.$parent=t(e)},getParent:function(){return this.$parent},bindHtml5Constraints:function(){(this.$element.hasClass("required")||this.$element.prop("required"))&&(this.options.required=!0),"undefined"!=typeof this.$element.attr("type")&&new RegExp(this.$element.attr("type"),"i").test("email url number range")&&(this.options.type=this.$element.attr("type"),new RegExp(this.options.type,"i").test("number range")&&(this.options.type="number","undefined"!=typeof this.$element.attr("min")&&this.$element.attr("min").length&&(this.options.min=this.$element.attr("min")),"undefined"!=typeof this.$element.attr("max")&&this.$element.attr("max").length&&(this.options.max=this.$element.attr("max")))),"string"==typeof this.$element.attr("pattern")&&this.$element.attr("pattern").length&&(this.options.regexp=this.$element.attr("pattern"))},addConstraints:function(){for(var t in this.options){var e={};e[t]=this.options[t],this.addConstraint(e,!0)}},addConstraint:function(t,e){for(var i in t)i=i.toLowerCase(),"function"==typeof this.Validator.validators[i]&&(this.constraints[i]={name:i,requirements:t[i],valid:null},"required"===i&&(this.isRequired=!0),this.addCustomConstraintMessage(i));"undefined"==typeof e&&this.bindValidationEvents()},updateConstraint:function(t,e){for(var i in t)this.updtConstraint({name:i,requirements:t[i],valid:null},e)},updtConstraint:function(e,i){this.constraints[e.name]=t.extend(!0,this.constraints[e.name],e),"string"==typeof i&&(this.Validator.messages[e.name]=i),this.bindValidationEvents()},removeConstraint:function(t){var t=t.toLowerCase();return delete this.constraints[t],"required"===t&&(this.isRequired=!1),this.hasConstraints()?void this.bindValidationEvents():"ParsleyForm"==typeof this.getParent()?void this.getParent().removeItem(this.$element):void this.destroy()},addCustomConstraintMessage:function(t){var e=t+("type"===t&&"undefined"!=typeof this.options[t]?this.options[t].charAt(0).toUpperCase()+this.options[t].substr(1):"")+"Message";"undefined"!=typeof this.options[e]&&this.Validator.addMessage("type"===t?this.options[t]:t,this.options[e],"type"===t)},bindValidationEvents:function(){this.valid=null,this.$element.addClass("parsley-validated"),this.$element.off("."+this.type),this.options.remote&&!new RegExp("change","i").test(this.options.trigger)&&(this.options.trigger=this.options.trigger?" change":"change");var e=(this.options.trigger?this.options.trigger:"")+(new RegExp("key","i").test(this.options.trigger)?"":" keyup");this.$element.is("select")&&(e+=new RegExp("change","i").test(e)?"":" change"),e=e.replace(/^\s+/g,"").replace(/\s+$/g,""),this.$element.on((e+" ").split(" ").join("."+this.type+" "),!1,t.proxy(this.eventValidation,this))},generateHash:function(){return"parsley-"+(Math.random()+"").substring(2)},getHash:function(){return this.hash},getVal:function(){return this.$element.data("value")||this.$element.val()},eventValidation:function(t){var e=this.getVal();return("keyup"!==t.type||/keyup/i.test(this.options.trigger)||this.validatedOnce)&&("change"!==t.type||/change/i.test(this.options.trigger)||this.validatedOnce)?!this.isRadioOrCheckbox&&this.getLength(e)<this.options.validationMinlength&&!this.validatedOnce?!0:void this.validate():!0},getLength:function(t){return t&&t.hasOwnProperty("length")?t.length:0},isValid:function(){return this.validate(!1)},hasConstraints:function(){for(var t in this.constraints)return!0;return!1},validate:function(t){var e=this.getVal(),i=null;return this.hasConstraints()?this.options.listeners.onFieldValidate(this.element,this)||""===e&&!this.isRequired?(this.reset(),null):this.needsValidation(e)?(i=this.applyValidators(),("undefined"!=typeof t?t:this.options.showErrors)&&this.manageValidationResult(),i):this.valid:null},needsValidation:function(t){return!this.options.validateIfUnchanged&&null!==this.valid&&this.val===t&&this.validatedOnce?!1:(this.val=t,this.validatedOnce=!0)},applyValidators:function(){var t=null;for(var e in this.constraints){var i=this.Validator.validators[this.constraints[e].name](this.val,this.constraints[e].requirements,this);!1===i?(t=!1,this.constraints[e].valid=t,this.options.listeners.onFieldError(this.element,this.constraints,this)):!0===i&&(this.constraints[e].valid=!0,t=!1!==t,!1===this.options.listeners.onFieldSuccess(this.element,this.constraints,this)&&(t=!1))}return t},manageValidationResult:function(){var e=null;for(var i in this.constraints)!1===this.constraints[i].valid?(this.manageError(this.constraints[i]),e=!1):!0===this.constraints[i].valid&&(this.removeError(this.constraints[i].name),e=!1!==e);return this.valid=e,!0===this.valid?(this.removeErrors(),this.errorClassHandler.removeClass(this.options.errorClass).addClass(this.options.successClass),!0):!1===this.valid?(this.errorClassHandler.removeClass(this.options.successClass).addClass(this.options.errorClass),!1):(this.ulError&&0===t(this.ulError).children().length&&this.removeErrors(),e)},ulErrorManagement:function(){this.ulError="#"+this.hash,this.ulTemplate=t(this.options.errors.errorsWrapper).attr("id",this.hash).addClass("parsley-error-list")},removeError:function(e){var i=this.ulError+" ."+e,s=this;this.options.animate?t(i).fadeOut(this.options.animateDuration,function(){t(this).remove(),s.ulError&&0===t(s.ulError).children().length&&s.removeErrors()}):t(i).remove()},addError:function(e){for(var i in e){var s=t(this.options.errors.errorElem).addClass(i);t(this.ulError).append(this.options.animate?t(s).html(e[i]).hide().fadeIn(this.options.animateDuration):t(s).html(e[i]))}},removeErrors:function(){this.options.animate?t(this.ulError).fadeOut(this.options.animateDuration,function(){t(this).remove()}):t(this.ulError).remove()},reset:function(){this.valid=null,this.removeErrors(),this.validatedOnce=!1,this.errorClassHandler.removeClass(this.options.successClass).removeClass(this.options.errorClass);for(var t in this.constraints)this.constraints[t].valid=null;return this},manageError:function(e){if(t(this.ulError).length||this.manageErrorContainer(),!("required"===e.name&&null!==this.getVal()&&this.getVal().length>0||this.isRequired&&"required"!==e.name&&(null===this.getVal()||0===this.getVal().length))){var i=e.name,s=!1!==this.options.errorMessage?"custom-error-message":i,n={},r=!1!==this.options.errorMessage?this.options.errorMessage:"type"===e.name?this.Validator.messages[i][e.requirements]:"undefined"==typeof this.Validator.messages[i]?this.Validator.messages.defaultMessage:this.Validator.formatMesssage(this.Validator.messages[i],e.requirements);t(this.ulError+" ."+s).length||(n[s]=r,this.addError(n))}},manageErrorContainer:function(){var e=this.options.errorContainer||this.options.errors.container(this.element,this.isRadioOrCheckbox),i=this.options.animate?this.ulTemplate.show():this.ulTemplate;return"undefined"!=typeof e?void t(e).append(i):void(this.isRadioOrCheckbox?this.$element.parent().after(i):this.$element.after(i))},addListener:function(t){for(var e in t)this.options.listeners[e]=t[e]},destroy:function(){this.$element.removeClass("parsley-validated"),this.reset().$element.off("."+this.type).removeData(this.type)}};var s=function(t,i,s){this.initMultiple(t,i),this.inherit(t,i),this.Validator=new e(i),this.init(t,s||"ParsleyFieldMultiple")};s.prototype={constructor:s,initMultiple:function(e,i){this.element=e,this.$element=t(e),this.group=i.group||!1,this.hash=this.getName(),this.siblings=this.group?'[data-group="'+this.group+'"]':'input[name="'+this.$element.attr("name")+'"]',this.isRadioOrCheckbox=!0,this.isRadio=this.$element.is("input[type=radio]"),this.isCheckbox=this.$element.is("input[type=checkbox]"),this.errorClassHandler=i.errors.classHandler(e,this.isRadioOrCheckbox)||this.$element.parent()},inherit:function(t,e){var s=new i(t,e,"ParsleyFieldMultiple");for(var n in s)"undefined"==typeof this[n]&&(this[n]=s[n])},getName:function(){if(this.group)return"parsley-"+this.group;if("undefined"==typeof this.$element.attr("name"))throw"A radio / checkbox input must have a data-group attribute or a name to be Parsley validated !";return"parsley-"+this.$element.attr("name").replace(/(:|\.|\[|\])/g,"")},getVal:function(){if(this.isRadio)return t(this.siblings+":checked").val()||"";if(this.isCheckbox){var e=[];return t(this.siblings+":checked").each(function(){e.push(t(this).val())}),e}},bindValidationEvents:function(){this.valid=null,this.$element.addClass("parsley-validated"),this.$element.off("."+this.type);var e=this,i=(this.options.trigger?this.options.trigger:"")+(new RegExp("change","i").test(this.options.trigger)?"":" change");i=i.replace(/^\s+/g,"").replace(/\s+$/g,""),t(this.siblings).each(function(){t(this).on(i.split(" ").join("."+e.type+" "),!1,t.proxy(e.eventValidation,e))})}};var n=function(t,e,i){this.init(t,e,i||"parsleyForm")};n.prototype={constructor:n,init:function(e,i,s){this.type=s,this.items=[],this.$element=t(e),this.options=i;var n=this;this.$element.find(i.inputs).each(function(){n.addItem(this)}),this.$element.on("submit."+this.type,!1,t.proxy(this.validate,this))},addListener:function(t){for(var e in t)if(new RegExp("Field").test(e))for(var i=0;i<this.items.length;i++)this.items[i].addListener(t);else this.options.listeners[e]=t[e]},addItem:function(e){if(t(e).is(this.options.excluded))return!1;var i=t(e).parsley(this.options);i.setParent(this),this.items.push(i)},removeItem:function(e){for(var i=t(e).parsley(),s=0;s<this.items.length;s++)if(this.items[s].hash===i.hash)return this.items[s].destroy(),this.items.splice(s,1),!0;return!1},validate:function(t){var e=!0;this.focusedField=!1;for(var i=0;i<this.items.length;i++)"undefined"!=typeof this.items[i]&&!1===this.items[i].validate()&&(e=!1,(!this.focusedField&&"first"===this.options.focus||"last"===this.options.focus)&&(this.focusedField=this.items[i].$element));this.focusedField&&!e&&this.focusedField.focus();var s=this.options.listeners.onFormSubmit(e,t,this);return"undefined"!=typeof s?s:e},isValid:function(){for(var t=0;t<this.items.length;t++)if(!1===this.items[t].isValid())return!1;return!0},removeErrors:function(){for(var t=0;t<this.items.length;t++)this.items[t].parsley("reset")},destroy:function(){for(var t=0;t<this.items.length;t++)this.items[t].destroy();this.$element.off("."+this.type).removeData(this.type)},reset:function(){for(var t=0;t<this.items.length;t++)this.items[t].reset()}},t.fn.parsley=function(e,r){function a(a,u){var h=t(a).data(u);if(!h){switch(u){case"parsleyForm":h=new n(a,o,"parsleyForm");break;case"parsleyField":h=new i(a,o,"parsleyField");break;case"parsleyFieldMultiple":h=new s(a,o,"parsleyFieldMultiple");break;default:return}t(a).data(u,h)}if("string"==typeof e&&"function"==typeof h[e]){var l=h[e](r);return"undefined"!=typeof l?l:t(a)}return h}var o=t.extend(!0,{},t.fn.parsley.defaults,"undefined"!=typeof window.ParsleyConfig?window.ParsleyConfig:{},e,this.data()),u=null;return t(this).is("form")||!0===t(this).data("bind")?u=a(t(this),"parsleyForm"):t(this).is(o.inputs)&&!t(this).is(o.excluded)&&(u=a(t(this),t(this).is("input[type=radio], input[type=checkbox]")?"parsleyFieldMultiple":"parsleyField")),"function"==typeof r?r():u},t.fn.parsley.Constructor=n,t.fn.parsley.defaults={inputs:"input, textarea, select",excluded:"input[type=hidden], input[type=file], :disabled",trigger:!1,animate:!0,animateDuration:300,focus:"first",validationMinlength:3,successClass:"parsley-success",errorClass:"parsley-error",errorMessage:!1,validators:{},showErrors:!0,messages:{},validateIfUnchanged:!1,errors:{classHandler:function(){},container:function(){},errorsWrapper:"<ul></ul>",errorElem:"<li></li>"},listeners:{onFieldValidate:function(){return!1},onFormSubmit:function(){},onFieldError:function(){},onFieldSuccess:function(){}}},t(window).on("load",function(){t('[data-validate="parsley"]').each(function(){t(this).parsley()})})}(window.jQuery||window.Zepto);