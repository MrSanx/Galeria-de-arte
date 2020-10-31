package com.heklai.mercallery.data.model;

import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CalendarView;
import android.widget.EditText;
import android.widget.Spinner;

import com.heklai.mercallery.R;

import java.text.SimpleDateFormat;
import java.util.Date;

public class InsertarPersona extends AppCompatActivity {

    EditText nombrePersona,documentoP;
    CalendarView fechaN;
    Spinner dropdown;
    Button registrar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_insertar_persona);

         dropdown = findViewById(R.id.tipoPersona);
        String[] items = new String[]{"Cliente","Artista"};
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, items);
        dropdown.setAdapter(adapter);

        nombrePersona= findViewById(R.id.NombreP);
        documentoP= findViewById(R.id.NombreP);
        fechaN= findViewById(R.id.fechaN);


        registrar= findViewById(R.id.registrar);
        registrar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                insertar();
            }
        });


    }

    private void insertar() {
        fechaN= findViewById(R.id.fechaN);
        Boolean idTipo;
        String nombre= nombrePersona.getText().toString().trim();
        String documentoP= nombrePersona.getText().toString().trim();

        String tipo= dropdown.getSelectedItem().toString();
        if(tipo == "Cliente"){
            idTipo= true;
        }else {
            idTipo= false;
        }
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        String fecha = sdf.format(new Date(fechaN.getDate()));

        ProgressDialog progressDialog= new ProgressDialog(this);
        if(nombre.isEmpty()){
            nombre
        }

    }

}