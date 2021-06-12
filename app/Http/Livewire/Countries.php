<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Continent;
use App\Models\Country;
use Livewire\WithPagination;
class Countries extends Component
{
    use WithPagination;
    public $continent,$country_name,$capital_city;
    public $upd_continent,$upd_country_name,$upd_capital_city,$cid;
    protected $listeners = ['delete','deleteCheckedCountries'];
    public $checkedCountry = [];
    public function render()
    {
        return view('livewire.countries',[
            'continents'=>Continent::orderBy('continent_name','asc')->get(),
            'countries'=>Country::orderBy('country_name','asc')->paginate(5)
        ]);
    }

    public function OpenAddCountryModal(){
        $this->continent = '';
        $this->country_name = '';
        $this->capital_city = '';
        $this->dispatchBrowserEvent('OpenAddCountryModal');
    }

    public function save(){
        $this->validate([
             'continent'=>'required',
             'country_name'=>'required|unique:countries',
             'capital_city'=>'required'
        ]);

        $save = Country::insert([
              'continent_id'=>$this->continent,
              'country_name'=>$this->country_name,
              'capital_city'=>$this->capital_city,
        ]);

        if($save){
            $this->dispatchBrowserEvent('CloseAddCountryModal');
            $this->checkedCountry = [];
        }
    }

    public function OpenEditCountryModal($id){
        $info = Country::find($id);
        $this->upd_continent = $info->continent_id;
        $this->upd_country_name = $info->country_name;
        $this->upd_capital_city = $info->capital_city;
        $this->cid = $info->id;
        $this->dispatchBrowserEvent('OpenEditCountryModal',[
            'id'=>$id
        ]);
    }

    public function update(){
        $cid = $this->cid;
        $this->validate([
              'upd_continent'=>'required',
              'upd_country_name'=>'required|unique:countries,country_name,'.$cid,
              'upd_capital_city'=>'required'
        ],[
            'upd_continent.required'=>'You must select continent',
            'upd_country_name.required'=>'Enter country name',
            'upd_country_name.unique'=>'Country name Already Exists',
            'upd_capital_city.required'=>'Capital city require'
        ]);

        $update = Country::find($cid)->update([
            'continent_id'=>$this->upd_continent,
            'country_name'=>$this->upd_country_name,
            'capital_city'=>$this->upd_capital_city
        ]);

        if($update){
            $this->dispatchBrowserEvent('CloseEditCountryModal');
            $this->checkedCountry = [];
        }
    }

    public function deleteConfirm($id){
        $info = Country::find($id);
        $this->dispatchBrowserEvent('SwalConfirm',[
            'title'=>'Are you sure?',
            'html'=>'You want to delete <strong>'.$info->country_name.'</strong>',
            'id'=>$id
        ]);
    }


    public function delete($id){
        $del =  Country::find($id)->delete();
        if($del){
            $this->dispatchBrowserEvent('deleted');
        }
        $this->checkedCountry = [];
    }

    public function deleteCountries(){
        $this->dispatchBrowserEvent('swal:deleteCountries',[
            'title'=>'Are you sure?',
            'html'=>'You want to delete this countries',
            'checkedIDs'=>$this->checkedCountry,
        ]);
    }
    public function deleteCheckedCountries($ids){
        Country::whereKey($ids)->delete();
        $this->checkedCountry = [];
    }

    public function isChecked($countryId){
        return in_array($countryId, $this->checkedCountry) ? 'bg-info text-white' : '';
    }
}
