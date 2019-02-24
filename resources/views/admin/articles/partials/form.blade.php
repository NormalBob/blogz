<label for="" class="mt-3">Status</label>
<select class="form-control" name="published">

    @if(isset($article->id))
        <option value="0" @if($article->published == 0) selected="" @endif>
            Not published
        </option>
        <option value="1" @if($article->published == 1) selected="" @endif>
            Published
        </option>
    @else
        <option value="0">
            Not published
        </option>
        <option value="1">
            Published
        </option>
    @endif
</select>

<label for="" class="mt-3">Title</label>
<input type="text" class="form-control" name="title"
       placeholder="News title" value="{{$article->title ?? ""}}" required>

<label for="" class="mt-3">Slug (Uniq)</label>
<input class="form-control" type="text" name="slug" placeholder="automatic generation"
       value="{{$article->slug ?? ""}}" readonly="">

<label for="" class="mt-3">Parent category</label>
<select class="form-control" name="categories[]" multiple="">
    @include('admin.articles.partials.categories', ['categories' => $categories])
</select>

<label for="" class="mt-3">Image</label>
<input class="form-control" name="image" type="file">

<label for="" class="mt-3">Image Show</label>
<select class="form-control" name="image_show">

    @if(isset($article->id))
        <option value="0" @if($article->image_show == 0) selected="" @endif>
            Not Showed
        </option>
        <option value="1" @if($article->image_show == 1) selected="" @endif>
            Showed
        </option>
    @else
        <option value="0">
            Not Showed
        </option>
        <option value="1">
            Showed
        </option>
    @endif
</select>

<label for="" class="mt-3">Short description</label>
<textarea class="form-control" id="description_short" name="description_short">{{$article->description_short ?? ""}}</textarea>

<label for="" class="mt-3">Description</label>
<textarea class="form-control" id="description" name="description">{{$article->description ?? ""}}</textarea>

<hr/>

<label for="" class="mt-3">Meta title</label>
<input type="text" class="form-control" name="meta_title"
       placeholder="Meta title" value="{{$article->meta_title ?? ""}}" required>

<label for="" class="mt-3">Meta description</label>
<input type="text" class="form-control" name="meta_description"
       placeholder="Meta description" value="{{$article->meta_description ?? ""}}" required>

<label for="" class="mt-3">Keywords</label>
<input type="text" class="form-control" name="meta_keyword"
       placeholder="Keywords" value="{{$article->meta_keyword ?? ""}}" required>

<hr/>

<input class="btn btn-primary" type="submit" value="Save">