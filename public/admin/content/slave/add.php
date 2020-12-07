<?php
    $array = ["","", "", "", "", ""];
    if(isset($_SESSION['slaveData'])){
        $array = $_SESSION['slaveData'];
        unset($_SESSION['sData']);
    }
?>
<main>
    <section>
        <form action="/admin/fun/slaveAdd/" method="post" class="productAddForm" >
        <div class="title" style="text-align: center">Formularz dodawania pracownika</div>
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
                    <legend> Password </legend>
                    <input placeholder="Password" type="password" name="password" title="Hasło musi miec od 6 do 24 liczb lub znaków angielskich" pattern="[a-zA-Z0-9]{6,24}" value="<?php echo $array[3]; ?>" />
                </fieldset>
            </div>
            <div>
                <fieldset>
                    <legend> Premission </legend>    
                    <select name='permission'>
                        <option value="2" >Admin</option>
                        <option value="1" selected >Pracownik</option>
                    </select>
                </fieldset>
            </div>
            <div class="buttons">
                <button>Dodaj</button><button><a href="/admin/page/slave/">Anuluj</a></button>
            </div>

        </form>
    </section>
</main>