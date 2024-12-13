import logo from './logo.svg';
import './App.css';

function App() {
  const text = process.env.REACT_APP_TEXT || 'Default text if REACT_APP_TEXT is not set';
  console.log(`[${new Date().toISOString()}] REACT_APP_TEXT: ${text}`);

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          {text}
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;