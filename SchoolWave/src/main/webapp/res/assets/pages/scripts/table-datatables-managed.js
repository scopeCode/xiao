var TableDatatablesManaged = function () {

    var initTable = function () {

        var table = $('#sample_1');
        
        table.dataTable({
            "language": {
                "aria": {
                    "sortAscending": ": activate to sort column ascending",
                    "sortDescending": ": activate to sort column descending"
                },
                "emptyTable": "No data available in table",
                "info": "Showing _START_ to _END_ of _TOTAL_ records",
                "infoEmpty": "No records found",
                "infoFiltered": "(filtered1 from _MAX_ total records)",
                "lengthMenu": "Show _MENU_",
                "search": "Search:",
                "zeroRecords": "No matching records found",
                "paginate": {
                    "previous":"Prev",
                    "next": "Next",
                    "last": "Last",
                    "first": "First"
                }
            },
            "bServerSide":true,
            "bStateSave": true, 
            "ordering":  false,
            "processing": true,
            "select": true,
            "searching": false,
            "ajax": {
            	"url":"http://localhost:8012/xcrm-web/store/getPageTest",
            	"type": "POST",
            	"dataSrc": function (json) {
            		  if(json.result = 1){
            			  return [['a','b'],['c','d'],['e','f'],['a','b'],['c','d'],['e','f']];
            		  }
            	    }
            },
            "columnDefs": [ 
              {
                "targets": 0,
                "orderable": false,
                "searchable": false
            }],
            "pageLength": 5,            
            "pagingType": "bootstrap_full_number"
        });

        var tableWrapper = jQuery('#sample_1_wrapper');

        table.find('.group-checkable').change(function () {
            var set = jQuery(this).attr("data-set");
            var checked = jQuery(this).is(":checked");
            jQuery(set).each(function () {
                if (checked) {
                    $(this).prop("checked", true);
                    $(this).parents('tr').addClass("active");
                } else {
                    $(this).prop("checked", false);
                    $(this).parents('tr').removeClass("active");
                }
            });
            jQuery.uniform.update(set);
        });

        table.on('change', 'tbody tr .checkboxes', function () {
            $(this).parents('tr').toggleClass("active");
        });
    }


    return {
        init: function () {
            if (!jQuery().dataTable) {
                return;
            }
            initTable();
        }
    };

}();

if (App.isAngularJsApp() === false) { 
    jQuery(document).ready(function() {
        TableDatatablesManaged.init();
    });
}