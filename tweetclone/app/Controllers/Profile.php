<?php

namespace App\Controllers;

use \App\Models\UserModel;
class Profile extends BaseController{
    var $sess;
    var $curUser;

    var $userMdl;

    public function editForm($user_id){
        $user = $this->userMdl->find($user_id);
        if($user->id != $this->sess->get('currentuser')['userid']){
            $this->sess->set('editprofile', 'error');
            return redirect()->to('/');
        }
        
        $data['user'] = $user;
        return view('user_edit', $data);
    }
    public function editProfile(){
        $user = $this->userMdl->find($this->request->getPost('id'));
        $isPasswordChange = false;
        if(!$this->request->getPost('password') == ""){
            $validasi = [
                'password' => 'required|min_length[8]',
                'confirmation' => 'required_with[password]|matches[password]',
                'fullname' => 'required|min_length[5]'
            ];

            if(!$this->validate($validasi)){
                $data['user'] = $user;
                $data['validation'] = $this->validator;
                $data['input'] = $this->request->getPost();
                return view('user_edit', $data);
            }

            $user->fullname = $this->request->getPost('fullname');
            $user->password = $this->request->getPost('password');
            $isPasswordChange = true;
        }

        $result = $this->userMdl->editProfile($this->request->getPost(), $isPasswordChange);
        if($result){
            $this->sess->setFlashdata('editprofile', 'success');
        } else {
            $this->sess->setFlashdata('editprofile', 'error');
        }

        return redirect()->to('/');
    }

    public function __construct(){
        $this->sess = session();
        $this->curUser = $this->sess->get('currentuser');

        $this->userMdl = new UserModel();
    }
    
}