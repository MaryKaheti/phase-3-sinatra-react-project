import React, {useState, useEffect} from 'react'

function Estate() {
    const [estate, setEstate] = useState([]);

    useEffect(() => {
        const fetchEstate = async () => {
            try {
                const response = await fetch ('http://localhost:9292/estates');
                const data = await response.json();
                setEstate(data);
            } catch (error) {
                console.log(error);
            }
        };
     fetchEstate ();
    }, []);
  return (
    <div>
        <h1>Estate</h1>
        <div className='wrap'>
            {estate.map((estate) => (
                <div className='card' key= {estate.id}>
                    <p>Name: {estate.name}</p>
                    <p>Location: {estate.location}</p>
                </div>
            ))}

        </div>
      
    </div>
  )
}

export default Estate
