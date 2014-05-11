User = DS.Model.extend
  username: DS.attr()

User.reopenClass
  FIXTURES: [
    id: 1
    username: 'Ofri'
  ,
    id: 2
    username: 'Amos'
  ]

`export default User`
