import React from 'react'
import { Navbar } from "flowbite-react";

const MyNav = () => {
  return (
    <Navbar fluid={true} rounded={true} className="w-full mx-auto m-4 bg-blue-300">
      <Navbar.Brand>
        <span className="self-center whitespace-nowrap text-2xl font-semibold dark:text-white">
          React Crud
        </span>
      </Navbar.Brand>
      <Navbar.Toggle />
      <Navbar.Collapse>
        <Navbar.Link    className="text-xl">
          Home
        </Navbar.Link>
        <Navbar.Link   className="text-xl">
          About
        </Navbar.Link>
      </Navbar.Collapse>
    </Navbar>
  );
}

export default MyNav
