/**//***********************************
* 简单时间控件： version 1.0
* 作者：李禄燊 
* 时间：2007-10-31
* 
* 使用说明：
* 首先把本控件包含到页面 
* <script src="XXX/setTime.js" type="text/javascript"></script>
* 控件调用函数：_SetTime(field)
* 例如 <input name="time" type="text" onclick="_SetTime(this)"/>
*
************************************/
var str = "";
document.writeln("<div id=\"_contents\" style=\"padding:6px; background-color:#E3E3E3; font-size: 12px; border: 1px solid #777777; position:absolute; left:?px; top:?px; width:?px; height:?px; z-index:1; visibility:hidden\">");
str += "\u65f6<select id=\"_hour\">";
for (h = 0; h <= 9; h++) {
str += "<option value=\"0" + h + "\">0" + h + "</option>";
}
for (h = 10; h <= 23; h++) {
str += "<option value=\"" + h + "\">" + h + "</option>";
}
str += "</select> \u5206<select id=\"_minute\">";
for (m = 0; m <= 9; m++) {
str += "<option value=\"0" + m + "\">0" + m + "</option>";
}
for (m = 10; m <= 59; m++) {
str += "<option value=\"" + m + "\">" + m + "</option>";
}
str += "</select> </br></br><input name=\"queding\" type=\"button\" onclick=\"_select()\" value=\"\u786e\u5b9a\" style=\"font-size:12px\" />" +
		"&nbsp;<input name=\"clear\" type=\"button\" onclick=\"_clear()\" value=\"\u6E05\u7A7A\" style=\"font-size:12px\" />" +
		"&nbsp;<input name=\"close\" type=\"button\" onclick=\"_close()\" value=\"\u5173\u95ED\" style=\"font-size:12px\" /></div>";
document.writeln(str);
var _fieldname;
function _SetTime(tt) {
_fieldname = tt;
var ttop = tt.offsetTop; //TT控件的定位点高
var thei = tt.clientHeight; //TT控件本身的高
var tleft = tt.offsetLeft; //TT控件的定位点宽
while (tt = tt.offsetParent) {
ttop += tt.offsetTop;
tleft += tt.offsetLeft;
}
document.getElementById("_contents").style.top = (ttop + thei + 4)+"px";
document.getElementById("_contents").style.left = tleft+"px";
document.getElementById("_contents").style.visibility = "visible";
}
function _select() {
_fieldname.value = document.getElementById("_hour").value + ":" + document.getElementById("_minute").value;
document.getElementById("_contents").style.visibility = "hidden";
} 
function _clear() {
	_fieldname.value = "";
	document.getElementById("_contents").style.visibility = "hidden";
	} 
function _close() {
	document.getElementById("_contents").style.visibility = "hidden";
	} 