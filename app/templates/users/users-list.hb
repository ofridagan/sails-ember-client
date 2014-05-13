{{#each user in controller}}
  <div class="row">
    <div class="medium-1 column">
      {{user.id}}
    </div>
    <div class="medium-11 column">
      {{user.username}}
    </div>
  </div>
{{/each}}
