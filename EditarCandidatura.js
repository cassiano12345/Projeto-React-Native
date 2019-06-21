// chiamata api utilizzando fetch con  async per   scrivere una chiamata sincrona, ma è sempre asincrona

import React, { Component } from 'react';
import { StyleSheet, View, TouchableOpacity, Alert ,ScrollView, RefreshControl, TextInput } from 'react-native';
import { Table, TableWrapper, Row, Cell } from 'react-native-table-component';
import { Constants } from 'expo';
import {AsyncStorage} from 'react-native';
import { Button, Text } from 'react-native-elements';
import IOSPicker from 'react-native-ios-picker';
import {id} from './Candidatura.js';

var animals=[] ;
var estagio=[] ;
export default class App extends Component {
  static navigationOptions = {
     title: 'candidatura'
    };
constructor(props) {
  super(props);
  this.state = {
    selectedValue: '',
    email:'',
    iban: '',
    swift: '',
    telefone: '',
    email: '',
    pais1:'',
    pais2: '',
    pais3: '',
    tipodeestagio: '',
    motivacao: '',
    outraslinguas: '',
    informacao: '',
    ano: '',
    mes: '',
    refreshing: false,
    tableHead: ['Nome', 'Botão'],
    param1: ['', 'Botão'],
    param2:['', 'Botão'],
    param3:['', 'Botão'],
    param4:['', 'Botão'],

  }
}
  componentWillMountt = async () =>{
  try{

    if(this.state.telefone == ''){  Alert.alert(`Digite um Telefone`);

    }else{
      if(this.state.pais1 == ''){
        Alert.alert(`Escolha um Pais`);


      }else{

        if(this.state.tipodeestagio == ''){
          Alert.alert(`Digite um tipo de Estagio`);


        }else{
          if(this.state.ano == ''){
            Alert.alert(`Escolha um ano`);
          }else{
            if(this.state.mes == ''){
              Alert.alert(`Escolha um mes`);
            }else{


                  const value = await AsyncStorage.getItem('keyID')
                  let base64 = require('base-64');
                  let headers = new Headers();
                  //headers.append('Content-Type', 'text/json');
                  headers.append('Authorization', 'Basic ' + base64.encode(value + ":" ));
                console.log(headers);

                  const response=await fetch('http://194.210.91.78/ProjetoEstagios/web/api/candidaturas/'+ id, {
                    method: 'PUT',
                    headers: {
                      'Authorization': 'Basic ' + base64.encode(value + ":" ),
                      Accept: 'application/json',
                      'Content-Type': 'application/json',
                    },
                    body:JSON.stringify({
                      iban: this.state.selectedValue,
                      swift: this.state.swift,
                      telefone: this.state.telefone,
                      email: this.state.email,
                      pais1: this.state.pais1,
                      pais2: this.state.pais2,
                      pais3: this.state.pais3,
                      tipodeestagio: this.state.tipodeestagio,
                      motivacao: this.state.motivacao,
                      outraslinguas: this.state.outraslinguas,
                      informacao: this.state.informacao,
                      ano: this.state.ano,
                      mes: this.state.mes,
               }),
                  });
                  Alert.alert(`Candidatura Alterada`);
                  this.setState({  selectedValue: ''})
                  this.setState({  swift: ''})
                  this.setState({  telefone: ''})
                  this.setState({  email: ''})
                  this.setState({  pais1: ''})
                  this.setState({  pais2: ''})
                  this.setState({  pais3: ''})
                  this.setState({  tipodeestagio: ''})
                  this.setState({  motivacao: ''})
                  this.setState({  outraslinguas: ''})
                  this.setState({  informacao: ''})
                  this.setState({  ano: ''})
                  this.setState({  mes: ''})





            }
          }
        }
      }
    }



  }catch (errors) {

     alert(errors);
    }


}
  pais1(d, i) {
      this.setState({pais1: this.state.param1[i]});
    }
    pais2(d, i) {
        this.setState({pais2: this.state.param1[i]});
      }
      pais3(d, i) {
          this.setState({pais3: this.state.param1[i]});
        }
        estagio(d, i) {
            this.setState({tipodeestagio: this.state.param3[i]});
          }
          ano(d, i) {
              this.setState({ano: this.state.param2[i]});
            }
            mes(d, i) {
                this.setState({mes: this.state.param4[i]});
              }
              _onRefresh = async () => {
                  this.setState({refreshing: true});

                    const value = await AsyncStorage.getItem('keyID')
                    let base64 = require('base-64');
                    let headers = new Headers();
                    //headers.append('Content-Type', 'text/json');
                    headers.append('Authorization', 'Basic ' + base64.encode(value + ":" ));
                  //console.log(headers);

                  Promise.all([
                    fetch("http://194.210.91.78/ProjetoEstagios/web/api/pais" , {method:'GET',
                            headers: headers,
                            //credentials: 'user:passwd'
                          }),    fetch("http://194.210.91.78/ProjetoEstagios/web/api/estagios" , {method:'GET',
                                  headers: headers,
                                  //credentials: 'user:passwd'
                                }), fetch("http://194.210.91.78/ProjetoEstagios/web/api/ano" , {method:'GET',
                                        headers: headers,
                                        //credentials: 'user:passwd'
                                      }),
                                      fetch("http://194.210.91.78/ProjetoEstagios/web/api/mes" , {method:'GET',
                                             headers: headers,
                                             //credentials: 'user:passwd'
                                           }),
                                           fetch('http://194.210.91.78/ProjetoEstagios/web/api/candidaturas/' + id , {method:'GET',
                                                  headers: headers,
                                                  //credentials: 'user:passwd'
                                                }),
                    ]).then(async([aa, bb, cc, dd, ee]) => {
                      const a = await aa.json();
                      const b = await bb.json();
                      const c = await cc.json();
                      const d = await dd.json();
                      const e = await ee.json();
                      const uniqueAr = [... new Set(a.map(data => data.nome ))];
                var x1=uniqueAr;
                const uniqueA = [... new Set(b.map(data => data.nome ))];
                var x2=uniqueA;
                      const uniqueArr = [... new Set(c.map(data => data.data ))];
                var x3 =uniqueArr;
                const uniqueArrr = [... new Set(d.map(data => data.nome ))];
                var x4 =uniqueArrr;
                      return [x1, x2, x3, x4, e]
                    })
                    .then((responseText) => {
                      console.log(responseText[4]);

                      this.setState({  param1: responseText[0]})
                      this.setState({  param2: responseText[2]})
                      this.setState({param3: responseText[1]})
                      this.setState({param4: responseText[3]})

                      this.setState({  selectedValue: responseText[4].iban})
                      this.setState({swift: responseText[4].swift})
                      this.setState({telefone: JSON.stringify(responseText[4].telefone)})
                      this.setState({  email: responseText[4].email})

                      this.setState({  motivacao: responseText[4].motivacao})
                      this.setState({outraslinguas: responseText[4].outraslinguas})
                      this.setState({informacao: responseText[4].informacao})


                  //   console.log(this.state.param1[1]);

                    })
                    .catch((err) => {
                      console.log(err);
                    });
                        this.setState({refreshing: false});

                }
async componentWillMount ()
  {
    const value = await AsyncStorage.getItem('keyID')
    let base64 = require('base-64');
    let headers = new Headers();
    //headers.append('Content-Type', 'text/json');
    headers.append('Authorization', 'Basic ' + base64.encode(value + ":" ));
  //console.log(headers);

  Promise.all([
    fetch("http://194.210.91.78/ProjetoEstagios/web/api/pais" , {method:'GET',
            headers: headers,
            //credentials: 'user:passwd'
          }),    fetch("http://194.210.91.78/ProjetoEstagios/web/api/estagios" , {method:'GET',
                  headers: headers,
                  //credentials: 'user:passwd'
                }), fetch("http://194.210.91.78/ProjetoEstagios/web/api/ano" , {method:'GET',
                        headers: headers,
                        //credentials: 'user:passwd'
                      }),
                      fetch("http://194.210.91.78/ProjetoEstagios/web/api/mes" , {method:'GET',
                             headers: headers,
                             //credentials: 'user:passwd'
                           }),
                           fetch('http://194.210.91.78/ProjetoEstagios/web/api/candidaturas/' + id , {method:'GET',
                                  headers: headers,
                                  //credentials: 'user:passwd'
                                }),
    ]).then(async([aa, bb, cc, dd, ee]) => {
      const a = await aa.json();
      const b = await bb.json();
      const c = await cc.json();
      const d = await dd.json();
      const e = await ee.json();
      const uniqueAr = [... new Set(a.map(data => data.nome ))];
var x1=uniqueAr;
const uniqueA = [... new Set(b.map(data => data.nome ))];
var x2=uniqueA;
      const uniqueArr = [... new Set(c.map(data => data.data ))];
var x3 =uniqueArr;
const uniqueArrr = [... new Set(d.map(data => data.nome ))];
var x4 =uniqueArrr;
      return [x1, x2, x3, x4, e]
    })
    .then((responseText) => {
//      console.log(responseText[4]);

      this.setState({  param1: responseText[0]})
      this.setState({  param2: responseText[2]})
      this.setState({param3: responseText[1]})
      this.setState({param4: responseText[3]})

      this.setState({  selectedValue: responseText[4].iban})
      this.setState({swift: responseText[4].swift})
      this.setState({telefone: JSON.stringify(responseText[4].telefone)})
      this.setState({  email: responseText[4].email})

      this.setState({  motivacao: responseText[4].motivacao})
      this.setState({outraslinguas: responseText[4].outraslinguas})
      this.setState({informacao: responseText[4].informacao})


  //   console.log(this.state.param1[1]);

    })
    .catch((err) => {
      console.log(err);
    });
  }

