**GothicMod** to długofalowy projekt modyfikacji do gry **Gothic II: Noc Kruka**, rozwijany od 2011 roku przez jednego autora (`stsw`).  
Pierwsze lata projektu miały głównie charakter eksperymentalny — znaczna część tego etapu została później usunięta lub przepisana od nowa.

Docelowo projekt ma przekształcić się w pełnoprawnego moda do gry.  
Obecnie stanowi rozbudowany zbiór skryptów, mechanik oraz zasobów, które:
- modyfikują balans rozgrywki,
- dodają nowe systemy i atrybuty,
- rozszerzają możliwości silnika Gothica,
- wprowadzają liczne przedmioty, potwory oraz narzędzia techniczne.

Skrypty były dotychczas wykorzystywane m.in. do produkcji machinimy — na ich bazie powstała seria na YouTube pod tytułem **„Gothic: Wysłannicy z Akrony”**.

## Spis treści

1. [Wprowadzenie](#wprowadzenie)  
2. [Zakres modyfikacji](#zakres-modyfikacji)  
3. [Technologie](#technologie)  
4. [Instalacja](#instalacja)  
5. [Jak używać](#jak-używać)  
6. [Wkład](#wkład)  
7. [Licencja](#licencja)  
8. [Kontakt](#kontakt)

## Wprowadzenie

GothicMod **nie dodaje obecnie nowej fabuły** ani zadań.  
Projekt skupia się na warstwie systemowej gry — mechanikach, balansie oraz narzędziach, które mogą być wykorzystane zarówno przez gracza, jak i twórców machinimy lub innych modów.

Modyfikacja została zaprojektowana w sposób modularny i możliwie uniwersalny, tak aby:
- działała na oryginalnych lokacjach gry,
- nie wymagała ingerencji w gotowe światy (ZEN),
- mogła służyć jako baza techniczna pod inne projekty.

## Zakres modyfikacji

Mod wprowadza szerokie zmiany i rozszerzenia, obejmujące m.in.:

- 4 poziomy trudności wpływające na zadawane i otrzymywanie obrażenia
- 4 paski widoczne na ekranie z wypisanymi wartościami obok, są to paski: życia, many, staminy oraz doświadczenia
- tryb filmowy pod machinimę dodający np. zapisywanie i wczytywanie pozycji kamery, przydatne skróty klawiszowe do uruchamiania animacji, gestykulacji i mimiki twarzy
- naprawienie kilku błędów z oryginalnej gry np. możliwe blokowanie gracza i kompletne zniknięcie okienka przy odpalaniu dialogu przez co nie dało się zrobić nic poza ubiciem gry
- system obrażeń zmieniony na bardziej sprawiedliwy oraz mocno rozbudowany o dodatkowe mechaniki; dodatkowo system odporności na obrażenia jest częściowo procentowy zamiast całościowo punktowego
- możliwość sprintowania poza walką kosztem tzw. staminy; stamina służy także do walki (bez niej wyprowadzanie ataków jest wolniejsze i zadają one mniej obrażeń)
- nowy atrybut główny (obok życia, many, siły i zręczności) nazywany mocą zaklęć, służący głównie do zwiększenia obrażeń i efektywności zaklęć
- kilka atrybutów drugorzędnych np. kradzież życia, obrażenia krytyczne, obrażenia obszarowe, itd. (większość dostępna jedynie dla potworów lub dla gracza poprzez amulety i pierścienie)
- nieśmiertelne postacie zastąpione niezabijalnymi postaciami (życie schodzi do 1 punktu); dodatkowo NPC walczący z innymi NPC zadają 5x mniej obrażeń
- doświadczenie za pokonanie przeciwnika należy do gracza tylko jeśli ten zadał mu najwięcej obrażeń (wliczane są obrażenia sojuszników) - zapobiega to tzw. kradzieżom zabójstw
- nowe oraz zmodyfikowane zaklęcia (przede wszystkim użytkowe zamiast jedynie zadających obrażenia) np. teleport przedmiotu, wskrzeszenie, szał, noc w dzień, ukrycie, klątwa, oswojenie, spowolnienie czasu, głaz, różnego rodzaju aury oraz przerobione zaklęcia "leczące" paladynów
- nowe oraz zmodyfikowane talenty np. posługiwanie się tarczami, perswazja (głównie podnosi wartość sprzedawanych przedmiotów), kradzież kieszonkowa na PPM gdy cel jest odwrócony zamiast z poziomu dialogu, zaklinanie (nie tylko tworzenie run, ale też wyrób pierścieni i magicznych zwojów)
- uczenie się atrybutów i talentów zawsze kosztuje dodatkowe złoto; możliwe jest również uczenie się punktów życia a premie punktów życia co poziom zostały zmniejszone
- oprócz uczenia się talentów wymagane jest również kupowanie i czytanie receptur np. za punkty nauki można nauczyć się produkcji mikstur zdrowia, ale poszczególne przepisy na mikstury z różnych składników należy kupić
- samonauka walki do max. 10% w każdym drzewku broni - dla balansu i drobnego utrudnienia gracz zaczyna mając 0% posługiwania się bronią w każdym drzewku
- niektóre potwory potrafią zatruwać - zatrucie ujmuje punkty życia na sekundę i jest możliwe do wyleczenia miksturą leczniczą
- opętanie przez poszukiwaczy zatrzymuje regenerację many (w tym regenerację, którą otrzymuje się teraz za uczenie się kręgów magii)
- noszenie ciężkich pancerzy sprawia, że szybciej zużywa się stamina
- wyuczenie się pewnych progów głównych atrybutów daje trwałe bonusy np. skradanie się za 50 zręczności, akrobatyka za 100 zręczności, lekkość pancerzy za 200 max. życia, odporność na trucizny za 400 max. życia, itp.
- wiele nowych i zmodyfikowanych przedmiotów np. trofea, amulety i pierścienie, sporo pancerzy (w tym rozbicie niektórych pancerzy z hełmami na osobne przedmioty), książki, mikstury, zioła, potrawy, bryłki i surowce oraz inne przedmioty
- więcej możliwości tworzenia przedmiotów z różnych składników (oraz używania tzw. MOBów obsługiwanych bez ingerencji w gotowe ZENy dzięki czemu są możliwe do użycia nawet na podstawowych niezmodyfikowanych lokacjach z gry)
- hełmy oprócz pancerzy i pasów doliczają się do zestawu - zestawy zwiększają redukcję obrażeń (np. 10% redukcji za pancerz + pas lub 20% redukcji za pancerz + hełm + pas)
- otwieranie sakiewek, muszli, grubych ryb otwiera od razu wszystkie przedmioty tego typu w slocie w ekwipunku
- nowe typy strzał i bełtów, które można przełączać w ekwipunku np. ustawić ogniste strzały zamiast zwykłych dla łuku
- wiele przedmiotów jest teraz bardziej złożonych i użytecznych np. pierwsze przeczytanie księgi doda punkt nauki lub przydzieli punkty doświadczenia, węgiel służy nie tylko do tworzenia run ale też stali i atramentu, itp.
- zabicie smoków zwiększa siłę i wytrzymałość innych żyjących smoków oraz daje różne bonusy zależnie od smoka np. za bagiennego smoka gracz otrzymuje trwale regenerację życia, many i staminy a za kamiennego premię do wszystkich odporności
- wiele nowych zwierząt i potworów np. kozy, zające, goblini szamani, szakale, tygrysy, drzewce, olbrzymie pająki, królowe pełzaczy, elitarni jaszczuroludzie
- więcej potworów posługuje się teraz innymi typami obrażeń niż obrażenia od broni np. orkowie z kuszami i szkielety z łukami zadają obrażenia od pocisków, demony zadają obrażenia od ognia, dodatkowo więcej potworów używa magii (golem rzuca głazami, goblin-szaman strzela ognistymi pociskami, szkielet-mag strzela szeptami umarłych)
- w obozie piratów można spotkać goblina-pirata imieniem "Grześ", który będzie chodził za graczem i kradł wszystkie przedmioty jakie napotka oraz pomagał w walce z potworami

Całość została napisana z naciskiem na **czytelność, wydajność i ograniczenie ilości kodu przy zachowaniu funkcjonalności**.

## Technologie

Projekt opiera się na następujących narzędziach i rozszerzeniach silnika Gothica:

- **Ikarus**  
- **LeGo**  
- **SystemPack**  
- **GD3D11** (opcjonalnie, do uruchamiania moda)

## Instalacja

Instalator moda zostanie udostępniony wraz z oficjalnym wydaniem pierwszej stabilnej wersji.

Ze względu na rozmiar oraz zakres modyfikacji:
- pliki instalacyjne będą hostowane na osobnej stronie przystosowanej do pobierania dużych archiwów,
- link do pobrania zostanie umieszczony w tym repozytorium.

## Jak używać

Do uruchomienia moda wymagane są:

- **Gothic II: Noc Kruka** w wersji **2.6 (fix)**  
- **GothicStarter** — narzędzie do uruchamiania modów

Po spełnieniu powyższych wymagań mod będzie dostępny do wyboru z poziomu GothicStartera.

## Wkład

Lista autorów oraz źródeł materiałów wykorzystanych w projekcie  
(tekstury, modele, animacje itp.) znajduje się w pliku:

👉 `CREDITS.md`  
https://github.com/stsw133/GothicMod/blob/master/CREDITS.md

## Licencja

Zawartość moda jest udostępniona publicznie.

Zezwalam na:
- korzystanie ze skryptów,
- modyfikowanie ich,
- wykorzystywanie całości lub części projektu jako bazy pod własne mody.

W przypadku użycia projektu lub jego fragmentów **mile widziane (choć niewymagane)** jest zaznaczenie mojego wkładu.

## Kontakt

Błędy, sugestie oraz propozycje rozwoju proszę zgłaszać poprzez system zgłoszeń GitHub:

👉 https://github.com/stsw133/GothicMod/issues
