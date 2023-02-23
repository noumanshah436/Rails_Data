
import Stories from "./components/stories";
import ShowStory from "./components/showStory";
import Navbar from "./components/navbar";
import Accounts from "./components/allAccounts";
import Followers from "./components/followers";
import { BrowserRouter, Routes, Route } from "react-router-dom";

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Navbar />} />
          <Route path="/stories" element={<Stories />} />
          <Route path="/story/:id" element={<ShowStory />} />
          <Route path="/accounts" elemzent={<Accounts />} />
          <Route path="/followers/:id" element={<Followers />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
