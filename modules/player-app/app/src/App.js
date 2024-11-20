import React from 'react';
import './App.css';
import { ReactComponent as MicrosoftLogo } from './microsoft-logo.svg';
import { Container, Row, Col } from 'react-bootstrap';

const HOST = process.env.REACT_APP_HOST;

function App() {
  return (
    <Container fluid className="App">
      <header className="App-header">
        <MicrosoftLogo className="App-logo" />
        <div className="title-container">
          <h1>Edge Vision</h1>
        </div>
      </header>
      <Row className="stream-container">
        <Col sm={12} md={6}>
          <div className="stream">
            <h2>Original stream</h2>
            <iframe
              title="Live Stream"
              src={`http://${HOST}:8888/live/stream`}
              width="100%"
              height="500px"
              allowFullScreen
            />
            <p><a href={`rtmp://${HOST}:1935/live/stream`} target="_blank" rel="noopener noreferrer">rtmp://{HOST}:1935/live/stream</a></p>
          </div>
        </Col>
        <Col sm={12} md={6}>
          <div className="stream">
            <h2>After AI model</h2>
            <iframe
              title="Output Stream"
              src={`http://${HOST}:8888/output/stream`}
              width="100%"
              height="500px"
              allowFullScreen
            />
            <p><a href={`rtmp://${HOST}:1935/output/stream`} target="_blank" rel="noopener noreferrer">rtmp://{HOST}:1935/output/stream</a></p>
          </div>
        </Col>
      </Row>
    </Container>
  );
}

export default App;