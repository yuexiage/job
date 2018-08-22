<?php
/**
 * Created by PhpStorm.
 * User: yuexiage
 * Date: 2018/7/9
 * Time: 14:16
 */
?>
<div class="footer f12 c999" style="background: rgb(42, 44, 55);">
    <div class="text-info" style="padding-top: 4px;">
        <span>已通过ISO27001:2013 信息安全认证</span>
    </div>
    <div class="text-info" style="margin-top: -13px;">
            <span>
                <div style="text-align:center">
                    @yield('footer')
                </div>
            </span>
    </div>
</div>
<script>
    layui.use('element', function(){
        var element = layui.element;
    });
</script>
</body>
</html>