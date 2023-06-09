import React, { useState } from 'react'
import '../App.css';

function NavBar() {

    const [isDarkMode, setIsDarkMode] = useState(false);

    const toggleDarkMode = () => {
      setIsDarkMode(!isDarkMode);
      const body = document.querySelector('body');
      body.classList.toggle('DarkMode');
    };
  
    const navbarClassName = isDarkMode ? 'Navbar DarkMode' : 'Navbar LightMode';
    const searchBoxClassName = isDarkMode ? 'SearchBox DarkMode' : 'SearchBox LightMode';

  return (
    <div className="Navbar">
        <div className="leftSide">
        <div className="links">
          <a href="SHIELD REAL ESTATE" style={{color:"rgb(170, 8, 8)"}}>SHIELD REAL ESTATE</a>
          
        </div>
      </div>
      <div className="rightSide">
        <div className={searchBoxClassName}>
          <input type="text" placeholder="Search..." />
          <button style={{backgroundColor:"rgb(170, 8, 8)",marginRight:"0px"}}>Search</button>
        </div>
        
        <a href="contact us">Contact Us</a>
        <button style={{backgroundColor:"rgb(170, 8, 8)",color:"black"}}  onClick={toggleDarkMode}>{isDarkMode ? 'Light Mode' : 'Dark Mode'}</button>
      </div>
      
    </div>
  )
}

export default NavBar
