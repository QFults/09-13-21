const { Sequelize, Model, DataTypes } = require('sequelize')
const sequelize = new Sequelize('mysql://root:rootroot@localhost:3306/dogs_db')

class Dog extends Model { }

Dog.init({
  name: DataTypes.STRING,
  age: DataTypes.INTEGER,
  breed: DataTypes.STRING
}, { sequelize, modelName: 'dog' })

// Dog.create({
//   name: 'Beef',
//   age: 2,
//   breed: 'Chihuahua'
// })
//   .then(dog => console.log(dog))
//   .catch(err => console.log(err))

// Dog.findAll()
//   .then(dogs => console.log(dogs))
//   .catch(err => console.log(err))

sequelize.sync()
