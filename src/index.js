const express = require('express');
const path = require('path');
const exphbs = require('express-handlebars');
const http = require('http');
const morgan = require('morgan');
const Handlebars = require('handlebars');
const methodOverride = require('method-override');

const {allowInsecurePrototypeAccess} = require('@handlebars/allow-prototype-access');



///////Initialation
const app = express();
const server = http.createServer(app);



/////// Settings
app.set('port', process.env.PORT || 2000); //si un servicio en la nube me ofrece un puerto utilicelo sino utilice el 2000
app.set('views', path.join(__dirname, 'views')); //se indica al servidor donde se encuentra views, dirname devuelve el directorio donde es ejecutado y join une directorios
//configuración de handlebars, el main nos permite reutilizar código como el header, el footer, colores etc
app.engine('.hbs', exphbs({
    defaultLayout: 'main',
    layoutsDir: path.join(app.get('views'), 'layouts'), //se indica la dirección donde se encuentra el main
    partialsDir: path.join(app.get('views'), 'partials'), //reutilizar pedazos de codigo(formularios, cards)
    handlebars: allowInsecurePrototypeAccess(Handlebars),
    extname: '.hbs' 
}));


//se establece el motor de plantillas (handlebars) 
app.set('view engine', '.hbs');

/////// Middlewares
app.use(express.urlencoded({extended: false}) );
app.use(methodOverride('_method')); //para que los formularios puedan enviar metodos como put and delete.



//////// Static Files
app.use('/static', express.static(path.join(__dirname, 'public')));

//leer localhost de variables y puerto
const host = process.env.HOST || '0.0.0.0';
const port = process.env.PORT || 2000;


////////Server listening con port, host & sockets
server.listen(port,host, ()=> {
    console.log('El servidor esta funcionando-sockets: '); 
});



