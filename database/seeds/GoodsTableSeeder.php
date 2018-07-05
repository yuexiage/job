<?php

use Illuminate\Database\Seeder;
use App\Models\Good;
class GoodsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Good::class)->times(100000)->create();
    }
}
