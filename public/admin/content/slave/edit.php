<?php
    
    $array = $aC->getSlaveDataForEditForm($_GET['id']);
    if(isset($_SESSION['slaveData'])){
        $array = $_SESSION['slaveData'];
        unset($_SESSION['slaveData']);
    }
    if(isset($_SESSION['slaveData'])){
        $array = $_SESSION['slaveData'];
        unset($_SESSION['sData']);
    }
?>
<main>
    <section>
        <form action="/admin/fun/slaveEdit/<?php echo $_GET['id']; ?>/" method="post" class="productAddForm" >
        <div class="title" style="text-align: center">Formularz edycji pracownika</div>
            <div>
                <fieldset>
                    <legend> Name </legend>
                    <input placeholder="Name" type="text" name="name" title="Imie musi mieć od 3 do 21 znaków" pattern="[A-Ż]{1}[a-ż]{2,20}" value="<?php echo $array[0]; ?>" />
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> Surname </legend>
                    <input placeholder="Surname" type="text" name="surname" title ="Nazwisko musi mieć od 3 do 30 znaków" pattern="[A-Ż]{1}[a-ż]{2,29}" value="<?php echo $array[1]; ?>" />
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> Email </legend>
                    <input placeholder="example@gmail.com" type="email" name="email" title="np.: jan-kowalsk.i@gmail.com" pattern="[A-Za-z0-9.-_]{3,30}@[a-z0-9]{1,20}.[a-z]{1,4}" value="<?php echo $array[2]; ?>" />
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> New password</legend>
                    <input placeholder="Password" type="password" name="password" title="Hasło musi miec od 6 do 24 liczb lub znaków angielskich" pattern="[a-zA-Z0-9]{6,24}" value="" />
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> Permission* </legend>   
                    <select name='permission'>
                        <option value="2" <?php echo ($array[3] == 2? " selected " : " ") ?>>Admin</option>
                        <option value="1" <?php echo ($array[3] == 1? " selected " : " ") ?>>Pracownik</option>
                    </select>
                </fieldset>
                <div>*Jeśli nie podasz hasła nie zmienie się ono</div>
            </div>
            <div class="buttons">
                <button type="submit">Edytuj</button><button><a href="/admin/page/slave/">Anuluj</a></button>
            </div>

        </form>
    </section>
</main>