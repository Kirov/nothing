var _this = this;

//main
_this.user = {
		name:'huawei',
		password:'HuaweiBeem123'
};
//_this.originalAccidentname = ($('.container #accidentname')[0].options.length > 0) ? $('.container #accidentname')[0].options[$('.container #accidentname')[0].selectedIndex].text : '';
_this.accidentname = {
		accidentname:_this.originalAccidentname,
		setAccidentName:function() {
			$('.container #accidentname option[value="' + this.accidentname + '"]').attr('selected',true);
		}
};
_this.loading = {
		loading:false,
		loadingEl:$("#loading"),
		show:function(){
			this.loadingEl.show();
			this.loading = true;
		},
		hide:function(){
			this.loadingEl.hide();
			this.loading = false;
		}
};
_this.loading.hide();

//登陆超时，重新登录
_this.reLogin = function(resp){
	alert(resp.message);
	window.location.href =  getAjaxUrl(this,"toLogin");
	return;
}

//webRoot
_this.webRoot = webRoot;

//logImport
_this.tempLogName = null;
_this.currentProgressContainer = null;
_this.uploadNewLog = false;
_this.currentImportPage = 1;
_this.hasLastImportPage = false;
_this.hasNextImportPage = false;

//ruleImport
_this.tempRuleName = null;
_this.uploadNewRule = false;

//logSearch

_this.loading = new Object;
_this.loadingConditions = 0;
_this.searchListPageSize = 10;
_this.currentSearchListPage = 1;
_this.totalSearchListPage = 0;
_this.currentSearchType = 'normal';//1:normal 2:alarm 3:dispose
_this.searchHistory = [];
_this.tempEntireMessages = [];
_this.currentSearchCondition = null;
_this.currentAlarmCondition = null;
_this.clearTempEntireMessages = function() {
	_this.tempEntireMessages = [];
};
_this.clearSearchCondition = function() {
	_this.currentSearchCondition = {beginTime: '', endTime: '', accidentname: '', device: '',hostname: '', module: '', severity: '', brief: '', keywords: '', alarm: '', pageNo: 1, pageSize: _this.searchListPageSize};
};
_this.clearAlarmCondition = function() {
	_this.currentAlarmCondition = {beginTime: '', endTime: '', accidentname: '', device: '',hostname: '', module: '', severity: '', brief: '', keywords: '', alarm: 1, pageNo: 1, pageSize: _this.searchListPageSize};
};
_this.hasLastSearchPage = false;
_this.hasNextSearchPage = false;
_this.showHostname = false;
_this.showSource = false;
_this.refreshTag = true;

//logAnalysis
_this.analysis = {};
_this.logAnalysisDevices = [];
_this.analysisListBeginTime = null;
_this.analysisListEndTime = null;
_this.analysis.url = null;

_this.loading.show = function(){
	$("#loading").css({
		"display": "block"
	});
};

_this.loading.hide = function(){
	$("#loading").css({
		"display": "none"
	});
};

// 新增局点下拉列表
_this.createAreaNode = function(area){
	var areaHtml = '';
	$('.container #areaChoice').empty();
	for(var i=0; i<area.length; i++){
		areaHtml += '<option id="' + area[i].areaId + '">' + area[i].areaName + '</option>';
	}
	$('.container #areaChoice').append(areaHtml);
}

// 新增设备下拉列表
_this.createDeviceNode = function(device){
	var deviceHtml = '';
	$('.container #deviceChoice').empty();
	for(var i=0; i<device.length; i++){
		deviceHtml += '<option id="' + device[i].deviceId +'">' + device[i].deviceName + '</option>'; 
	}
	$('.container #deviceChoice').append(deviceHtml);
}

// 新增日志类型列表
_this. createLogTypeNode = function(logType){
	var logTypeHtml = '';
	$('.container #logType').empty();
	for(var i in logType){
		logTypeHtml += '<option>' + logType[i] + '</option>'
	}
	$('.container #logType').append(logTypeHtml);
}
