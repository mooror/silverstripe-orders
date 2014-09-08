<hr/>

<% if $Orders.exists %>
    <table class="width-100 table-hovered">
        <thead>
            <tr>
                <th><% _t("Orders.Order","Order") %></th>
                <th><% _t("Orders.Date","Date") %></th>
                <th><% _t("Orders.Price","Price") %></th>
                <th><% _t("Orders.Status","Status") %></th>
            </tr>
        </thead>
        <tbody>
            <% loop $Orders %>
                <tr>
                    <td><a href="{$Top.Link('order')}/{$ID}">$OrderNumber</a></td>
                    <td><a href="{$Top.Link('order')}/{$ID}">$Created.Nice</a></td>
                    <td><a href="{$Top.Link('order')}/{$ID}">$Total.Nice</a></td>
                    <td><a href="{$Top.Link('order')}/{$ID}">$TranslatedStatus</a></td>
                </tr>
            <% end_loop %>
        </tbody>
    </table>
<% else %>
    <p class="message message-info">
        <%t Orders.NoOrders "There are currently no orders" %>
    </p>
<% end_if %>