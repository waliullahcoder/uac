<form action="{{ route('admin.category.update', $data->id) }}"
      method="POST"
      enctype="multipart/form-data">
    @csrf
    @method('PUT')

    <div class="modal fade" id="editModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <h5 class="modal-title">Update Category</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <input type="hidden" name="parent_id" value="{{ $data->parent_id }}">
                <div class="modal-body">
                     @php
                     $categories = \App\Models\Category::with(['children'])
                                        ->whereNull('parent_id')->get();
                                @endphp
                     <div class="col-12">
                            <label for="parent_id" class="form-label">Parent Category:</label>
                            <select name="parent_id" id="parent_id" class="form-select select"
                                data-placeholder="Select Parent Category">
                                <option value="">--</option>
                                @foreach ($categories as $item)
                                    <option value="{{ $item->id }}" {{ $item->id==$data->parent_id ? 'selected' : '' }}>{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    <div class="mb-2">
                        <label class="form-label">Name</label>
                        <input type="text"
                               name="name"
                               class="form-control"
                               value="{{ $data->name }}"
                               required>
                    </div>
                    @if($data->parent_id != null)
                    
                    <div class="mb-2">
                        <label for="parent_ids" class="form-label"><b>Parent Categories</b></label>
                        @php
                            $selectedParents = $data->parents ? $data->parents->pluck('id')->toArray() : [];
                        @endphp

                        <select name="parent_ids[]" class="form-select" multiple style="width:100%;height:300px;">
                            @foreach($categories as $parent)
                                 <option value="{{ $parent->id }}"
                                    {{ in_array($parent->id, $selectedParents) ? 'selected' : '' }}>
                                    {{ $parent->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    @endif
                     <div class="col-12">
                                    <label for="type" class="form-label"><b>Type</b></label>
                                    <select name="type" id="type" class="form-select" required>
                                      <option value="book" {{ $data->type == 'book' ? 'selected' : '' }}>
                                        Book
                                    </option>
                                    <option value="other" {{ $data->type == 'other' ? 'selected' : '' }}>
                                        Other
                                    </option>
                                </select>
                        </div>

                    <div class="mb-2">
                                    <label for="position" class="form-label"><b>Position</b></label>
                                    <select name="position" id="position" class="form-select" required>
                                        <option value="">-</option>
                                     <option value="school" {{ $data->position == 'school' ? 'selected' : '' }}>
                                        School
                                    </option>

                                    <option value="college" {{ $data->position == 'college' ? 'selected' : '' }}>
                                        College
                                    </option>

                                    <option value="university" {{ $data->position == 'university' ? 'selected' : '' }}>
                                        University
                                    </option>
                                    <option value="bookssale" {{ $data->position == 'bookssale' ? 'selected' : '' }}>
                                        Books Sale
                                    </option>

                                    <option value="emergency_desk" {{ $data->position == 'emergency_desk' ? 'selected' : '' }}>
                                        Emergency Desk
                                    </option>

                                    <option value="admitted_students" {{ $data->position == 'admitted_students' ? 'selected' : '' }}>
                                        Admitted Students
                                    </option>

                                    <option value="premium_courses" {{ $data->position == 'premium_courses' ? 'selected' : '' }}>
                                        Latest Premium Courses
                                    </option>

                                    <option value="video" {{ $data->position == 'video' ? 'selected' : '' }}>
                                        Video
                                    </option>

                                    <option value="gallery" {{ $data->position == 'gallery' ? 'selected' : '' }}>
                                        Gallery
                                    </option>

                                    <option value="about" {{ $data->position == 'about' ? 'selected' : '' }}>
                                        About
                                    </option>

                                    <option value="resources" {{ $data->position == 'resources' ? 'selected' : '' }}>
                                        Resources
                                    </option>

                                    <option value="contact" {{ $data->position == 'contact' ? 'selected' : '' }}>
                                        Contact
                                    </option>

                                    </select>
                                </div>
                        @if($data->parent_id==null)
                        <div class="col-12">
                                    <label for="serial" class="form-label"><b>Serial</b></label>
                                    <select name="serial" id="serial" class="form-select" required>
                                      <option value="1" {{ $data->serial == '1' ? 'selected' : '' }}>
                                        1
                                      </option>
                                      <option value="2" {{ $data->serial == '2' ? 'selected' : '' }}>
                                        2
                                      </option>
                                      <option value="3" {{ $data->serial == '3' ? 'selected' : '' }}>
                                        3
                                      </option>
                                      <option value="4" {{ $data->serial == '4' ? 'selected' : '' }}>
                                        4
                                      </option>
                                      <option value="5" {{ $data->serial == '5' ? 'selected' : '' }}>
                                        5
                                      </option>
                                      <option value="6" {{ $data->serial == '6' ? 'selected' : '' }}>
                                        6
                                      </option>
                                      <option value="7" {{ $data->serial == '7' ? 'selected' : '' }}>
                                        7
                                      </option>
                                      <option value="8" {{ $data->serial == '8' ? 'selected' : '' }}>
                                        8
                                      </option>
                                      <option value="9" {{ $data->serial == '9' ? 'selected' : '' }}>
                                        9
                                      </option>
                                      <option value="10" {{ $data->serial == '10' ? 'selected' : '' }}>
                                        10
                                      </option>
                                      <option value="11" {{ $data->serial == '11' ? 'selected' : '' }}>
                                        11
                                      </option>
                                      <option value="12" {{ $data->serial == '12' ? 'selected' : '' }}>
                                        12
                                      </option>
                                </select>
                        </div>
                        @endif
                        <div class="mb-2">
                            <label for="url" class="form-label">URL: <span class="text-danger">*</span></label>
                            <input type="text" name="url" id="url" class="form-control" value="{{  $data->getRawOriginal('url') }}" required>
                        </div>
                    {{-- <div class="mb-2">
                        <label class="form-label">Description</label>
                        <textarea name="description"
                                  class="form-control"
                                  rows="3">{{ $data->description }}</textarea>
                    </div> --}}
                     <div class="mb-2">
                        <label for="image" class="form-label">Image</label>
                        <input type="file"
                            name="image"
                            id="image"
                            class="form-control"
                            accept="image/*">
                    </div>

                    {{-- CURRENT IMAGE --}}
                    @if(!empty($data->image))
                        <div class="mt-2">
                            <label class="form-label d-block">Current Image</label>
                            <img src="{{ asset($data->image) }}"
                                alt="Current Image"
                                style="width:120px;height:auto;border:1px solid #ddd;padding:4px;border-radius:4px;">
                        </div>
                    @endif
                </div>

                <div class="modal-footer">
                    <button type="button"
                            class="btn btn-secondary"
                            data-bs-dismiss="modal">Close</button>
                    <button type="submit"
                            class="btn btn-primary">Update</button>
                </div>

            </div>
        </div>
    </div>
</form>
