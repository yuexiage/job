<?php

namespace App\Admin\Extensions;

use Encore\Admin\Form\Field;

class TinEditor extends Field
{
    protected $view = 'admin.tineditor';
    
    protected static $css = [];
    
    protected static $js = [
        'js/tinymce/tinymce.min.js'
    ];
    
    public function render()
    {
        
        $this->script = <<<EOT
        tinymce.init({
            selector: '#{$this->id}',
            menubar: false,
            language: 'zh_CN',
            imageupload_url: '/misc/images/articleimages',
            plugins: [
                'advlist autolink lists link image imagetools print preview anchor textcolor ',
                'searchreplace visualblocks code fullscreen ',
                'insertdatetime media table contextmenu paste code wordcount'
            ],
            toolbar: 'preview link code insertdatetime | media  image | undo redo |  formatselect | bold italic backcolor  | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent  | removeformat ',
            convert_urls: false,
            images_upload_credentials: true,
            images_upload_handler: function s(e, t, n) {
                var o_n = n;
                n = function (s) {
                    window.alert(s);
                    o_n(s);
                }
                var a, s, i = function(e){
                    var t,n;
                    return n={
                        "image/jpeg":"jpg",
                        "image/jpg":"jpg",
                        "image/gif":"gif",
                        "image/png":"png"
                    },
                        t=n[e.blob().type.toLowerCase()]||"dat",e.id()+"."+t
                };
                a = new XMLHttpRequest,
                    //填写postAcceptor的地址
                    a.open("POST", "/misc/tinymce/postAcceptor.php"),
                    a.withCredentials = true,
                    a.onload = function() {
                        var e, o = function(e, t) {
                            return e ? e.replace(/\/$/, "") + "/" + t.replace(/^\//, "") : t
                        };
                        return 200 != a.status ? void n(a.responseText) : (e = JSON.parse(a.responseText),e && "string" == typeof e.location ? void t(o("/", e.location)) : void n("Invalid JSON: " + a.responseText))
                    },
                    s = new FormData,
                    //填写图片存放的目录地址
                    s.append("misc/tinymce/images/articleimages", e.blob(), i(e)),
                    a.send(s)
            },
 
            content_css: [
                '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
                '//www.tinymce.com/css/codepen.min.css']
        });

EOT;
        return parent::render();
        
    }
}