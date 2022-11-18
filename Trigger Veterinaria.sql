create function tg_Update() returns trigger as 
$$
begin 
      UPDATE CLIENTE SET numero_mascotas = numero_mascotas+1 WHERE id_cliente = NEW.id_cliente;
return new;
end
$$
language plpgsql;
create trigger tg_Update after insert on CLIENTE for each row
execute procedure tg_Update();

Update cliente set numero_mascotas = '6' where id_cliente = '1'

select * from cliente;