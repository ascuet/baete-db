<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ExcelController;
use App\Http\Controllers\CalculationController;
use App\Http\Controllers\CalculationForBatch38;
use App\Http\Controllers\CalculationForBatch39;
use App\Http\Controllers\CalculationForBatch40;
use App\Http\Controllers\ChartController;
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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [ExcelController::class, 'welcome']);
Route::get('export', [ExcelController::class, 'export'])->name('export');
Route::post('import', [ExcelController::class, 'import'])->name('import');

Route::get('calculate-38', [CalculationForBatch38::class, 'getData']);
Route::get('calculate-39', [CalculationForBatch39::class, 'getData']);

Route::get('calculate-40', [CalculationForBatch40::class, 'getData']);

Route::get('calculate', [CalculationController::class, 'getData']);
Route::get('chart/{roll}/{po1}/{po2}/{po3}/{po4}/{po5}/{po6}/{po7}/{po8}/{po9}/{po10}/{po11}/{po12}',[ChartController::class, 'chart']);
