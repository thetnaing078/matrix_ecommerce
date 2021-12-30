<div class="form-group">
    <label class="control-label">{{ __('Title') }}</label>
    <input type="text" name="title" value="{{ Arr::get($attributes, 'title') }}" class="form-control" placeholder="Title">
</div>

<div class="form-group">
    <label class="control-label">{{ __('Type') }}</label>
    <select name="type" class="form-control">
        <option value="collapsed" @if (Arr::get($attributes, 'type') == 'collapsed') selected @endif>{{ __('Collapsed') }}</option>
        <option value="expanded" @if (Arr::get($attributes, 'type') == 'expanded') selected @endif>{{ __('Expanded') }}</option>
    </select>
</div>
