import React, { Component } from 'react';
import { StyleSheet, View, TouchableOpacity, Alert, Navigate, TextInput, Picker } from 'react-native';
import { createBottomTabNavigator, createAppContainer, createSnackNavigator} from 'react-navigation';
import { Button , Text} from 'react-native-elements';
import Icon from 'react-native-vector-icons/FontAwesome';
import { Table, TableWrapper, Row, Cell } from 'react-native-table-component';
import { Constants } from 'expo';
import {AsyncStorage} from 'react-native';
import { DrawerActions } from 'react-navigation';
import {id} from './Ano.js';

class Home1 extends React.Component {
 static navigationOptions = {
    title: 'Editar/Eliminar Ano'
   };
     constructor(props) {
    super(props);
    this.state = {
      isVisible: false,

      data: '',
      password: '',
    };
     }
//Dando um alert ao Botão para efetuar a soma dos valores dos imputes



  componentWillMounttt = async () =>{
    console.log(id);
 try{
      const value = await AsyncStorage.getItem('keyID')
      let base64 = require('base-64');
      let headers = new Headers();
      //headers.append('Content-Type', 'text/json');
      headers.append('Authorization', 'Basic ' + base64.encode(value + ":" ));
    //console.log(headers);

      const response=await fetch('http://194.210.91.78/ProjetoEstagios/web/api/anos/'+ id, {
        method: 'PUT',
        headers: {
          'Authorization': 'Basic ' + base64.encode(value + ":" ),
          Accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body:JSON.stringify({
          data: this.state.data,
   }),
      });
      Alert.alert(`Ano Editado`);

      this.setState({  data: ''})

}catch (errors) {

     alert(errors);
    }
    }

    componentWillMount = async () =>{
   try{
        const value = await AsyncStorage.getItem('keyID')
        let base64 = require('base-64');
        let headers = new Headers();
        //headers.append('Content-Type', 'text/json');
        headers.append('Authorization', 'Basic ' + base64.encode(value + ":" ));
      //console.log(headers);

        const response=await fetch('http://194.210.91.78/ProjetoEstagios/web/api/anos/'+ id, {
          method: 'GET',
          headers: {
            'Authorization': 'Basic ' + base64.encode(value + ":" ),
            Accept: 'application/json',
            'Content-Type': 'application/json',
          },
        });
        const resp=await response.json();
          this.setState({  data:resp.data});
console.log(this.state.data);
  }catch (errors) {

       alert(errors);
      }
      }
    componentWillMountt = async () =>{
   try{
        const value = await AsyncStorage.getItem('keyID')
        let base64 = require('base-64');
        let headers = new Headers();
        //headers.append('Content-Type', 'text/json');
        headers.append('Authorization', 'Basic ' + base64.encode(value + ":" ));
      //console.log(headers);

        const response=await fetch('http://194.210.91.78/ProjetoEstagios/web/api/anos/'+ id, {
          method: 'DELETE',
          headers: {
            'Authorization': 'Basic ' + base64.encode(value + ":" ),
            Accept: 'application/json',
            'Content-Type': 'application/json',
          },
          body:JSON.stringify({
            data: this.state.data,
     }),
        });
        Alert.alert(`Data Eliminado`);

        this.setState({  data: ''})

  }catch (errors) {

       alert(errors);
      }
      }
  render() {
  //  console.log(id);
    return (
      <View style={styless.container}>
      <Text h4>Adicionar/Eliminar Ano</Text>

<TextInput
          value={this.state.data}
          onChangeText={(data) => this.setState({ data })}
          placeholder={'Ano'}
          style={styless.input}
        />
        <Button
        style={{ left: -50}}

          title={'Editar'}
          onPress={this.componentWillMounttt}
        />
        <Button
        style={{ left: 50, top:-40}}

          title={'Eliminar'}
          onPress={this.componentWillMountt}
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
