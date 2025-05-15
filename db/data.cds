namespace com.sap.cy;
using { Country, managed,cuid,Language} from '@sap/cds/common';

type capital:String(20);

entity countries:cuid,managed{
    name:Country;
    capitalCity:Association to cities;
    status:String enum{
        DEVELOPED;
        DEVELOPING;
        UNDERDEVELOPED;
    };
    language:Language;
    toStates: Composition of many states on toStates.country = $self;
}

entity states:cuid,managed{
    name:String;
    capitalCity:Association to cities;
    country: Association to countries;
    toCities:Composition of many cities on toCities.state=$self;
}


entity cities:cuid,managed{
    name:String;
    state:Association to states;
    country: Association to countries;  
}