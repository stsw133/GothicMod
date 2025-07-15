# GothicMod

Projekt jest zbiorem skryptów do gry "Gothic 2: Noc Kruka" przygotowywanych od 2011 roku (pierwsze 5-10 lat to etap głównie eksperymentalny w większości wycięty) przez jedną osobę będącą autorem projektu.
Projekt docelowo przerodzi się w pełnoprawnego moda, obecnie jednak stanowi tylko zbiór mechanik, nowych przedmiotów i potworów itp.
Dotychczasowe zastosowanie tych skryptów to produkcja machinimy - na tym modzie przygotowana została seria na youtube zwana "Gothic: Wysłannicy z Akrony".

## Spis treści

1. [Wprowadzenie](#wprowadzenie)
2. [Technologie](#technologie)
3. [Instalacja](#instalacja)
4. [Jak używać](#jak-używać)
5. [Wkład](#wkład)
6. [Licencja](#licencja)
7. [Kontakt](#kontakt)

## Wprowadzenie

Skrypty zawarte w modzie obecnie nie dodają elementów fabularnych, a jedynie modyfikują balans, dodają przedmioty i potwory, zmieniają lub dodają nowe mechaniki (z czego większość istnieje już w wielu innych modach) np.:
- 4 poziomy trudności wpływające na zadawane i otrzymywanie obrażenia
- możliwość sprintowania kosztem staminy, która służy dodatkowo do walki (bez niej wyprowadzanie ataków jest wolniejsze i zadają one mniej obrażeń)
- 4 paski widoczne na ekranie z wypisanymi wartościami obok, są to paski: życia, many, staminy oraz doświadczenia
- system obrażeń zmieniony na bardziej sprawiedliwy m.in. podstawowe obrażenia działają jak wcześniej trafienia krytyczne a trafienia krytyczne zadają po prostu 2x więcej obrażeń (potwory mają odpowiedno 2x więcej zdrowia aby zachować balans), system odporności na obrażenia jest częściowo procentowy zamiast całościowo punktowego
- nowy atrybut główny (obok życia, many, siły i zręczności) nazywany mocą, służący głównie do zwiększenia obrażeń i efektywności zaklęć
- kilka atrybutów drugorzędnych np. kradzież życia, obrażenia krytyczne, obrażenia obszarowe itp. (większość dostępna jedynie dla potworów lub dla gracza poprzez amulety i pierścienie)
- nieśmiertelne postacie zastąpione niezabijalnymi postaciami (życie schodzi do 1 punktu) - dodatkowo NPC walczący z innym NPC zadaje mu znacznie mniej obrażeń
- doświadczenie za pokonanie przeciwnika należy do gracza tylko jeśli ten zadał mu najwięcej obrażeń (wliczane są obrażenia sojuszników) - zapobiega to tzw. kradzieżom zabójstw
- nowe oraz zmodyfikowane zaklęcia - przede wszystkim użytkowe zamiast jedynie zadających obrażenia - np. teleport przedmiotu, wskrzeszenie, szał, noc w dzień, ukrycie, klątwa, oswojenie, spowolnienie czasu, głaz, różnego rodzaju aury oraz przerobione zaklęcia "leczące" paladynów
- nowe oraz zmodyfikowane talenty - perswazja (przede wszystkim podnosi wartość sprzedawanych przedmiotów), kradzież kieszonkowa na PPM gdy cel jest odwrócony zamiast z poziomu dialogu, górnictwo, jubilerstwo, płatnerstwo, gotowanie, wyrób strzał, wyrób pergaminów i zwojów magicznych
- uczenie się atrybutów i talentów zawsze kosztuje dodatkowe złoto, możliwe jest również uczenie się punktów życia a premie punktów życia co poziom zostały zmniejszone
- niektóre potwory potrafią zatruwać - zatrucie ujmuje punkty życia na sekundę i jest możliwe do wyleczenie miksturą leczniczą, opętanie poszukiwaczy zatrzymuje regenerację many (w tym regenerację, którą otrzymuje się teraz za uczenie się kręgów magii) a noszenie ciężkich pancerzy sprawia, że szybciej zużywa się stamina
- więcej możliwości tworzenia przedmiotów z różnych składników oraz używania tzw. MOBów obsługiwanych bez ingerencji w gotowe ZENy dzięki czemu są możliwe do użycia nawet na podstawowych niezmodyfikowanych lokacjach z gry
- tryb filmowy pod machinimę dodający np. zapisywanie i wczytywanie pozycji kamery, przydatne skróty klawiszowe do uruchamiania animacji, gestykulacji i mimiki twarzy
- samonauka walki do max. 10% w każdym drzewku broni - dla balansu i drobnego utrudnienia gracz zaczyna mając 0% posługiwania się bronią w każdym drzewku
- naprawienie kilku błędów z oryginalnej gry np. blokowanie gracza i kompletne zniknięcie okienka przy odpalaniu dialogu przez co nie dało się zrobić nic poza ubiciem gry
- wiele nowych i zmodyfikowanych przedmiotów np. trofea, amulety i pierścienie, sporo pancerzy (w tym rozbicie niektórych pancerzy z hełmami na osobne przedmioty), książki, mikstury, zioła, potrawy, bryłki i surowce oraz inne przedmioty
- hełmy oprócz pancerzy i pasów doliczają się do zestawu - zestawy zwiększają redukcję obrażeń (np. 10% redukcji za pancerz + pas lub 20% redukcji za pancerz + hełm + pas)
- otwieranie sakiewek, muszli, grubych ryb otwiera od razu wszystkie przedmioty tego typu w slocie w ekwipunku
- oprócz uczenia się talentów wymagane jest również kupowanie i czytanie receptur np. za punkty nauki można nauczyć się produkcji mikstur zdrowia, ale poszczególne przepisy na mikstury z różnych składników należy kupić
- nowe typy strzał i bełtów, które można przełączać w ekwipunku np. ustawić ogniste strzały zamiast zwykłych dla łuku
- wiele przedmiotów jest teraz bardziej złożonych i użytecznych np. pierwsze przeczytanie księgi doda punkt nauki lub przydzieli punkty doświadczenia, węgiel służy nie tylko do tworzenia run ale też stali i atramentu itp.
- zabicie smoków zwiększa siłę i wytrzymałość innych żyjących smoków oraz daje różne bonusy zależnie od smoka np. za bagiennego smoka gracz otrzymuje trwale regenerację życia, many i staminy a za kamiennego premię do wszystkich odporności
- wiele nowych zwierząt i potworów np. kozy, zające, goblini szamani, szakale, tygrysy, drzewce, olbrzymie pająki, królowe pełzaczy, elitarni jaszczuroludzie
- więcej potworów posługuje się teraz innymi typami obrażeń niż obrażenia od broni np. orkowie z kuszami i szkielety z łukami zadają obrażenia od pocisków, demony zadają obrażenia od ognia, dodatkowo więcej potworów używa magii (golem rzuca głazami, goblin-szaman strzela ognistymi pociskami, szkielet-mag strzela szeptami umarłych)
- w obozie piratów można spotkać goblina-pirata imieniem "Grześ", który będzie chodził za graczem i kradł wszystkie przedmioty jakie napotka oraz pomagał w walce z potworami
- skrypty ogólnie mocno zmodyfikowane aby osiągnąć te same efekty z pomocą mniej linii kodu

## Technologie

Mod wykorzystuje pakiety skryptowe Ikarus oraz LeGo.

## Instalacja

Instalator dostępny będzie, gdy wyjdzie oficjalna wersja moda. Ze względu na rozmiar modyfikacji, instalator będzie przechowywany na osobnej, dostosowanej do pobierania dużych plików stronie internetowej - link do pobrania zostanie wówczas podany tutaj.

## Jak używać

Do uruchomienia moda niezbędny jest GothicStarter służący do uruchamiania gry Gothic z wszelkimi modami.

## Wkład

Lista osób udostępniających materiały (jak tekstury, modele i animacje) zostanie podana pod linkiem https://github.com/stsw133/GothicMod/blob/master/CREDITS.md gdy wyjdzie oficjalna wersja moda.

## Licencja

Zawartość moda udostępniona jest publicznie i pozwalam na korzystanie z zawartych w nim skryptów a nawet na wykorzystanie całości jako bazę pod własne mody - w takiej sytuacji proszę (ale nie wymagam) o odpowiednie zaznaczenie mojego wkładu.

## Kontakt

Wszelkie problemy i propozycję proszę składać na stronie projektu https://github.com/stsw133/GothicMod/issues