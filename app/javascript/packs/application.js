// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import 'bootstrap'
import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'datatables.net-bs4'

import $ from 'jquery';
global.$ = jQuery;


Rails.start()
ActiveStorage.start()

// Tv Series datatable
$(document).ready(function() {
  $('#tvSeriesDatatable').dataTable({
    "pagingType": "full_numbers",
      language: {
            paginate: {
                previous: "<",
                next: ">",
                first: "",
                last: ""
            }
      },
    "processing": true,
    "serverSide": true,
    "bLengthChange": false,
    "ajax": {
      "url": $('#receipt-history-datatable').data('source')
    },
    "columns": [
      {"data": "name"},
      {"data": "number_of_seasons"},
      {"data": "date_of_first_release"},
      {"data": "genre"},
      {"data": "actor"},
      {"data": "director"},
      {"data": "shoot_location"},
      {"data": "country"},
      {"data": "stars"}
    ]
  });
});