const jwt = require('jsonwebtoken');

module.exports = (req, res, next) => {
  const authHeader = req.header('Authorization');
  // Log pour vérifier que l'en-tête est bien reçu
  console.log('Authorization Header:', authHeader); 
  if (!authHeader) {
    return res.status(401).json({ message: 'Access denied' });
  }

  if (!authHeader.startsWith('Bearer ')) {
    return res.status(400).json({ message: 'Invalid Authorization header format' });
  }

  const token = authHeader.split(' ')[1];

  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded;
    next();
  } catch (error) {
    // Log d'erreur si la vérification échoue
    console.log('Error verifying token:', error);
    
    if (error instanceof jwt.TokenExpiredError) {
      return res.status(401).json({ message: 'Token has expired' });
    }

    return res.status(400).json({ message: 'Invalid token' });
  }
};
