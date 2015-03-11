<script type="text/javascript">
    $(document).ready(function(){
        $('.filter_date input[type="text"]').mask('99-99-9999');
    })    
</script>
<?php
    $model['date_from'] = $model['date_from'] ? date("d.m.Y", strtotime($model['date_from'])) : "";
    $model['date_to'] = $model['date_to'] ? date("d.m.Y", strtotime($model['date_to'])) : "";
?>
<div class="post_form filter clearfix">
    <form id="filter-form" class="clearfix">
        <fieldset class="clearfix">
            <div class="filter_section">
                <div class="filter-block">
                    <label for="section">раздел</label>
                    <select id="section-select" name="section" class="form_elements" <?= isset($model['sections']) ? "" : "disabled";?>>
                        <option value="">Все</option>
                        <?php foreach($model['sections'] as $section) { ?>
                        <option <?= $model['section'] == $section['value'] ? "selected" : "";?> value="<?php echo $section['value']?>">
                            <?php echo $section['title']?>
                        </option>
                        <?php }?>
                    </select>
                </div>
                <div class="filter-block">
                    <label for="category">категории</label>
                    <select id="category-select" name="category" class="form_elements" <?= isset($model['categories']) ? "" : "disabled";?>>
                        <option value="">Все</option>
                        <?php foreach($model['categories'] as $category){ ?>
                        <option <?= $model['category'] == $category['value'] ? "selected" : "" ?> value="<?php echo $category['value']?>">
                            <?php echo $category['title']?>
                        </option>
                        <?php }?>
                    </select>
                </div>
            </div>
            <div class="filter_date">
                <div class="filter-block">
                    <span>период</span>
                    c&nbsp;
                    <input name="date_from" class="form_elements" type="text" size="10" value="<?= $model['date_from'] ?>"/>
                    по&nbsp;
                    <input name="date_to" class="last form_elements"  type="text" size="10" value="<?= $model['date_to'] ?>"/>
                </div>
            </div>
            <input type="submit" value="Показать"/>
        </fieldset>
    </form>
</div>
