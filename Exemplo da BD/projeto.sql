-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 02-Abr-2019 às 08:31
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

DROP TABLE IF EXISTS `aluno`;
CREATE TABLE IF NOT EXISTS `aluno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

DROP TABLE IF EXISTS `ano`;
CREATE TABLE IF NOT EXISTS `ano` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`id`, `data`) VALUES
(1, 2019),
(2, 2020),
(3, 2021);

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('resultadoss', 3, 1553252212),
('roleCandidato', 2, 1548671807),
('roleCandidato', 3, 1547486558);

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  KEY `fk_auth_item_group_code` (`group_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`, `group_code`) VALUES
('/*', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('//*', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('//controller', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('//crud', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('//extension', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('//form', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('//index', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('//model', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('//module', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/aluno/*', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/aluno/create', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/aluno/delete', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/aluno/index', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/aluno/update', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/aluno/view', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/asset/*', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/asset/compress', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/asset/template', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/cache/*', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/cache/flush', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/cache/flush-all', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/cache/flush-schema', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/cache/index', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/candidatura/*', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/candidatura/create', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/candidatura/delete', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/candidatura/index', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/candidatura/minhas-candidaturas', 3, NULL, NULL, NULL, 1548347912, 1548347912, NULL),
('/candidatura/update', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/candidatura/view', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/debug/*', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/debug/default/*', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/debug/default/db-explain', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/debug/default/download-mail', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/debug/default/index', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/debug/default/toolbar', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/debug/default/view', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/debug/user/*', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/debug/user/reset-identity', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/debug/user/set-identity', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/estagios/*', 3, NULL, NULL, NULL, 1547486312, 1547486312, NULL),
('/estagios/create', 3, NULL, NULL, NULL, 1547486312, 1547486312, NULL),
('/estagios/delete', 3, NULL, NULL, NULL, 1547486312, 1547486312, NULL),
('/estagios/index', 3, NULL, NULL, NULL, 1547486312, 1547486312, NULL),
('/estagios/update', 3, NULL, NULL, NULL, 1547486312, 1547486312, NULL),
('/estagios/view', 3, NULL, NULL, NULL, 1547486312, 1547486312, NULL),
('/fixture/*', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/fixture/load', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/fixture/unload', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/funcionario/*', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/funcionario/create', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/funcionario/delete', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/funcionario/index', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/funcionario/update', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/funcionario/view', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/gii/*', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/gii/default/*', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/gii/default/action', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/gii/default/diff', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/gii/default/index', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/gii/default/preview', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/gii/default/view', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/hello/*', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/hello/index', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/help/*', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/help/index', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/help/list', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/help/list-action-options', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/help/usage', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/message/*', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/message/config', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/message/config-template', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/message/extract', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/migrate/*', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/migrate/create', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/migrate/down', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/migrate/fresh', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/migrate/history', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/migrate/mark', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/migrate/new', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/migrate/redo', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/migrate/to', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/migrate/up', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/pais/*', 3, NULL, NULL, NULL, 1548347912, 1548347912, NULL),
('/pais/create', 3, NULL, NULL, NULL, 1548347912, 1548347912, NULL),
('/pais/delete', 3, NULL, NULL, NULL, 1548347912, 1548347912, NULL),
('/pais/index', 3, NULL, NULL, NULL, 1548347912, 1548347912, NULL),
('/pais/update', 3, NULL, NULL, NULL, 1548347912, 1548347912, NULL),
('/pais/view', 3, NULL, NULL, NULL, 1548347912, 1548347912, NULL),
('/resultado/*', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/resultado/create', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/resultado/delete', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/resultado/index', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/resultado/update', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/resultado/view', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/serve/*', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/serve/index', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/site/*', 3, NULL, NULL, NULL, 1545390294, 1545390294, NULL),
('/site/about', 3, NULL, NULL, NULL, 1545390294, 1545390294, NULL),
('/site/captcha', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/site/contact', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/site/error', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/site/hello', 3, NULL, NULL, NULL, 1545390294, 1545390294, NULL),
('/site/index', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/site/login', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/site/logout', 3, NULL, NULL, NULL, 1545390295, 1545390295, NULL),
('/site/user', 3, NULL, NULL, NULL, 1545390294, 1545390294, NULL),
('/user-management/*', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/user-management/auth-item-group/*', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth-item-group/bulk-activate', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth-item-group/bulk-deactivate', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth-item-group/bulk-delete', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth-item-group/create', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth-item-group/delete', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth-item-group/grid-page-size', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth-item-group/grid-sort', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth-item-group/index', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth-item-group/toggle-attribute', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth-item-group/update', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth-item-group/view', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth/*', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth/captcha', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth/change-own-password', 3, NULL, NULL, NULL, 1545390002, 1545390002, NULL),
('/user-management/auth/confirm-email', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth/confirm-email-receive', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth/confirm-registration-email', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth/login', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth/logout', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth/password-recovery', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth/password-recovery-receive', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/auth/registration', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/permission/*', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/permission/bulk-activate', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/permission/bulk-deactivate', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/permission/bulk-delete', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/permission/create', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/permission/delete', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/permission/grid-page-size', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/permission/grid-sort', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/permission/index', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/permission/refresh-routes', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/permission/set-child-permissions', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/permission/set-child-routes', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/permission/toggle-attribute', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/permission/update', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/permission/view', 3, NULL, NULL, NULL, 1545390297, 1545390297, NULL),
('/user-management/role/*', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/role/bulk-activate', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/role/bulk-deactivate', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/role/bulk-delete', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/role/create', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/role/delete', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/role/grid-page-size', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/role/grid-sort', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/role/index', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/role/set-child-permissions', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/role/set-child-roles', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/role/toggle-attribute', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/role/update', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/role/view', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user-permission/*', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user-permission/set', 3, NULL, NULL, NULL, 1545390002, 1545390002, NULL),
('/user-management/user-permission/set-roles', 3, NULL, NULL, NULL, 1545390002, 1545390002, NULL),
('/user-management/user-visit-log/*', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user-visit-log/bulk-activate', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user-visit-log/bulk-deactivate', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user-visit-log/bulk-delete', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user-visit-log/create', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user-visit-log/delete', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user-visit-log/grid-page-size', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user-visit-log/grid-sort', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user-visit-log/index', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user-visit-log/toggle-attribute', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user-visit-log/update', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user-visit-log/view', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user/*', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user/bulk-activate', 3, NULL, NULL, NULL, 1545390002, 1545390002, NULL),
('/user-management/user/bulk-deactivate', 3, NULL, NULL, NULL, 1545390002, 1545390002, NULL),
('/user-management/user/bulk-delete', 3, NULL, NULL, NULL, 1545390002, 1545390002, NULL),
('/user-management/user/change-password', 3, NULL, NULL, NULL, 1545390002, 1545390002, NULL),
('/user-management/user/create', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/user-management/user/delete', 3, NULL, NULL, NULL, 1545390002, 1545390002, NULL),
('/user-management/user/grid-page-size', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/user-management/user/grid-sort', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user/index', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('/user-management/user/toggle-attribute', 3, NULL, NULL, NULL, 1545390296, 1545390296, NULL),
('/user-management/user/update', 3, NULL, NULL, NULL, 1545390002, 1545390002, NULL),
('/user-management/user/view', 3, NULL, NULL, NULL, 1545390001, 1545390001, NULL),
('Admin', 1, 'Admin', NULL, NULL, 1545390001, 1545390001, NULL),
('assignRolesToUsers', 2, 'Assign roles to users', NULL, NULL, 1545390002, 1545390002, 'userManagement'),
('bindUserToIp', 2, 'Bind user to IP', NULL, NULL, 1545390002, 1545390002, 'userManagement'),
('changeOwnPassword', 2, 'Change own password', NULL, NULL, 1545390002, 1545390002, 'userCommonPermissions'),
('changeUserPassword', 2, 'Change user password', NULL, NULL, 1545390002, 1545390002, 'userManagement'),
('commonPermission', 2, 'Common permission', NULL, NULL, 1545390001, 1545390001, NULL),
('createUsers', 2, 'Create users', NULL, NULL, 1545390001, 1545390001, 'userManagement'),
('deleteUsers', 2, 'Delete users', NULL, NULL, 1545390002, 1545390002, 'userManagement'),
('editUserEmail', 2, 'Edit user email', NULL, NULL, 1545390002, 1545390002, 'userManagement'),
('editUsers', 2, 'Edit users', NULL, NULL, 1545390002, 1545390002, 'userManagement'),
('permissionCandidaturaCreat', 2, 'Criar candidatura', NULL, NULL, 1547486197, 1547486197, 'permissionGroupCandidatura'),
('permissionCandidaturaMinhaCandidatura', 2, 'Ver minhas candidaturas', NULL, NULL, 1548347903, 1548347903, 'permissionGroupCandidatura'),
('permissionCandidaturaView', 2, 'Ver candidatura', NULL, NULL, 1548434879, 1548434879, 'permissionGroupCandidatura'),
('permissionResultadoMeuReusltado', 2, 'resultado', NULL, NULL, 1548459014, 1548459014, 'permissionGroupCandidatura'),
('permissionSiteIndex', 2, 'homepage', NULL, NULL, 1547486516, 1547486516, 'userCommonPermissions'),
('resultadoss', 1, 'resultados', NULL, NULL, 1553252098, 1553252098, NULL),
('roleCandidato', 1, 'Candidato', NULL, NULL, 1547486353, 1547486353, NULL),
('viewRegistrationIp', 2, 'View registration IP', NULL, NULL, 1545390002, 1545390002, 'userManagement'),
('viewUserEmail', 2, 'View user email', NULL, NULL, 1545390002, 1545390002, 'userManagement'),
('viewUserRoles', 2, 'View user roles', NULL, NULL, 1545390002, 1545390002, 'userManagement'),
('viewUsers', 2, 'View users', NULL, NULL, 1545390001, 1545390001, 'userManagement'),
('viewVisitLog', 2, 'View visit log', NULL, NULL, 1545390002, 1545390002, 'userManagement');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('permissionCandidaturaCreat', '/candidatura/create'),
('permissionCandidaturaMinhaCandidatura', '/candidatura/minhas-candidaturas'),
('permissionCandidaturaView', '/candidatura/view'),
('permissionResultadoMeuReusltado', '/resultado/index'),
('permissionSiteIndex', '/site/index'),
('changeOwnPassword', '/user-management/auth/change-own-password'),
('assignRolesToUsers', '/user-management/user-permission/set'),
('assignRolesToUsers', '/user-management/user-permission/set-roles'),
('editUsers', '/user-management/user/bulk-activate'),
('editUsers', '/user-management/user/bulk-deactivate'),
('deleteUsers', '/user-management/user/bulk-delete'),
('changeUserPassword', '/user-management/user/change-password'),
('createUsers', '/user-management/user/create'),
('deleteUsers', '/user-management/user/delete'),
('viewUsers', '/user-management/user/grid-page-size'),
('viewUsers', '/user-management/user/index'),
('editUsers', '/user-management/user/update'),
('viewUsers', '/user-management/user/view'),
('Admin', 'assignRolesToUsers'),
('Admin', 'changeOwnPassword'),
('Admin', 'changeUserPassword'),
('Admin', 'createUsers'),
('Admin', 'deleteUsers'),
('Admin', 'editUsers'),
('roleCandidato', 'permissionCandidaturaCreat'),
('roleCandidato', 'permissionCandidaturaMinhaCandidatura'),
('roleCandidato', 'permissionCandidaturaView'),
('resultadoss', 'permissionResultadoMeuReusltado'),
('roleCandidato', 'permissionResultadoMeuReusltado'),
('roleCandidato', 'permissionSiteIndex'),
('editUserEmail', 'viewUserEmail'),
('assignRolesToUsers', 'viewUserRoles'),
('Admin', 'viewUsers'),
('assignRolesToUsers', 'viewUsers'),
('changeUserPassword', 'viewUsers'),
('createUsers', 'viewUsers'),
('deleteUsers', 'viewUsers'),
('editUsers', 'viewUsers');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_item_group`
--

