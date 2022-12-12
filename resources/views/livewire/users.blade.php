<div>
    <section>
        <div class="card">
            <div class="card-header">
                <h3>All users</h3>
            </div>
            <div class="card-body">
                <table class="table">
                    <!-- Table head -->
                    <thead class="blue-grey lighten-4">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <!-- Table head -->

                    <!-- Table body -->
                    <tbody>
                        @foreach ($users as $user)
                            <tr>
                                <th scope="row">{{ $user->id }}</th>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                <td>Action</td>
                            </tr>
                        @endforeach
                    </tbody>
                    <!-- Table body -->
                </table>
                <!-- Pagination -->
                <div class="row">
                    <div class="col-sm-12">
                        {{ $users->links('pagination::bootstrap-4') }}
                    </div>
                </div>
                <!-- Pagination -->
            </div>
    </section>
</div>
