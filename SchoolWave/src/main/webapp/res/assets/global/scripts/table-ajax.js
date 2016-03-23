var TableAjax = function () {
    var handleRecords = function () {

        var grid = new Datatable();

        grid.init({
            src: $("#sample_1"),
            onSuccess: function (grid) {
                // execute some code after table records loaded
                console.log(grid);
            },
            
            onError: function (grid) {
               console.error(grid);
            },
            loadingMessage: 'Loading...',
            dataTable: {
                "pagingType": "bootstrap_full_number",
                "lengthMenu": [
                    [10, 20, 50, 100, 150, -1],
                    [10, 20, 50, 100, 150, "All"] // change per page values here
                ],
                "bStateSave": true,
                "serverSide": true,
                "searching": false,
                "ordering":  false,
                "bPaginate": true,
                "bLengthChange": false,
                "bFilter": false,
                "bSort": false,
                "bInfo": false,
                "bAutoWidth": true,
                "pageLength": 15,
                "ajax": {
                    "url": "http://localhost:8012/xcrm-web/store/member/queryOperateLogList",
                    "data":{
                            "memberId":"00000020",
                            "pageNo":1,
                            "pageSize":5
                            },
                    "headers":{'Content-Type': 'application/x-www-form-urlencoded'}
                },
                "columns": [
                    { "data": "opTime" },
                    { "data": "opContent" }
                ]

            }
        });
    };

    return {
        init: function () {
            handleRecords();
        }
    };

}();