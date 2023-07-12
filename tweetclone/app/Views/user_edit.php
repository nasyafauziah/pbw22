<?= $this->extend('components/layout') ?>

<?= $this->section('content') ?>
<?php 
helper('form');
$validation = \Config\Services::validation(); 
?>
<div class="row" style="margin-top: 100px; margin-bottom: 100px;">
    <div class="col-md-6 offset-md-3 align-self-center">
    <div class="card">
        <div class="card-header bg-info">
            <strong>Edit Profile</strong>
        </div>
        <div class="card-body">
            <?= form_open('/profile/edit') ?>
            <?= form_hidden('id', $user->id) ?>
            <div class="mb-3">
                <label for="fullname" class="form-label">Fullname</label>
                <input name="fullname" type="text" id="fullname" class="form-control" value="<?=$user->fullname?>">
                <div style="color: red; font-size: small;"> <?=$validation->getError('fullname')?> </div>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password (Tidak harus diisi/ diganti)</label>
                <input name="password" type="password" id="password" class="form-control" onkeyup="activeConfirm(this)">
                <div style="color: red; font-size: small;"> <?=$validation->getError('password')?> </div>
            </div>
            <div class="mb-3">
                <label for="konfirmasi" class="form-label">Konfirmasi Password <span style="display:none;" id="wajib-text">(Harus diisi)</span></label>
                <input name="confirmation" type="password" id="konfirmasi" class="form-control" disabled>
                <div style="color: red; font-size: small;"> <?=$validation->getError('confirmation')?> </div>
            </div>
            <div class="mb-3">
                <input type="submit" class="btn btn-primary" value="Edit Profile">
                <a href="<?=previous_url()?>" class="btn btn-warning">Kembali</a>
            </div>
            <?= form_close() ?>
        </div>
    </div>
    </div>
</div>

<script>
    function activeConfirm(props){
        if(props.value != ""){
            document.getElementById("konfirmasi").disabled = false;
            document.getElementById("wajib-text").style.display = "inline";
        }else{
            document.getElementById("konfirmasi").disabled = true;
            document.getElementById("wajib-text").style.display = "none";
        }
    }
</script>

<?= $this->endSection('content') ?>