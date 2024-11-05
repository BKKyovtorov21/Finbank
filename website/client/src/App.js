// frontend/src/App.js
import React, { useState } from 'react';
import axios from 'axios';

function App() {
    const [id, setId] = useState('');
    const [newValue, setNewValue] = useState('');

    const handleUpdate = async () => {
        try {
            const response = await axios.put('http://localhost:1234/api/update', { id, newValue });
            console.log(response.data.message);
            alert(response.data.message);
        } catch (error) {
            console.error('Error updating record:', error);
            alert('Error updating record');
        }
    };

    return (
        <div>
            <h1>Update Record</h1>
            <input
                type="text"
                placeholder="ID"
                value={id}
                onChange={(e) => setId(e.target.value)}
            />
            <input
                type="text"
                placeholder="New Value"
                value={newValue}
                onChange={(e) => setNewValue(e.target.value)}
            />
            <button onClick={handleUpdate}>Update</button>
        </div>
    );
}

export default App;