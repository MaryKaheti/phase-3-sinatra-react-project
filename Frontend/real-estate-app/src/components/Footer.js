import React from 'react'
import "../css/Footer.css"

function Footer() {
  return (
    <div className='Box'>
         <h1 style={{ color: "rgb(0, 0, 255)", 
                   textAlign: "center", 
                   marginTop: "-50px",
                   fontSize:"28px" }}>
        SHIELD REAL ESTATE!!!
      </h1>
      <div className='Container'>
        <div className='Row'>
          <div className='column'>
             < heading className="heading">COMPANY</ heading >
             <p>About Us</p>
             <p>SHIELD CARES</p>
             <p>SELL WITH US</p>
             
            </div>
          <div className='column'>
             < heading className="heading">Contact Us</ heading >
             <p>FAQ center</p>
             <p>shield@real.estate@org</p>
             <p>1st Ngong Lane</p>
           </div>
          
          <div className='column'>
              < heading className="heading">Follow Us</ heading >
              <p>
                <i className="fab fa-facebook-f">
                 <span style={{ marginLeft: "10px" }}>
                    Facebook
                  </span>
                </i>
               </p>
             <p>
              <i className="fab fa-instagram">
                <span style={{ marginLeft: "10px" }}>
                  Instagram
                </span>
              </i>
             </p>
             <p>
              <i className="fab fa-twitter">
                <span style={{ marginLeft: "10px" }}>
                  Twitter
                </span>
              </i>
             </p>
            
            </div>
        </div>
      </div>
      
    </div>
  )
}

export default Footer
