import React, {useState, useEffect} from 'react'

function Seller() {
    const [seller, setSeller] = useState([]);

    useEffect(() => {
        const fetchSeller = async () => {
            try {
                const response = await fetch ('http://localhost:9292/sellers');
                const data = await response.json();
                setSeller(data);
            } catch (error) {
                console.log(error);
            }
        };
     fetchSeller ();
    }, []);
  return (
    <div>
        <h1>Seller</h1>
        <div className='wrap'>
            {seller.map((seller) => (
                <div className='card' key= {seller.id}>
                    <p>Name: {seller.first_name}</p>
                    <p>Surname: {seller.last_name}</p> 
                    <p>Location: {seller.location}</p>
                    <p>Age: {seller.age}</p>
               </div>
            ))}

        </div>
      
    </div>
  )
}

export default Seller
