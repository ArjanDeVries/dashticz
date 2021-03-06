<div class="col-xs-12 items">
  {{#each events as | items |}}
    {{#ifLe @index ../maxitems}}
      {{#each items as | item |}}
        <div style="color:{{item.color}};">
          {{moment item.start input="X" format=../../df}} - 
          {{#unless item.allDay}}
            {{moment item.start input="X" format=../../tf}}
            {{#unless ../../startonly}}
              -{{moment item.end input="X" format=../../tf}} - 
            {{/unless}}
          {{else}}
            {{../../entire}} - 
          {{/unless}}
          {{item.title}}
        </div>
      {{/each}}
    {{/ifLe}}
  {{/each}}
</div>