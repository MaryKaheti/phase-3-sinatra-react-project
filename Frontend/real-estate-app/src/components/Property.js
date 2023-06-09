import React, {useState, useEffect} from 'react'
import '../App.css';

function Property() {
    const [property, setProperty] = useState([]);

    useEffect(() => {
        const fetchProperty = async () => {
            try {
                const response = await fetch ('http://localhost:9292/property');
                const data = await response.json();
                setProperty(data);
            } catch (error) {
                console.log(error);
            }
        };
     fetchProperty ();
    }, []);
  return (
    <div>
        <h1>Property</h1>
        <div className='wrap'>
            {property.map((property) => (
                <div className='card' key= {property.id}>
                    <p>{property.title}</p>
                    <p>{property.description}</p>
                    <p>{property.location}</p>
                    <img className='img' src={property.image_url} alt=''/>
                    <p>{property.price}</p>

                </div>
            ))}

        </div>
      
    </div>
  )
}

export default Property
