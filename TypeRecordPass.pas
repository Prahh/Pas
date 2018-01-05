{ location.pas }
program LocationCityAndCountry;

const
    maxId = 2;

type
    location = record
        id: integer;
        name_city: string;
        country_id: integer;
    end;
    country = record
        id: integer;
        name_country: string;
    end;
    fullLocation = record
        cityName: string;
        countryName: string;
    end;
    cityArray = array [1..maxId] of location;
    countryArrayId = array[1..maxId] of country;
    outArray = array [1..maxId] of fullLocation;

var
    i: integer;
    n: string;
    c: string;
    cN: country;
    f: fullLocation;
    l: location;
    ID: integer;
    countryAr: countryArrayId;
    cityAr: cityArray;
begin

    for i:= 1 to maxId do
    begin
        l.id := i;
        writeln('Insert city name');
        readln(n); 
        l.name_city := n;
        writeln('Insert country ID');
        readln (ID);
        l.country_id := ID;
        writeln('Insert country name');
        readln(c);
        cN.name_country := c;
        writeln(i);
        cityAr[i].id := l.id;
        cityAr[i].name_city := l.name_city;
        cityAr[i].country_id := l.country_id;
        countryAr[i].id := cN.id;
        countryAr[i].name_country := cN.name_country;
    end;
    for i := 1 to maxId do
    begin    
//        writeln(cityAr[i].name_city, cityAr[i].country_id);
        writeln(cityAr[i].name_city,' ', countryAr[i].name_country); 
    end;
end.
#Pass
