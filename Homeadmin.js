import React from 'react';
import { StyleSheet ,Button, View} from 'react-native';
import { createDrawerNavigator, createStackNavigator, createAppContainer } from 'react-navigation';
import Candidatura from "./Candidatura";
import Estagio from "./Estagio";
import Pais from "./Pais";
import Resultado from "./Resultado";
import Cadastrar_aluno from "./Cadastrar_aluno";
import Ano from "./Ano";
import Cadastros from "./Cadastros";

import { DrawerActions } from 'react-navigation';
import {  Header } from 'react-native-elements';
import {  Text} from 'react-native-elements';

class Profile extends React.Component {
  static navigationOptions = {
    title: 'Home'
   };
   openDrawer = () => {
  this.props.navigation.dispatch(DrawerActions.openDrawer());
}
 render() {
 return (
  <View style={{
   flex: 1,
   alignItems:'center',
   justifyContent:'center',
       backgroundColor: '#A9A9A9'
  }}>

  <Text h4>Bem vindo a sua pagina </Text>
   <Button title="Menu >>"
    onPress={this.openDrawer}
   />
  </View>
);
}
}const styless = StyleSheet.create({
  text:{
 width: 200,
    height: 44,
    padding: 10,
    marginBottom: 10,

  },
});
//Exportando o Drower
export default createAppContainer(createDrawerNavigator({
  Home: {
    screen: Profile
  },
  Cadastros: {
    screen: Cadastros
  },
  Candidatura: {
    screen: Candidatura
  },
  Resultado: {
   screen: Resultado
 },
   Estagio: {
    screen: Estagio
  },
   Pais: {
    screen: Pais
  },
  Ano: {
   screen: Ano
 },

}));
