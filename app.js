const express = require('express');
const mysql = require('mysql');
const cors = require('cors');


const app = express();
app.use(express.json());
app.use(cors());


//Se establecen los parámetro de la conexión
var conecction = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'eks'
});

//Test de la conexión
conecction.connect(function(error){
    if(error){
        throw error;
    }else{
        console.log("Conexión Exitosa...")
    }
});

app.get('/', function(req,res){
    res.send('Ruta INICIO')
});


// Se muestran todos los artículos
app.get('/api/articulos', (req,res)=>{
    conecction.query('SELECT *  FROM articulos', (error, filas)=>{
        if(error){
            throw error;
        }else{
            res.send(filas)
        }
    })
});


//Mostrar un SOLO artículo
app.get('/api/articulos/:id', (req,res)=>{
    conecction.query('SELECT *  FROM articulos WHERE id = ?',[req.params.id], (error, fila)=>{
        if(error){
            throw error;
        }else{
            res.send(fila)
            //res.send(fila[0].descripcion);
        }
    });
});


//Creando un artículo
app.post('/api/articulos', (req,res)=>{
    let data = {descripcion:req.body.descripcion , precio:req.body.precio , stock:req.body.stock};
    let sql = "INSERT INTO articulos SET ?";
    conecction.query(sql, data, function(error,results){
        if(error){
            throw error;
        }else{
            res.send(results)
        }
    });
});

//Ediando un artículo
app.put('/api/articulos/:id', (req,res)=>{
    let id = req.params.id;
    let descripcion=req.body.descripcion;
    let precio = req.body.precio;
    let stock =req.body.stock;
    let sql = "UPDATE articulos SET descripcion = ?, precio = ?, stock = ? WHERE id= ?";
    conecction.query(sql, [descripcion, precio, stock, id],function(error,results){
        if(error){
            throw error;
        }else{
            res.send(results);
        }
    });

});

//Eliminando un articulo
app.delete('/api/articulos/:id', (req,res)=>{
    conecction.query('DELETE FROM articulos WHERE id = ?',[req.params.id],function(error,filas){
        if(error){
            throw error;
        }else{
            res.send(filas);
        }
    });
});


const port = process.env.PORT || 3000;
app.listen(port,function(){
    console.log("Server running, port: " + port);
});