  aceitar = async () =>{
    const value = await AsyncStorage.getItem('keyID')
    let base64 = require('base-64');
    let headers = new Headers();
    //headers.append('Content-Type', 'text/json');
    headers.append('Authorization', 'Basic ' + base64.encode(value + ":" ));
  //console.log(headers);

  Promise.all([
    fetch("http://194.210.91.78/ProjetoEstagios/web/api/candidatura" , {method:'GET',
            headers: headers,
            //credentials: 'user:passwd'
          }),
          fetch("http://194.210.91.78/ProjetoEstagios/web/api/users" , {method:'GET',
                  headers: headers,
                  //credentials: 'user:passwd'
                }),
    ]).then(async([aa,bb]) => {
      const a = await aa.json();
      const b = await bb.json();

      let url = a.find(obj => obj.id === (id));
      let user = b.find(obj => obj.id === (url.id_aluno));
const response=await fetch('http://194.210.91.78/ProjetoEstagios/web/api/resultados', {
  method: 'POST',
  headers: {
    'Authorization': 'Basic ' + base64.encode(value + ":" ),
    Accept: 'application/json',
    'Content-Type': 'application/json',
  },
  body:JSON.stringify({
    username:user.username,
    mensagem:'parabens engenheiro',
      resultado:'parabens engenheiro',
      id_func: 0,
      id_aluno:url.id_aluno,
      tipo_de_estagio:url.tipodeestagio,
      	id_candidatura_id: id,
}),
});

    })

    .catch((err) => {
      console.log(err);
    });

  }

