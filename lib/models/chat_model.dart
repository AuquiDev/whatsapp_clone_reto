//esta clase va gestionar un avatar la foto de Perfil
class ChatModels {
    
  String avattarUrl;
  String Username;
  String message;
  String time;
  int countMessage;
  bool isTyping;

  ChatModels({
    required this.avattarUrl,
    required this.Username,
    required this.message,
    required this.time,
    required this.countMessage,
    required this.isTyping,
  });

}