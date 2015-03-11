<?php
//        $articles = get_db_data('timetable');
//        $articles2 = get_db_data_where2('about_us','title','about_us');
//        $articles3 = get_db_data('timetable_total');
?>
<h1 class="content_right_title esenin">О нас</h1>

<div class="tabs clearfix">
    <input type="radio" name="tabs" checked="checked" id="tab-1" />
    <input type="radio" name="tabs" id="tab-2" />
    <div class="tabs-nav clearfix">
        <label for="tab-1" class="bg-transparent georgia">
            Кто мы?
        </label>
        <label for="tab-2" class="bg-transparent georgia">
            Почему Церковь?
        </label>
    </div>
    <div class="tabs-panel bg-transparent txt clearfix">
        <div data-id="tab-1" class="tab">
            <?= $model['item'][0]['txt'] ?>
        </div>
        <div data-id="tab-2" class="tab">
            <?= $model['item'][1]['txt'] ?>
        </div>
    </div>
</div>
<div class="about_us_block">
    <h3 class="about_us_title georgia">Общие Богослужения</h3>
    <p>
        <strong>каждое воскресенье в 10.00</br>каждая среда в 18.00 - разбор Слова</strong>
        </br></br>
        <strong>Воскресная школа</strong> - проходит после воскресного Богослужения (кроме младшей группы)
        </br></br>
        <strong>Беседа с пастором по личным вопросам</strong> - каждый четверг (по предварительной записи у секретаря по тел. +38 (096) 942-74-64)
        </br></br>
        <strong>Молитвенный день</strong> - каждая пятница на 9.00. 18.00. 20.30 - ночная молитва
        
    </p>
</div>
<?php if(count($model['timetableMonth']) > 0) { ?>
<div id="timetable_ministries" class="timetable_wr">
    <h3 class="about_us_title georgia">Расписание на <?= date("F") ?></h3>
    <table class="timetable" border="1" cellspacing="0" cellpadding="0">
        <tbody>
            <tr>
                <td class="timetable_date">Дата</td>
                <td class="timetable_time">Время</td>
                <td class="timetable_event"><strong>Событие</strong></td>
            </tr>
            <?php foreach($model['timetableMonth'] as $item) {
                    $time = strftime("%H:%M", $date);
            ?>
            <tr>    
                <td><?= strftime("%d.%m.%Y", strtotime($item['date'])) ?></td>
                <td><?= $time != '00:00' ? $time : '--:--' ?></td>
                <td><?= $item['title'] ?></td>
            </tr>
            <?php }?>
        </tbody>
    </table>
</div>
<?php }?>
<div class="clear"></div>
<?php if(count($model['timetable']) > 0){?>
<div class="timetable_total_wr clearfix">
    <h3 class="about_us_title georgia">Расписание служений</h3>
    <table class="timetable_total" border="1" cellspacing="0" cellpadding="0">
        <tbody>
            <tr>
                <td class="timetable_date">День недели</td>
                <td class="timetable_time">Время</td>
                <td class="timetable_event"><strong>Служение</strong></td>
                <td class="timetable_place"><strong>Место проведения</strong></td>
                <td class="timetable_duty"><strong>Ответственный</strong></td>
            </tr>
            <?php foreach($model['timetable'] as $item) {
                $from = !!$item['date_from'] ? strftime("%H:%M", strtotime($item['date_from'])) : null;
                $to = !!$item['date_to'] ? strftime("%H:%M", strtotime($item['date_to'])) : null;
            ?>
                <tr>    
                    <td><?= $item['day_of_week'] ?></td>
                    <td><?= ($from ? $from : '') . ($from && $to ? ' - ' : '') . ($to ? $to : '') ?></td>
                    <td><?= $item['ministry'] ?></td>
                    <td><?= $item['venue'] ?></td>
                    <td><?= $item['duty'] ?></td>
                </tr>
            <?php }?>
        </tbody>
    </table>
</div>
<?php }?>