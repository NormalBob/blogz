<label for="">Status</label>
<select class="form-control" name="approved">

    @if(isset($comment->id))
        <option value="0" @if($comment->approved == 0) selected="" @endif>
            Not approved
        </option>
        <option value="1" @if($comment->approved == 1) selected="" @endif>
            Approved
        </option>
    @else
        <option value="0">
            Not approved
        </option>
        <option value="1">
            Approved
        </option>
    @endif
</select>

<label for="">Name</label>
<input type="text" class="form-control" name="name"
       placeholder="" value="{{$comment->user->name ?? ""}}" readonly="">
<input type="hidden" class="form-control" name="user_id"
       placeholder="" value="{{$comment->user_id ?? ""}}" readonly="">

<label for="">Comment</label>
<input class="form-control" type="text" name="comment" placeholder="automatic generation"
       value="{{$comment->comment ?? ""}}" readonly="">

<label for="">Article</label>
<input class="form-control" type="text" name="article_id" placeholder="automatic generation"
       value="{{$comment->article_id ?? ""}}" readonly="">
<input class="form-control" type="text" name="article_title" placeholder="automatic generation"
       value="{{$comment->article->title ?? ""}}" readonly="">

<label for="">Answer</label>
<input class="form-control" type="text" name="answer"
       value="{{$comment->answer ?? ""}}">

<hr/>

<input class="btn btn-primary" type="submit" value="Save">