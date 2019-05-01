$(document).ready(function () {
    console.log("Loaded: Members-online.js");
    /*
     * We want to be able to get a list of all the ID's on the page from online_status_x
     *  Where x is the member id
     */

    get_member_online_list();
    // Fire the event to retrieve our online Members List from the Database every x Seconds.
    // i.e. 5000 = 5 Seconds
    setInterval(get_member_online_list, 5000);

    // (function(){
    //     // do some stuff
    //     setTimeout(get_member_online_list, 10000);
    // })();

    // This reads the list from the Database - Faked at the moment
    function get_member_online_list() {
        var member_online_ids = [];
        $.ajax({
            url: ajaxUrlMembersOnline + 'ajax', /* ajax_url is declared and initialized external to this document*/
            dataType: 'json',
            type: 'POST',
            data: {action: 'get_online_members'},
            success: function (data) {
                //console.log('YEAH!!! - AJAX Doc request Succeeded' + JSON.stringify(data));
                member_online_ids = data.result; // Get the ID Array result
                update_admin_page(member_online_ids); // Update the Members Table
            },
            error: function (data) {
                console.log('Whoops - AJAX Doc request failed ' + JSON.stringify(data));
            }
        });
    }

    function update_admin_page(member_online_ids) {
        /** Dummy Results back from AJAX Call **/
//        var member_online_ids = [3];

        /* Read all the Member IDs displayed on the page */
        var memberListOnPage = [];
        $("td[id^=online_status_]").each(function () {
            var id = this.id;
            memberListOnPage.push(parseInt(id.replace(/\D+/, '')));
            // We now have the Array of member ID's from the page
        });
// Debug
         var stringOfElementIDs = member_online_ids.toString();
         console.log("The Members online are: " + stringOfElementIDs);

        var stringOfElementIDs = memberListOnPage.toString();
        console.log("The Members table are: " + stringOfElementIDs);


        /**
         * Get the List of Members who are Online,out of those displayed on the page
         * and update the HTML
         */

        // So we are looping through ALL Member Entries on the page.
        for (var i = 0; i < memberListOnPage.length; i++) {

            //console.log(i + " = " + memberListOnPage[i].toString() + " ==> " +  member_online_ids.toString());
            //if ($.inArray(memberListOnPage[i].toString(), member_online_ids.toString()) != -1) {
            if ($.inArray(memberListOnPage[i], member_online_ids) != -1) {
                $('#online_status_' + memberListOnPage[i]).html('<span class="btn green-meadow">ONLINE</span>');

            }
            else {
                $('#online_status_' + memberListOnPage[i]).html('<span class="btn grey-cascade">OFFLNE</span>');

            }
        }
    }
});
/*
 * members page code
 * */
/*
$info['id'] = $this - > session - > userdata('user_id');
$info['page'] = $this - > uri - > uri_string();
if ($info['id'] !== NULL) {
    Modules::run('members_online/member_online_save', $info);
}


DROP
TABLE
IF
EXISTS `lomsdev2`.`members_online`;
CREATE
TABLE
IF
NOT
EXISTS `lomsdev2`.`members_online`(`member_id`
INT
NOT
NULL, `time`
TIMESTAMP
NOT
NULL
DEFAULT
CURRENT_TIMESTAMP, `page`
VARCHAR(128)
NOT
NULL, PRIMARY
KEY(`member_id`)
)
ENGINE = InnoDB;
*/