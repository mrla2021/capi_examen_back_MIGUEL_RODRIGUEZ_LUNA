<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('user_domicilios', function (Blueprint $table) {
            $table->string('fecha_nacimiento')->after('ciudad');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('user_domicilios', function (Blueprint $table) {
            $table->dropColumn('fecha_nacimiento');
        });
    }
};
