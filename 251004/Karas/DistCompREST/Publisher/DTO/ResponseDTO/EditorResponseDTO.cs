﻿using Publisher.Models;

namespace Publisher.DTO.ResponseDTO;

public class EditorResponseDTO
{
    public long Id { get; set; }
    public string Login { get; set; }
    public string Password { get; set; }
    public string Firstname { get; set; }
    public string Lastname { get; set; }

    public List<Article> Stories { get; set; } = [];
}