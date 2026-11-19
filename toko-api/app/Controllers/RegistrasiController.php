<?php

namespace App\Controllers;

use App\Models\MRegistrasi;

class RegistrasiController extends RestfulController
{

    public function registrasi()
    {
        $json = $this->request->getJSON(true) ?? [];

        $data = [
            'nama'     => $json['nama']     ?? $this->request->getPost('nama'),
            'email'    => $json['email']    ?? $this->request->getPost('email'),
            'password' => password_hash($json['password'] ?? $this->request->getPost('password') ?? '', PASSWORD_DEFAULT),
        ];

        $model = new MRegistrasi();
        $model->save($data);
        return $this->responseHasil(200, true, "Registrasi Berhasil");
    }
}