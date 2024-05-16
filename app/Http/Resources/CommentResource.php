<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CommentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
             'id' => $this->id,
             'user_id' => $this->user_id,
             'comments_contents' => $this->comments_contents,
             // user yang comment menggunakan relationship dari table user
             'commentator' => $this->whenLoaded('commentator'),
             'created_at' => date_format($this->created_at, "Y/m/d H:i:s"), // mengatur format
        ];
    }
}
