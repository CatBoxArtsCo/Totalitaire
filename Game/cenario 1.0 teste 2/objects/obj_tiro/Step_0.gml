if (ativo) {
    // Lógica de movimento do tiro
    x += velh; // Movimento horizontal do tiro
    
    // Verificar colisões com inimigos
    if (place_meeting(x, y, obj_inimigo_drone)) {
        // Desativar o tiro
        ativo = false;
        
		// Verificar se o inimigo foi atingido
    var inimigo_atingido = instance_place(x, y, obj_inimigo_drone);
    if (inimigo_atingido != noone) {
        // Ação para eliminar o inimigo, como destruí-lo
        instance_destroy(inimigo_atingido);
    }
    }
    
    // Verificar limite de alcance
    distance_traveled += abs(velh);
    if (distance_traveled >= max_distance) {
        ativo = false; // Desativar o tiro
    }
}

// Resetar o tiro quando estiver desativado
if (!ativo) {
    // Resetar variáveis do tiro
    x = -100; // Defina uma posição fora da tela para ocultar o tiro
    y = -100;
    distance_traveled = 0;
}
