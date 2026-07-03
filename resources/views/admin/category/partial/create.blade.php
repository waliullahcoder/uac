@php
    $route = \Request::route()->getName();
    $storeRoute = str_replace('index', 'store', $route);
@endphp

<form action="{{ Route($storeRoute) }}" method="POST" enctype="multipart/form-data">
    @csrf
    <!-- Modal -->
    <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="addModalLabel">Add New Category</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row g-3">
                        <div class="col-12">
                            <label for="parent_id" class="form-label">Parent Category:</label>
                            <select name="parent_id" id="parent_id" class="form-select select"
                                data-placeholder="Select Parent Category">
                                <option value="">None</option>
                                @php
                    
                                        $categories = \App\Models\Category::with(['children'])
                                        ->whereNull('parent_id')->orderBy('name', 'asc')
                                        ->get();
                                @endphp
                                @foreach ($categories as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-12">
                                    <label for="type" class="form-label"><b>Type</b></label>
                                    <select name="type" id="type" class="form-select" required>
                                      <option value="book" {{ old('book') == 'book' ? 'selected' : '' }}>
                                        Book
                                    </option>
                                    <option value="other" {{ old('other') == 'other' ? 'selected' : '' }}>
                                        Other
                                    </option>
                                </select>
                        </div>
                        <div class="col-12">
                                    <label for="position" class="form-label"><b>Position</b></label>
                                    <select name="position" id="position" class="form-select" required>
                                      <option value="school" {{ old('position') == 'school' ? 'selected' : '' }}>
                                        School
                                    </option>

                                    <option value="college" {{ old('position') == 'college' ? 'selected' : '' }}>
                                        College
                                    </option>

                                     <option value="university" {{ old('position') == 'university' ? 'selected' : '' }}>
                                        University
                                    </option>
                                    <option value="bookssale" {{ old('position') == 'bookssale' ? 'selected' : '' }}>
                                        Books Sale
                                    </option>
                                    <option value="emergency_desk" {{ old('position') == 'emergency_desk' ? 'selected' : '' }}>
                                        Emergency Desk
                                    </option>
                                    <option value="admitted_students" {{ old('position') == 'admitted_students' ? 'selected' : '' }}>
                                        Admitted Students
                                    </option>
                                    <option value="premium_courses" {{ old('position') == 'premium_courses' ? 'selected' : '' }}>
                                        Latest Premium Courses
                                    </option>
                                    <option value="video" {{ old('position') == 'video' ? 'selected' : '' }}>
                                        Video
                                    </option>
                                    <option value="gallery" {{ old('position') == 'gallery' ? 'selected' : '' }}>
                                        Gallery
                                    </option>
                                    <option value="about" {{ old('position') == 'about' ? 'selected' : '' }}>
                                       About
                                    </option>

                                    <option value="resources" {{ old('position') == 'resources' ? 'selected' : '' }}>
                                        Resources
                                    </option>

                                    <option value="contact" {{ old('position') == 'contact' ? 'selected' : '' }}>
                                        Contact
                                    </option>

                                    </select>
                                </div>
                            <div class="col-12">
                            <label for="url" class="form-label">URL: <span class="text-danger">*</span></label>
                            <input type="text" name="url" id="url" class="form-control" value="#" required>
                        </div>
                        <div class="col-12">
                            <label for="name" class="form-label">Name: <span class="text-danger">*</span></label>
                            <input type="text" name="name" id="name" class="form-control" required>
                        </div>

                        <div class="col-12">
                            <label for="image" class="form-label">Image:</label>
                            <input type="file" name="image" id="image" class="form-control" accept="image/*">
                        </div>

                        <div class="col-12">
                            <label for="description" class="form-label">Description:</label>
                            <textarea class="form-control description" id="description" name="description" placeholder="Description"></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer p-1">
                    <button type="button" class="btn btn-sm btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-sm btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
</form>
