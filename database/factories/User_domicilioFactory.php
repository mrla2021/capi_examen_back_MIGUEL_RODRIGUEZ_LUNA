<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User_domicilio>
 */
class User_domicilioFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [  
            'domicilio' => fake()->address(),
            'numero_exterior' => fake()-> numberBetween(1, 1000),
            'colonia' => fake()->text(20),
            'cp' => fake()->randomNumber(5, true),
            'ciudad' => fake()->name(),
            'fecha_nacimiento' => fake()->dateTime($max = 'now', $timezone = null)

        ];
    }
}
