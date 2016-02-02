
    function doSearch(){
        query.get(search_input, {
        success: function(ffs) {
            alert("item found");
        },
        error: function(object, error) {
            alert("item not found");
        }
        });
    }