// chiamata api utilizzando fetch con  async per   scrivere una chiamata sincrona, ma è sempre asincrona

import React, { Component } from 'react';
import { StyleSheet, View, TouchableOpacity, Alert, RefreshControl,ScrollView } from 'react-native';
import { Table, TableWrapper, Row, Cell } from 'react-native-table-component';
import { Constants } from 'expo';
import {AsyncStorage} from 'react-native';
import { Button , Text} from 'react-native-elements';


var animals=[] ;
var id;

export default class App extends Component {
constructor(props) {
  super(props);
  this.state = {
    refreshing: false,
    tableHead: ['Id', 'Username', 'Botão'],
    tableData: [
      ['1', '2'],
      ['a', 'b'],
      ['1', '2'],
      ['a', 'b'],
    ],
    param1:"",
    param2:""
  }
}
_onRefresh = async () => {
    this.setState({refreshing: true});
    const value = await AsyncStorage.getItem('keyID')

    let base64 = require('base-64');
    let headers = new Headers();
    //headers.append('Content-Type', 'text/json');
    headers.append('Authorization', 'Basic ' + base64.encode(value + ":" ));
  //console.log(headers);

    const response=await  fetch("http://194.210.91.78/ProjetoEstagios/web/api/users" , {method:'GET',
            headers: headers,
            //credentials: 'user:passwd'
           });
    const resp=await response.json();
       const students = resp;
      //  const students = getdata();
      //Transformando a data em Array
        const uniqueArr = [... new Set(students.map(data => [data.id, data.username, data.id] ))];
        animals=uniqueArr;
        console.log(animals);

          this.setState({refreshing: false});

  }


async componentWillMount ()
  {
    this.setState({refreshing: true});

    const value = await AsyncStorage.getItem('keyID')

    let base64 = require('base-64');
    let headers = new Headers();
    //headers.append('Content-Type', 'text/json');
    headers.append('Authorization', 'Basic ' + base64.encode(value + ":" ));
  //console.log(headers);

    const response=await  fetch("http://194.210.91.78/ProjetoEstagios/web/api/users" , {method:'GET',
            headers: headers,
            //credentials: 'user:passwd'
           });
    const resp=await response.json();
       const students = resp;
      //  const students = getdata();
      //Transformando a data em Array
        const uniqueArr = [... new Set(students.map(data => [data.id, data.username, data.id] ))];
        animals=uniqueArr;
        console.log(animals);
        this.setState({refreshing: false});


  }
  _alertIndex(index) {
      id=index;
      console.log(id);
      return  this.props.navigation.navigate('EditarCadastro');

    }
  render() {
    {this.componentWillMount}
    const state = this.state;
     const element = (data, index) => (
       <TouchableOpacity onPress={() => this._alertIndex(data)}>
         <View style={styles.btn}>
           <Text style={styles.btnText}>Ver</Text>
         </View>
       </TouchableOpacity>
     );

    return (
      <ScrollView
      style={styles.container}
        refreshControl={
          <RefreshControl
            refreshing={this.state.refreshing}
            onRefresh={this._onRefresh}
          />
        }
          >
          <Text h4>Tabela dos Utilizadores</Text>

      <Button
      style={[{ width: "30%", margin: 5}]}
      onPress={() => this.props.navigation.navigate('Cadastrar_aluno')}
        title="Adicionar"
        color="#841584"
        accessibilityLabel="Adicionar novo ano"
      />
      <Table borderStyle={{borderColor: 'transparent'}}>
         <Row data={state.tableHead} style={styles.head} textStyle={styles.text}/>
         {
           animals.map((rowData, index) => (
             <TableWrapper key={index} style={styles.row}>
               {
                 rowData.map((cellData, cellIndex) => (
                   <Cell key={cellIndex} data={cellIndex === 2 ? element(cellData, index) : cellData} textStyle={styles.text}/>
                 ))
               }
             </TableWrapper>
           ))
         }
       </Table>
       </ScrollView>
    );
  }
}
//Codigo Css
const styles = StyleSheet.create({
  container: { flex: 1, padding: 16, paddingTop: 30, backgroundColor: '#A9A9A9', },

  head: { height: 40, backgroundColor: '#f1f8ff' },

  text: {
    margin: 6
  },
  row: {
    flexDirection: 'row',
    backgroundColor: '#FFF1C1'
  },
  btn: {
    width: 58,
    height: 18,
    backgroundColor: '#78B7BB',
    borderRadius: 2
  },
  btnText: {
    textAlign: 'center',
    color: '#fff'
  }
});
export {id};
