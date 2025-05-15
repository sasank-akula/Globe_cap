using {com.sap.cy as cy} from '../db/data';


service MyService {

    entity countires as projection on cy.countries;
    entity states as projection on cy.states;
    entity cities as projection on cy.cities;

}