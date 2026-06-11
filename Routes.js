import React, { Component } from "react";
import { createStackNavigator, createAppContainer } from 'react-navigation';
//Importando as Paginas
import Home from "./Login";

import Login from "./Login";
import Homeadmin from "./Homeadmin";
import Homealuno from "./Homealuno";
import Adicionar_ano from "./Adicionar_ano";
import Adicionar_pais from "./Adicionar_pais";
import Adicionar_Estagio from "./Adicionar_Estagio";
import EditarPais from "./EditarPais";
import EditarAno from "./EditarAno";
import EditarEstagio from "./EditarEstagio";
import EditarCadastro from "./EditarCadastro";
import EditarCandidatura from "./EditarCandidatura";
import Cadastrar_aluno from "./Cadastrar_aluno";
import Resultados_aluno from "./Resultados_aluno";
import CandidaturaCompleta from "./CandidaturaCompleta";
import EditarResultado from "./EditarResultado";
import EditarCandidaturaAluno from "./EditarCandidaturaAluno";

//Criando o TabNavigator
const Project= createStackNavigator({
  Home: {
   screen: Home
  },
  Login: {
   screen: Login
  },
  Homeadmin: {
   screen: Homeadmin
  },
  Homealuno: {
   screen: Homealuno
  },
  Adicionar_ano: {
   screen: Adicionar_ano
  },
  Adicionar_pais: {
   screen: Adicionar_pais
  },
  Adicionar_Estagio: {
   screen: Adicionar_Estagio
  },
  EditarPais: {
   screen: EditarPais
  },
  EditarAno: {
   screen: EditarAno
  },
  EditarCadastro: {
   screen: EditarCadastro
  },
  EditarEstagio: {
   screen: EditarEstagio
  },
  Cadastrar_aluno: {
   screen: Cadastrar_aluno
  },
  EditarCandidatura: {
   screen: EditarCandidatura
  },
  Resultados_aluno: {
   screen: Resultados_aluno
  },
  CandidaturaCompleta: {
   screen: CandidaturaCompleta
  },
  EditarResultado: {
   screen: EditarResultado
  },
  EditarCandidaturaAluno: {
   screen: EditarCandidaturaAluno
  },
});
export default createAppContainer(Project);
