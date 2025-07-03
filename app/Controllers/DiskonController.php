public function create()
{
    $validation = \Config\Services::validation();

    if ($this->request->getMethod() == 'post') {
        $rules = [
            'tanggal' => 'required|is_unique[diskon.tanggal]',
            'nominal' => 'required|numeric'
        ];

        if ($this->validate($rules)) {
            $this->diskonModel->save([
                'tanggal' => $this->request->getPost('tanggal'),
                'nominal' => $this->request->getPost('nominal'),
            ]);
            return redirect()->to('/diskon')->with('message', 'Diskon berhasil ditambahkan');
        }
    }

    return view('diskon/create', ['validation' => $validation]);
}
