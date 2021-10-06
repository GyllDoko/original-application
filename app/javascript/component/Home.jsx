import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import axios from "axios";
function Home() {
  const [categorie, setCategorie] = useState([]);
  const [name, setName] = useState("");
  useEffect(() => {
    axios.get("/user").then((res) => console.log(res.data));
  });
  useEffect(() => {
    axios.get("/categories").then((res) => {
      setCategorie(res.data);
      console.log(res.data);
    });
  }, []);
  const onCtegorieSubmit = (e) => {
    e.preventDefault();
    let data = {
      category: {
        name: name,
      },
    };
    let token = document.querySelector('meta[name="csrf-token"]').content;
    console.log(token);
    let headers = {
      "X-CSRF-TOKEN": token,
    };
    axios.post("/categories", data, { headers: headers }).then((res) => {
      console.log(res.data);
    });
  };
  return (
    <div className="vw-100 primary-color d-flex align-items-center justify-content-center">
      <div className="jumbotron jumbotron-fluid bg-transparent">
        <div className="container secondary-color">
          <h1 className="display-4">Food Recipes</h1>
          <p className="lead">
            A curated list of recipes for the best homemade meal and delicacies.
          </p>
          <hr className="my-4" />
          <Link
            to="/recipes"
            className="btn btn-lg custom-button"
            role="button"
          >
            View Recipes
          </Link>
          <hr className="my-4" />
          <ul>
            {categorie.map((item, index) => (
              <li key={index}>{item.name}</li>
            ))}
          </ul>
          <form onSubmit={(e) => onCtegorieSubmit(e)}>
            <input type="text" onChange={(e) => setName(e.target.value)} />
            <button type="submit">Save Name</button>
          </form>
        </div>
      </div>
    </div>
  );
}

export default Home;
