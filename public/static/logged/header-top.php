<header class="logged">
    <section>
        <div class="logo">
            <a href="/"><img src="/dist/files/page/big-logo.png" height="70" width="70" alt=""></a>
        </div>
        <div class="loooop">
        </div>
        <div class="toolbar">
            <menu type="toolbar">
                <div>
                    <a>
                        <img style="width:32px;height:32px;" src="/dist/files/page/konto.svg" alt="" srcset="">
                        <span>twoje konto</span>
                    </a>
                    <div class="userOptionList">
                        <div>Cześć, 
                            <span><?php echo $_SESSION["loggedUserData"]["name"];?></span>
                        </div>
                        <div>
                            <a href="/f/moje-konto/">Twoje konto</a>
                        </div>
                        <div>
                            <a href="/f/moje-zamowienia/">Zamówienia</a>
                        </div>
                        <div>
                            <a href="/s/logout/">Wyloguj się</a>
                        </div>
                    </div>
                </div>
                <div>
                    <a href="/f/listy/">
                        <img style="width:32px;height:32px;" src="/dist/files/page/lista.svg" alt="" srcset="">
                        <span>twoje listy</span>
                    </a>
                </div>
                <div>
                    <a href="/f/koszyk/">
                        <img style="width:32px;height:32px;" src="/dist/files/page/koszyk.svg" alt="" srcset="">
                        <span>koszyk</span>
                    </a>
                </div>
            </menu>
        </div>
    </section>