DROP TABLE IF EXISTS `auth_item_group`;
CREATE TABLE IF NOT EXISTS `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `auth_item_group`
--

INSERT INTO `auth_item_group` (`code`, `name`, `created_at`, `updated_at`) VALUES
('permissionGroupCandidatura', 'candidatura', 1547486137, 1547486137),
('userCommonPermissions', 'User common permission', 1545390002, 1545390002),
('userManagement', 'User management', 1545390001, 1545390001);

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatura`
--

DROP TABLE IF EXISTS `candidatura`;
CREATE TABLE IF NOT EXISTS `candidatura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iban` varchar(255) DEFAULT NULL,
  `swift` varchar(255) DEFAULT NULL,
  `telefone` int(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pais1` text NOT NULL,
  `pais2` text,
  `pais3` text,
  `tipodeestagio` varchar(255) NOT NULL,
  `motivacao` varchar(255) DEFAULT NULL,
  `outraslinguas` varchar(255) DEFAULT NULL,
  `informacao` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_aluno` int(255) DEFAULT NULL,
  `id_estagio` varchar(255) DEFAULT NULL,
  `ano` int(255) NOT NULL,
  `mes` text NOT NULL,
  `id_aluno_id` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_aluno` (`id_aluno`),
  KEY `id_estagio` (`id_estagio`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `candidatura`
--

INSERT INTO `candidatura` (`id`, `iban`, `swift`, `telefone`, `email`, `pais1`, `pais2`, `pais3`, `tipodeestagio`, `motivacao`, `outraslinguas`, `informacao`, `created_at`, `id_aluno`, `id_estagio`, `ano`, `mes`, `id_aluno_id`) VALUES
(36, '2423', '234234', 234243234, 'cassianovidera@xxx.com', 'Chipre', 'Belgica', 'Croacia', 'Estagio Curricular (inserido no plano de estudos do estudante; 4 meses)', 'sdfsdfsf', '', '', '2019-03-31 00:51:00', 3, NULL, 2, '1', NULL),
(37, '234234', '2343', 23423, 'cassianovidera@xxx.com', 'bielorrússia', '', '', 'Estagio Curricular (inserido no plano de estudos do estudante; 4 meses)', 'dsdfs', '', '', '2019-03-31 02:58:36', 3, NULL, 2020, 'Julho', NULL),
(38, '45345', '34534', 34534, 'cas@hhh.com', 'bielorrússia', 'Chipre', '', 'Estagio Extracurricular para recem-diplomado', '', '', '', '2019-03-31 22:27:34', 3, NULL, 2021, 'Março', NULL),
(39, '34534534', '34534', 34534, 'cassiano@xxx.com', 'bielorrússia', '', '', '2', 'sfdfg', '', '', '2019-04-01 01:25:51', 3, NULL, 2020, 'Março', NULL),
(40, '53453', '345345', 3454, 'casdas@fsdf.com', 'Austria', '', '', 'Estagio Extracurricular para recem-diplomado', 'jbkb', '', '', '2019-04-01 02:00:16', 3, NULL, 2020, 'Fevereiro', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estagios`
--

DROP TABLE IF EXISTS `estagios`;
CREATE TABLE IF NOT EXISTS `estagios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  `vagas` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estagios`
--

INSERT INTO `estagios` (`id`, `nome`, `vagas`) VALUES
(1, 'Estagio de Mestrado (Estagio de natureza profissional objecto de relatorio final)', 20),
(2, 'Estagio Curricular (inserido no plano de estudos do estudante 4 meses)', 30),
(3, 'Estagio Extracurricular (na Condicao de estudante)', 20),
(4, 'Estagio Extracurricular para recem-diplomado', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

DROP TABLE IF EXISTS `mes`;
CREATE TABLE IF NOT EXISTS `mes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`id`, `nome`) VALUES
(1, 'Janeiro'),
(2, 'Fevereiro'),
(3, 'Março'),
(4, 'Abril'),
(5, 'Maio'),
(6, 'Junho'),
(7, 'Julho'),
(8, 'Agosto'),
(9, 'Setembro'),
(10, 'Outubro'),
(11, 'Novembro'),
(12, 'Dezembro\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migration`
--

DROP TABLE IF EXISTS `migration`;
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1545389987),
('m140608_173539_create_user_table', 1545389999),
('m140611_133903_init_rbac', 1545389999),
('m140808_073114_create_auth_item_group_table', 1545390000),
('m140809_072112_insert_superadmin_to_user', 1545390000),
('m140809_073114_insert_common_permisison_to_auth_item', 1545390001),
('m141023_141535_create_user_visit_log', 1545390001),
('m141116_115804_add_bind_to_ip_and_registration_ip_to_user', 1545390001),
('m141121_194858_split_browser_and_os_column', 1545390001),
('m141201_220516_add_email_and_email_confirmed_to_user', 1545390001),
('m141207_001649_create_basic_user_permissions', 1545390002);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

DROP TABLE IF EXISTS `pais`;
CREATE TABLE IF NOT EXISTS `pais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`id`, `nome`) VALUES
(11, 'Alemanha'),
(12, 'Austria'),
(13, 'Belgica'),
(14, 'bielorrússia'),
(15, 'Croacia'),
(16, 'Chipre'),
(17, 'Finlandia'),
(18, 'França'),
(19, 'Holanda');

-- --------------------------------------------------------

--
-- Estrutura da tabela `resultado`
--

DROP TABLE IF EXISTS `resultado`;
CREATE TABLE IF NOT EXISTS `resultado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `mensagem` varchar(255) NOT NULL,
  `resultado` text NOT NULL,
  `id_func` int(255) NOT NULL,
  `id_candidatura_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_candidatura_id` (`id_candidatura_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `resultado`
--

INSERT INTO `resultado` (`id`, `username`, `mensagem`, `resultado`, `id_func`, `id_candidatura_id`) VALUES
(13, 'superadmin', 'Parabén candidatura aceite, para mais informações dirija-se ao gabinete de relações exteriores ', 'Apto', 1, 36);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `superadmin` smallint(6) DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `confirmation_token`, `status`, `superadmin`, `created_at`, `updated_at`, `registration_ip`, `bind_to_ip`, `email`, `email_confirmed`) VALUES
(1, 'superadmin', 'ELDnXLFhOgj5HwdBaJ9oEieBEP-FIUOc', '$2y$13$FyOpk291CtUVb6Vxjrv5quACxJlenKYS/JufmSl/fo1lOzjHjOXyq', NULL, 1, 1, 1545390000, 1545390000, NULL, NULL, NULL, 0),
(2, 'cassiano', 'HrK80k2xNiJ2-lg9q-JurIMuhK02tLEg', '$2y$13$.44LNVO64z0AFfeAAPdpeuPu/gaC5xl0nvqAadzdQond9kZ03tMZC', NULL, 1, 0, 1547161163, 1547161163, '::1', '', 'cassianovideira@hotmail.com', 1),
(3, 'candidato', 'jekGd31LuR7q-TYdf72m4EjPSQ7FNllC', '$2y$13$W83fYi7RQQp78oxB7LxlTudQTdYCMHMI1sBha9EY1VM4JCdY/S.9e', NULL, 1, 0, 1547486387, 1547486387, '::1', '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_visit_log`
--

DROP TABLE IF EXISTS `user_visit_log`;
CREATE TABLE IF NOT EXISTS `user_visit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` char(2) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user_visit_log`
--

INSERT INTO `user_visit_log` (`id`, `token`, `ip`, `language`, `user_agent`, `user_id`, `visit_time`, `browser`, `os`) VALUES
(1, '5c1cc849c62a7', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1545390153, 'Chrome', 'Windows'),
(2, '5c1cc92344d01', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1545390371, 'Chrome', 'Windows'),
(3, '5c35d78d26d12', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547032461, 'Chrome', 'Windows'),
(4, '5c35da72dd357', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547033202, 'Chrome', 'Windows'),
(5, '5c35ddfd3a1f6', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 1, 1547034109, 'Edge', 'Windows'),
(6, '5c35e033b53c5', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547034675, 'Chrome', 'Windows'),
(7, '5c3719738a6e9', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547114867, 'Chrome', 'Windows'),
(8, '5c379d8d75f12', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547148685, 'Chrome', 'Windows'),
(9, '5c37ced647590', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 2, 1547161302, 'Chrome', 'Windows'),
(10, '5c37ceedd8158', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547161325, 'Chrome', 'Windows'),
(11, '5c385c3aed977', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547197498, 'Chrome', 'Windows'),
(12, '5c3860c5304d0', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547198661, 'Chrome', 'Windows'),
(13, '5c3875256b79d', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547203877, 'Chrome', 'Windows'),
(14, '5c3cb484b3156', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547482244, 'Chrome', 'Windows'),
(15, '5c3cbd9da685c', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547484573, 'Chrome', 'Windows'),
(16, '5c3cc1408ae2b', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547485504, 'Chrome', 'Windows'),
(17, '5c3cc4c14b57c', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 3, 1547486401, 'Chrome', 'Windows'),
(18, '5c3cc4fc93a94', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 1, 1547486460, 'Edge', 'Windows'),
(19, '5c3da85020174', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 1, 1547544656, 'Edge', 'Windows'),
(20, '5c3dae0375fb7', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 3, 1547546115, 'Chrome', 'Windows'),
(21, '5c3dae1a26be9', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547546138, 'Chrome', 'Windows'),
(22, '5c3dbdae092b9', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 3, 1547550126, 'Chrome', 'Windows'),
(23, '5c3dbef22c790', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547550450, 'Chrome', 'Windows'),
(24, '5c3dc7aa3bdbb', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1547552682, 'Edge', 'Windows'),
(25, '5c3e0a22b71cc', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547569698, 'Chrome', 'Windows'),
(26, '5c3e127d01d53', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1547571837, 'Edge', 'Windows'),
(27, '5c3ef6c4f3fd8', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1547630277, 'Edge', 'Windows'),
(28, '5c3f583811eda', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547655224, 'Chrome', 'Windows'),
(29, '5c3f58592d076', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1547655257, 'Edge', 'Windows'),
(30, '5c3f59a5ddfbf', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547655589, 'Chrome', 'Windows'),
(31, '5c3f59f1d654a', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547655665, 'Chrome', 'Windows'),
(32, '5c4197e6133d0', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1547802598, 'Chrome', 'Windows'),
(33, '5c41980de3bca', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1547802637, 'Edge', 'Windows'),
(34, '5c46f37d05508', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1548153725, 'Chrome', 'Windows'),
(35, '5c4877a19e126', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1548253089, 'Chrome', 'Windows'),
(36, '5c489aa436034', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1548262052, 'Edge', 'Windows'),
(37, '5c48a08bd1076', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1548263563, 'Chrome', 'Windows'),
(38, '5c49b378ec126', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1548333944, 'Edge', 'Windows'),
(39, '5c49b3b59748c', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 3, 1548334005, 'Chrome', 'Windows'),
(40, '5c49b3ca20296', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 1, 1548334026, 'Edge', 'Windows'),
(41, '5c49b3d6a1099', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1548334038, 'Edge', 'Windows'),
(42, '5c49c6a6f0eed', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1548338855, 'Chrome', 'Windows'),
(43, '5c49d658988ca', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1548342872, 'Chrome', 'Windows'),
(44, '5c49f1e0d5e5d', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 3, 1548349920, 'Chrome', 'Windows'),
(45, '5c4ad3db81b92', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1548407771, 'Chrome', 'Windows'),
(46, '5c4afd62a0fe1', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1548418402, 'Chrome', 'Windows'),
(47, '5c4b4a898bebf', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1548438153, 'Edge', 'Windows'),
(48, '5c4edafe0a661', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 2, 1548671742, 'Chrome', 'Windows'),
(49, '5c4edb1f0d9c3', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1548671775, 'Chrome', 'Windows'),
(50, '5c4edb5502277', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 2, 1548671829, 'Chrome', 'Windows'),
(51, '5c4edb94102f7', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 1, 1548671892, 'Edge', 'Windows'),
(52, '5c4eddcf3f3a1', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 3, 1548672463, 'Chrome', 'Windows'),
(53, '5c4eddf1c869c', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1548672497, 'Chrome', 'Windows'),
(54, '5c4edee052f13', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1548672736, 'Edge', 'Windows'),
(55, '5c5079d2083e6', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1548777938, 'Chrome', 'Windows'),
(56, '5c51afcd69ba6', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1548857293, 'Edge', 'Windows'),
(57, '5c51b8acbcdca', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1548859564, 'Edge', 'Windows'),
(58, '5c51b8f36c920', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1548859635, 'Chrome', 'Windows'),
(59, '5c535df721637', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 1, 1548967415, 'Chrome', 'Windows'),
(60, '5c53635724582', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1548968791, 'Edge', 'Windows'),
(61, '5c90b3af253bf', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 3, 1552987055, 'Chrome', 'Windows'),
(62, '5c90b3d91edae', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 1, 1552987097, 'Chrome', 'Windows'),
(63, '5c90b41c8cb7b', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 3, 1552987164, 'Chrome', 'Windows'),
(64, '5c90b7089999a', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 1, 1552987912, 'Chrome', 'Windows'),
(65, '5c9363b7c963a', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 1, 1553163191, 'Chrome', 'Windows'),
(66, '5c94be5ce334b', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 1, 1553251932, 'Chrome', 'Windows'),
(67, '5c94be9deb653', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 3, 1553251997, 'Chrome', 'Windows'),
(68, '5c94beb2be0c6', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 1, 1553252018, 'Chrome', 'Windows'),
(69, '5c94bf80c6e20', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 3, 1553252224, 'Chrome', 'Windows'),
(70, '5c94bf9e13a44', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 1, 1553252254, 'Chrome', 'Windows'),
(71, '5c94c04627bf9', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 3, 1553252422, 'Chrome', 'Windows'),
(72, '5c997263c1c38', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 1, 1553560163, 'Edge', 'Windows'),
(73, '5c9a47714b80d', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 1, 1553614705, 'Chrome', 'Windows'),
(74, '5c9d43ff043fe', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 1, 1553810431, 'Chrome', 'Windows'),
(75, '5c9e1406c6f10', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 3, 1553863686, 'Chrome', 'Windows'),
(76, '5c9e7d9477ee1', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 1, 1553890708, 'Chrome', 'Windows'),
(77, '5c9e82d47b712', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 3, 1553892052, 'Chrome', 'Windows'),
(78, '5c9e95fecc5a1', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 3, 1553896958, 'Chrome', 'Windows'),
(79, '5c9ffb41acde4', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 3, 1553988417, 'Chrome', 'Windows'),
(80, '5ca01c54d8ada', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 3, 1553996884, 'Chrome', 'Windows'),
(81, '5ca01ddceffe4', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 1, 1553997276, 'Chrome', 'Windows'),
(82, '5ca01e846d99c', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 3, 1553997444, 'Chrome', 'Windows'),
(83, '5ca01fc19f12a', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 1, 1553997761, 'Chrome', 'Windows'),
(84, '5ca130a59c2f3', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 3, 1554067621, 'Edge', 'Windows'),
(85, '5ca2b275127c0', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 3, 1554166389, 'Chrome', 'Windows'),
(86, '5ca2b2920e8b7', '::1', 'pt', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 1, 1554166418, 'Chrome', 'Windows');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auth_item_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `resultado`
--
ALTER TABLE `resultado`
  ADD CONSTRAINT `fk_resultado_candidatura` FOREIGN KEY (`id_candidatura_id`) REFERENCES `candidatura` (`id`);

--
-- Limitadores para a tabela `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD CONSTRAINT `user_visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
