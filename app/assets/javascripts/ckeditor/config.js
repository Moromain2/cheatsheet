CKEDITOR.editorConfig = function (config) {

  config.language = 'en';
  config.filebrowserBrowseUrl = "/ckeditor/attachment_files";
  config.filebrowserFlashBrowseUrl = "/ckeditor/attachment_files";
  config.filebrowserFlashUploadUrl = "/ckeditor/attachment_files";
  config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures";
  config.filebrowserImageBrowseUrl = "/ckeditor/pictures";
  config.filebrowserImageUploadUrl = "/ckeditor/pictures";
  config.filebrowserUploadUrl = "/ckeditor/attachment_files";

  config.toolbar_basic = [
    ['Bold','Italic','Underline','Strike', 'RemoveFormat'],
    ['Format', 'Styles'],
    ['BulletedList','NumberedList','Blockquote'],
    ['Link','Unlink'],
    ['Image', 'Attachment', 'Flash', 'Embed'],
    ['Outdent','Indent'],
    ['Undo','Redo'],
    ['Source']
  ];
  config.toolbar = "basic";
  config.height = 400;
}
