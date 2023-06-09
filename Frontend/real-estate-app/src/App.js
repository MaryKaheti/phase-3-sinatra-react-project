import logo from './logo.svg';
import './App.css';
import './components/NavBar'
import NavBar from './components/NavBar';
import Property from './components/Property';
import Seller from './components/Seller';
import Estate from './components/Estate';
import Footer from './components/Footer';

function App() {
  return (
    <div className="App">
      <NavBar/>
      <Property />
      <Seller />
      <Estate />
      <Footer />
      
    </div>
  );
}

export default App;
