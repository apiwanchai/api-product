const jwt = require('jsonwebtoken');
const SECRET_KEY = 'test';

exports.login = (req, res) => {
    const { username, password } = req.body;
    if (username === 'test' && password === 'test') {
        const token = jwt.sign({ username }, SECRET_KEY, { expiresIn: '1h' });
        return res.json({ token });
    }
    res.status(401).json({ message: 'Invalid Data' });
};
