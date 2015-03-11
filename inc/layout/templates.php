<script type="text/template" id="filter-template">
    <option value="">Все</option>
    <% _.each(data, function(item) { %>
        <option value="<%- item.value %>"><%- item.title %></option>
    <% }); %>
</script>

<script type="text/template" id="playlist-audio-template">
    <% _.each(data, function(item) { %>
        <li data-id="<%- item.id %>">
            <i class="fa fa-close"></i>
            <i class="fa fa-sort"></i>
            <span class="item-content">
                <span class="time"><%- item.time %></span>
                <span class="title"><%- item.band + ' - ' + item.title %></span>
            </span>
        </li>
    <% }); %>
</script>

<script type="text/template" id="playlist-video-template">
    <% _.each(data, function(item) { %>
        <li data-id="<%- item.id %>">
            <img src="<%- item.img %>" />
            <i class="fa fa-close"></i>
            <i class="fa fa-sort"></i>
            <span class="item-content">
                <span class="time"><%- item.time %></span>
                <span class="title"><%- item.title %></span>
            </span>
        </li>
    <% }); %>
</script>

<script type="text/template" id="videoPlayer-template">
    <iframe width="560" height="315" src="<%- model.url %>" frameborder="0" allowfullscreen></iframe>
</script>

<script type="text/template" id="page-filter-block-template">
<form id="filter-form" class="clearfix">
    <fieldset class="clearfix">
        <div class="filter_section">
            <div class="filter-block">
                <label for="section">раздел</label>
                <select id="video-section-select" name="section" class="form_elements" <%- sections.length > 0 ? "" : "disabled" %> >
                    <option value="0">Все</option>
                    <% _.each(sections, function(item) { %>
                        <option value="<%- item.id %>" <%- section === item.id ? "selected" : "" %> >
                            <%- item.snippet.title %>
                        </option>
                    <% }); %>
                </select>
            </div>
        </div>
        <div class="filter_date">
            <div class="filter-block">
                <span>период</span>
                c&nbsp;
                <input name="date_from" class="form_elements" type="text" size="10" value="<%- dateFrom %>"/>
                по&nbsp;
                <input name="date_to" class="last form_elements"  type="text" size="10" value="<%- dateTo %>"/>
            </div>
        </div>
        <div class="filter-block">
            <span>поиск</span>
            <input name="search" class="last form_elements"  type="text" value="<%- search %>"/>
        </div>

        <input type="submit" value="Показать"/>
    </fieldset>
</form>
</script>

<script type="text/template" id="page-video-template">
    <% _.each(collection, function(model) { %>
        <li class="file">
            <a name="sync" href="https://www.youtube.com/v/<%- model.id.videoId %>" target="_blank">
                <img src="<%- model.snippet.thumbnails ? model.snippet.thumbnails.medium.url : '' %>"/>
                <span class="video_title_wr">
                    <span class="table">
                        <span class="video_title table-cell">
                            <span><%- model.snippet.title %></span>
                        </span>
                    </span>
                </span>
            </a>
        </li>
    <% }); %>
</script>

<script type="text/template" id="pagination-template">
    <% if (count > 1) {%>
        <div class="paginationControl clearfix">
            <ul class="pages">
                <% if (current != 1) {%>
                    <li class="pages-prev"><a href="<%= host + '/' + 1 + query %>"><i class="fa fa-angle-double-left"></i></a></li>
                    <li class="pages-prev"><a href="<%= host + '/' + current - 1 + query %>"><i class="fa fa-angle-left"></i></a></li>
                <% } %>
                <% for (i = 0; i < (count < maxPages ? count : maxPages); i++) { %>
                    <% var num = pages[i]; %>
                    <% if(num == current) { %>
                        <li><span><%= num %></span></li>
                    <% } else { %>
                        <li><a href="<%= host + '/' + num + query %>"><%= num %></a></li>
                    <% } %>
                <% } %>
                <% if (current != count) {%>
                    <li class="pages-next"><a href="<%= host + '/' + current + 1 + query %>"><i class="fa fa-angle-right"></i></a></li>
                    <li class="pages-next"><a href="<%= host + '/' + count + query %>"><i class="fa fa-angle-double-right"></i></a></li>
                <% } %>
            </ul>
        </div>
    <% } %>
</script>