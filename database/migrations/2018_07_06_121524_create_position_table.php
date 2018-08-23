<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePositionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('position', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title')->index('title')->comment('标题');              
            $table->integer('city')->comment('城市');                                  
            $table->tinyInteger('experience')->comment('工作经验');         
            $table->tinyInteger('education')->comment('学历');   
            $table->tinyInteger('publish')->comment('发布？1:发布,0未发布');  
            $table->tinyInteger('type')->default(2)->comment('工作类型1:兼职,2:全职');     
            $table->smallInteger('num')->comment('招聘人数');  
            $table->smallInteger('departme')->comment('招聘部门'); 
            $table->smallInteger('position_type')->comment('职位');
            $table->text('description')->comment('职位描述');
            $table->text('claim')->comment('岗位要求');
            $table->smallInteger('delivery')->comment('投递数量')->default(0);
            $table->timestamps();
            $table->engine = 'InnoDB';
            $table->charset = 'utf8';
            $table->collation = 'utf8_unicode_ci';
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('position');
    }
}
