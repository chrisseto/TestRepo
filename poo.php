<!DOCTYPE html>
<html>

<?php
global $wpdb;
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    print_r($_POST);
    $categories = $_POST['category'];
    $subcategories = $_POST['subcategory'];
    unset($_POST['category']);
    unset($_POST['subcategory']);

    $wpdb->insert('agencies', $_POST);
    $a_id = $wpdb->insert_id;

    foreach($subcategories as $subcat)
    {
        echo $wpdb->insert('agencies_by_subcategory', array(
            'agency_id' => $a_id,
            'agency_subcategory_id' => $subcat
        ));
    }
}

$cat_query = "SELECT category, id FROM agency_categories";
$subcat_query = "SELECT agency_subcategory, id, agency_category_id FROM agency_categories_subcategories";

$subcategories = $wpdb->get_results($subcat_query);
$agency_categories = $wpdb->get_results($cat_query);
?>

<form id="addAgency" action="" method="POST">
Agency Name:&nbsp;<input type="text" name="agency_name" required ><br>
Street Address:&nbsp;<input type="text" name="street_address"><br>
City:&nbsp;<input type="text" name="city"><br>
State:&nbsp;<input type="text" name="state"><br>
Zip:&nbsp;<input type="number" name="zip"><br>
Phone:&nbsp;<input type="text" name="phone"><br>
Website:&nbsp;<input type="url" name="website"><br>
Email:&nbsp;<input type="email" name="email"><br>
Meeting Time:&nbsp;<input type="text" name="meeting_time"><br>
Description:&nbsp;<input type="text" name="description"><br>
Select Any Categories That Apply:<br>
<?php
foreach($agency_categories as $category)
{

    echo '<strong>' . $category->category . '</strong>';
    echo '<br>';

    foreach($subcategories as $subcategory)
    {
             if($subcategory->agency_category_id == $category->id)
             {
                 echo '<input type="checkbox" name="subcategory[]" value="' . $subcategory->id . '">';
                 echo ' ' . $subcategory->agency_subcategory;
                 echo '<br>';
             }
    }

    echo '<br>';
}
?>

</form>

<!--raw-->
<script>
var subcategories = <?php echo json_encode($subcategories);?>;

jQuery(':checkbox').click (function(){
    var $this = jQuery(this);
    var checked = this.checked;

    subcategories.forEach(function(cat) {
        if (cat.id === $this.val()) {
            jQuery('#cats option:eq(' + cat.agency_category_id + ')').prop('selected', checked);
        }
    });
});
</script>
<!--/raw-->

</body>
</html>
