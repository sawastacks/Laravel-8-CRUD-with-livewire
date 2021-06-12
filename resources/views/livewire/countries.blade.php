<div>
 
    <button class="btn btn-primary btn-sm mb-3" wire:click="OpenAddCountryModal()">Add New Country</button>
    <div>
       @if ($checkedCountry)
            <button class="btn btn-danger" wire:click="deleteCountries()">Selected Countries ({{ count($checkedCountry) }})</button>
       @endif
    </div>
    <table class="table table-hover">
        <thead class="thead-inverse">
            <tr>
                <th></th>
                <th>Continent</th>
                <th>Country</th>
                <th>Capital City</th>
                <th>Actions</th>
                <th></th>
            </tr>
            </thead>
            <tbody>

                @forelse ($countries as $country)
                    <tr class="{{ $this->isChecked($country->id) }}">
                    <td><input type="checkbox" value="{{ $country->id }}" wire:model="checkedCountry"></td>
                    <td>{{ $country->continent->continent_name }}</td>
                    <td>{{ $country->country_name }}</td>
                    <td>{{ $country->capital_city }}</td>
                    <td>
                        <div class="btn-group">
                            <button class="btn btn-danger btn-sm" wire:click="deleteConfirm({{$country->id}})">Delete</button>
                            <button class="btn btn-success btn-sm" wire:click="OpenEditCountryModal({{$country->id}})">Edit</button>
                        </div>
                    </td>
                </tr>
                @empty
                    <code>No country found!</code>
                @endforelse
                
            </tbody>
    </table>
    @if (count($countries))
        {{ $countries->links('livewire-pagination-links') }}
    @endif
    @include('modals.add-modal')
    @include('modals.edit-modal')
</div>
