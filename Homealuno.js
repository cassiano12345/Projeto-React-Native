import React from 'react';
import { StyleSheet ,Button, View, Text } from 'react-native';
import { createDrawerNavigator, createStackNavigator, createAppContainer } from 'react-navigation';
import Fazer_candidatura from "./Fazer_candidatura";
import Candidaturaaluno from "./Candidaturaaluno";
import Resultados_aluno from "./Resultados_aluno";

import { DrawerActions } from 'react-navigation';
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
<Text style={styless.text}> Bem vindo a sua pagina </Text>
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
  Fazer_candidatura: {
    screen: Fazer_candidatura
  },
  Candidaturaaluno: {
    screen: Candidaturaaluno
  },
  Resultados_aluno: {
    screen: Resultados_aluno
  },

}));
