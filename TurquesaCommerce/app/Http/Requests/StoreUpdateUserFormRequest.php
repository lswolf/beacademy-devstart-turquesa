<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreUpdateUserFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        $rules = [ 
            'name' => [
                'required',
                'string',
                'max:50',
                'min:3',
            ],
            'email' => [
                'required',
                'email',
                'unique:users,email,{$id},id',
            ],
            'password' => [
                'required',
                'min:8',
            ],
        ];

        if($this->method('PUT')){
            $rules['password'] = [
                'nullable',
                'min:4',
            ];
        }
        return $rules;
    }



    public function messages()
    {
        return [
            'required' => 'Campo :attribute é obrigatório',
            'max' => 'Campo :attribute deve ter o maximo de :max caracteres',
            'min' => 'Campo :attribute deve ter o mínimo de :min caracteres',
            'string' => 'Campo :attribute só aceita letras',
            'unique' => 'E-mail já cadastrado',           
        ];
    }
}