  rejeitar = async () =>{
    const value = await AsyncStorage.getItem('keyID')
    let base64 = require('base-64');
    let headers = new Headers();
    //headers.append('Content-Type', 'text/json');
    headers.append('Authorization', 'Basic ' + base64.encode(value + ":" ));
  //console.log(headers);

  Promise.all([
    fetch("http://194.210.91.78/ProjetoEstagios/web/api/candidatura" , {method:'GET',
            headers: headers,
            //credentials: 'user:passwd'
          }),
          fetch("http://194.210.91.78/ProjetoEstagios/web/api/users" , {method:'GET',
                  headers: headers,
                  //credentials: 'user:passwd'
                }),
    ]).then(async([aa,bb]) => {
      const a = await aa.json();
      const b = await bb.json();

      let url = a.find(obj => obj.id === (id));
      let user = b.find(obj => obj.id === (url.id_aluno));
const response=await fetch('http://194.210.91.78/ProjetoEstagios/web/api/resultados', {
  method: 'POST',
  headers: {
    'Authorization': 'Basic ' + base64.encode(value + ":" ),
    Accept: 'application/json',
    'Content-Type': 'application/json',
  },
  body:JSON.stringify({
    username:user.username,
    mensagem:'Rejeitado',
      resultado:'Rejeitado',
      id_func: 0,
      id_aluno:url.id_aluno,
      tipo_de_estagio:url.tipodeestagio,
      	id_candidatura_id: id,
}),
});

    })

    .catch((err) => {
      console.log(err);
    });

  }



