<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OrgFormController;
use App\Http\Controllers\SettingorgController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// หน้า OrgForm
Route::prefix('orgform_page')->group(function () {
    Route::get('/', [OrgFormController::class, 'homeorg'])->name('homeorg');
    Route::get('/add', [OrgFormController::class, 'orgform1'])->name('add');
    Route::get('/orgform2', [OrgFormController::class, 'orgform2'])->name('orgform2');
    Route::get('/orgform3', [OrgFormController::class, 'orgform3'])->name('orgform3');
    Route::get('/orgform4', [OrgFormController::class, 'orgform4'])->name('orgform4');
    Route::get('/edit', [OrgFormController::class, 'edit'])->name('edit');
});


// Start Main_org

// ส่วนของเมนูองค์การทางศาสนา
Route::prefix('settingorgform_page')->group(function () {
    Route::get('/', [SettingorgController::class, 'indexorg'])->name('indexorg');
    Route::get('/mainorg', [SettingorgController::class, 'big_org'])->name('searchbig_org'); // หน้าเงื่อนไขการค้นหาองค์การใหญ๋
    Route::get('addmain', [SettingorgController::class, 'addmain'])->name('addmain');  // หน้าฟอร์มองค์การใหญ่
    // Route::get('editmain', [SettingorgController::class, 'edit'])->name('editmain');   //แก้ไข

});

// การจัดการข้อมูล
Route::post('/settingorgform_page/store', [SettingorgController::class, 'store']); // Insert
Route::get('/province/fetch', [SettingorgController::class, 'fetch'])->name('fetch'); //  จังหวัด อำเภอ
Route::get('/province/fetch2', [SettingorgController::class, 'fetch2'])->name('fetch2'); //  อำเภอ ตำบล
Route::get('/province/fetch3', [SettingorgController::class, 'fetch'])->name('fetch3'); //  จังหวัด อำเภอ
Route::get('/province/fetch4', [SettingorgController::class, 'fetch2'])->name('fetch4'); //  อำเภอ ตำบล
Route::get('/settingorgform_page/edit/{id}', [SettingorgController::class, 'edit']);   //แก้ไข
Route::post('/settingorgform_page/update/{id}', [SettingorgController::class, 'update']);
Route::get('/settingorgform_page/delete/{id}', [SettingorgController::class, 'delete']);

// อัพเดท
Route::prefix('settingorgform_page/update')->group(function () {
    Route::post('update', 'App\Http\Controllers\SettingorgController@update')->name('org_form.update');
});

// search องค์การใหญ๋
Route::any('/settingorgform_page/search', [SettingorgController::class, 'search'])->name('search');

// แผนงานระยะยาวขององค์การ
Route::post('/settingorgform_page/longtermplan', [SettingorgController::class, 'longtermplan'])->name('setting.longtermplan');
Route::get('/settingorgform_page/longtermplandelete/{id}', [SettingorgController::class, 'longtermplandelete']); //ลบข้อมูลระยะยาวขององค์การ

// วัตถุประสงค์ของแผนงานหรือโครงการ
Route::get('/settingorgform_page/objective', [SettingorgController::class, 'objective'])->name('setting.objective');
Route::get('/settingorgform_page/objectivedelete/{id}', [SettingorgController::class, 'objectivedelete']); //ลบข้อมูลวัตถุประสงค์ของแผนงานหรือโครงการ

// แนวการดำเนินของแผนงานหรือโครงการ
Route::get('/settingorgform_page/action', [SettingorgController::class, 'action'])->name('setting.action');
Route::get('/settingorgform_page/actiondelete/{id}', [SettingorgController::class, 'actiondelete']); //ลบข้อมูลแนวการดำเนินของแผนงานหรือโครงการ

// เงินทุนและที่มาของรายได้
Route::get('/settingorgform_page/income_source', [SettingorgController::class, 'income_source'])->name('setting.income_source');
Route::get('/settingorgform_page/income_sourcedelete/{id}', [SettingorgController::class, 'income_sourcedelete']); //ลบข้อมูลเงินทุนและที่มาของรายได้

// End Main_org


// Start Sub_org
Route::prefix('settingorgform_page')->group(function () {
    Route::get('/suborg', [SettingorgController::class, 'sub_org'])->name('searchsub_org'); // หน้าเงื่อนไขการค้นหาองค์การย่อย
    Route::get('addsub', [SettingorgController::class, 'addsub'])->name('addsub'); // หน้าฟอร์มองค์การย่อย

});

// อัพเดท
Route::prefix('settingorgform_page/updatesub')->group(function () {
    Route::post('updatesub', 'App\Http\Controllers\SettingorgController@updatesub')->name('org_form.updatesub');
});
Route::get('/province/fetchsub', [SettingorgController::class, 'fetchsub'])->name('sub.fetchsub'); //  จังหวัด อำเภอ
Route::get('/province/fetchsub2', [SettingorgController::class, 'fetchsub2'])->name('sub.fetchsub2'); //  อำเภอ ตำบล
Route::post('/settingorgform_page/storesub', [SettingorgController::class, 'storesub']); // Insert
Route::get('/settingorgform_page/editsub/{id}', [SettingorgController::class, 'editsub']);   //แก้ไข
Route::post('/settingorgform_page/updatesub/{id}', [SettingorgController::class, 'updatesub']); // อัพเดท
Route::get('/settingorgform_page/deletesub/{id}', [SettingorgController::class, 'deletesub']); // ลบข้อมูล

// search องค์การย่อย
Route::any('/settingorgform_page/serachsub', [SettingorgController::class, 'searchsub'])->name('searchsub');

// End Sub_org