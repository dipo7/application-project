var table_data = [ { first_name : 'Rose',
                       last_name  : 'Tyler',
                       home       : 'Earth' },
                     { first_name : 'Zoe',
                       last_name  : 'Heriot',
                       home       : 'Space Station W3'},
                     { first_name : 'Jo',
                       last_name  : 'Grant',
                       home       : 'Earth'},
                     { first_name : 'Leela',
                       last_name  : null,
                       home       : 'Unspecified'},
                     { first_name : 'Romana',
                       last_name  : null,
                       home       : 'Gallifrey'},
                     { first_name : 'Clara',
                       last_name  : 'Oswald',
                       home       : 'Earth'},
                     { first_name : 'Adric',
                       last_name  : null,
                       home       : 'Alzarius'},
                     { first_name : 'Susan',
                       last_name  : 'Foreman',
                       home       : 'Gallifrey'} ];
var k = "<tbody>";
var i;
function insertfxn(){
    "use strict";
    /*global document: false */
    for (i = 0; i < table_data.length; i) {
        k += '<tr>';
        k += '<td>' + table_data[i].first_name + '</td>';
        k += '<td>' + table_data[i].last_name + '</td>';
        k += '<td>' + table_data[i].home + '</td>';
        k += '</tr>';
    }
}
    k += '</tbody>';