<?php

namespace App\Http\Livewire;

use App\Models\Student;
use Livewire\Component;

class Students extends Component
{

    public $ids;
    public $firstname;
    public $lastname;
    public $email;
    public $phone;
    public $searchTerm;

    public function resetInputFields()    {

        $this->firstname = '';
        $this->lastname = '';
        $this->email = '';
        $this->phone = '';
    }

    public function store()
    {
        $validateData = $this->validate([
            'firstname' => 'required',
            'lastname' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
        ]);

        Student::create($validateData);
        session()->flash('message', 'Student created successfully!');
        $this->resetInputFields();
        $this->emit('studentAdded');
    }

    public function edit($id)
    {
        $student = Student::findOrFail($id);
        $this->ids = $student->id;
        $this->firstname = $student->firstname;
        $this->lastname = $student->lastname;
        $this->email = $student->email;
        $this->phone = $student->phone;
    }

    public function update()
    {
        $this->validate([
            'firstname' => 'required',
            'lastname' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
        ]);

        if ($this->ids) {
            $student = Student::findOrFail($this->ids);
            $student->update([
            'firstname' => $this->firstname,    
            'lastname' => $this->lastname,    
            'email' => $this->email,    
            'phone' => $this->phone,    
            ]);
            session()->flash('message', 'Student updated successfully!');
            $this->resetInputFields();
            $this->emit('studentUpdated');
        }
    }

    public function render()
    {
        $searchTerm = '%'.$this->searchTerm.'%';
        $students = Student::where('firstname', 'LIKE', $searchTerm)
                    ->orwhere('lastname', 'LIKE', $searchTerm)
                    ->orwhere('email', 'LIKE', $searchTerm)
                    ->orwhere('phone', 'LIKE', $searchTerm)
                    ->orderBy('id', 'DESC')->paginate(5);
        return view('livewire.students', compact('students'));
    }

    public function delete($id)
    {
        if ($id) {
            Student::findOrFail($id)->delete();
            session()->flash('message', 'Student deleted successfully!');            
        }
    }
}
