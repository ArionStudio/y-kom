<?php
    $prem = [];
?>

<main id="controlPro">
    <section id="slaveList">
        <div class="title">
            
            <span>
                <form action="" method="POST" class="productForm">
                    <span class="add"><span>Pracownicy</span> <button><a href="/admin/page/slaveAdd/">Dodaj pracownika</a></button></span>
                    <div class="select">
                        <select name='premision'>
                            <?php
                                if(isset($_POST['premision'])){
                                    echo '<option  value="%"></option>';
                                    echo '<option' . ($_POST['premision'] == 2 ? " selected " : "") . ' value="2">Admin</option>';
                                    echo '<option' . ($_POST['premision'] == 1 ? " selected " : "") . ' value="1">Pracownik</option>';
                                }else{
                                    echo "<option selected></option>";
                                    echo '<option value="2">Admin</option>';
                                    echo '<option value="1">Pracownik</option>';
                                }
                            ?>

                        </select>
                        <button type="submit"><span>Potwierdź</span></button>
                    </div>
                </form>
            </span>
        </div>
        <div class="slaves asortyment">
            <?php
                if(isset($_POST['premision'])){
                    $aC->showSlaves($_POST['premision']);
                }else{
                    $aC->showSlaves();
                }
            ?>
        </div>
    </section>
    
</main>