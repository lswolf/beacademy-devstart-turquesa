<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreUpdateProductFormRequest extends FormRequest
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
        return [
            'name' => 'required|max:50|min:3',
            'description' => 'required|max:250|min:5',
            'photo' => [
                'file',
            ],
            'url' => 'required',
            'cost_price' => 'required',
            'sale_price' => 'required',
            'category_id' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'required' => 'Campo :attribute é obrigatório',
            'max' => 'Campo deve ter o maximo de :max caracteres',
            'min' => 'Campo deve ter o mínimo de :min caracteres',

        ];
    }
}