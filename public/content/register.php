<?php
    $page->getHeader();
?>


    <main>
        <?php
                $array = ["", "", "", "", "", "", "", ""];
                if(isset($_SESSION['registerData'])){
                    $array = $_SESSION['registerData'];
                    unset($_SESSION['registerData']);
                }
                
            ?>

        <form method="post" action="/s/rejestracja/">
            <div class='title'>Rejestracja</div>
            <div>
                    <fieldset>
                        <legend> Imię </legend>
                        <input 
                            placeholder="Imię" 
                            type="text" 
                            name="name" 
                            value="<?php echo $array[0]; ?>"
                            pattern="[A-Ż]{1}[a-ż]{2,20}"
                            title="Imie musi zawierać od 3 do 20 liter"
                            />
                    </fieldset>
                    
                </div>
            <div>
                    <fieldset>
                        <legend> Nazwisko </legend>
                        <input 
                        placeholder="Nazwisko" 
                        type="text" 
                        name="surname" 
                        value="<?php echo $array[1]; ?>" 
                        pattern="[A-Ż]{1}[a-ż]{2,20}"
                        title="Nazwisko musi zawierać od 3 do 20 liter"
                        />
                    </fieldset>
                    
                </div>
            <div>
                    <fieldset>
                        <legend> Poczta </legend>
                        <input 
                        placeholder="Poczta" 
                        type="text" name="postCity" 
                        value="<?php echo $array[2]; ?>"
                        pattern="[A-Ż]{1}[a-ż]{2,30}"
                        title="Nazwa miejscowości poczty powinna mieć od 3 do 30 znaków"
                        />
                    </fieldset>
                    
                </div>
            <div>
                    <fieldset>
                        <legend> Kod pocztowy </legend>
                        <input 
                        placeholder="Kod" 
                        type="text" 
                        name="postCode" 
                        value="<?php echo $array[3]; ?>"
                        pattern="[0-9]{2}-[0-9]{3}"
                        title='Kod pocztowy powinien zawierać liczby w układzie "xx-xxx"'
                        />
                    </fieldset>
                    
                </div>
            <div>
                    <fieldset>
                        <legend> Adres </legend>
                        <input 
                        placeholder="Adres" 
                        type="text" 
                        name="address" 
                        value="<?php echo $array[4]; ?>" 
                        pattern="[A-Ża-ż0-9 ]{2,40}"
                        title="Adres powinien zawierać od 2 do 40 znaków"
                        />
                    </fieldset>
                    
                </div>
            <div>
                    <fieldset>
                        <legend> Telefon </legend>
                        <input 
                        placeholder="Telefon" 
                        type="text" name="phone" 
                        value="<?php echo $array[5]; ?>" 
                        pattern="[0-9]{9}"
                        title="To nie jest numer telefonu"
                        />
                    </fieldset>
                    
                </div>
            <div>
                    <fieldset>
                        <legend> E-mail </legend>
                        <input 
                        placeholder="E-mail" 
                        type="text" name="email" 
                        value="<?php echo $array[6]; ?>"
                        pattern="[A-Za-z0-9.-_]{3,30}@[a-z0-9]{1,20}.[a-z]{1,4}"
                        title="example@gmail.com"
                        />
                    </fieldset>
                    
                </div>
            <div>
                    <fieldset>
                        <legend> Hasło </legend>
                        <input 
                        placeholder="Hasło" 
                        type="password" 
                        name="password" 
                        value="<?php echo $array[7]; ?>" 
                        pattern="[a-zA-Z0-9]{6,24}"
                        title="Hasło powinno mieć od 6 do 24 znaków i nie może zawierać znaków specjalnych"
                        />
                    </fieldset>
                    
                </div>
            <button class="button" type="submit">Zarejestruj się</button>
        </form>
        <div>
            <div class="linkInfo">
                <a href="/f/logowanie/">Zaloguj się</a>
            </div>
        </div>
    </main>
</body>