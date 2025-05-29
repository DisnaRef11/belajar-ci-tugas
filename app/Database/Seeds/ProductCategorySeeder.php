<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class ProductCategorySeeder extends Seeder
{
    public function run()
    {
        $data = [
            [
                'nama' => 'Laptop',
            ],
            [
                'nama' => 'Printer',
            ],
        ];

        // Using Query Builder
        $this->db->table('product_category')->insertBatch($data);
    }
}
