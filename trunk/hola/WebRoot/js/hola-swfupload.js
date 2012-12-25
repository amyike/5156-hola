var upload;
window.onload = function() {
	upload = new SWFUpload({
		// 处理文件上传的url
		upload_url : "/cos.upload",
		// 上传文件限制设置
		file_size_limit : "10240", // 10MB
		file_types : "*.jpg;*.gif;*.png", // 此处也可以修改成你想限制的类型，比如：*.doc;*.wpd;*.pdf
		file_types_description : "Image Files",
		file_upload_limit : "10",
		file_queue_limit : "10",
		// 事件处理设置（所有的自定义处理方法都在handler.js文件里）
		file_dialog_start_handler : fileDialogStart,
		file_queued_handler : fileQueued,
		file_queue_error_handler : fileQueueError,
		file_dialog_complete_handler : fileDialogComplete,
		upload_start_handler : uploadStart,
		upload_progress_handler : uploadProgress,
		upload_error_handler : uploadError,
		upload_success_handler : uploadSuccess,
		upload_complete_handler : uploadComplete,
		// 按钮设置
		button_image_url : "/componets/swfupload/images/xpbutton.png", // 按钮图标
		button_placeholder_id : "spanButtonPlaceholder",
		button_width : "220px",
		button_height : "80px",
		// swf设置
		flash_url : "/componets/swfupload/swfupload.swf",
		custom_settings : {
			progressTarget : "fsUploadProgress",
			cancelButtonId : "btnCancel"
		},
		// Debug 设置
		debug : false
	});
}