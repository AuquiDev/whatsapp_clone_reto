import 'package:whatsapp_clone_reto/models/chat_menssage_models.dart';
import 'package:whatsapp_clone_reto/models/chat_model.dart';

List<ChatModels> chats = [
  ChatModels(
      avattarUrl:
          'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100__480.jpg',
      Username: 'Lola Lamento',
      message: 'pronto sera el dia',
      time: '11:00',
      countMessage: 8,
      isTyping: true),
  ChatModels(
      avattarUrl:
          'https://i.pinimg.com/474x/98/62/b8/9862b893c23fb98231818dc12280b52f.jpg',
      Username: 'Laper Dida',
      message:
          'Alerta ViaBCP, Tienes una transferencia retenida, para activar tus operaciones y evitar el bloqueo de sus cuentas ingrese aqui: https://estafa.com',
      time: '11:20',
      countMessage: 1,
      isTyping: false),
  ChatModels(
      avattarUrl:
          'https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166__480.jpg',
      Username: 'Eldo Mingo',
      message: 'Hoy es tu dia de descanzo, te lo mereses',
      time: '12:20',
      countMessage: 2,
      isTyping: false),
  ChatModels(
      avattarUrl:
          'https://cdn.pixabay.com/photo/2016/08/01/20/15/girl-1562025__480.jpg',
      Username: 'Aiko Comida',
      message: 'Degusta nuestros mejores platillos, te esperamos',
      time: '12:50',
      countMessage: 0,
      isTyping: false),
  ChatModels(
      avattarUrl:
          'https://cdn.pixabay.com/photo/2016/11/23/17/25/woman-1853939__480.jpg',
      Username: 'Miriam Fernandez',
      message:
          'Es un gusto contar con tu apoyo, te parece una reunion el viernes por la mañana?',
      time: '1:11',
      countMessage: 10,
      isTyping: true),
  ChatModels(
      avattarUrl:
          'https://i.pinimg.com/564x/b1/5c/5d/b15c5d9d57c156022dba341879b8df9f.jpg',
      Username: 'Avril Lavigne',
      message: ':)',
      time: '1:21',
      countMessage: 0,
      isTyping: true),
];

List<ChatMessageModels> chatmessageList = [
  ChatMessageModels(
    messageContent: 'Hola, esta todo bien amigo?', 
    messageType: 'me'),
  
   ChatMessageModels(
    messageContent: 'SI todo esta bien', 
    messageType: 'Other'),
  
  ChatMessageModels(
    messageContent: 'es un gusto verte, que haces por aqui', 
    messageType: 'me'),
  
   ChatMessageModels(
    messageContent: 'acabo de llegar, vino por trabajo', 
    messageType: 'Other')
];
