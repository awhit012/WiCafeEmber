App.User = DS.Model.extend({
  firstName: DS.attr('string'),
  lastName: DS.attr('string'),
  email: DS.attr('string'),
  rating: DS.attr('number'),
  about_me: DS.attr('string'),

  fullName: function(){
    return this.get('firstName') + ' ' + this.get('lastName')
  }.property('firstName', 'lastName')
})
