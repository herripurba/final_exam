package com.ghenesis.payload;

import com.ghenesis.model.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PostRequest {
  @NonNull
  private User user;

  @NonNull
  private String title;

  @NonNull
  private String description;
}