  componentWillMounttt = async () =>{
 try{
      const value = await AsyncStorage.getItem('keyID')
      let base64 = require('base-64');
      let headers = new Headers();
      //headers.append('Content-Type', 'text/json');
      headers.append('Authorization', 'Basic ' + base64.encode(value + ":" ));
    //console.log(headers);

      const response=await fetch('http://194.210.91.78/ProjetoEstagios/web/api/candidaturas/'+ id, {
        method: 'DELETE',
        headers: {
          'Authorization': 'Basic ' + base64.encode(value + ":" ),
          Accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body:JSON.stringify({
          nome: this.state.data,
   }),
      });
      Alert.alert(`Candidatura Eliminada`);
      this.setState({  selectedValue: ''})
      this.setState({  swift: ''})
      this.setState({  telefone: ''})
      this.setState({  email: ''})
      this.setState({  pais1: ''})
      this.setState({  pais2: ''})
      this.setState({  pais3: ''})
      this.setState({  tipodeestagio: ''})
      this.setState({  motivacao: ''})
      this.setState({  outraslinguas: ''})
      this.setState({  informacao: ''})
      this.setState({  ano: ''})
      this.setState({  mes: ''})



}catch (errors) {

     alert(errors);
    }
    }






  render() {

    const state = this.state;
     const element = (data, index) => (
       <TouchableOpacity onPress={() => this._alertIndex(data)}>
         <View style={styles.btn}>
           <Text style={styles.btnText}>Ver</Text>
         </View>
       </TouchableOpacity>
     );

    return (
      <ScrollView style={styles.container}
              refreshControl={
                <RefreshControl
                  refreshing={this.state.refreshing}
                  onRefresh={this._onRefresh}
                />
              }>
              <Text h4>Aceitar/Rejeitar Candidatura a Estagio</Text>

              <Button
              style={[{ width: "30%", margin: 5}]}
              onPress={this.aceitar}
                title="Aceitar"
                color="#841584"
                accessibilityLabel="Adicionar novo ano"
              />
              <Button
              style={[{ width: "30%", margin: 5}]}
              onPress={this.rejeitar}
                title="Rejeitar"
                color="#841584"
                accessibilityLabel="Adicionar novo ano"
              />
              <Text h5>Iban</Text>
              <TextInput
                        value={this.state.selectedValue}
                        onChangeText={(selectedValue) => this.setState({ selectedValue })}
                        placeholder={'Iban'}
                        style={styless.input}
                      />
                      <Text h5>Swift</Text>

                      <TextInput
                                value={this.state.swift}
                                onChangeText={(swift) => this.setState({ swift })}
                                placeholder={'Swift'}
                                style={styless.input}
                              />
                              <Text h5>Telefone</Text>

                              <TextInput
                                        value={this.state.telefone}
                                        onChangeText={(telefone) => this.setState({ telefone })}
                                        placeholder={'Telefone'}
                                        style={styless.input}
                                      />
                                      <Text h5>E-mail</Text>

                                      <TextInput
                                                value={this.state.email}
                                                onChangeText={(email) => this.setState({ email })}
                                                placeholder={'E-mail'}
                                                style={styless.input}
                                              />
                                              <Text h5>Pais 1</Text>

                                              <IOSPicker
                                              style={styles.btn}
                                              onChangeText={this.componentWillMount}
                                       data={this.state.param1}
                                       onValueChange={(d, i)=> this.pais1(d, i)}/>
                                       <Text h5>Pais 2</Text>

                                       <IOSPicker
                                       style={styles.btn}
                                       onChangeText={this.componentWillMount}
                                data={this.state.param1}
                                onValueChange={(d, i)=> this.pais2(d, i)}/>
                                <Text h5>Pais 3</Text>

                                <IOSPicker
                                style={styles.btn}
                                onChangeText={this.componentWillMount}
                         data={this.state.param1}
                         onValueChange={(d, i)=> this.pais3(d, i)}/>
                         <Text h5>Selecione o estagio</Text>

                         <IOSPicker
                         style={styles.btn}
                         onChangeText={this.componentWillMount}
                  data={this.state.param3}
                  onValueChange={(d, i)=> this.estagio(d, i)}/>
                  <Text h5>Motivacao</Text>

                                                                              <TextInput
                                                                                        value={this.state.motivacao}
                                                                                        onChangeText={(motivacao) => this.setState({ motivacao })}
                                                                                        placeholder={'Motivacao'}
                                                                                        style={styless.Motivacao}
                                                                                      />
                                                                                      <Text h5>Outras Linguas</Text>

                                                                                      <TextInput
                                                                                                value={this.state.outraslinguas}
                                                                                                onChangeText={(outraslinguas) => this.setState({ outraslinguas })}
                                                                                                placeholder={'Outras linguas'}
                                                                                                style={styless.Motivacao}
                                                                                              />
                                                                                              <Text h5>Informação</Text>

                                                                                              <TextInput
                                                                                                        value={this.state.informacao}
                                                                                                        onChangeText={(informacao) => this.setState({ informacao })}
                                                                                                        placeholder={'informacao'}
                                                                                                        style={styless.Motivacao}
                                                                                                      />
                                                                                                      <Text h5>Ano</Text>
                                                                                                      <IOSPicker
                                                                                                      style={styles.btn}
                                                                                                      onChangeText={this.componentWillMount}
                                                                                               data={this.state.param2}
                                                                                               onValueChange={(d, i)=> this.ano(d, i)}/>
                                                                                               <Text h5>Mes</Text>
                                                                                               <IOSPicker
                                                                                               style={styles.btn}
                                                                                               onChangeText={this.componentWillMount}
                                                                                        data={this.state.param4}
                                                                                        onValueChange={(d, i)=> this.mes(d, i)}/>
                                                                                        <Button
                                                                                        style={[{ width: "30%", margin: 5}]}
                                                                                        onPress={this.componentWillMountt}
                                                                                          title="Alterar"
                                                                                          color="#841584"
                                                                                          accessibilityLabel="Adicionar novo ano"
                                                                                        />
                                                                                        <Button
                                                                                        style={{ left: 120, top:-44,width: "30%"}}

                                                                                          title={'Eliminar'}
                                                                                          onPress={this.componentWillMounttt}
                                                                                        />

      </ScrollView>
    );

  }
}
//Codigo Css
const styles = StyleSheet.create({
  container: { flex: 1, padding: 16, paddingTop: 30, backgroundColor: '#A9A9A9' },

  head: { height: 40, backgroundColor: '#f1f8ff' },

  text: {
    margin: 6
  },
  btn: {
    width: 200,
    height: 44,
    padding: 10,
    borderWidth: 1,
    borderColor: 'black',
    backgroundColor: '#A9A9A9'
   },
  btnText: {
    textAlign: 'center',
    color: '#fff'
  }
});
const styless = StyleSheet.create({
  container: {     flex: 1,
    paddingTop: Constants.statusBarHeight,
    backgroundColor: '#ecf0f1', backgroundColor: '#A9A9A9', },

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
  Motivacao:{

    width: 200,
    height: 80,
    padding: 10,
    borderWidth: 1,
    borderColor: 'black',
    marginBottom: 10,
  }
});
export {id};
