@extends('layouts.admin.index_app')

@section('content')
@php
    $currentRouteName = \Request::route()->getName();
    $ajaxUrl = route($currentRouteName);
    $deletePermission = str_replace('index', 'destroy', $currentRouteName);
    $deleteUrl = route($deletePermission, 0);
@endphp

<style>
    .dt-buttons {
        margin-bottom: 15px;
    }

    .dt-button {
        background: #198754 !important;
        border: none !important;
        color: #fff !important;
        border-radius: 6px !important;
        padding: 8px 15px !important;
    }

    .table th,
    .table td {
        white-space: nowrap;
        vertical-align: middle;
    }
</style>

<div class="table-responsive">
    <table class="dataTable table table-bordered table-striped align-middle" style="width:100%">
        <thead>
            <tr class="text-nowrap">
                <th></th>
                <th>Image</th>
                <th>Version</th>
                <th>Name</th>
                <th>User ID</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Father</th>
                <th>Mother</th>
                <th>Admission</th>
                <th>Group</th>
                <th>Exam</th>
                <th>Institution</th>
                <th>Board</th>
                <th>Year</th>
                <th>Extra Number</th>
                <th>Address</th>
                <th>Actions</th>
            </tr>
        </thead>

        <tbody></tbody>

        @can($deletePermission)
            <tfoot>
                <tr>
                    <th class="text-center">
                        <div class="custom-control custom-checkbox mx-auto">
                            <div id="regular_all_select">
                                <input type="checkbox" class="custom-control-input" id="selectAll">
                                <label class="custom-control-label" for="selectAll"></label>
                            </div>

                            <div id="trash_all_select" style="display:none;">
                                <input type="checkbox" class="custom-control-input" id="trash_selectAll">
                                <label class="custom-control-label" for="trash_selectAll"></label>
                            </div>
                        </div>
                    </th>

                    <th colspan="16">
                        <div class="text-end">
                            <button type="button"
                                    id="bulk_delete"
                                    name="bulk_delete"
                                    data-url="{{ $deleteUrl }}"
                                    class="btn btn-xs btn-danger">
                                Delete
                            </button>

                            <button type="button"
                                    id="trash_bulk_delete"
                                    name="bulk_delete"
                                    data-url="{{ $deleteUrl }}"
                                    class="btn btn-xs btn-danger"
                                    style="display:none;">
                                Delete
                            </button>
                        </div>
                    </th>
                </tr>
            </tfoot>
        @endcan
    </table>
</div>
@endsection

@push('js')
<script type="text/javascript">
    $(document).ready(function () {

        $('.dataTable').DataTable({
            processing: true,
            serverSide: true,
            responsive: false,
            scrollX: true,

            dom: 'Bfrtip',

            buttons: [
                {
                    extend: 'excelHtml5',
                    text: '<i class="fas fa-file-excel"></i> Export Excel',
                    className: 'btn btn-success btn-sm',
                    exportOptions: {
                        columns: ':visible:not(:last-child)'
                    }
                }
            ],

            ajax: {
                url: "{{ $ajaxUrl }}",
                type: "GET",
                data: function (data) {
                    data.type = $('#filter').val();
                    data.school = "{{ request('school') }}";
                    data.college = "{{ request('college') }}";
                    data.university = "{{ request('university') }}";
                }
            },

            columns: [
                {
                    data: "checkbox",
                    name: "checkbox",
                    orderable: false,
                    searchable: false,
                    className: "text-center",
                    width: '20'
                },
                {
                    data: 'image',
                    name: 'image',
                    orderable: false,
                    searchable: false,
                    render: function(data) {
                        if (data) {
                            return `<img src="/${data}" width="50" height="50" style="object-fit:cover;border-radius:50%;">`;
                        }
                        return `<img src="/frontend/images/user/user.png" width="50" height="50" style="object-fit:cover;border-radius:50%;">`;
                    }
                },
                {
                    data: 'version',
                    name: 'version'
                },
                {
                    data: 'name',
                    name: 'name'
                },
                {
                    data: 'user_name',
                    name: 'user_name'
                },
                {
                    data: 'phone',
                    name: 'phone',
                    defaultContent: ''
                },
                {
                    data: 'email',
                    name: 'email',
                    defaultContent: ''
                },
                {
                    data: 'father_name',
                    name: 'father_name',
                    defaultContent: ''
                },
                {
                    data: 'mother_name',
                    name: 'mother_name',
                    defaultContent: ''
                },
                {
                    data: 'admission_date',
                    name: 'admission_date',
                    defaultContent: ''
                },
                {
                    data: 'group',
                    name: 'group',
                    defaultContent: ''
                },
                {
                    data: 'exam_name',
                    name: 'exam_name',
                    defaultContent: ''
                },
                {
                    data: 'institution',
                    name: 'institution',
                    defaultContent: ''
                },
                {
                    data: 'board',
                    name: 'board',
                    defaultContent: ''
                },
                {
                    data: 'year',
                    name: 'year',
                    defaultContent: ''
                },
                {
                    data: 'payment_mobile',
                    name: 'payment_mobile',
                    defaultContent: ''
                },
                {
                    data: 'address',
                    name: 'address',
                    defaultContent: ''
                },
            
                {
                    data: 'actions',
                    name: 'actions',
                    orderable: false,
                    searchable: false,
                    className: "text-end",
                    width: '90'
                }
            ],

            fnDrawCallback: function () {
                const tooltips = document.querySelectorAll('.tt');
                tooltips.forEach(t => {
                    new bootstrap.Tooltip(t);
                });
            }
        });

    });
</script>
@endpush