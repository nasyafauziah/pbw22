<?php
    if(isset($_POST['submit'])){
        $Nama = $_POST['nama'];
        $Alamat = $_POST['alamat'];
        $Nomor = $_POST['nomor'];
        $Pesanan = $_POST['pesan'];
        $no_wa = $_POST['noWA'];
        header("location:https://api.whatsapp.com/send?phone=$no_wa&text=Nama:%20$Nama%20%0DAlamat:%20$Alamat%20%0DNo:%20$Nomor%20%0DPesanan:%20$Pesanan");

    }else {
        echo "
        <scipt>
        window.location=history.go(-1);
        </scipt>
        ";
    }
?>