# ASSESSMENT 6: Rails Commenting Challenge

# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# FILE: app/controller/blog_posts_controller.rb

# ---1) 
# This is the controller class and file. Also known as the logical center of the application.The controller will be the middle man for the interaction between the user, views, and model. It contains the methods for the RESTful routes. 
class BlogPostsController < ApplicationController
  def index
    # ---2) 
    # index is a RESTful route where it allows the view to display all the blog posts in the database using the .all and assigning it to the instance variable @posts
    @posts = BlogPost.all
  end

  # ---3)
  # show is a RESTful route where it allows the view to display a single block post. By using the .find(params[:id]), it will allow us to access a particular blog posts using the primary key. The params[:id] allows the url route to be dynamic, using the primary key of a specific blog post to display it to the view. All of this is assigned to an instance variable called article.  
  def show
    @post = BlogPost.find(params[:id])
  end

  # ---4) 
  # new is a RESTful route where it will show a form to make a new blog post. 
  def new
    @post = BlogPost.new
  end

  def create
    # ---5) 
    # The create RESTful route will allow the user to create a new blog post, but by using the strong param it permits it only to use the specific parameters. There are conditional statements where it the post is valid, it will redirect to that specific post that has been made. If it fails, it will redirect to the path of creating a new blog form.  
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to new_blog_post_path
    end
  end

  def edit
    # ---6) 
    # This displays the edit form based on the primary key in the URL. That is why the params[:id] is being used. Edit only shows the form. It uses the HTTP verb get. 
    @post = BlogPost.find(params[:id])
  end

  def update
    @post = BlogPost.find(params[:id])
    # ---7) 
    # The update route will modify a specific blog post based on the primary key in the URL, it is using that dynamic params[:id] in order to target that specific bloh post. By attaching a strong param on the update, the user is given a specific set of parameters to use and update. The conditional statement will tell the page what to do if the update is valid which is to redirect to that specific blog post with the changes in effect or if the update failed, it will redirect it to the edit form. 
    @post.update(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to edit_blog_post_path
    end
  end

  def destroy
    @post = BlogPost.find(params[:id])
    if @post.destroy
      redirect_to blog_posts_path
    else
      # ---8) 
      # By using the redirect_to, if the blog post is UNABLE to be destroyed, it will redirect the user back to that specific blog post. As seen above, if it has been successfuly destroyed, it will redirect to the page that has all the blog posts. 
      redirect_to blog_post_path(@post)
    end
  end

  # ---9)
  # By putting the private above it, only the controller is able to use that method, not any other file or class outside of the conttoller. 
  private
  def blog_post_params
    # ---10) 
    # This is creating a strong param where only a specific paramter is allowed to be used and does not permit other parameters not lsited. The strong param will only require parameters from the model blog_post
    params.require(:blog_post).permit(:title, :content)
  end
end
