import { createAsyncThunk, createSlice } from "@reduxjs/toolkit";
import produce from "immer";
import { fetchPosts, createPost, destroyPost, updatePost } from "./postAPI";

// enum in js
export const Statuses = {
  Initial: "Not Fetched",
  Loading: "Loading...",
  UpToDate: "Up To Date",
  Deleted: "Deleted",
  Error: "Error",
};

const initialState = {
  posts: [
    {
      id: "",
      type: "",
      attributes: {
        title: "",
        body: "",
        image: "",
        created_at: "",
        updated_at: "",
      },
    },
  ],
  status: Statuses.Initial,
};

export const fetchPostsAsync = createAsyncThunk(
  "posts/fetchPosts",
  async () => {
    const response = await fetchPosts();
    return response;
  }
);

export const createPostAsync = createAsyncThunk(
  "posts/createPost",
  async (payload) => {
    const response = await createPost(payload);
    return response;
  }
);

export const destroyPostAsync = createAsyncThunk(
  "posts/destroyPost",
  async (payload) => {
    const response = await destroyPost(payload);

    return response;
  }
);

export const postSlice = createSlice({
  name: "posts",
  initialState,
  reducers: {},
  extraReducers: (builder) => {
    builder
      .addCase(fetchPostsAsync.pending, (state) => {
        return produce(state, (draftState) => {
          draftState.status = Statuses.Loading;
        });
      })
      .addCase(fetchPostsAsync.fulfilled, (state, action) => {
        return produce(state, (draftState) => {
          draftState.posts = action.payload.data;
          draftState.status = Statuses.UpToDate;
        });
      })
      .addCase(fetchPostsAsync.rejected, (state) => {
        return produce(state, (draftState) => {
          draftState.status = Statuses.Error;
        });
      })
      /** Post Create Section */
      .addCase(createPostAsync.pending, (state) => {
        return produce(state, (draftState) => {
          draftState.status = Statuses.Loading;
        });
      })
      .addCase(createPostAsync.fulfilled, (state, action) => {
        return produce(state, (draftState) => {
          draftState.posts.push(action.payload.data);
          draftState.status = Statuses.UpToDate;
        });
      })
      .addCase(createPostAsync.rejected, (state) => {
        return produce(state, (draftState) => {
          draftState.status = Statuses.Error;
        });
      })

      /** Destroy Section */
      .addCase(destroyPostAsync.pending, (state) => {
        return produce(state, (draftState) => {
          draftState.status = Statuses.Loading;
        });
      })
      .addCase(destroyPostAsync.fulfilled, (state, action) => {
        return produce(state, (draftState) => { 
          draftState.posts = action.payload.data;
          draftState.status = Statuses.UpToDate;
        });
      })
      .addCase(destroyPostAsync.rejected, (state) => {
        return produce(state, (draftState) => {
          draftState.status = Statuses.Error;
        });
      });
  },
});

export const {} = postSlice.actions;

export const selectPosts = (state) => state.posts.posts;

export const selectStatus = (state) => state.posts.status;

export default postSlice.reducer;
