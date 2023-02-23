import React, { useState } from "react";
import { destroyPostAsync } from "./postSlice";
import { Card, Button } from "flowbite-react";

function Post(props) {
  const [post, setPost] = useState(props.post);

  function handleClick(e) {
    const payload = {
      post: {
        id: post.id,
      },
    };
    props.dispatch(destroyPostAsync(payload));
  }

  return (
    <>
      <Card className="">
         
        <img
          className="max-w-lg max-h-lg   rounded-lg"
          src={post.attributes.image}
          alt="  description"
        />

        <h5 className="mb-2 text-3xl font-bold text-gray-900 dark:text-white">
          {post.attributes.title}
        </h5>
        <p className="mb-5 text-base text-gray-500 dark:text-gray-400 sm:text-lg">
          {post.attributes.body}
        </p>
        <div className="mt-4 flex space-x-3 lg:mt-6">
          <Button>Edit</Button>
          <Button color="failure" onClick={(e) => handleClick(e)}>
            Delete
          </Button>
        </div>
      </Card>
    </>
  );
}

export default Post;
