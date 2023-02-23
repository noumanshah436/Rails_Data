const API_URL = "http://localhost:3000";

export async function fetchPosts() {
  return fetch(`${API_URL}/api/v1/posts`, {
    method: "GET",
    headers: {
      "Content-Type": "application/json",
    },
  })
    .then((response) => response.json())
    .catch((error) => {
      console.log("Error: ", error);
      return {};
    });
}

export async function createPost(payload) {
  return fetch(`${API_URL}/api/v1/posts`, {
    method: "POST",
    body: payload,
  })
    .then((response) => response.json())
    .catch((error) => {
      console.log("Error: ", error);
      return {};
    });
}

// export async function updatePost(payload) {
//   const post = payload.post;
//   return fetch(`${API_URL}/posts/${post.id}.json`, {
//     method: "PUT",
//     headers: {
//       "Content-Type": "application/json",
//     },
//     body: JSON.stringify({
//       post,
//     }),
//   })
//     .then((response) => response.json())
//     .catch((error) => {
//       console.log("Error: ", error);
//       return {};
//     });
// }

export async function destroyPost(payload) {
  const post = payload.post;
  console.log(post) 
  return fetch(`${API_URL}/api/v1/posts/${post.id}`, {
    method: "DELETE",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      post,
    }),
  })
    .then((response) => response.json())
    .catch((error) => {
      console.log("Error: ", error);
      return {};
    });
}
