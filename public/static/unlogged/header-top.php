<?php 
    if(isset($_GET['type']) && !empty($_GET['id'])){
        $link = (
            $_GET['type'] == "c" ? "/{$_GET['type']}/{$_GET['id']}/": "/"
       );
    }
    else{
        $link = "/";
    }
?>


<header>
    <section>
        <div class="logo">
            <a href="/"><img src="/dist/files/page/big-logo.png" height="70" width="70" alt=""></a>
        </div>
        <div class="loooop">
            <form action="<?php echo $link;?>" method="post" class="szukajka">
                <fieldset>
                    <legend>Szukaj</legend>
                    <input type="text" name="szukaj" value="<?php echo (isset($_POST['szukaj']) ? $_POST['szukaj'] : "");?>">
                </fieldset>
                <button class="button szukaj">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g id="bx:bx-search" class="loop" fill="white">
                            <path id="Vector" d="M10 18C11.775 17.9996 13.4988 17.4054 14.897 16.312L19.293 20.708L20.707 19.294L16.311 14.898C17.405 13.4997 17.9996 11.7754 18 10C18 5.589 14.411 2 10 2C5.589 2 2 5.589 2 10C2 14.411 5.589 18 10 18ZM10 4C13.309 4 16 6.691 16 10C16 13.309 13.309 16 10 16C6.691 16 4 13.309 4 10C4 6.691 6.691 4 10 4Z" />
                        </g>
                    </svg>
                </button>
            </form>
        </div>
        <div class="toolbar">
            <menu type="toolbar">
                <div>
                    <a href="/f/logowanie/">
                        <img style="width:32px;height:32px;" src="/dist/files/page/konto.svg" alt="" srcset="">
                        <span>twoje konto</span>
                    </a>
                    <div class="userOptionList unlogged">
                        <div>
                            <a href="/f/logowanie/">Zaloguj się</a>
                        </div>
                        <div>
                            <a href="/f/rejestracja/">Zarejestruj się</a>
                        </div>
                        <div>
                            <a href="/f/logowanie/">Twoje konto</a>
                        </div>
                    </div>
                </div>
                <div>
                    <a href="/f/logowanie/">
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