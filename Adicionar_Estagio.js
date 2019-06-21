import React, { Component } from 'react';
import { StyleSheet, View, TouchableOpacity, Alert, Navigate, TextInput } from 'react-native';
import { createBottomTabNavigator, createAppContainer, createSnackNavigator} from 'react-navigation';
import { Button , Text} from 'react-native-elements';
import Icon from 'react-native-vector-icons/FontAwesome';
import { Table, TableWrapper, Row, Cell } from 'react-native-table-component';
import { Constants } from 'expo';
import {AsyncStorage} from 'react-native';
import { DrawerActions } from 'react-navigation';


class Home1 extends React.Component {
 static navigationOptions = {
    title: 'Adicionar Estagio'
   };
     constructor(props) {
    super(props);
    this.state = {
      Estagio: '',
      Vagas: '',
    };
     }

  componentWillMount = async () =>{
 console.log( this.state.Estagio);
 console.log( this.state.Vagas);


 try{
      const value = await AsyncStorage.getItem('keyID')
      let base64 = require('base-64');
      let headers = new Headers();
      //headers.append('Content-Type', 'text/json');
      headers.append('Authorization', 'Basic ' + base64.encode(value + ":" ));
    //console.log(headers);

      const response=await fetch('http://194.210.91.78/ProjetoEstagios/web/api/estagios', {
        method: 'POST',
        headers: {
          'Authorization': 'Basic ' + base64.encode(value + ":" ),
          Accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body:JSON.stringify({
          nome: this.state.Estagio,
          vagas: this.state.Vagas,
   }),
      });
      if(this.state.Estagio === ''){

      }else{
        return this.props.navigation.navigate('Estagio')
      }
      this.setState({  Estagio: ''})
      this.setState({  Vagas: ''})

}catch (errors) {

     alert(errors);
    }
    }
  render() {
    return (
      <View style={styless.container}>
      <Text h4>Adicionar novo Estagio</Text>

<TextInput
          value={this.state.Estagio}
          onChangeText={(Estagio) => this.setState({ Estagio })}
          placeholder={'Estagio'}
          style={styless.input}
        />
        <TextInput
                  value={this.state.Vagas}
                  onChangeText={(Vagas) => this.setState({ Vagas })}
                  placeholder={'Vagas'}
                  style={styless.input}
                />
        <Button
          title={'Adicionar'}
          onPress={this.componentWillMount}
        />
  </View>
    );
  }
}
//Codigo Css da pagina Login
const styless = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#A9A9A9',
  },
  text:{
 width: 200,
    height: 44,
    padding: 10,
    marginBottom: 10,
  },
  input: {
    width: 200,
    height: 44,
    padding: 10,
    borderWidth: 1,
    borderColor: 'black',
    marginBottom: 10,
  },
});

export default Home1;
