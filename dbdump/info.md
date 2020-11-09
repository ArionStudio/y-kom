## I sposób ##
# stwórz baze danych ykom w phpmyadmin ##
# wejdź w zakładke importuj #
# zaimportuj plik #

## II sposób ##
# edytuj plik sql #
# i dodaj tam na początku: #
DROP DATABASE IF EXISTS ykom;
CREATE DATABASE ykom;
use ykom;
# przejdź do phpmyadmin i wejdź w zakładke sql(bez różnicy gdzie ) i wklej to #