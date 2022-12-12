<div>
    @include('livewire.create')
    @include('livewire.edit')
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    @if (session()->has('message'))
                    <div class="alert alert-success"> {{session('message')}} </div>                        
                    @endif
                    <div class="card">
                        <div class="card-header text-white bold">
                            <div class="row ">
                                <div class="col-sm-3">
                                    <h3 class="mt-2">All students</h3>
                                </div>
                                <div class="col-sm-3"> 
                                    <button type="button" class="btn btn-success" data-toggle="modal"
                                        data-target="#addStudentModal">
                                        Add New Student
                                    </button>
                                </div>
                                <div class="col-sm-6">
                                 <input type="text" class="form-control mt-2" placeholder="Search..." wire:model='searchTerm'/>   
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <!-- Table -->
                            <table class="table table-hover">
                                <!-- Table head -->
                                <thead>
                                    <tr>
                                        <th><strong>#</strong></th>
                                        <th><strong>First Name</strong></th>
                                        <th><strong>Last Name</strong></th>
                                        <th><strong>Email</strong></th>
                                        <th><strong>Phone</strong></th>
                                        <th><strong>Action</strong></th>
                                    </tr>
                                </thead>
                                <!-- Table head -->

                                <!-- Table body -->
                                <tbody>
                                    @foreach ($students as $student)
                                        <tr>
                                            <th scope="row"> {{ $student->id }} </th>
                                            <td> {{ $student->firstname }} </td>
                                            <td> {{ $student->lastname }} </td>
                                            <td> {{ $student->email }} </td>
                                            <td> {{ $student->phone }} </td>
                                            <td> 
                                            <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#updateStudentModal" wire:click.prevent='edit({{ $student->id }})'>Edit</button>    
                                            <button type="button" class="btn btn-danger" wire:click.prevent='delete({{ $student->id }})' onclick="return confirm('Подтвердите удаление')">Delete </button>    
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <!-- Table body -->
                            </table>
                            <!-- Table -->
                        </div>
                        <div class="card-footer">
                            <!-- Pagination -->
                            <div class="col-sm-12">
                                {{ $students->links('pagination::bootstrap-4') }}
                            </div>
                            <!-- Pagination -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
