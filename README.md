# y-kom

## Projekt sklepu komputerowego ##

### Backend wykonany w PHP (obiektowo) oraz MySql ###

### Fronted wykonany z wykorzystaniem SCSS ###

### Do wykonania funkcjonalności strony nie wykorzysano JS ###

### Grafiki wykorzystane do projektu zostały wykonane osobiście lub dobrane z darmowych źródeł ###

Dostępna funkcjonalność:

1. Od strony klienta:
  - możliwość tworzenia i logowania się na konto
  - podział na anonimowego i zalogowanego klienta
    - anonimowy klient:
      - koszyk wykonany za pomocą sesji
    - zalogowany klient:
      - koszyk zapisywany w bazie danych
      - listy (funkcjonalność niedokończona)
      - zapisane zamówienia ze stałym dostępem do podgladu ich stanu
      - możliwość edytowania swoich danych
  - zamówienia:
    - system umożliwia dodanie produktu do koszyka:
       - ze strony głównej (bestsellery i polecane)
       - poprzez wyszukiwanie
       - poprzez zakładki w kategoriach
       - poprzez wyszukiwanie w danej kategori
    - możliwe jest dodanie adresu dostawy innego niż przypisanego do konta (jeżeli zalogowany)
    - sklep nie obsługje płatności

2. Od strony pracownika:
    Możliwość stworzenia konta tylko poprzez panel administratora
    Podział na administratorów i pracowników
    Pracownik:
      - podgląd do ostatnio zalogowanych osób
      - podgląd i możliwośc edycji i dodawania:
        - zamówień
        - produktów
        - magazynu
        - archiwum
    Administrator:
      - opcje 
      - podgląd i możliwośc edycji i dodawania pracowników
      - podgląd wykonanych akcji przez danych pracowników
    
    
    
    
    
    
    
    
