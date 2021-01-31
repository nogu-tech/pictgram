
[1mFrom:[0m /home/ec2-user/pictgram/app/controllers/comments_controller.rb:14 CommentsController#create:

     [1;34m8[0m: [32mdef[0m [1;34mcreate[0m
     [1;34m9[0m:   [1;34m#binding.pry[0m
    [1;34m10[0m:   [1;34m#@comment = Comment.new(comment_content: params[:comment][:comment_content])[0m
    [1;34m11[0m:   [1;34m#@comment = current_user.comments.new(comment_content: params[:comment][:comment_content])[0m
    [1;34m12[0m:   @comment = current_user.comments.new(comment_params)
    [1;34m13[0m:   binding.pry
 => [1;34m14[0m:   [32mif[0m @comment.save
    [1;34m15[0m:     redirect_to topics_path, [35msuccess[0m: [31m[1;31m'[0m[31m投稿しました1[1;31m'[0m[31m[0m
    [1;34m16[0m:   [32melse[0m
    [1;34m17[0m:     [1;34m#flash.now[:danger] = '失敗しましたq'[0m
    [1;34m18[0m:     [1;34m#redirect_to topics_path[0m
    [1;34m19[0m:     [1;34m#render :index[0m
    [1;34m20[0m:     redirect_to topics_path, [35mdanger[0m: [31m[1;31m'[0m[31m失敗しましたq[1;31m'[0m[31m[0m
    [1;34m21[0m:   [32mend[0m
    [1;34m22[0m: [32mend[0m

