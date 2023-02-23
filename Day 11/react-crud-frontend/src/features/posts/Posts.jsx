import React, { useEffect } from "react";
import { useDispatch } from "react-redux";
import { useAppSelector } from "../../app/hooks";
import Post from "./Post";
import PostForm from "./PostForm";
import {
  fetchPostsAsync,
  selectPosts,
  selectStatus,
  Statuses,
} from "./postSlice";

function Posts() {
  const posts = useAppSelector(selectPosts);
  const status = useAppSelector(selectStatus);
  const dispatch = useDispatch();

  useEffect(() => {
    dispatch(fetchPostsAsync());
  }, [dispatch]);

  if (status !== Statuses.UpToDate) {
    return (
      <div>
        <h1 className="w-full my-10 text-5xl font-bold text-center">{status}</h1>
      </div>
    );
  } else {
    return (

      <div className="w-full lg:w-3/4 mx-auto">
        <div className="card">
          <div className="card-body">
            {/* <h1 className="w-full text-xl font-bold text-center">{status}</h1> */}
            <PostForm />
            <hr className="my-4" />

            <h1 className="w-full text-4xl font-bold text-center">Posts</h1>
            {posts &&
              posts.length > 0 &&
              posts.map((post) => {
                return (
                  <div key={post.id}  className="p-5 pt-0 my-9 w-full ">
                    <Post dispatch={dispatch} post={post} />
                  </div>
                );
              })}
          </div>
        </div>
      </div>
    );
  }
}

export default Posts;
