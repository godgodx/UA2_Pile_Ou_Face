const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const dotenv = require('dotenv');
const { sequelize } = require('./models');

dotenv.config();
const app = express();

// Middleware
app.use(cors());
app.use(bodyParser.json());

// Importer les routes
const authRoutes = require('./routes/authRoutes');
const gameRoutes = require('./routes/gameRoutes'); 

// Utiliser les routes
app.use('/api/auth', authRoutes); 
app.use('/api/game', gameRoutes); 

// Test pour vérifier que le serveur fonctionne
app.get('/', (req, res) => {
  res.send('Server is running!');
});

// Lancer le serveur
const PORT = process.env.PORT || 3000;
app.listen(PORT, async () => {
  console.log(`Server running on port ${PORT}`);
  try {
    await sequelize.authenticate();
    console.log('Database connected!');
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
});
