<!-- Modal -->
<div wire:ignore.self class="modal fade" id="updateStudentModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                {{-- <h5 class="modal-title" id="exampleModalLabel">Add New Student</h5> --}}
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div>
                    <!--Header -->
                    <div class="form-header blue accent-1">
                        <h3><i class="fas fa-user-graduate"></i> Edit Student:</h3>
                    </div>
                    <form action="">
                        <input type="text" hidden name="id" wire:model='ids'>
                        <div class="form-group">
                            <!--Body -->
                            <div class="md-form">
                                <i class="fas fa-user prefix grey-text"></i>
                                <input type="text" id="firstname" class="form-control" wire:model='firstname' value="{{ $firstname }}" placeholder="First name">
                                {{-- <label for="firstname">First name</label> --}}
                            </div>

                            <div class="md-form">
                                <i class="fas fa-user-plus prefix grey-text"></i>
                                <input type="text" id="lastname" class="form-control" wire:model='lastname' placeholder="Last name">
                                {{-- <label for="lastname">Last name</label> --}}
                            </div>

                            <div class="md-form">
                                <i class="fas fa-envelope prefix grey-text"></i>
                                <input type="text" id="email" class="form-control" wire:model='email' placeholder="Email">
                                {{-- <label for="email">Your email</label> --}}
                            </div>

                            <div class="md-form">
                                <i class="fas fa-phone prefix grey-text"></i>
                                <input type="text" id="phone" class="form-control" wire:model='phone' placeholder="Phone">
                                {{-- <label for="phone">Phone</label> --}}
                            </div>
{{-- 
                            <div class="text-center mt-4">
                                <button class="btn btn-light-blue waves-effect waves-light">Submit</button>
                            </div> --}}
                        </div>
                    </form>

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" wire:click.prevent='update()'>Update Student</button>
            </div>
        </div>
    </div>
</div>
