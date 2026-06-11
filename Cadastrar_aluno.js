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
    title: 'Cadastrar Aluno'
   };
     constructor(props) {
    super(props);
    this.state = {
      username: '',
      password: '',
      email:'',
    };
     }

  componentWillMount = async () =>{
 console.log( this.state.username);
 console.log( this.state.password);
 console.log( this.state.email);



 try{
      const value = await AsyncStorage.getItem('keyID')
      let base64 = require('base-64');
      let headers = new Headers();
      //headers.append('Content-Type', 'text/json');
      headers.append('Authorization', 'Basic ' + base64.encode(value + ":" ));
    //console.log(headers);

      const response=await fetch('http://192.168.1.69/ProjetoEstagios/web/api/users', {
        method: 'POST',
        headers: {
          'Authorization': 'Basic ' + base64.encode(value + ":" ),
          Accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body:JSON.stringify({
          username: this.state.username,
          password: this.state.password,
          email   :this.state.email,
   }),
      });
      if(this.state.username === ''){

      }else{
      }
      this.setState({  username: ''})
      this.setState({  password: ''})
      this.setState({  email: ''})


}catch (errors) {

     alert(errors);
    }
    }
  render() {
    return (
      <View style={styless.container}>
      <Text h4>Adicionar novo Aluno</Text>

<TextInput
          value={this.state.username}
          onChangeText={(username) => this.setState({ username })}
          placeholder={'username'}
          style={styless.input}
        />
        <TextInput
                  value={this.state.password}
                  onChangeText={(password) => this.setState({ password })}
                  placeholder={'password'}
                  style={styless.input}
                />
                <TextInput
                          value={this.state.email}
                          onChangeText={(email) => this.setState({ email })}
                          placeholder={'email'}
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
