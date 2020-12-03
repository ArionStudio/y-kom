    <main id="login">
    <?php
            $array = ["",""];
            if(isset($_SESSION['loginData'])){
                $array = $_SESSION['loginData'];
                unset($_SESSION['loginData']);
            }
        ?>
        <?php if(isset($array[2])){ ?>
            <div class="errorInfo">
                <span>
                    <?php echo $array[2]; ?>
                </span>
            </div>
        <?php } ?>
        <form action="/admin/fun/login/" method='POST'>
            <div class="title">Zaloguj się</div>
            <div>
                <fieldset>
                    <legend> E-mail </legend>
                    <input placeholder="E-mail" type="text" name="email" value="<?php echo $array[0]; ?>" />
                </fieldset>
                
            </div>
            <div>
            <fieldset>
                <legend> Hasło </legend>
                <input placeholder="Hasło" type="password" name="password" value="<?php echo $array[1]; ?>" />
            </fieldset>
            </div>
            <button class="button" type="submit">Zaloguj się</button>
        </form>
        
    </main>
</body>