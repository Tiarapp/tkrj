<?php

namespace App\Providers;

use App\Models\Data\HakAkses;
use App\Models\Master\MasterPeriode;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class MenuServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        // get all data from menu.json file
        $verticalMenuJson = file_get_contents(base_path('resources/data/menu-data/verticalMenu.json'));

        view()->composer('*', function ($view){
            if (empty(Auth::user()->id)) {
                $verticalMenuJson = file_get_contents(base_path('resources\data\menu-data\menu_kosong.json'));
            }else{
                // $user = Auth::user()->id;
                // $periode = new MasterPeriode();
                // $periode_aktif = $periode->getPeriodeAktif();
                // $hak_akses = HakAkses::where('user_id', $user)
                //                         ->where('tahunajaran_id', $periode_aktif->tahunajaran_id)
                //                         ->first();

                // $level=[];
                // foreach ($hak_akses as $key => $value) {
                //     array_push($level, $value->level);
                // }
                // $fix = implode(",", $level);
                switch (Auth::user()->level) {
                    case 'Admin':
                        $verticalMenuJson = file_get_contents(base_path('resources\data\menu-data\menu_admin.json'));
                        break;
                    
                    case 'Guru';
                        $verticalMenuJson = file_get_contents(base_path('resources\data\menu-data\menu_walas.json'));
                        break;
                }
            }
                    $verticalMenuData = json_decode($verticalMenuJson);

                    $horizontalMenuJson = file_get_contents(base_path('resources/data/menu-data/horizontalMenu.json'));
                    $horizontalMenuData = json_decode($horizontalMenuJson);
                    // Share all menuData to all the views
                    View::share('menuData', [$verticalMenuData, $horizontalMenuData]);
        });

    }
}
