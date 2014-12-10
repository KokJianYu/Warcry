//script_power_up_effect()
switch(powerup)
{
    case FIRE_POWER_UP:
        effect_create_below(ef_ring,x, y, 1, c_red);
        break;
    case EARTH_POWER_UP:
        effect_create_below(ef_ring,x, y, 1, c_dkgray);
        break;
    case WIND_POWER_UP:
        effect_create_below(ef_ring,x, y, 1, c_aqua);
        break;
}

